CREATE INDEX idx_ingredient_quantities_recipe_id ON ingredient_quantities (recipe_id);
CREATE INDEX idx_ingredient_quantities_ingredient_id ON ingredient_quantities (ingredient_id);
CREATE INDEX idx_nutritional_info_ingredient_id ON nutritional_info (ingredient_id);
CREATE INDEX idx_assignments_recipe_id ON assignments (recipe_id);
CREATE INDEX idx_assignments_episode_id ON assignments (episode_id);
