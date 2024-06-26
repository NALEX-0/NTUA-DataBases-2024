-- Πρώτη προσπάθεια. Αποτυγχάνει στις περιπτώσεις που η ποσότητα
-- δεν διαχωρίζεται με κενό από τις μονάδες μέτρησης.
UPDATE 
	ingredient_quantities
SET 
	unit = TRIM(SUBSTRING_INDEX(quantity, ' ', -1)), -- Extract the unit
  	quantity = TRIM(SUBSTRING_INDEX(quantity, ' ', 1)); -- Extract the number


-- Δεύτερη προσπάθεια. Αφαιρεί από την ποσότητα όλους τους χαρακτήρες
-- μετά τον πρώτο μη αριθμητικό χαρακτήρα.
UPDATE 
	ingredient_quantities
SET 
	quantity = SUBSTRING(quantity, 1, LENGTH(quantity) - LENGTH(SUBSTRING(quantity, REGEXP_INSTR(quantity, '[^0-9]*$'))));


-- Τρίτη προσπάθεια. Αφαίρεση αριθμητικών χαρακτήρων που δεν 
-- βρίσκονται απαραίτητα στην αρχή του πεδίου.
UPDATE 
	ingredient_quantities
SET 
	unit = REGEXP_REPLACE(unit, '[0-9]', '');


-- Σύμπτυξη μονάδων μέτρησης σε συνεπείς κατηγορίες. 
UPDATE
    `ingredient_quantities`
SET
    unit = "tablespoons"
WHERE
    unit LIKE "%t%b%s%";

UPDATE
    `ingredient_quantities`
SET
    unit = "grams"
WHERE
    unit = "g";

UPDATE
    `ingredient_quantities`
SET
    unit = "teaspoons"
WHERE
    unit = "tsp";
    
UPDATE
    `ingredient_quantities`
SET
    unit = "cups"
WHERE
    unit = "cup";

UPDATE
    `ingredient_quantities`
SET
    unit = "handfuls"
WHERE
    unit LIKE "handful%";


-- Τα παρακάτω για καθάρισμα.
UPDATE 
	ingredient_quantities
SET 
	unit = REPLACE(unit, '(', '');
    
UPDATE 
	ingredient_quantities
SET 
	unit = REPLACE(unit, ')', '');

UPDATE 
	ingredient_quantities
SET 
	unit = REPLACE(unit, '/', '');

UPDATE 
	ingredient_quantities
SET 
	unit = REPLACE(unit, '.', '');

UPDATE `ingredient_quantities`
SET quantity = 1.0
WHERE
    quantity LIKE '%/%' OR
    quantity LIKE '%-%';

UPDATE 
	ingredient_quantities
SET 
	unit = LOWER(unit);

-- Η μονάδα "units" εκφράζει ποσότητες στερεών υλικών.
-- Θα αντιστοιχιστεί σε x γραμμάρια.
UPDATE
    `ingredient_quantities`
SET
    unit = "units"
WHERE
    unit = '';

-- Έλεγχος των μονάδων μέτρησης στον πίνακα τώρα.
SELECT 
	DISTINCT(unit) 
FROM 
	ingredient_quantities;
