UPDATE recipes 
SET preparation_time = FLOOR(RAND()*21 + 5), cooking_time = FLOOR(RAND()*21 + 5), portions = FLOOR(RAND()*4 + 1)
