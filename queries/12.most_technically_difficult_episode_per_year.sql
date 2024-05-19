WITH EpisodeDifficulty AS (
    SELECT 
        e.id AS episode_id,
        YEAR(e.updated_at) AS year,
        AVG(
            CASE 
                WHEN r.difficulty_level = 'very easy' THEN 1
                WHEN r.difficulty_level = 'easy' THEN 2
                WHEN r.difficulty_level = 'medium' THEN 3
                WHEN r.difficulty_level = 'hard' THEN 4
                WHEN r.difficulty_level = 'very hard' THEN 5
                ELSE 0
            END
        ) AS avg_difficulty
    FROM 
        episodes e
    JOIN 
        assignments a ON e.id = a.episode_id
    JOIN 
        recipes r ON a.recipe_id = r.id
    GROUP BY 
        e.id, YEAR(e.updated_at)
)

SELECT 
    ed.year,
    ed.episode_id,
    ed.avg_difficulty
FROM 
    EpisodeDifficulty ed
JOIN (
    SELECT 
        year,
        MAX(avg_difficulty) AS max_difficulty
    FROM 
        EpisodeDifficulty
    GROUP BY 
        year
) ed_max ON ed.year = ed_max.year AND ed.avg_difficulty = ed_max.max_difficulty
ORDER BY 
    ed.year;
