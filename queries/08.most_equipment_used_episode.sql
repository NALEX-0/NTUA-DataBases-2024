-- Without indexes.

WITH EpisodeEquipment AS (
    SELECT 
        e.episode AS episode,
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
MaxEquipment AS (
    SELECT 
        MAX(total_equipment_used) AS max_equipment_used
    FROM 
        EpisodeEquipment
)
SELECT 
    ete.episode,
    ete.season,
    ete.total_equipment_used
FROM 
    EpisodeEquipment ete
JOIN 
    MaxEquipment mte ON ete.total_equipment_used = mte.max_equipment_used
ORDER BY 
    ete.total_equipment_used DESC
