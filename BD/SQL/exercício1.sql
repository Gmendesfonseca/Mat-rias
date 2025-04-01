CREATE TABLE car (
  id INT PRIMARY KEY,
  plate NVARCHAR(7),
  color NVARCHAR(15),
  year INT,
  year_model INT,
  year_fabrication INT,
  model NVARCHAR(20),
  brand NVARCHAR(20),
  manufacturer NVARCHAR(20),
  chassis NVARCHAR(50),
  FOREIGN KEY (owner_id) REFERENCES owner(id)
);

CREATE TABLE owner_car (
  id INT PRIMARY KEY,
  name NVARCHAR(50),
  driver_license NVARCHAR(20)
);
