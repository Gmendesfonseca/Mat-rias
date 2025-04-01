CREATE DATABASE IF NOT EXISTS DML

DROP TABLE professor
DROP TABLE disciplina
DROP TABLE disc_professor

CREATE TABLE professor (
	cod_professor INT PRIMARY KEY AUTO_INCREMENT,
	nome NVARCHAR(50),
	email NVARCHAR(150),
	cpf NVARCHAR(11),
	rg NVARCHAR(15)
)

INSERT INTO professor(cod_professor, nome, email, cpf, rg) VALUES
(1,"WARNER", "warner@gmail.com", "12312312345", "12312312312345")

INSERT INTO professor(cod_professor, nome, email, cpf, rg) VALUES 
(2,"CAROL", "carol@gmail.com", "12312312345", "12312312312345")

CREATE TABLE disciplina (
	cod_disc INT PRIMARY KEY AUTO_INCREMENT,
	descricao NVARCHAR(100)
)

INSERT INTO disciplina (cod_disc, descricao) VALUES 
(1, "Engenharia de Software 3")

INSERT INTO disciplina (cod_disc, descricao) VALUES 
(2, "POO")

CREATE TABLE disc_professor (
	cod_disc_professor INT PRIMARY KEY AUTO_INCREMENT,
	cod_professor INT,
	cod_disc INT,
	CONSTRAINT FK_DISC FOREIGN KEY (cod_disc) REFERENCES disciplina(cod_disc),
	CONSTRAINT FK_PROF FOREIGN KEY (cod_professor) REFERENCES professor(cod_professor)
)

INSERT  INTO disc_professor (cod_professor, cod_disc) VALUES (1,1)

SELECT p.nome, d.descricao 
FROM professor p
	INNER JOIN disc_professor dp on
	p.cod_professor = dp.cod_professor
	INNER JOIN disciplina d on
	d.cod_disc = dp.cod_disc 
	
SELECT p.nome, d.descricao 
FROM professor p
	LEFT JOIN disc_professor dp on
	p.cod_professor = dp.cod_professor
	LEFT JOIN disciplina d on
	d.cod_disc = dp.cod_disc 
	
SELECT p.nome, d.descricao 
FROM professor p
	RIGHT JOIN disc_professor dp on
	p.cod_professor = dp.cod_professor
	RIGHT JOIN disciplina d on
	d.cod_disc = dp.cod_disc 
	
UPDATE disc_professor SET cod_professor = 2 WHERE cod_professor = 1
