CREATE DATABASE cadastro
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;

USE cadastro;

CREATE TABLE pessoas (
id INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(30),
nascimento DATE,
sexo ENUM('M','F'),
peso DECIMAL(5,2),
altura DECIMAL(3,2),
nacionalidade VARCHAR(20) DEFAULT 'Brasil',
PRIMARY KEY(id)
) DEFAULT CHARSET = utf8;

INSERT INTO pessoas
(id, nome, nascimento, sexo, peso, altura, nacionalidade) 
VALUES
('1', 'Godofredo', '1984-01-02', 'M', '78.50', '1.83', 'Brasil');

DESCRIBE pessoas;

ALTER TABLE pessoas
ADD COLUMN profissao VARCHAR(10);

ALTER TABLE pessoas
DROP COLUMN profissao;

ALTER TABLE pessoas
ADD COLUMN profissao VARCHAR(10) AFTER nome;

ALTER TABLE pessoas
ADD COLUMN codigo INT FIRST;

ALTER TABLE pessoas
MODIFY COLUMN profissao VARCHAR(20) NOT NULL DEFAULT '';

ALTER TABLE pessoa
CHANGE COLUMN profissao prof VARCHAR(20);

ALTER TABLE pessoas
RENAME TO gafanhotos;

SELECT * FROM gafanhotos;

CREATE TABLE IF NOT EXISTS cursos (
nome VARCHAR(30) NOT NULL UNIQUE,
descricao TEXT,
carga INT UNSIGNED,
totaulas INT UNSIGNED,
ano YEAR DEFAULT '2016'
) DEFAULT CHARSET = utf8;

DESCRIBE cursos;

ALTER TABLE cursos
ADD COLUMN idcurso INT FIRST;

ALTER TABLE cursos
ADD PRIMARY KEY (idcurso);

CREATE TABLE teste (
id INT,
nome VARCHAR(10),
idade INT
) DEFAULT CHARSET = utf8;

INSERT INTO teste VALUES
('1', 'Pedro', '22'),
('2', 'Maria', '12'),
('3', 'Maricota', '77');

ALTER TABLE teste
DROP idade;

DROP TABLE IF EXISTS teste;

SELECT * FROM gafanhotos;

SELECT * FROM cursos;

INSERT INTO cursos VALUES
('1', 'HTML4', 'Curso de HTML5', '40', '37', '2014'),
('2', 'Algoritmos', 'Lógica de Programação', '20', '15', '2014'),
('3', 'Photoshop', 'Dicas de Photoshop CC', '10', '8', '2014'),
('4', 'PGP', 'Curso de PHP para iniciantes', '40', '20', '2010'),
('5', 'Jarva', 'Introdução á Linguagem Java', '10', '29', '2000'),
('6', 'MySQL', 'Banco de Dados MySQL', '30', '15', '2016'),
('7', 'Word', 'Curso completo de Word', '40', '30', '2016'),
('8', 'Sapateado', 'Danças Rítmicas', '40', '30', '2018'),
('9', 'Cozinha Árabe', 'Aprenda a fazer Kibe', '40', '30', '2018'),
('10', 'YouTube', 'Gerar polêmica e ganhar inscrito', '5', '2', '2018');

SELECT * FROM cursos;

UPDATE cursos
SET nome = 'HTML5'
WHERE idcurso = '1';

SELECT * FROM cursos;

UPDATE cursos
SET nome = 'PHP', ano = '2015'
WHERE idcurso = '4';

SELECT * FROM cursos;

UPDATE cursos
SET nome = 'Java', carga = '40', ano = '2015'
WHERE idcurso = '5'
LIMIT 1;

SELECT * FROM cursos;

DELETE FROM cursos
WHERE idcurso = '8';

SELECT * FROM cursos;

DELETE FROM cursos
WHERE ano = '2018'
limit 2;

SELECT * FROM cursos;

TRUNCATE TABLE cursos;

SELECT * FROM cursos;
