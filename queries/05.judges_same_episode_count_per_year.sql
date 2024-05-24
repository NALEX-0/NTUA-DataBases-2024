WITH JudgeParticipation AS (
    SELECT 
        j.chef_id AS judge_id,
        c.first_name,
        c.last_name,
        e.season,
        COUNT(j.episode_id) AS episode_count
    FROM 
        judges j
    JOIN 
        chefs c ON j.chef_id = c.id
    JOIN 
        episodes e ON j.episode_id = e.id
    GROUP BY 
        j.chef_id, c.first_name, c.last_name, e.season
    HAVING 
        COUNT(j.episode_id) > 2
),
SameParticipation AS (
    SELECT 
        jp1.judge_id AS judge1_id,
        jp1.first_name AS judge1_first_name,
        jp1.last_name AS judge1_last_name,
        jp1.season,
        jp1.episode_count,
        jp2.judge_id AS judge2_id,
        jp2.first_name AS judge2_first_name,
        jp2.last_name AS judge2_last_name
    FROM 
        JudgeParticipation jp1
    JOIN 
        JudgeParticipation jp2 ON jp1.season = jp2.season
        AND jp1.episode_count = jp2.episode_count
        AND jp1.judge_id < jp2.judge_id 
)

SELECT 
    sp.judge1_id,
    sp.judge1_first_name,
    sp.judge1_last_name,
    sp.judge2_id,
    sp.judge2_first_name,
    sp.judge2_last_name,
    sp.season,
    sp.episode_count
FROM 
    SameParticipation sp
ORDER BY 
   sp.episode_count DESC, sp.season, sp.judge1_last_name, sp.judge1_first_name;
