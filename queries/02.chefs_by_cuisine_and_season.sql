SELECT 
    c.Name as "Chef",
    nc.name AS "National Cuisine",
    e.season AS Season,
    e.episode AS Episode
FROM 
    chefs_view c
JOIN 
    specializes s ON c.id = s.chef_id
JOIN 
    national_cuisines nc ON s.national_cuisine_id = nc.id
JOIN 
    ratings r ON c.id = r.chef_id
JOIN 
    episodes e ON r.episode_id = e.id
WHERE 
    nc.name = "Greek"
    AND e.season = 2
GROUP BY 
    c.Name, nc.name, e.season, e.episode
ORDER BY 
    c.Name, e.season, e.episode;
