SELECT 
    c.first_name AS "First Name",
    c.last_name AS "Last Name",
    c.age AS "Age",
    COUNT(k.recipe_id) AS "Recipe Count"
FROM 
    chefs c
JOIN 
	knows k ON k.chef_id = c.id
WHERE 
    c.age < 30
GROUP BY 
    c.id
ORDER BY 
    COUNT(k.recipe_id) DESC, c.age, c.first_name, c.last_name
LIMIT 15;
