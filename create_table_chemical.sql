CREATE TABLE price-transparency_development.chemicals (
  chemical_id INT NOT NULL PRIMARY KEY,
  chemical_type VARCHAR(100),
  chemical_name VARCHAR(100),
  chemical_formal_name VARCHAR(100),
  how_to_use VARCHAR(100),
  dosage_form_name VARCHAR(100),
  registration_date DATE
);