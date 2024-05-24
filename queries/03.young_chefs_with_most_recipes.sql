SELECT 
    c.Name AS "Chef",
    c.age AS "Age",
    COUNT(k.recipe_id) AS "Recipe Count"
FROM 
    chefs_view c
JOIN 
	knows k ON k.chef_id = c.id
WHERE 
    c.age < 30
GROUP BY 
    c.id
ORDER BY 
    COUNT(k.recipe_id) DESC, c.age, c.Name
LIMIT 15;
