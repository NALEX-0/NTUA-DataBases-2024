DROP INDEX IF EXISTS idx_assignments_recipe_id ON assignments;
DROP INDEX IF EXISTS idx_assignments_episode_id ON assignments;

CREATE INDEX idx_equipment_requirements_recipe_id ON equipment_requirements (recipe_id);
CREATE INDEX idx_equipment_requirements_equipment_id ON equipment_requirements (equipment_id);
CREATE INDEX idx_assignments_recipe_id ON assignments (recipe_id);
CREATE INDEX idx_assignments_episode_id ON assignments (episode_id);
