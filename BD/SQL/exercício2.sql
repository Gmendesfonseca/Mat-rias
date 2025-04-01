CREATE TABLE patient (
  id INT PRIMARY KEY,
  name NVARCHAR(50),
  cpf NVARCHAR(50),
  rg NVARCHAR(50),
  sex NVARCHAR(50),
  birth_date DATE,
  phone NVARCHAR(50),
  medical_agreement_name NVARCHAR(50),
  medical_agreement_number NVARCHAR(50),
);

CREATE TABLE doctor (
  id INT PRIMARY KEY,
  name NVARCHAR(50),
  CRM NVARCHAR(50),
  phone NVARCHAR
  specialty NVARCHAR(50),
);

CREATE TABLE appointment (
  id INT PRIMARY KEY,
  date DATE,
  hour TIME,
  patient_id INT,
  doctor_id INT,
  FOREIGN KEY (patient_id) REFERENCES patient(id),
  FOREIGN KEY (doctor_id) REFERENCES doctor(id)
);
