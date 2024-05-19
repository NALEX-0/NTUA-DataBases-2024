SELECT 
    c.id AS chef_id,
    c.first_name,
    c.last_name,
    nc.name AS national_cuisine_name,
    AVG(r.rating) AS average_rating
FROM 
    chefs c
JOIN 
    specializes s ON c.id = s.chef_id
JOIN 
    national_cuisines nc ON s.national_cuisine_id = nc.id
JOIN 
    ratings r ON c.id = r.chef_id
JOIN 
    episodes e ON r.episode_id = e.id
GROUP BY 
    c.id, c.first_name, c.last_name, nc.name;
