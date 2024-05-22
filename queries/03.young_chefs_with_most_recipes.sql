SELECT 
    c.id AS chef_id,
    c.first_name,
    c.last_name,
    COUNT(r.id) AS recipe_count
FROM 
    chefs c
JOIN 
    assignments a ON c.id = a.chef_id
JOIN 
    recipes r ON a.recipe_id = r.id
WHERE 
    c.age < 30
GROUP BY 
    c.id, c.first_name, c.last_name
ORDER BY 
    recipe_count DESC
LIMIT 5;

