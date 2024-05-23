-- Query with no indexes

WITH EpisodeTotalEquipmentUsage AS (
    SELECT 
        e.id AS episode_id,
        e.season,
        SUM(er.quantity) AS total_equipment_used
    FROM 
        episodes e
    JOIN 
        assignments a ON e.id = a.episode_id
    JOIN 
        equipment_requirements er ON a.recipe_id = er.recipe_id
    GROUP BY 
        e.id, e.season
),

MaxTotalEquipment AS (
    SELECT 
        MAX(total_equipment_used) AS max_equipment_used
    FROM 
        EpisodeTotalEquipmentUsage
)

SELECT 
    ete.episode_id,
    ete.season,
    ete.total_equipment_used
FROM 
    EpisodeTotalEquipmentUsage ete
JOIN 
    MaxTotalEquipment mte ON ete.total_equipment_used = mte.max_equipment_used
ORDER BY 
    ete.total_equipment_used DESC
