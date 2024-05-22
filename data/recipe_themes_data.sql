INSERT INTO themes (id, theme) VALUES
(1, 'Comfort Food'),
(2, 'Healthy Choices'),
(3, 'Quick and Easy'),
(4, 'Gourmet Delights'),
(5, 'Vegetarian and Vegan'),
(6, 'Kid-Friendly'),
(7, 'Budget-Friendly'),
(8, 'Party Pleasers'),
(9, 'Holiday Specialties'),
(10, 'Low-Carb Options'),
(11, 'Meal Prep'),
(12, 'Classic Recipes');

INSERT INTO recipe_themes (recipe_id, themes_id) VALUES
(1, 6), (1, 4), (1, 12),  -- Chocolate Gateau: Kid-Friendly, Gourmet Delights, Classic Recipes
(2, 5), (2, 2), (2, 10),  -- Baingan Bharta: Vegetarian and Vegan, Healthy Choices, Low-Carb Options
(3, 1), (3, 7), (3, 12),  -- Beef Brisket Pot Roast: Comfort Food, Budget-Friendly, Classic Recipes
(4, 6), (4, 1), (4, 12),  -- Beef and Oyster Pie: Kid-Friendly, Comfort Food, Classic Recipes
(5, 4), (5, 3), (5, 10),  -- Beef Lo Mein: Gourmet Delights, Quick and Easy, Low-Carb Options
(6, 3), (6, 7), (6, 11),  -- Breakfast Potatoes: Quick and Easy, Budget-Friendly, Meal Prep
(7, 12), (7, 1), (7, 7),  -- Bitterballen (Dutch meatballs): Classic Recipes, Comfort Food, Budget-Friendly
(8, 4), (8, 3), (8, 1),   -- Beef Rendang: Gourmet Delights, Quick and Easy, Comfort Food
(9, 5), (9, 2), (9, 3),   -- Bread Omelette: Vegetarian and Vegan, Healthy Choices, Quick and Easy
(10, 5), (10, 2), (10, 10),-- Beetroot Soup (Borscht): Vegetarian and Vegan, Healthy Choices, Low-Carb Options
(11, 1), (11, 2), (11, 4),-- Chicken Handi: Comfort Food, Healthy Choices, Gourmet Delights
(12, 4), (12, 8), (12, 10),-- Cajun spiced fish tacos: Gourmet Delights, Party Pleasers, Low-Carb Options
(13, 12), (13, 1), (13, 4),-- Coq au vin: Classic Recipes, Comfort Food, Gourmet Delights
(14, 3), (14, 6), (14, 1),-- Chicken & mushroom Hotpot: Quick and Easy, Kid-Friendly, Comfort Food
(15, 1), (15, 4), (15, 7),-- Chicken Ham and Leek Pie: Comfort Food, Gourmet Delights, Budget-Friendly
(16, 4), (16, 1), (16, 11),-- Chicken Congee: Gourmet Delights, Comfort Food, Meal Prep
(17, 6), (17, 8), (17, 12),-- Chocolate Caramel Crispy: Kid-Friendly, Party Pleasers, Classic Recipes
(18, 9), (18, 6), (18, 12),-- Christmas Pudding Trifle: Holiday Specialties, Kid-Friendly, Classic Recipes
(19, 1), (19, 7), (19, 11),-- Crispy Sausages and Greens: Comfort Food, Budget-Friendly, Meal Prep
(20, 12), (20, 1), (20, 7),-- Cevapi Sausages: Classic Recipes, Comfort Food, Budget-Friendly
(21, 2), (21, 5), (21, 10),-- Dal fry: Healthy Choices, Vegetarian and Vegan, Low-Carb Options
(22, 6), (22, 12), (22, 8),-- Eccles Cakes: Kid-Friendly, Classic Recipes, Party Pleasers
(23, 5), (23, 2), (23, 1), -- Egyptian Fatteh: Vegetarian and Vegan, Healthy Choices, Comfort Food
(24, 1), (24, 3), (24, 7), -- Fettucine Alfredo: Comfort Food, Quick and Easy, Budget-Friendly
(25, 1), (25, 6), (25, 7), -- Flamiche: Comfort Food, Kid-Friendly, Budget-Friendly
(26, 4), (26, 1), (26, 10),-- Feteer Meshaltet: Gourmet Delights, Comfort Food, Low-Carb Options
(27, 1), (27, 3), (27, 7), -- Fettuccine Alfredo: Comfort Food, Quick and Easy, Budget-Friendly
(28, 12), (28, 8), (28, 1),-- Garides Saganaki: Classic Recipes, Party Pleasers, Comfort Food
(29, 8), (29, 6), (29, 3), -- Grilled Mac and Cheese Sandwich: Party Pleasers, Kid-Friendly, Quick and Easy
(30, 8), (30, 4), (30, 2), -- Honey Teriyaki Salmon: Party Pleasers, Gourmet Delights, Healthy Choices
(31, 3), (31, 8), (31, 11),-- Japanese gohan rice: Quick and Easy, Party Pleasers, Meal Prep
(32, 1), (32, 4), (32, 3), -- Laksa King Prawn Noodles: Comfort Food, Gourmet Delights, Quick and Easy
(33, 12), (33, 4), (33, 1),-- Lamb Tagine: Classic Recipes, Gourmet Delights, Comfort Food
(34, 1), (34, 7), (34, 6), -- Lamb and Potato pie: Comfort Food, Budget-Friendly, Kid-Friendly
(35, 1), (35, 12), (35, 10),-- Leblebi Soup: Comfort Food, Classic Recipes, Low-Carb Options
(36, 2), (36, 5), (36, 3), -- Mushroom & Chestnut Rotolo: Healthy Choices, Vegetarian and Vegan, Quick and Easy
(37, 7), (37, 12), (37, 1), -- Minced Beef Pie: Budget-Friendly, Classic Recipes, Comfort Food
(38, 1), (38, 12), (38, 8), -- Madeira Cake: Comfort Food, Classic Recipes, Party Pleasers
(39, 1), (39, 2), (39, 4), -- Mulukhiyah: Comfort Food, Healthy Choices, Gourmet Delights
(40, 1), (40, 7), (40, 3), -- Mustard champ: Comfort Food, Budget-Friendly, Quick and Easy
(41, 12), (41, 1), (41, 4), -- Osso Buco alla Milanese: Classic Recipes, Comfort Food, Gourmet Delights
(42, 1), (42, 7), (42, 11), -- Oxtail with broad beans: Comfort Food, Budget-Friendly, Meal Prep
(43, 3), (43, 6), (43, 11), -- Pancakes: Quick and Easy, Kid-Friendly, Meal Prep
(44, 12), (44, 1), (44, 7), -- Parkin Cake: Classic Recipes, Comfort Food, Budget-Friendly
(45, 4), (45, 12), (45, 10), -- Provençal Omelette Cake: Gourmet Delights, Classic Recipes, Low-Carb Options
(46, 12), (46, 1), (46, 6), -- Polskie Naleśniki (Polish Pancakes): Classic Recipes, Comfort Food, Kid-Friendly
(47, 1), (47, 8), (47, 7), -- Piri-piri chicken and slaw: Comfort Food, Party Pleasers, Budget-Friendly
(48, 12), (48, 8), (48, 1), -- Portuguese prego with green piri-piri: Classic Recipes, Party Pleasers, Comfort Food
(49, 12), (49, 1), (49, 4), -- Portuguese fish stew (Caldeirada de peixe): Classic Recipes, Comfort Food, Gourmet Delights
(50, 7), (50, 2), (50, 11), -- Potato Salad (Olivier Salad): Budget-Friendly, Healthy Choices, Meal Prep
(51, 6), (51, 8), (51, 3), -- Chocolate Caramel Crispy: Kid-Friendly, Party Pleasers, Quick and Easy
(52, 5), (52, 2), (52, 10), -- Eggplant Bharta: Vegetarian and Vegan, Healthy Choices, Low-Carb Options
(53, 1), (53, 7), (53, 11), -- Beef Brisket with Vegetables: Comfort Food, Budget-Friendly, Meal Prep
(54, 1), (54, 12), (54, 7), -- Beef and Mushroom Pie: Comfort Food, Classic Recipes, Budget-Friendly
(55, 4), (55, 8), (55, 3), -- Beef Chow Mein: Gourmet Delights, Party Pleasers, Quick and Easy
(56, 3), (56, 7), (56, 11), -- Hash Browns: Quick and Easy, Budget-Friendly, Meal Prep
(57, 12), (57, 1), (57, 6), -- Dutch Meat Croquettes: Classic Recipes, Comfort Food, Kid-Friendly
(58, 1), (58, 4), (58, 7), -- Indonesian Beef Curry: Comfort Food, Gourmet Delights, Budget-Friendly
(59, 3), (59, 7), (59, 6), -- Stuffed Bread Omelette: Quick and Easy, Budget-Friendly, Kid-Friendly
(60, 5), (60, 2), (60, 10), -- Russian Beet Soup: Vegetarian and Vegan, Healthy Choices, Low-Carb Options
(61, 1), (61, 4), (61, 11), -- Indian Chicken Curry: Comfort Food, Gourmet Delights, Meal Prep
(62, 4), (62, 8), (62, 10), -- Cajun Fish Tacos: Gourmet Delights, Party Pleasers, Low-Carb Options
(63, 1), (63, 12), (63, 4), -- French Chicken Stew: Comfort Food, Classic Recipes, Gourmet Delights
(64, 1), (64, 6), (64, 7), -- Chicken and Mushroom Casserole: Comfort Food, Kid-Friendly, Budget-Friendly
(65, 1), (65, 4), (65, 7), -- Chicken and Leek Pie: Comfort Food, Gourmet Delights, Budget-Friendly
(66, 4), (66, 3), (66, 1), -- Chinese Chicken Porridge: Gourmet Delights, Quick and Easy, Comfort Food
(67, 9), (67, 6), (67, 8), -- Festive Pudding Trifle: Holiday Specialties, Kid-Friendly, Party Pleasers
(68, 1), (68, 11), (68, 7), -- Sausage and Greens Stir-Fry: Comfort Food, Meal Prep, Budget-Friendly
(69, 12), (69, 1), (69, 7), -- Balkan Sausages: Classic Recipes, Comfort Food, Budget-Friendly
(70, 2), (70, 5), (70, 10), -- Indian Lentil Curry: Healthy Choices, Vegetarian and Vegan, Low-Carb Options
(71, 6), (71, 12), (71, 1), -- British Pastry Cakes: Kid-Friendly, Classic Recipes, Comfort Food
(72, 1), (72, 11), (72, 7), -- Middle Eastern Chickpea Dish: Comfort Food, Meal Prep, Budget-Friendly
(73, 1), (73, 3), (73, 7), -- Alfredo Pasta: Comfort Food, Quick and Easy, Budget-Friendly
(74, 1), (74, 6), (74, 7), -- French Leek Pie: Comfort Food, Kid-Friendly, Budget-Friendly
(75, 12), (75, 1), (75, 4), -- Egyptian Pastry: Classic Recipes, Comfort Food, Gourmet Delights
(76, 1), (76, 3), (76, 7), -- Creamy Pasta: Comfort Food, Quick and Easy, Budget-Friendly
(77, 12), (77, 4), (77, 1), -- Greek Shrimp Appetizer: Classic Recipes, Gourmet Delights, Comfort Food
(78, 4), (78, 8), (78, 3), -- Gourmet Grilled Cheese: Gourmet Delights, Party Pleasers, Quick and Easy
(79, 8), (79, 4), (79, 2), -- Glazed Teriyaki Salmon: Party Pleasers, Gourmet Delights, Healthy Choices
(80, 8), (80, 4), (80, 11), -- Japanese Rice Bowl: Party Pleasers, Gourmet Delights, Meal Prep
(81, 1), (81, 4), (81, 7), -- Malaysian Prawn Noodle Soup: Comfort Food, Gourmet Delights, Budget-Friendly
(82, 12), (82, 1), (82, 4), -- Moroccan Lamb Stew: Classic Recipes, Comfort Food, Gourmet Delights
(83, 1), (83, 7), (83, 6), -- Lamb and Potato Casserole: Comfort Food, Budget-Friendly, Kid-Friendly
(84, 1), (84, 12), (84, 10), -- Turkish Chickpea Soup: Comfort Food, Classic Recipes, Low-Carb Options
(85, 2), (85, 5), (85, 3), -- Mushroom and Chestnut Roulade: Healthy Choices, Vegetarian and Vegan, Quick and Easy
(86, 1), (86, 11), (86, 7), -- Ground Beef Pie: Comfort Food, Meal Prep, Budget-Friendly
(87, 6), (87, 1), (87, 12), -- British Sponge Cake: Kid-Friendly, Comfort Food, Classic Recipes
(88, 1), (88, 12), (88, 7), -- Middle Eastern Stew: Comfort Food, Classic Recipes, Budget-Friendly
(89, 1), (89, 7), (89, 11), -- Irish Mashed Potatoes: Comfort Food, Budget-Friendly, Meal Prep
(90, 12), (90, 1), (90, 4), -- Milanese Veal Shank: Classic Recipes, Comfort Food, Gourmet Delights
(91, 1), (91, 7), (91, 11), -- Oxtail Stew: Comfort Food, Budget-Friendly, Meal Prep
(92, 3), (92, 6), (92, 11), -- Flapjacks: Quick and Easy, Kid-Friendly, Meal Prep
(93, 9), (93, 12), (93, 6), -- Spiced Gingerbread Cake: Holiday Specialties, Classic Recipes, Kid-Friendly
(94, 4), (94, 12), (94, 10), -- French Egg Casserole: Gourmet Delights, Classic Recipes, Low-Carb Options
(95, 12), (95, 1), (95, 6), -- Polish Crepes: Classic Recipes, Comfort Food, Kid-Friendly
(96, 8), (96, 4), (96, 1), -- Portuguese Spicy Chicken with Coleslaw: Party Pleasers, Gourmet Delights, Comfort Food
(97, 1), (97, 7), (97, 11), -- Portuguese Steak Sandwich: Comfort Food, Budget-Friendly, Meal Prep
(98, 12), (98, 1), (98, 4), -- Portuguese Seafood Stew: Classic Recipes, Comfort Food, Gourmet Delights
(99, 7), (99, 2), (99, 11); -- Russian Potato Salad: Budget-Friendly, Healthy Choices, Meal Prep

