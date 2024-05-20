-- Αυτός ο κώδικας πρακτικά προσομοιώνει ένα for loop
-- μέσω μίας στήλης 10 '1', που δεν χρησιμοποιείται.
DELETE FROM specializations;
INSERT INTO specializes(chef_id, national_cuisine_id)
SELECT c.id AS chef_id, (
    SELECT id
    FROM national_cuisines
    ORDER BY RAND()
    LIMIT 1
) AS national_cuisine_id
FROM chefs c
CROSS JOIN (SELECT 1 FROM national_cuisines LIMIT 10) AS nc
ORDER BY c.id, RAND();
