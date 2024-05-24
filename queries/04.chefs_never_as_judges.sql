SELECT 
    c.id AS "Chef_id",
    c.Name AS "Chef"
FROM 
    chefs_view c
LEFT JOIN 
    judges j ON c.id = j.chef_id
WHERE 
    j.chef_id IS NULL
ORDER BY 
    c.Name;
