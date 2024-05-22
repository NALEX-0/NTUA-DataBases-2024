-- Without the CLAUSE it works. With it doesn't. 

WITH JudgeParticipation AS (
    SELECT 
        j.chef_id AS judge_id,
        c.first_name,
        c.last_name,
        YEAR(e.updated_at) AS year,
        COUNT(j.episode_id) AS episode_count
    FROM 
        judges j
    JOIN 
        chefs c ON j.chef_id = c.id
    JOIN 
        episodes e ON j.episode_id = e.id
    GROUP BY 
        j.chef_id, c.first_name, c.last_name, YEAR(e.updated_at)
)

SELECT 
    jp.*
FROM 
    JudgeParticipation jp
ORDER BY 
    jp.year, jp.episode_count DESC;






WITH JudgeParticipation AS (
    SELECT 
        j.chef_id AS judge_id,
        c.first_name,
        c.last_name,
        YEAR(e.updated_at) AS year,
        COUNT(j.episode_id) AS episode_count
    FROM 
        judges j
    JOIN 
        chefs c ON j.chef_id = c.id
    JOIN 
        episodes e ON j.episode_id = e.id
    GROUP BY 
        j.chef_id, c.first_name, c.last_name, YEAR(e.updated_at)
    HAVING 
        COUNT(j.episode_id) > 3
)

SELECT 
    jp1.judge_id,
    jp1.first_name,
    jp1.last_name,
    jp1.year,
    jp1.episode_count
FROM 
    JudgeParticipation jp1
JOIN 
    JudgeParticipation jp2 ON jp1.episode_count = jp2.episode_count
    AND jp1.year = jp2.year
    AND jp1.judge_id <> jp2.judge_id
ORDER BY 
    jp1.year, jp1.episode_count DESC, jp1.last_name, jp1.first_name;
