-- knows: συνταγές που γνωρίζει κάθε μάγειρας.
CREATE VIEW knows(chef_id, recipe_id) AS
SELECT 
    c.chef_id AS chef_id, 
    n.id AS recipe_id
FROM 
    specializes AS c
JOIN 
    recipes AS n
ON 
    c.national_cuisine_id = n.national_cuisine_id;

-- Επερώτηση που χρησιμοποιήθηκε για τη δημιουργία
-- της όψης 'recipe_nut_info'.
SELECT
    recipe_id,
    ROUND(SUM(n.calories_per_100 * i.quantity* u.quantity / 100), 2) AS calories,
    ROUND(SUM(n.proteins_per_100 * i.quantity* u.quantity / 100), 2) AS proteins,
    ROUND(SUM(n.fat_per_100 * i.quantity* u.quantity / 100), 2) AS fat,
    ROUND(SUM(n.carbohydrates_per_100 * i.quantity* u.quantity / 100), 2) AS carbohydrates
FROM
    ingredient_quantities AS i
JOIN nutritional_info AS n
ON
    i.ingredient_id = n.ingredient_id
JOIN unit_conversions u ON
    u.measurement_unit = i.unit
GROUP BY
    i.recipe_id;
