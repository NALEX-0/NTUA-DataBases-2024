CREATE INDEX idx_recipe_labels_recipe_id ON recipe_labels (recipe_id);
CREATE INDEX idx_recipe_labels_labels_id ON recipe_labels (labels_id);
CREATE INDEX idx_assignments_recipe_id ON assignments (recipe_id);
CREATE INDEX idx_assignments_episode_id ON assignments (episode_id);
