-- fill_episodes: Δημιουργεί καταχωρίσεις για 10 επεισόδια σε 5 σεζόν.
-- Προϋποθέτει αρχικά κενό πίνακα.

DELIMITER //
CREATE PROCEDURE fill_episodes()
BEGIN
    DECLARE season INT DEFAULT 1;
    DECLARE episode INT DEFAULT 1;

    WHILE season <= 5 DO
        SET episode = 1;
        WHILE episode <= 10 DO
            INSERT INTO episodes (episode, season) VALUES (episode, season);
            SET episode = episode + 1;
        END WHILE;
        SET season = season + 1;
    END WHILE;
END //
DELIMITER ;


-- insert_contestant: Ρουτίνα εισαγωγής στο contests που ελέγχει για 
-- 3 συνεχόμενες εμφανίσεις του μάγειρα και επιλέγει διαφορετικό 
-- μάγειρα σε αυτή την περίπτωση.

DELIMITER //
CREATE PROCEDURE insert_contestant(IN new_chef_id INT, IN new_episode_id INT)
BEGIN
    DECLARE ep_num INT;
    DECLARE ep_season INT;
    DECLARE recency INT;

    SELECT episode, season INTO ep_num, ep_season
    FROM episodes
    WHERE id = new_episode_id;

    SELECT COUNT(*)
    INTO recency
    FROM contests c
    JOIN episodes e ON c.episode_id = e.id
    WHERE c.chef_id = new_chef_id
    AND e.season = ep_season
    AND (e.episode = ep_num - 1 OR e.episode = ep_num - 2);

IF (recency = 2) OR EXISTS(SELECT 1 FROM contests WHERE chef_id = new_chef_id AND episode_id = new_episode_id) THEN
        CALL insert_contestant((SELECT id FROM chefs ORDER BY RAND() LIMIT 1), new_episode_id);
    ELSE
        INSERT INTO contests (chef_id, episode_id)
        VALUES (new_chef_id, new_episode_id);
    END IF;
END //
DELIMITER ;


-- fill_contests: Γεμίζει τον πίνακα των διαγωνιζόμενων σεφ
-- χρησιμοποιώντας τη ρουτίνα insert_contestant για να 
-- ικανοποιηθούν οι περιορισμοί στην εισαγωγή.

DELIMITER //
CREATE PROCEDURE fill_contests()
BEGIN
    DECLARE episode_id INT;
    DECLARE ep_season INT DEFAULT 1;
    DECLARE ep_num INT DEFAULT 1;
    DECLARE chef_count INT DEFAULT 1;

    WHILE ep_season <= 5 DO
        SET ep_num = 1;
        WHILE ep_num <= 10 DO
            SET chef_count = 1;
            WHILE chef_count <= 10 DO
                SET episode_id = (SELECT id FROM episodes WHERE season = ep_season AND episode = ep_num);
                CALL insert_contestant((SELECT id FROM chefs ORDER BY RAND() LIMIT 1), episode_id);
                SET chef_count = chef_count + 1;
            END WHILE;
            SET ep_num = ep_num + 1;
        END WHILE;
        SET ep_season = ep_season + 1;
    END WHILE;
END//
DELIMITER ;


-- chef_recency: trigger για εισαγωγή contestant μέσω άμεσων VALUES.

CREATE TRIGGER `chef_recency` BEFORE INSERT ON `contests`
 FOR EACH ROW BEGIN
    DECLARE ep_num INT;
    DECLARE ep_season INT;
    DECLARE recent_count INT;

    SELECT episode, season INTO ep_num, ep_season
    FROM episodes
    WHERE id = NEW.episode_id;

    SELECT COUNT(*)
    INTO recent_count
    FROM contests c
    JOIN episodes e ON c.episode_id = e.id
    WHERE c.chef_id = NEW.chef_id
    AND e.season = ep_season
    AND (e.episode = ep_num - 1 OR e.episode = ep_num - 2);

    IF recent_count >= 2 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Ο σεφ συμμετείχε στα δύο προηγούμενα επεισόδια';
    END IF;
END


-- insert_judge: όπως το insert_contestant, αλλά ελέγχεται επίσης εάν 
-- είναι ο σεφ είναι διαγωνιζόμενος στο επεισόδιο.

CREATE PROCEDURE insert_judge(IN new_chef_id INT, IN new_episode_id INT)
BEGIN
DELIMITER//
BEGIN
    DECLARE ep_num INT;
    DECLARE ep_season INT;
    DECLARE recency INT;

    SELECT episode, season INTO ep_num, ep_season
    FROM episodes
    WHERE id = new_episode_id;

    SELECT COUNT(*)
    INTO recency
    FROM judges j
    JOIN episodes e ON j.episode_id = e.id
    WHERE j.chef_id = new_chef_id
    AND e.season = ep_season
    AND (e.episode = ep_num - 1 OR e.episode = ep_num - 2);

    IF (recency = 2) OR (new_chef_id in(SELECT chef_id FROM contests WHERE episode_id = new_episode_id)) 
     OR EXISTS(SELECT 1 FROM judges WHERE chef_id = new_chef_id AND episode_id = new_episode_id) THEN
        CALL insert_judge((SELECT id FROM chefs ORDER BY RAND() LIMIT 1), new_episode_id);
    ELSE
    INSERT INTO judges(chef_id, episode_id)
        VALUES (new_chef_id, new_episode_id);
    END IF;
END//
DELIMITER ;


-- fill_judges: γεμίζει τον πίνακα judges.

DELIMITER //
CREATE PROCEDURE fill_judges()
BEGIN
    DECLARE episode_id INT;
    DECLARE ep_season INT DEFAULT 1;
    DECLARE ep_num INT DEFAULT 1;

    WHILE ep_season <= 5 DO
        SET ep_num = 1;
        WHILE ep_num <= 10 DO
            SET chef_count = 1;
            WHILE chef_count <= 3 DO
                SET episode_id = (SELECT id FROM episodes WHERE season = ep_season AND episode = ep_num);
                CALL insert_judge((SELECT id FROM chefs ORDER BY RAND() LIMIT 1), episode_id);
                SET chef_count = chef_count + 1;
            END WHILE;
            SET ep_num = ep_num + 1;
        END WHILE;
        SET ep_season = ep_season + 1;
    END WHILE;
END//
DELIMITER ;


-- judge_recency: trigger για εισαγωγή judge μέσω άμεσων VALUES.

CREATE TRIGGER `judge_recency` BEFORE INSERT ON `judges`
 FOR EACH ROW BEGIN
    DECLARE ep_num INT;
    DECLARE ep_season INT;
    DECLARE recency INT;

    SELECT episode, season INTO ep_num, ep_season
    FROM episodes
    WHERE id = NEW.episode_id;

    SELECT COUNT(*)
    INTO recency
    FROM judges j
    JOIN episodes e ON j.episode_id = e.id
    WHERE j.chef_id = NEW.chef_id
    AND e.season = ep_season
    AND (e.episode = ep_num - 1 OR e.episode = ep_num - 2);

    IF (recency = 2) OR (NEW.chef_id IN (SELECT chef_id FROM contests WHERE episode_id = NEW.episode_id)) THEN
        SIGNAL SQLSTATE '45000' 
            SET MESSAGE_TEXT = 'Ο σεφ συμμετέχει στο επεισόδιο ως διαγωνιζόμενος ή έχει συμμετάσχει ως κριτής στα δύο προηγούμενα επεισόδια.';
    END IF;
END










