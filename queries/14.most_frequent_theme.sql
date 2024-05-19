SELECT 
    t.theme AS theme_name,
    COUNT(rt.id) AS theme_count
FROM 
    themes t
JOIN 
    recipe_themes rt ON t.id = rt.themes_id
JOIN 
    recipes r ON rt.recipe_id = r.id
JOIN 
    assignments a ON r.id = a.recipe_id
JOIN 
    episodes e ON a.episode_id = e.id
GROUP BY 
    t.id, t.theme
ORDER BY 
    theme_count DESC
LIMIT 1;
