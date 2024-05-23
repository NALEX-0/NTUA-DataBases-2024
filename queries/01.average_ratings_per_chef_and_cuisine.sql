SELECT 
    c.Name AS "Chef",
    nc.name as "National Cuisine",
    ROUND(AVG(r.rating), 2) AS "Average Cuisine Rating"
FROM 
    chefs_view c
JOIN 
    ratings r ON c.id = r.chef_id
JOIN
	assignments a ON (a.chef_id = c.id AND a.episode_id = r.episode_id)
JOIN 
	national_cuisines nc ON nc.id  = a.national_cuisine_id
GROUP BY 
    c.id, a.national_cuisine_id;
