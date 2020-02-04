CREATE TABLE chemicals.sale (
  sale_id INT NOT NULL PRIMARY KEY,
  chemical_id INT NOT NULL,
  agribank_price INT,
  unit VARCHAR(10)
);