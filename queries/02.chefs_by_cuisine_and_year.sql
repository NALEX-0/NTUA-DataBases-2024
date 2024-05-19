SELECT 
    c.id AS chef_id,
    c.first_name,
    c.last_name,
    nc.name AS national_cuisine_name,
    YEAR(e.updated_at) AS year,
    e.season,
    e.episode
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
WHERE 
    nc.name = 'specified_national_cuisine'  -- Replace with the actual national cuisine name
    AND YEAR(e.updated_at) = specified_year  -- Replace with the actual year
GROUP BY 
    c.id, c.first_name, c.last_name, nc.name, e.season, e.episode
ORDER BY 
    c.last_name, c.first_name, e.season, e.episode;
