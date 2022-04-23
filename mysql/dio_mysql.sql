CREATE TABLE pessoas (
    id INT NOT NULL PRIMaRY KEY AUTOINCREMENT, 
    nome VARCHAR(30) NOT NULL,
    nascimento DATE

)

########## INSERT #############
INSERT INTO pessoas (nome, nascimento) VALUES ('Franklin Moura', '1951-03-09');
INSERT INTO pessoas (nome, nascimento) VALUES ('Franciso Lunar', '1991-01-11');
INSERT INTO pessoas (nome, nascimento) VALUES ('Lucas Freitas', '1945-02-15');
INSERT INTO pessoas (nome, nascimento) VALUES ('Carlos Germano', '1987-09-22');
INSERT INTO pessoas (nome, nascimento) VALUES ('Franco Felipe', '2000-01-31');
INSERT INTO pessoas (nome, nascimento) VALUES ('Fabio Franca', '1978-02-27');
INSERT INTO pessoas (nome, nascimento) VALUES ('Carlos Terra', '1999-03-01');
INSERT INTO pessoas (nome, nascimento) VALUES ('Telses Lucas', '1933-10-30');
INSERT INTO pessoas (nome, nascimento) VALUES ('Luiz Fernando', '1951-12-18');
INSERT INTO pessoas (nome, nascimento) VALUES ('Carmen Lucia', '1976-11-23');
INSERT INTO pessoas (nome, nascimento) VALUES ('Gabriel Dica', '1984-06-25');
INSERT INTO pessoas (nome, nascimento) VALUES ('Loureiro Pia', '1969-07-23');



SELECT name FROM pessoas;
SELECT name, nascimento FROM pessoas:

UPDATE pessoas SET nome='Franklin Moura'; | Nao execute, irá modificar toda a coluna nome para Franklin Moura.

UPDATE pessoa SET nome='Franklin Moura' WHERE id=1;

SELECT * FROM pessoa where id=5;
DELETE FROM pessoa WHERE id=15;


SELECT * FROM pessoa ORDER BY nome; | Ordena de forma crescente
SELECT * FROM pessoa ORDER BY nome DESC; | Ordena de forma decrescenter


####################### ALTER TABLE #############
ALTER TABLE pessoa ADD genero VARCHAR(1) NOT NULL AFTER nascimento;
ALTER TABLE pessoa ADD cidade VARCHAR(39) NOT NULL AFTER genero;
ALTER TABLE pessoa ADD estado VARCHAR(3) NOT NULL AFTER cidade;
ALTER TABLE pessoa ADD pais VARCHAR(20) NOT NULL BEFORE cidade;


####################### UPDATE ##################
UPDATE pessoa SET genero='F', cidade='Canoas' WHERE id=11;
UPDATE pessoa SET nome='Franciele Freitas' WHERE id=11;
UPDATE pessoa SET genero='F', cidade='Canoas' WHERE id=14;
UPDATE pessoa SET genero='F', cidade='Cachoeirinha' WHERE id=17;
UPDATE pessoa SET genero='F', cidade='Canoas' WHERE id=17;
UPDATE pessoa SET genero='M', cidade='Canoas', pais='BR', estado='RS' WHERE id=1;
UPDATE pessoa SET genero='M', cidade='Londrina', pais='PR', estado='PR' WHERE id=2;
UPDATE pessoa SET nome='Debora Bordini',genero='F', cidade='Franca', pais='BR', estado='RJ' WHERE id=7;
UPDATE pessoa SET genero='M', cidade='Ribeirão Preto', pais='BR', estado='SP' WHERE id=8;
UPDATE pessoa SET genero='M', cidade='Los Angeles', pais='USA', estado='CA' WHERE id=9;
UPDATE pessoa SET genero='M', cidade='Cuíba', pais='BR', estado='MT' WHERE id=10;
UPDATE pessoa SET genero='F', cidade='Gramado', pais='BR', estado='RS' WHERE id=11;


###################### GROUP BY #########################
SELECT COUNT(id), genero FROM pessoa GROUP BY genero;
SELECT COUNT(genero), genero FROM pessoa GROUP BY genero; | Tras o mesmo valor que count by id


