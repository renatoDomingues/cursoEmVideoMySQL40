USE cadastro;

SHOW TABLES;

SELECT * FROM cursos;

SELECT * FROM gafanhotos;

DESCRIBE gafanhotos;

DESCRIBE cursos;

DROP DATABASE cadastro;
DROP DATABASE test;

USE cadastro;
DESCRIBE cursos;
DESCRIBE gafanhotos;

SELECT * FROM cursos; 

SHOW CREATE TABLE amigos;

SHOW CREATE DATABASE exemplos;

USE exemplos;

SELECT * FROM amigos;

SELECT * FROM gafanhotos;
SELECT * FROM cursos;

SELECT * FROM cursos
ORDER BY nome;

SELECT * FROM cursos
ORDER BY nome ASC;

SELECT * FROM cursos
ORDER BY nome DESC;

SELECT nome, carga, ano FROM cursos
ORDER BY nome;

SELECT ano, nome, carga FROM cursos
ORDER BY ano;

SELECT * FROM cursos 
WHERE ano = '2016'
ORDER BY nome;

SELECT nome, carga FROM cursos 
WHERE ano = '2016'
ORDER BY nome;

SELECT nome, descricao, ano FROM cursos
WHERE ano <= '2015'
ORDER BY nome;

SELECT nome, ano FROM cursos
WHERE ano BETWEEN '2014' AND '2016'
ORDER BY ano DESC, nome;

SELECT nome, descricao, ano FROM cursos
WHERE ano IN (2014, 2016, 2020)
ORDER BY ano;

SELECT nome, carga, totaulas FROM cursos
 WHERE carga > 35 AND totaulas <= 30
 ORDER BY nome;
 
 SELECT nome, carga, totaulas FROM cursos
 WHERE carga > 35 OR totaulas <= 30
 ORDER BY nome;

USE cadastro;

SELECT * from cursos
WHERE nome LIKE 'a%'; 

SELECT * from cursos
WHERE nome LIKE 'p%'; 

SELECT * FROM cursos
WHERE nome LIKE '%a';

SELECT * FROM cursos
WHERE nome LIKE '%A%';

SELECT * FROM cursos
WHERE nome NOT LIKE '%A%';

UPDATE cursos SET nome = 'PáOO' WHERE idcurso = '0';

SELECT * FROM cursos; 

SELECT * from cursos
WHERE nome LIKE 'ph%p'; 

SELECT * from cursos
WHERE nome LIKE 'ph%p_'; 

SELECT * from cursos
WHERE nome LIKE 'p%';

SELECT * from cursos
WHERE nome LIKE 'p_p%';

SELECT * from cursos
WHERE nome LIKE 'p__t%';

SELECT * from gafanhotos
WHERE nome LIKE '%silva%';

INSERT INTO gafanhotos VALUES
('', 'Silvana Albuquerque', 'Programador', '1999-05-22', 'F', '56.00', '1.50', 'Brasil');

SELECT nacionalidade FROM gafanhotos;

SELECT DISTINCT nacionalidade FROM gafanhotos;

SELECT carga FROM cursos
ORDER BY carga;

SELECT DISTINCT carga FROM cursos
ORDER BY carga;

SELECT COUNT(*) FROM cursos;

SELECT * FROM cursos WHERE carga > 40;

SELECT COUNT(nome) FROM cursos WHERE carga > 40;

SELECT MAX(carga) FROM cursos;

SELECT * FROM cursos WHERE ano = '2016';

SELECT MAX(totaulas) FROM cursos WHERE ano = '2016';

SELECT MIN(totaulas) FROM cursos WHERE ano = '2016';

SELECT nome, MAX(totaulas) FROM cursos WHERE ano = '2016';

SELECT SUM(totaulas) FROM cursos;

SELECT SUM(totaulas) FROM cursos WHERE '2016';

SELECT AVG(totaulas) FROM cursos;

SELECT SUM(totaulas) FROM cursos WHERE ano = '2016';
