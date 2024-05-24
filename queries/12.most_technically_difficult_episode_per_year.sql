WITH RecipeDifficulty AS (
    SELECT 
        e.episode,
        e.season,
        CASE 
            WHEN r.difficulty_level = 'Very easy' THEN 1
            WHEN r.difficulty_level = 'Easy' THEN 2
            WHEN r.difficulty_level = 'Medium' THEN 3
            WHEN r.difficulty_level = 'Hard' THEN 4
            WHEN r.difficulty_level = 'Very hard' THEN 5
            ELSE NULL
        END AS difficulty_score
    FROM 
        episodes e
    JOIN 
        assignments a ON e.id = a.episode_id
    JOIN 
        recipes r ON a.recipe_id = r.id
),

EpisodeDifficulty AS (
    SELECT 
        episode,
        season,
        SUM(difficulty_score) AS total_difficulty,
        COUNT(difficulty_score) AS recipe_count
    FROM 
        RecipeDifficulty
    GROUP BY 
        episode, season
),

MaxDifficultyPerSeason AS (
    SELECT 
        season,
        MAX(total_difficulty / recipe_count) AS max_avg_difficulty
    FROM 
        EpisodeDifficulty
    GROUP BY 
        season
),

RankedEpisodes AS (
    SELECT
        ed.season,
        ed.episode,
        ed.total_difficulty / ed.recipe_count AS avg_difficulty,
        ROW_NUMBER() OVER (PARTITION BY ed.season ORDER BY ed.total_difficulty / ed.recipe_count DESC, ed.episode ASC) AS rank
    FROM
        EpisodeDifficulty ed
    JOIN
        MaxDifficultyPerSeason mdps ON ed.season = mdps.season AND ed.total_difficulty / ed.recipe_count = mdps.max_avg_difficulty
)

SELECT
    season,
    episode,
    ROUND(avg_difficulty, 2) AS "Average Episode Difficulty"
FROM
    RankedEpisodes
WHERE
    rank = 1
ORDER BY
    season;
