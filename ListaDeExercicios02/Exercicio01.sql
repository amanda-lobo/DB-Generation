create database db_generation_game_online;

use db_generation_game_online;

CREATE TABLE tb_classes
(
id BIGINT AUTO_INCREMENT,
categoria VARCHAR(65) NOT NULL,
poderes VARCHAR(65) NOT NULL,
PRIMARY KEY (id)
); 

CREATE TABLE tb_personagens
(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(256) NOT NULL,
dano_ataque BIGINT,
defesa BIGINT,
armadura BIGINT,
id_classes BIGINT,
PRIMARY KEY(id),
FOREIGN KEY (id_classes) REFERENCES tb_classes (id)
);

INSERT INTO tb_classes(categoria, poderes)
VALUES ("Arqueiro", "Pistoleiro");

INSERT INTO tb_classes(categoria, poderes)
VALUES ("Bruxa", "Magia");

INSERT INTO tb_classes(categoria, poderes)
VALUES ("Dragão", "Fogo");

INSERT INTO tb_classes(categoria, poderes)
VALUES ("Frozen", "Gelo");

INSERT INTO tb_classes(categoria, poderes)
VALUES ("Sereia", "Água");

INSERT INTO tb_personagens(nome, dano_ataque, defesa, armadura, id_classes)
VALUES ("Elsa", 5000, 3500, 2000, 4);

INSERT INTO tb_personagens(nome, dano_ataque, defesa, armadura, id_classes)
VALUES ("Ariel", 2000, 4000, 200, 5);

INSERT INTO tb_personagens(nome, dano_ataque, defesa, armadura, id_classes)
VALUES ("Oliver", 3500, 1500, 100, 1);

INSERT INTO tb_personagens(nome, dano_ataque, defesa, armadura, id_classes)
VALUES ("Banguela", 5500, 7000, 2000, 3);

INSERT INTO tb_personagens(nome, dano_ataque, defesa, armadura, id_classes)
VALUES ("Belatrix", 7000, 5500, 4000, 2);

INSERT INTO tb_personagens(nome, dano_ataque, defesa, armadura, id_classes)
VALUES ("Margarete", 2500, 500, 50, 3);

INSERT INTO tb_personagens(nome, dano_ataque, defesa, armadura, id_classes)
VALUES ("Jonadab", 4000, 500, 3000, 1);

INSERT INTO tb_personagens(nome, dano_ataque, defesa, armadura, id_classes)
VALUES ("Sirius", 5000, 3500, 2000, 2);

SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens WHERE dano_ataque > 2000;

SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 and 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%O%";

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.id_classes = tb_classes.id;

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.id_classes = tb_classes.id
WHERE categoria = "Arqueiro";