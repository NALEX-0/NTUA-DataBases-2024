WITH CuisineParticipation AS (
    SELECT 
        nc.id AS national_cuisine_id,
        nc.name AS national_cuisine_name,
        YEAR(e.updated_at) AS year,
        COUNT(DISTINCT e.id) AS participation_count
    FROM 
        national_cuisines nc
    JOIN 
        specializes s ON nc.id = s.national_cuisine_id
    JOIN 
        episodes e ON s.chef_id = e.id
    GROUP BY 
        nc.id, nc.name, YEAR(e.updated_at)
    HAVING 
        COUNT(DISTINCT e.id) >= 3
),
CuisineParticipationPairs AS (
    SELECT 
        cp1.national_cuisine_id AS cuisine1_id,
        cp1.national_cuisine_name AS cuisine1_name,
        cp1.year AS year1,
        cp1.participation_count,
        cp2.national_cuisine_id AS cuisine2_id,
        cp2.national_cuisine_name AS cuisine2_name,
        cp2.year AS year2
    FROM 
        CuisineParticipation cp1
    JOIN 
        CuisineParticipation cp2 ON cp1.national_cuisine_id = cp2.national_cuisine_id
        AND cp1.participation_count = cp2.participation_count
        AND cp1.year = cp2.year - 1
)

SELECT 
    cuisine1_name AS national_cuisine,
    year1,
    year2,
    participation_count
FROM 
    CuisineParticipationPairs
ORDER BY 
    cuisine1_name, year1;
