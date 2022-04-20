CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudante
(
idEstudante bigint PRIMARY KEY auto_increment,
nomeEstudante varchar(255) NOT NULL,
turmaEstudante int NOT NULL,
mediaFinal double NOT NULL,
materia varchar(255) NOT NULL
);

INSERT INTO tb_estudante (nomeEstudante, turmaEstudante, mediaFinal, materia)
VALUES ("Amanda Lobo", 49, 10.0, "Matemática");

INSERT INTO tb_estudante (nomeEstudante, turmaEstudante, mediaFinal, materia)
VALUES ("Erick Henrique", 50, 9.5, "Física");

INSERT INTO tb_estudante (nomeEstudante, turmaEstudante, mediaFinal, materia)
VALUES ("Daniel Augusto", 24, 9.25, "Inglês");

INSERT INTO tb_estudante (nomeEstudante, turmaEstudante, mediaFinal, materia)
VALUES ("Estefani Lima", 51, 6.5, "Redação");

INSERT INTO tb_estudante (nomeEstudante, turmaEstudante, mediaFinal, materia)
VALUES ("Paulo Augisto", 29, 7.0, "Geografia");

INSERT INTO tb_estudante (nomeEstudante, turmaEstudante, mediaFinal, materia)
VALUES ("Viviane Rafaela", 15, 10.00, "Química");

INSERT INTO tb_estudante (nomeEstudante, turmaEstudante, mediaFinal, materia)
VALUES ("Estevão Moraes", 24, 6.0, "Redação");

INSERT INTO tb_estudante (nomeEstudante, turmaEstudante, mediaFinal, materia)
VALUES ("Aline Tavares", 15, 7.25, "Química");

SELECT * FROM tb_estudante;

SELECT * FROM tb_estudante WHERE mediaFinal > 7.0;
SELECT * FROM tb_estudante WHERE mediaFinal < 7.0;

UPDATE tb_estudante SET materia = "Inglês" WHERE idEstudante = 7;