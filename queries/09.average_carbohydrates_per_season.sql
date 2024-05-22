WITH RecipeCarbohydrates AS (
    SELECT 
        r.id AS recipe_id,
        SUM(ni.carbohydrates_per_100 * iq.quantity / 100) AS total_carbohydrates
    FROM 
        recipes r
    JOIN 
        ingredient_quantities iq ON r.id = iq.recipe_id
    JOIN 
        nutritional_info ni ON iq.ingredient_id = ni.ingredient_id
    GROUP BY 
        r.id
),
EpisodeCarbohydrates AS (
    SELECT 
        e.id AS episode_id,
        e.season,
        AVG(rc.total_carbohydrates) AS avg_carbohydrates
    FROM 
        episodes e
    JOIN 
        assignments a ON e.id = a.episode_id
    JOIN 
        RecipeCarbohydrates rc ON a.recipe_id = rc.recipe_id
    GROUP BY 
        e.id, e.season
)

SELECT 
    ec.season,
    AVG(ec.avg_carbohydrates) AS avg_carbohydrates_per_season
FROM 
    EpisodeCarbohydrates ec
GROUP BY 
    ec.season
ORDER BY 
    ec.season;

-- EXPLAIN statement to get the execution plan
EXPLAIN 
