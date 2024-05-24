WITH JudgeParticipation AS (
    SELECT 
        j.chef_id AS judge_id,
        c.Name,
        e.season,
        COUNT(j.episode_id) AS episode_count
    FROM 
        judges j
    JOIN 
        chefs_view c ON j.chef_id = c.id
    JOIN 
        episodes e ON j.episode_id = e.id
    GROUP BY 
        j.chef_id, c.Name
    HAVING 
        COUNT(j.episode_id) > 2
),
SameParticipation AS (
    SELECT 
        jp1.judge_id AS judge1_id,
        jp1.Name AS judge1_Name,
        jp1.season,
        jp1.episode_count,
        jp2.judge_id AS judge2_id,
        jp2.Name AS judge2_Name
    FROM 
        JudgeParticipation jp1
    JOIN 
        JudgeParticipation jp2 ON 
        jp1.episode_count = jp2.episode_count
        AND jp1.judge_id < jp2.judge_id 
)

SELECT 
    sp.judge1_id,
    sp.judge1_Name,
    sp.judge2_id,
    sp.judge2_Name,
    sp.season,
    sp.episode_count
FROM 
    SameParticipation sp
ORDER BY 
   sp.episode_count DESC,  sp.judge1_Name;
