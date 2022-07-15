USE cadastro;

CREATE TABLE gafanhotas (
id INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(30),
sobrenome VARCHAR(30),
nascimento DATE,
sexo ENUM('M','F'),
peso DECIMAL(5,2),
altura DECIMAL(3,2),
filhos ENUM('S','N'),
nacionalidade VARCHAR(20) DEFAULT 'Brasil',
PRIMARY KEY(id)
)DEFAULT CHARSET = utf8;

INSERT INTO gafanhotas 
(id, nome, sobrenome, nascimento, sexo, peso, altura, filhos, nascimento)
VALUES
( '', 'Samantha', 'Cainarolla', '1995-10-15', 'F', '75,20', '1.65', 'N', 'Brasil'),
( '', 'Claudia', 'Pinto', '1982-05-25', 'F', '78,20', '1.55', 'S', 'EUA'),
( '', 'Rebeca', 'Domingues', '2001-08-22', 'F', '70,50', '1.80', 'N', 'Paraguay');

INSERT INTO gafanhotas 
VALUES
( '', 'Samantha', 'Cainarolla', '1995-10-15', 'F', '75,20', '1.65', 'N', 'Brasil'),
( '', 'Claudia', 'Pinto', '1982-05-25', 'F', '78,20', '1.55', 'S', 'EUA'),
( '', 'Rebeca', 'Domingues', '2001-08-22', 'F', '70,50', '1.80', 'N', 'Paraguay');

DESCRIBE gafanhotas;

SELECT * FROM gafanhotas;

INSERT INTO  gafanhotas
VALUES
('', 'Fernanda', 'Odias', '2000-01-01', 'F', '60,56', '1.55', 'S', 'Japan'),
('', 'Silmara', 'Love', '2015-12-31', 'F', '66,80', '1.75', 'S', 'Brasil'),
('', 'Francieli Martinez', 'Farias', '2005-03-31', 'F', '88,76', '1.62', 'N', 'Brasil'),
('', 'Soneli F Domingues', 'Junior', '2008-10-25', 'F', '60,56', '1.80', 'N', 'EUA');

USE gafanhotas;

SHOW CREATE TABLE gafanhotas;

SELECT * FROM gafanhotas
ORDER BY sobrenome;

SHOW TABLES;

SELECT sobrenome, nascimento FROM gafanhotas
WHERE nascimento BETWEEN '2000' AND '2015';

SELECT id, nome, nascimento FROM gafanhotas
WHERE nascimento IN (2000, 2015)
ORDER BY nascimento;

SELECT nome, descricao, ano FROM cursos
WHERE ano IN (2014, 2016, 2020)
ORDER BY ano;
