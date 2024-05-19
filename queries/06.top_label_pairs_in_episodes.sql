WITH LabelPairs AS (
    SELECT 
        rl1.labels_id AS label1_id,
        l1.name AS label1_name,
        rl2.labels_id AS label2_id,
        l2.name AS label2_name,
        COUNT(*) AS pair_count
    FROM 
        recipe_labels rl1 FORCE INDEX (idx_recipe_labels_recipe_id, idx_recipe_labels_labels_id)
    JOIN 
        recipe_labels rl2 FORCE INDEX (idx_recipe_labels_recipe_id, idx_recipe_labels_labels_id) 
        ON rl1.recipe_id = rl2.recipe_id AND rl1.labels_id < rl2.labels_id
    JOIN 
        labels l1 ON rl1.labels_id = l1.id
    JOIN 
        labels l2 ON rl2.labels_id = l2.id
    JOIN 
        assignments a FORCE INDEX (idx_assignments_recipe_id, idx_assignments_episode_id) 
        ON rl1.recipe_id = a.recipe_id
    JOIN 
        episodes e ON a.episode_id = e.id
    GROUP BY 
        rl1.labels_id, rl2.labels_id
    ORDER BY 
        pair_count DESC
    LIMIT 3
)

SELECT 
    label1_name,
    label2_name,
    pair_count
FROM 
    LabelPairs;

-- EXPLAIN statement to get the execution plan
EXPLAIN WITH LabelPairs AS (
    SELECT 
        rl1.labels_id AS label1_id,
        l1.name AS label1_name,
        rl2.labels_id AS label2_id,
        l2.name AS label2_name,
        COUNT(*) AS pair_count
    FROM 
        recipe_labels rl1 FORCE INDEX (idx_recipe_labels_recipe_id, idx_recipe_labels_labels_id)
    JOIN 
        recipe_labels rl2 FORCE INDEX (idx_recipe_labels_recipe_id, idx_recipe_labels_labels_id) 
        ON rl1.recipe_id = rl2.recipe_id AND rl1.labels_id < rl2.labels_id
    JOIN 
        labels l1 ON rl1.labels_id = l1.id
    JOIN 
        labels l2 ON rl2.labels_id = l2.id
    JOIN 
        assignments a FORCE INDEX (idx_assignments_recipe_id, idx_assignments_episode_id) 
        ON rl1.recipe_id = a.recipe_id
    JOIN 
        episodes e ON a.episode_id = e.id
    GROUP BY 
        rl1.labels_id, rl2.labels_id
    ORDER BY 
        pair_count DESC
    LIMIT 3
);

