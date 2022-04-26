CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias
(
id BIGINT AUTO_INCREMENT,
tipo VARCHAR(50),
recheio_borda BOOLEAN,
PRIMARY KEY(id)
);

CREATE TABLE tb_pizzas
(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(150) NOT NULL,
sabor VARCHAR (150) NOT NULL,
preco DECIMAL(8,2) NOT NULL,
ingredientes VARCHAR(500) NOT NULL,
id_categorias BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (id_categorias) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(tipo, recheio_borda)
VALUES ("Doce", true);

INSERT INTO tb_categorias(tipo, recheio_borda)
VALUES ("Doce", false);

INSERT INTO tb_categorias(tipo, recheio_borda)
VALUES ("Salgado", true);

INSERT INTO tb_categorias(tipo, recheio_borda)
VALUES ("Salgado", false);

INSERT INTO tb_categorias(tipo, recheio_borda)
VALUES ("Meio a meio", true);

INSERT INTO tb_categorias(tipo, recheio_borda)
VALUES ("Meio a meio", false);

INSERT INTO tb_pizzas(nome, sabor, preco, ingredientes, id_categorias)
VALUES ("Lo Portugas", "Portuguesa", 47.82, "Ovos, cebola, azeitona, ervilha, queijo e presunto", 4); 

INSERT INTO tb_pizzas(nome, sabor, preco, ingredientes, id_categorias)
VALUES ("Calabrecha", "Calabresa", 52.20, "Linguiça Calabresa e azeitona", 3);

INSERT INTO tb_pizzas(nome, sabor, preco, ingredientes, id_categorias)
VALUES ("La Franpiry", "Frango com Catupiry", 40.80, "Frango e queijo catupiry", 4);

INSERT INTO tb_pizzas(nome, sabor, preco, ingredientes, id_categorias)
VALUES ("Paixone", "Romeu e Julieta",87.85, "Queijo e goiabada", 2);

INSERT INTO tb_pizzas(nome, sabor, preco, ingredientes, id_categorias)
VALUES ("La doçura", "Nutella", 102.94,"Nutella com morangos", 1);

INSERT INTO tb_pizzas(nome, sabor, preco, ingredientes, id_categorias)
VALUES ("Meio tradicional","Mussarela & Calabresa", 68.99,"Metade mussarela com tomates e azeitona, metade calabresa com azeitona", 5);

INSERT INTO tb_pizzas(nome, sabor, preco, ingredientes, id_categorias)
VALUES ("Frangone", "Frango com Catupiry & Frango", 59.90, "Metade frango com azeitonas, Metade frango com Catupiry e azeitonas", 6);

INSERT INTO tb_pizzas(nome, sabor, preco, ingredientes, id_categorias)
VALUES ("Doce Vida", "Nutela & Romeu e Julieta", 95.80,"Metade queijo e goiabada, Metade Nutella com morangos", 6);

SELECT * FROM tb_categorias;
SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 and 100.00;

SELECT * FROM tb_pizzas WHERE nome LIKE "%M%";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.id_categorias = tb_pizzas.id;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.id_categorias = tb_pizzas.id WHERE tipo = "Doce";