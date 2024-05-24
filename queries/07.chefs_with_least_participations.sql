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
    c.Name AS Chef,
    cp.participation_count AS Participations
FROM 
    ChefParticipation cp
JOIN 
    chefs_view c ON c.id = cp.chef_id
JOIN 
    MaxParticipation mp ON cp.participation_count <= (mp.max_participation - 5)
ORDER BY 
    cp.participation_count DESC, 
    cp.last_name, 
    cp.first_name;
