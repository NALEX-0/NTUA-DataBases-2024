WITH EpisodeEquipmentUsage AS (
    SELECT 
        e.id AS episode_id,
        COUNT(er.equipment_id) AS equipment_count
    FROM 
        episodes e
    JOIN 
        assignments a FORCE INDEX (idx_assignments_recipe_id, idx_assignments_episode_id) ON e.id = a.episode_id
    JOIN 
        equipment_requirements er FORCE INDEX (idx_equipment_requirements_recipe_id, idx_equipment_requirements_equipment_id) ON a.recipe_id = er.recipe_id
    GROUP BY 
        e.id
)

SELECT 
    eu.episode_id,
    eu.equipment_count
FROM 
    EpisodeEquipmentUsage eu
ORDER BY 
    eu.equipment_count DESC
LIMIT 1;

-- EXPLAIN statement to get the execution plan
EXPLAIN
