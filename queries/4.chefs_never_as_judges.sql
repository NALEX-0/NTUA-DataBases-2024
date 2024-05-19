SELECT 
    c.id AS chef_id,
    c.first_name,
    c.last_name
FROM 
    chefs c
LEFT JOIN 
    judges j ON c.id = j.chef_id
WHERE 
    j.chef_id IS NULL
ORDER BY 
    c.last_name, c.first_name;
