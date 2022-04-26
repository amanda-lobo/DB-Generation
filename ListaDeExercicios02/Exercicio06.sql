CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias
(
id BIGINT AUTO_INCREMENT,
modelo VARCHAR(50) NOT NULL,
ativo BOOLEAN NOT NULL,
PRIMARY KEY(id)
);

CREATE TABLE tb_cursos
(
id BIGINT AUTO_INCREMENT,
curso VARCHAR(255) NOT NULL,
duracao VARCHAR(100) NOT NULL,
descricao VARCHAR (500) NOT NULL,
alunos INT NOT NULL,
id_categorias BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (id_categorias) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(modelo, ativo)
VALUES("EAD", true);

INSERT INTO tb_categorias(modelo, ativo)
VALUES("Presencial", true);

INSERT INTO tb_categorias(modelo, ativo)
VALUES("Telepresencial", true);

INSERT INTO tb_categorias(modelo, ativo)
VALUES("BootCamp", true);

INSERT INTO tb_categorias(modelo, ativo)
VALUES("Cursos Tecnicos", true);

INSERT INTO tb_cursos(curso, duracao, descricao, alunos, id_categorias)
VALUES("Java Junior", "3 meses", "Curso de formação Java Júnior", 10, 4);

INSERT INTO tb_cursos(curso, duracao, descricao, alunos, id_categorias)
VALUES("Desenvolvedor de App's Junior", "3 meses", "Curso de formação Desenvolvedor de App's Júnior", 15, 4);

INSERT INTO tb_cursos(curso, duracao, descricao, alunos, id_categorias)
VALUES("Analise e Desenvolvimento de Sistemas", "2 anos e 5 meses", "Tecnologo", 30, 3);

INSERT INTO tb_cursos(curso, duracao, descricao, alunos, id_categorias)
VALUES("Sistemas da informação", "5 anos", "Bacharel", 50, 1);

INSERT INTO tb_cursos(curso, duracao, descricao, alunos, id_categorias)
VALUES("Ciência da Computação", "4 anos", "Bacharel", 45, 2);

INSERT INTO tb_cursos(curso, duracao, descricao, alunos, id_categorias)
VALUES("Tecnico em Informática", "1 ano e 5 meses", "Técnico", 35, 5);

INSERT INTO tb_cursos(curso, duracao, descricao, alunos, id_categorias)
VALUES("Desenvolvedor .NET Júnior", "3 meses", "Curso de formação Desenvolvedor .NET Júnior", 25, 4);

INSERT INTO tb_cursos(curso, duracao, descricao, alunos, id_categorias)
VALUES("Inglês Técnico", '10000:4000:55', "Curso de formação técnico em inglês", 18, 5);

SELECT * FROM tb_categorias;
SELECT * FROM tb_cursos;

SELECT * FROM tb_cursos WHERE alunos > 30;

SELECT * FROM tb_cursos WHERE alunos BETWEEN 30 and 50;

SELECT * FROM tb_cursos WHERE curso LIKE "%J%";

SELECT * FROM tb_cursos INNER JOIN tb_categorias ON tb_cursos.id_categorias = tb_categorias.id;

SELECT * FROM tb_cursos INNER JOIN tb_categorias ON tb_cursos.id_categorias = tb_categorias.id
WHERE modelo="BootCamp";