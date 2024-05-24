SELECT 
    fg.name AS "Unused Food Groups"
FROM 
    food_groups fg
LEFT JOIN (
    SELECT 
        DISTINCT i.food_group_id
    FROM 
        ingredients i
    JOIN 
        ingredient_quantities iq ON i.id = iq.ingredient_id
    JOIN 
        recipes r ON iq.recipe_id = r.id
    JOIN 
        assignments a ON r.id = a.recipe_id
    JOIN 
        episodes e ON a.episode_id = e.id
) used_food_groups ON fg.id = used_food_groups.food_group_id
WHERE 
    used_food_groups.food_group_id IS NULL;
