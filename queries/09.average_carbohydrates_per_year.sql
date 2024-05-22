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
        YEAR(e.updated_at) AS year,
        AVG(rc.total_carbohydrates) AS avg_carbohydrates
    FROM 
        episodes e
    JOIN 
        assignments a ON e.id = a.episode_id
    JOIN 
        RecipeCarbohydrates rc ON a.recipe_id = rc.recipe_id
    GROUP BY 
        e.id, YEAR(e.updated_at)
)

SELECT 
    ec.year,
    AVG(ec.avg_carbohydrates) AS avg_carbohydrates_per_year
FROM 
    EpisodeCarbohydrates ec
GROUP BY 
    ec.year
ORDER BY 
    ec.year;

-- EXPLAIN statement to get the execution plan
EXPLAIN 
