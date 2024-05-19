SELECT 
    c.id AS chef_id,
    c.first_name,
    c.last_name,
    COUNT(r.id) AS recipe_count
FROM 
    chefs c
JOIN 
    recipes r ON c.id = r.chef_id
WHERE 
    c.age < 30
GROUP BY 
    c.id, c.first_name, c.last_name
ORDER BY 
    recipe_count DESC
LIMIT 5;
