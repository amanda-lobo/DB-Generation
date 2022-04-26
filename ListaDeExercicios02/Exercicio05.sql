CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;

CREATE TABLE tb_categorias
(
id BIGINT AUTO_INCREMENT,
tipo VARCHAR(255) NOT NULL,
disponivel BOOLEAN NOT NULL,
PRIMARY KEY(id)
);

CREATE TABLE tb_produtos
(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
preco DECIMAL(8,2) NOT NULL,
descricao VARCHAR(500) NOT NULL,
quantidade INT NOT NULL,
id_categorias BIGINT,
PRIMARY KEY(id),
FOREIGN KEY(id_categorias) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(tipo, disponivel)
VALUES("Cimento", true);

INSERT INTO tb_categorias(tipo, disponivel)
VALUES("Tijolos", true);

INSERT INTO tb_categorias(tipo, disponivel)
VALUES("Tintas", true);

INSERT INTO tb_categorias(tipo, disponivel)
VALUES("Argamassa", true);

INSERT INTO tb_categorias(tipo, disponivel)
VALUES("Areia", true);

INSERT INTO tb_produtos(nome, preco, descricao, quantidade, id_categorias)
VALUES("Cimento - Ci+", 199.99, "Pacote de cimento", 10, 1);

INSERT INTO tb_produtos(nome, preco, descricao, quantidade, id_categorias)
VALUES("Tijolo de Vidro", 250.00, "Tijolos de Vidro",  5, 2);

INSERT INTO tb_produtos(nome, preco, descricao, quantidade, id_categorias)
VALUES("Tinta Acrilica", 79.90, "Tinta para parede", 2, 3);

INSERT INTO tb_produtos(nome, preco, descricao, quantidade, id_categorias)
VALUES("Tinta de Piso", 65.90, "Tinta para piso", 15, 3);

INSERT INTO tb_produtos(nome, preco, descricao, quantidade, id_categorias)
VALUES("Arga+", 150.00, "Argamassa para construção", 1, 4);

INSERT INTO tb_produtos(nome, preco, descricao, quantidade, id_categorias)
VALUES("Areia branca", 55.90, "Areia branca para construção", 0, 5);

INSERT INTO tb_produtos(nome, preco, descricao, quantidade, id_categorias)
VALUES("Tijolo Laranja", 70.54, "Tijolos laranjas", 6, 2);

INSERT INTO tb_produtos(nome, preco, descricao, quantidade, id_categorias)
VALUES("Argamassa - Piso", 35.80, "Argamassa para piso", 20, 4);

SELECT * FROM tb_categorias;
SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 100.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 70.00 AND 100.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.id_categorias = tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.id_categorias = tb_categorias.id
WHERE tipo="Tijolos";