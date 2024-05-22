SELECT 
    c.id AS chef_id,
    nc.name as national_cuisine,
    AVG(r.rating) AS average_cuisine_rating
FROM 
    chefs c
JOIN 
    ratings r ON c.id = r.chef_id
JOIN
	assignments a ON (a.chef_id = c.id AND a.episode_id = r.episode_id)
JOIN 
	national_cuisines nc ON nc.id  = a.national_cuisine_id
GROUP BY 
    c.id, a.national_cuisine_id;
