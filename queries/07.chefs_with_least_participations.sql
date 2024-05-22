WITH ChefParticipation AS (
    SELECT 
        a.chef_id,
        c.first_name,
        c.last_name,
        COUNT(a.episode_id) AS participation_count
    FROM 
        assignments a
    JOIN 
        chefs c ON a.chef_id = c.id
    GROUP BY 
        a.chef_id, c.first_name, c.last_name
),
MaxParticipation AS (
    SELECT 
        MAX(participation_count) AS max_participation
    FROM 
        ChefParticipation
)

SELECT 
    cp.chef_id,
    cp.first_name,
    cp.last_name,
    cp.participation_count
FROM 
    ChefParticipation cp
JOIN 
    MaxParticipation mp ON cp.participation_count <= (mp.max_participation - 5)
ORDER BY 
    cp.participation_count DESC, 
    cp.last_name, 
    cp.first_name;
