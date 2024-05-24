WITH CuisineParticipation AS (
    SELECT 
        nc.id AS national_cuisine_id,
        nc.name AS national_cuisine_name,
        e.season,
        COUNT(DISTINCT e.id) AS participation_count
    FROM 
        national_cuisines nc
    JOIN 
        specializes s ON nc.id = s.national_cuisine_id
    JOIN 
        episodes e ON s.chef_id = e.id
    GROUP BY 
        nc.id, nc.name, e.season
    HAVING 
        COUNT(DISTINCT e.id) >= 3
),
CuisineParticipationPairs AS (
    SELECT 
        cp1.national_cuisine_id AS cuisine1_id,
        cp1.national_cuisine_name AS cuisine1_name,
        cp1.season AS season1,
        cp1.participation_count,
        cp2.national_cuisine_id AS cuisine2_id,
        cp2.national_cuisine_name AS cuisine2_name,
        cp2.season AS season2
    FROM 
        CuisineParticipation cp1
    JOIN 
        CuisineParticipation cp2 ON cp1.national_cuisine_id = cp2.national_cuisine_id
        AND cp1.participation_count = cp2.participation_count
        AND cp1.season = cp2.season - 1
)

SELECT 
    cuisine1_name AS national_cuisine,
    season1,
    season2,
    participation_count
FROM 
    CuisineParticipationPairs
ORDER BY 
    participation_count desc, season1
