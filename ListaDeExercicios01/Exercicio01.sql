CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaboradores
(
idColaborador bigint PRIMARY KEY auto_increment,
nomeColaborador varchar(255) NOT NULL,
setorColaborador varchar(255) NOT NULL,
dataAdmissao date NOT NULL,
salarioColaborador double NOT NULL
);

INSERT INTO tb_colaboradores (nomeColaborador, setorColaborador, dataAdmissao, salarioColaborador)
VALUES ("Angelo", "Recrutamento e Seleção", "2018-10-03", 3000.30);

INSERT INTO tb_colaboradores (nomeColaborador, setorColaborador, dataAdmissao, salarioColaborador)
VALUES ("Victoria", "Departamento Pessoal", "2022-04-20", 2500.50);

INSERT INTO tb_colaboradores (nomeColaborador, setorColaborador, dataAdmissao, salarioColaborador)
VALUES ("Mário", "Treinamento e Desenvolvimento", "2019-09-03", 2800.95);

INSERT INTO tb_colaboradores (nomeColaborador, setorColaborador, dataAdmissao, salarioColaborador)
VALUES ("Stella", "Remuneração, Benefícios e Áreas de Atuação", "2020-08-15",2300.40);

INSERT INTO tb_colaboradores (nomeColaborador, setorColaborador, dataAdmissao, salarioColaborador)
VALUES ("Daniel", "Consultoria de Recursos Humanos", "2015-12-10",4500.07);

SELECT * FROM tb_colaboradores;

SELECT * FROM tb_colaboradores WHERE salarioColaborador > 2000;
SELECT * FROM tb_colaboradores WHERE salarioColaborador < 2000;

UPDATE tb_colaboradores SET salarioColaborador = 1500.49 WHERE idColaborador = 4;