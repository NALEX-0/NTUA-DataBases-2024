SELECT 
    j.id AS judge_id,
    j.first_name AS judge_first_name,
    j.last_name AS judge_last_name,
    c.id AS chef_id,
    c.first_name AS chef_first_name,
    c.last_name AS chef_last_name,
    SUM(r.rating) AS total_score
FROM 
    ratings r
JOIN 
    chefs j ON r.judge_id = j.id
JOIN 
    chefs c ON r.chef_id = c.id
GROUP BY 
    j.id, j.first_name, j.last_name, c.id, c.first_name, c.last_name
ORDER BY 
    total_score DESC
LIMIT 5;
