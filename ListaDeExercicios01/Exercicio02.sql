CREATE DATABASE db_comercio;

USE db_comercio;

CREATE TABLE tb_produtos
(
idProduto bigint PRIMARY KEY auto_increment,
valorProduto double NOT NULL,
nomeProduto varchar(255) NOT NULL,
categoriaProduto varchar(255) NOT NULL,
quantidadeProduto int NOT NULL
); 

INSERT INTO tb_produtos (valorProduto, nomeProduto, categoriaProduto, quantidadeProduto)
VALUES (250.99,"Caixa Organizadora","Utensílios de organização", 5);

INSERT INTO tb_produtos (valorProduto, nomeProduto, categoriaProduto, quantidadeProduto)
VALUES (550.79,"Abajour do Harry Potter","Itém decorativo", 25);

INSERT INTO tb_produtos (valorProduto, nomeProduto, categoriaProduto, quantidadeProduto)
VALUES (789.90,"Lixeira inteligente","Utensílios domesticos", 2);

INSERT INTO tb_produtos (valorProduto, nomeProduto, categoriaProduto, quantidadeProduto)
VALUES (199.99,"Kit de banho","Utensílios de higiene pessoal", 10);

INSERT INTO tb_produtos (valorProduto, nomeProduto, categoriaProduto, quantidadeProduto)
VALUES (999.99,"Sofá retrátil","Móveis", 40);

INSERT INTO tb_produtos (valorProduto, nomeProduto, categoriaProduto, quantidadeProduto)
VALUES (50.90,"Maletas organizadoras","Utensílios de organização", 25);

INSERT INTO tb_produtos (valorProduto, nomeProduto, categoriaProduto, quantidadeProduto)
VALUES (237.90,"Cama Box","Móveis", 10);

INSERT INTO tb_produtos (valorProduto, nomeProduto, categoriaProduto, quantidadeProduto)
VALUES (129.99,"Funko Pop","Itém decorativo", 2);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE valorProduto > 500;
SELECT * FROM tb_produtos WHERE valorProduto < 500;

UPDATE tb_produtos SET categoriaProduto = "Aspirador Robô" WHERE idProduto = 3;
UPDATE tb_produtos SET categoriaProduto = "Utensílios domesticos" WHERE idProduto = 3;
UPDATE tb_produtos SET nomeProduto = "Aspirador Robô" WHERE idProduto = 3;