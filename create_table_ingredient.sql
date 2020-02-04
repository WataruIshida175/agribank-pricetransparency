CREATE TABLE chemicals.ingredient (
  ingredient_id INT NOT NULL PRIMARY KEY,
  chemical_id INT NOT NULL,
  active_ingredient VARCHAR(100),
  active_ingredient_in_total_use VARCHAR(100),
  concentration VARCHAR(100),
  num_of_mixed INT
);