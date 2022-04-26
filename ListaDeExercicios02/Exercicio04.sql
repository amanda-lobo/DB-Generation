CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categorias
(
id BIGINT AUTO_INCREMENT,
tipo VARCHAR(60) NOT NULL,
disponivel BOOLEAN NOT NULL,
PRIMARY KEY(id)
);

CREATE TABLE tb_produtos
(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(155) NOT NULL,
preco DECIMAL (8,2) NOT NULL,
validade DATE NOT NULL,
peso FLOAT NOT NULL,
id_categorias BIGINT,
PRIMARY KEY (id),
FOREIGN KEY(id_categorias) REFERENCES tb_categorias(id)
);

SELECT * FROM tb_categorias;
SELECT * FROM tb_produtos;

INSERT INTO tb_categorias(tipo, disponivel)
VALUES("Aves", true);

INSERT INTO tb_categorias(tipo, disponivel)
VALUES("Porco", true);

INSERT INTO tb_categorias(tipo, disponivel)
VALUES("Boi", true);

INSERT INTO tb_categorias(tipo, disponivel)
VALUES("Carneiro", false);

INSERT INTO tb_categorias(tipo, disponivel)
VALUES("Tatu", false);

INSERT INTO tb_produtos(nome, preco, validade, peso, id_categorias)
VALUES("Galinha", 24.99, '2022-04-25', 50.0, 1);

INSERT INTO tb_produtos(nome, preco, validade, peso, id_categorias)
VALUES("Galo", 49.99, '2022-04-25', 70.0, 1);

INSERT INTO tb_produtos(nome, preco, validade, peso, id_categorias)
VALUES("Costela de Boi", 40.00, '2022-04-25', 67.50, 2);

INSERT INTO tb_produtos(nome, preco, validade, peso, id_categorias)
VALUES("Costelinha de Porco", 30.00, '2022-04-25', 37.85, 3);

INSERT INTO tb_produtos(nome, preco, validade, peso, id_categorias)
VALUES("Torresmo", 70.00, '2022-04-25', 3.25, 3);

INSERT INTO tb_produtos(nome, preco, validade, peso, id_categorias)
VALUES("Picanha", 180.00, '2022-04-25', 67.50, 2);

INSERT INTO tb_produtos(nome, preco, validade, peso, id_categorias)
VALUES("Pernil", 150.00, '2022-04-25', 43.90, 3);

INSERT INTO tb_produtos(nome, preco, validade, peso, id_categorias)
VALUES("Steack de Frango", 25.00, '2022-04-25', 3.0, 1);

SELECT * FROM tb_categorias;
SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 50.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.id_categorias = tb_categorias.id;
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.id_categorias = tb_categorias.id 
WHERE tipo ="Aves";