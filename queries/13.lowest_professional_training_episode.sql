WITH ChefTraining AS (
    SELECT 
        c.id AS chef_id,
        c.first_name,
        c.last_name,
        e.id AS episode_id,
        e.season,
        e.episode AS episode_number,
        CASE 
            WHEN c.chef_level = 'Chef Assistant' THEN 1
            WHEN c.chef_level = 'C chef' THEN 2
            WHEN c.chef_level = 'B chef' THEN 3
            WHEN c.chef_level = 'A chef' THEN 4
            WHEN c.chef_level = 'Master chef' THEN 5
            ELSE 0
        END AS training_level
    FROM 
        chefs c
    JOIN 
        contests p ON c.id = p.chef_id
    JOIN 
        episodes e ON p.episode_id = e.id
),
JudgeTraining AS (
    SELECT 
        c.id AS chef_id,
        c.first_name,
        c.last_name,
        e.id AS episode_id,
        e.season,
        e.episode AS episode_number,
        CASE 
            WHEN c.chef_level = 'Chef Assistant' THEN 1
            WHEN c.chef_level = 'C chef' THEN 2
            WHEN c.chef_level = 'B chef' THEN 3
            WHEN c.chef_level = 'A chef' THEN 4
            WHEN c.chef_level = 'Master chef' THEN 5
            ELSE 0
        END AS training_level
    FROM 
        chefs c
    JOIN 
        judges j ON c.id = j.chef_id
    JOIN 
        episodes e ON j.episode_id = e.id
),
EpisodeTraining AS (
    SELECT 
        episode_id,
        season,
        episode_number,
        AVG(training_level) AS avg_training_level
    FROM (
        SELECT * FROM ChefTraining
        UNION ALL
        SELECT * FROM JudgeTraining
    ) AS combined_training
    GROUP BY 
        episode_id, season, episode_number
)

SELECT 
    et.season,
    et.episode_number,
    et.avg_training_level
FROM 
    EpisodeTraining et
ORDER BY 
    et.avg_training_level ASC
LIMIT 1;

