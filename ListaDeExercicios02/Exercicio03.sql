CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

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
descricao VARCHAR(255) NOT NULL,
preco DECIMAL (8,2) NOT NULL,
receita BOOLEAN NOT NULL,
id_categorias BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (id_categorias) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (tipo, disponivel) 
VALUES ("Medicamentos", true);

INSERT INTO tb_categorias (tipo, disponivel) 
VALUES ("Medicamentos controlados", true);

INSERT INTO tb_categorias (tipo, disponivel) 
VALUES ("Higiene", true);

INSERT INTO tb_categorias (tipo, disponivel) 
VALUES ("Cosmeticos", true);

INSERT INTO tb_categorias (tipo, disponivel) 
VALUES ("Suplemento", true);

INSERT INTO tb_produtos (nome, descricao, preco, receita, id_categorias) 
VALUES ("Buscopan", "Reduz dores de cólicas", 21.50, false,  1);

INSERT INTO tb_produtos (nome, descricao, preco, receita, id_categorias) 
VALUES ("Paroxetina", "antidepressivo", 52.90, true, 2);

INSERT INTO tb_produtos (nome, descricao, preco, receita, id_categorias) 
VALUES ("Desodorante Dove", "Itens de Higiene", 15.00, false, 3);

INSERT INTO tb_produtos (nome, descricao, preco, receita, id_categorias) 
VALUES ("Esmalte Impala", "esmalte", 5.99, false, 4);

INSERT INTO tb_produtos (nome, descricao, preco, receita, id_categorias) 
VALUES ("Centrum", "vitamina", 150.99, false, 5);

INSERT INTO tb_produtos (nome, descricao, preco, receita, id_categorias) 
VALUES ("Dorflex", "relaxante muscular", 20, false, 1);

INSERT INTO tb_produtos (nome, descricao, preco, receita, id_categorias) 
VALUES ("Topiramato", "estabiliza humor", 62.90, true, 2);

INSERT INTO tb_produtos (nome, descricao, preco, receita, id_categorias) 
VALUES ("Shampoo Pantene", "produtos de higiene", 29.90, false, 3);

SELECT * FROM tb_produtos;

SELECT * FROM tb_categorias;

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5 AND 60;

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.id_categorias = tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.id_categorias = tb_categorias.id
WHERE tb_categorias.tipo="Cosmeticos";
