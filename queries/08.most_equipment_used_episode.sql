-- NORMAL QUERY.

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

-- FORCE INDEX 

CREATE INDEX idx_episodes_id ON episodes (id);
CREATE INDEX idx_episodes_season ON episodes (season);
CREATE INDEX idx_equipment_requirements_recipe_id ON equipment_requirements (recipe_id);
CREATE INDEX idx_equipment_requirements_quantity ON equipment_requirements (quantity);

WITH EpisodeEquipment AS (
    SELECT 
        e.episode AS episode,
        e.season,
        SUM(er.quantity) AS total_equipment_used
    FROM 
        episodes e FORCE INDEX (idx_episodes_id, idx_episodes_season)
    JOIN 
        assignments a FORCE INDEX (idx_assignments_episode_id, idx_assignments_recipe_id) ON e.id = a.episode_id
    JOIN 
        equipment_requirements er FORCE INDEX (idx_equipment_requirements_recipe_id, idx_equipment_requirements_quantity) ON a.recipe_id = er.recipe_id
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
    ete.total_equipment_used DESC;

