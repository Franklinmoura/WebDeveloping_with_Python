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
########## INSERT COM AUTO INCREMENT ###################
INSERT INTO pessoa (nome, nascimento, genero, cidade, pais, estado) VALUES('Paulo Fernando', '1980-08-20', 'M', 'Ribeirao Preto', 'BR', 'SP');


SELECT name FROM pessoas;
SELECT name, nascimento FROM pessoas:

UPDATE pessoas SET nome='Franklin Moura'; | Nao execute, irá modificar toda a coluna nome para Franklin Moura.

UPDATE pessoa SET nome='Franklin Moura' WHERE id=1;

SELECT * FROM pessoa where id=5;
DELETE FROM pessoa WHERE id=15;


SELECT * FROM pessoa ORDER BY nome; | Ordena de forma crescente
SELECT * FROM pessoa ORDER BY nome DESC; | Ordena de forma decrescenter


####################### ALTER TABLE | Adicionando colunas #############
ALTER TABLE pessoa ADD genero VARCHAR(1) NOT NULL AFTER nascimento;
ALTER TABLE pessoa ADD cidade VARCHAR(39) NOT NULL AFTER genero;
ALTER TABLE pessoa ADD estado VARCHAR(3) NOT NULL AFTER cidade;
ALTER TABLE pessoa ADD pais VARCHAR(20) NOT NULL BEFORE cidade;
ALTER TABLE pessoa ADD contato VARCHAR(15) NOT NULL;




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


##################### DELETANDO UMA TABELA ####################
DROP TABLE nometable;

##################### Deletando base de dados #################
DROP DATABASE nomedatabase;


################### Table tbl_videos ##############


ALTER TABLE tbl_videos ADD genres VARCHAR(15) NOT NULL;
ALTER TABLE tbl_videos ADD  times_watched int(15) NOT NULL;
ALTER TABLE tbl_videos ADD  data_pub DATE NOT NULL;

CREATE TABLE tbl_videos (
    id_videos INT NOT NULL PRIMaRY KEY AUTOINCREMENT, 
    title VARCHAR(30) NOT NULL,
    likes int,
    dislike int,
    genres VARCHAR(15),
    times_watched int,
    data_pub DATE

)

INSERT INTO tbl_videos ( title,likes, dislikes, genres, times_watched, data_pub) VALUES ('MySQL', '1190', '230', 'Educational', '1500', '2021-02-13,);	
INSERT INTO tbl_videos ( title,likes, dislikes, genres, times_watched, data_pub) VALUES ('Python', '1190', '150', 'Educational', '1500', '2019-05-16');
INSERT INTO tbl_videos ( title,likes, dislikes, genres, times_watched, data_pub) VALUES ('Java', '45000', '100', 'Educational', '50000', '2019-09-29');	
INSERT INTO tbl_videos ( title,likes, dislikes, genres, times_watched, data_pub) VALUES ('JavaScript, '55032', '30', 'Educational', '57000', '2021-12-14');
INSERT INTO tbl_videos ( title,likes, dislikes, genres, times_watched, data_pub) VALUES ('Docker', '99000', '5', 'Educational', '102000', '2021-01-27');	
INSERT INTO tbl_videos ( title,likes, dislikes, genres, times_watched, data_pub) VALUES ('Kubernetes', '100009', '5', 'Educational', '101000', '2021-02-29');
INSERT INTO tbl_videos ( title,likes, dislikes, genres, times_watched, data_pub) VALUES ('HTML 5', '87000', '5', 'Educational', '90000', '2021-11-28');	
INSERT INTO tbl_videos ( title,likes, dislikes, genres, times_watched, data_pub) VALUES ('CSS', '1190', '5', 'Educational', '1787', '2021-10-30');
INSERT INTO tbl_videos ( title,likes, dislikes, genres, times_watched, data_pub) VALUES ('DJANGO', '1190', '5', 'Educational', '1789', '2018-03-24');	
INSERT INTO tbl_videos ( title,likes, dislikes, genres, times_watched, data_pub) VALUES ('TensorFlow', '1190', '5', 'Educational', '1609', '2020-04-28');
INSERT INTO tbl_videos ( title,likes, dislikes, genres, times_watched, data_pub) VALUES ('Scikit-Learn', '1190', '5', 'Educational', '1950', '2020-09-22');	
INSERT INTO tbl_videos ( title,likes, dislikes, genres, times_watched, data_pub) VALUES ('Mario Sergio Cortela', '11190', '5', 'Help Self', '1789', '2022-02-21');
INSERT INTO tbl_videos ( title,likes, dislikes, genres, times_watched, data_pub) VALUES ('Leandro Carnal', '1190', '5', 'Help Self', '15000', '2019-12-18');	
INSERT INTO tbl_videos ( title,likes, dislikes, genres, times_watched, data_pub) VALUES ('30 Minutes to help your Self', '3090', '20', 'Help Self', '50000', '2021-12-17');
INSERT INTO tbl_videos ( title,likes, dislikes, genres, times_watched, data_pub) VALUES ('A Pequena Sereia', '190', '5', 'Musical', '300, '2021-8-13');	
INSERT INTO tbl_videos ( title,likes, dislikes, genres, times_watched, data_pub) VALUES ('Life on the line', '5690', '39', 'Action', '60001', '2021-03-31');

###################

CREATE TABLE tbl_author (
    id_author INT NOT NULL PRIMaRY KEY AUTOINCREMENT, 
    author_first_name VARCHAR(30) NOT NULL,
    author_last_name VARCHAR(30) NOT NULL

   
);
INSERT INTO tbl_author (author_first_name, author_last_name) VALUES ('Lucas', 'Matrix');
INSERT INTO tbl_author (author_first_name, author_last_name) VALUES ('Fabio', 'Franca');
INSERT INTO tbl_author (author_first_name, author_last_name) VALUES ('Franklin', 'Patrick');
INSERT INTO tbl_author (author_first_name, author_last_name) VALUES ('Juca', 'Moura');
INSERT INTO tbl_author (author_first_name, author_last_name) VALUES ('Francisca', 'Terra');
INSERT INTO tbl_author (author_first_name, author_last_name) VALUES ('Francesquino', 'Lua');
INSERT INTO tbl_author (author_first_name, author_last_name) VALUES ('Catia', 'Feroz');
INSERT INTO tbl_author (author_first_name, author_last_name) VALUES ('Carla', 'Lilala');
INSERT INTO tbl_author (author_first_name, author_last_name) VALUES ('Joaquina', 'Loiz');
INSERT INTO tbl_author (author_first_name, author_last_name) VALUES ('Julia', 'Tremendous');
INSERT INTO tbl_author (author_first_name, author_last_name) VALUES ('Carla', 'Moura');
INSERT INTO tbl_author (author_first_name, author_last_name) VALUES ('Francisco', 'Teimoso');


INSERT INTO tbl_author (author_first_name, author_last_name) VALUES ('Marcio', 'Freitas');
INSERT INTO tbl_author (author_first_name, author_last_name) VALUES ('Fabio', 'Luca');
INSERT INTO tbl_author (author_first_name, author_last_name) VALUES ('Joao', 'Alfredo');
INSERT INTO tbl_author (author_first_name, author_last_name) VALUES ('Jorge', 'Santos');
INSERT INTO tbl_author (author_first_name, author_last_name) VALUES ('Guilherme', 'Freijo');
INSERT INTO tbl_author (author_first_name, author_last_name) VALUES ('Lila', 'Gomes');
INSERT INTO tbl_author (author_first_name, author_last_name) VALUES ('Catiussa', 'Souza');
INSERT INTO tbl_author (author_first_name, author_last_name) VALUES ('Carolina', 'Basso');
INSERT INTO tbl_author (author_first_name, author_last_name) VALUES ('Lidia', 'Paiva');
INSERT INTO tbl_author (author_first_name, author_last_name) VALUES ('Juliana', 'Gloria');

Primeria forma normal
1 - todo o campo vetorizado se tornara outra tabela

2 - todo o campo multivalorado se tornara outra tabela

3 - toda tabela necessita de pelo menos um campo que identifique todo o registro como sendo unico. Isso é o que chamamos de primary key.

Temos dois tipos de chaves
01 - chave natural
02 - chave artificial | Muito mais utilizada e recomendada. 

######## Regra da cardionalidade #############
Primeira coluna obrigatoriedade, segunda coluna corresponder a cardinalidade
(0, n)
(0, 1)
(1, n)
(1, 1)

3 Fases da Modelagem

1 - Conceitual - Rascunho
2 - logica - Colocado em um programa
3 - Script no banco


DESC tabela | descreve e mostra os campos da tabela

CREATE TABLE tbl_author(
    id_author INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL,
    email VARCHAR(50) UNIQUE,
    gender ENUM('M','F', 'OTHER') NOT NULL,
    born DATE NOT NULL
);

INSERT INTO tbl_author VALUES(NULL, 'Franklin Moura', 'franklin@terra.com.br', 'M', '1981-08-19');
INSERT INTO tbl_author VALUES(NULL, 'Jorge Alvez', 'jorgealvez@lua.com.br', 'M', '1981-08-19');
INSERT INTO tbl_author VALUES(NULL, 'Lucia Maria', 'lucia123@melhor.com.br', 'M', '1981-08-19');
INSERT INTO tbl_author VALUES(NULL, 'Claudia Oliveira', 'claudia@business.com.br', 'M', '1981-08-19');
INSERT INTO tbl_author VALUES(NULL, 'Rodrigo Ruwer', 'rodrigo_ruwer@gmail.com', 'M', '1981-08-19');
INSERT INTO tbl_author VALUES(NULL, 'Carlos Voss', 'carlos.voss@uol.com.br', 'M', '1981-08-19');

CREATE TABLE tbl_contact (
    id_contact INT PRIMARY KEY AUTO_INCREMENT,
    phone_type ENUM('Landline', 'COM', 'CEL') NOT NULL,
    number VARCHAR(12) NOT NULL,
    idfk_author INT,
    FOREIGN KEY(idfk_author)
    REFERENCES tbl_author(id_author)
);

INSERT INTO tbl_contact VALUES(null,'CEL','+555199787368',1);
INSERT INTO tbl_contact VALUES(null, 'COM','+55813335489',1);
INSERT INTO tbl_contact VALUES(null,'Landline','+556699787998',2);
INSERT INTO tbl_contact VALUES(null, 'Landline','+55533335489',3);
INSERT INTO tbl_contact VALUES(null,'COM','+555499787980',4);
INSERT INTO tbl_contact VALUES(null, 'Landline','+55533335489',4);
INSERT INTO tbl_contact VALUES(null,'CEL','+555199788766',5);
INSERT INTO tbl_contact VALUES(null, 'Landline','+55535675489',5);
INSERT INTO tbl_contact VALUES(null,'CEL','+555599327368',5);
INSERT INTO tbl_contact VALUES(null, 'Landline','+55533335489',6);
INSERT INTO tbl_contact VALUES(null,'CEL','+555199787368',6);
INSERT INTO tbl_contact VALUES(null, 'COM','+55533335489',6);



CREATE TABLE tbl_videos (
    id_videos INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(50) NOT NULL,
    times_watched INT,
    likes INT,
    dislikes INT,
    pub_date DATE,
    idfk_author INT,
    FOREIGN KEY(idfk_author)
    REFERENCES tbl_author(id_author)
);
INSERT INTO tbl_videos VALUES (NULL, 'Learning JAVA', '1583900', '130000', '6', '2021-01-11',1);
INSERT INTO tbl_videos VALUES (NULL, 'Learning Python', '159000', '130000', '1520', '2019-09-28',2);
INSERT INTO tbl_videos VALUES (NULL, 'Learning JavaScript', '5600000', '130000', '1220', '2019-10-23',3);
INSERT INTO tbl_videos VALUES (NULL, 'Help Self bla bla', '1566000', '190000', '300', '2018-09-10',4);
INSERT INTO tbl_videos VALUES (NULL, 'Learning HTML 5', '13450000', '120000', '1200', '2019-11-18',5);
INSERT INTO tbl_videos VALUES (NULL, 'Learning CSS', '1349000', '14000', '1580', '2020-12-21',1);
INSERT INTO tbl_videos VALUES (NULL, 'Learning C#', '1290000', '13900', '1229', '2021-10-29',2);
INSERT INTO tbl_videos VALUES (NULL, 'Learning C++', '1456900', '111000', '3000', '2019-09-30',2);
INSERT INTO tbl_videos VALUES (NULL, 'Learning DJANGO', '11199000', '150000', '3200', '2020-08-13',3);
INSERT INTO tbl_videos VALUES (NULL, 'Learning IA', '14590000', '121000', '2450', '2021-07-09',4);
INSERT INTO tbl_videos VALUES (NULL, 'Learning Cobol', '355660000', '90000', '2456', '2020-06-02',2);
INSERT INTO tbl_videos VALUES (NULL, 'Test Horror', '3000589', '15600', '900', '2019-03-01',3);
INSERT INTO tbl_videos VALUES (NULL, 'Musical film', '35900098', '180000', '200', '2018-04-13',1);
INSERT INTO tbl_videos VALUES (NULL, 'Comedy Film', '458900034', '113000', '1000', '2017-05-19',1);
INSERT INTO tbl_videos VALUES (NULL, 'Comedy Film', '457910034', '11000', '1000', '2017-05-19',1);

CREATE TABLE tbl_genres (
    id_genres INT PRIMARY KEY AUTO_INCREMENT,
    genres ENUM('Action', 'Comedy', 'Science Fiction', 'Romance', 'Musical', 'Thriller', 'Horror')
    idfk_videos INT,
    FOREIGN KEY(idfk_videos)
    REFERENCES tbl_videos(id_videos)  
);

INSERT INTO tbl_genres VALUES (NULL,'Educational',1);
INSERT INTO tbl_genres VALUES (NULL,'Educational',2);
INSERT INTO tbl_genres VALUES (NULL,'Educational',3);
INSERT INTO tbl_genres VALUES (NULL,'Educational',4);
INSERT INTO tbl_genres VALUES (NULL,'Self Help',5);
INSERT INTO tbl_genres VALUES (NULL,'Educational',17);
INSERT INTO tbl_genres VALUES (NULL,'Educational',18);
INSERT INTO tbl_genres VALUES (NULL,'Horror',22);
INSERT INTO tbl_genres VALUES (NULL,'Musical',23);
INSERT INTO tbl_genres VALUES (NULL,'Comedy',24);

INSERT INTO tbl_genres VALUES (NULL,'Educational',6);
INSERT INTO tbl_genres VALUES (NULL,'Educational',7);
INSERT INTO tbl_genres VALUES (NULL,'Educational',8);
INSERT INTO tbl_genres VALUES (NULL,'Self Help',9);
INSERT INTO tbl_genres VALUES (NULL,'Educational',11);
INSERT INTO tbl_genres VALUES (NULL,'Self Help',12);
INSERT INTO tbl_genres VALUES (NULL,'Educational',13);
INSERT INTO tbl_genres VALUES (NULL,'Self Help',14);
INSERT INTO tbl_genres VALUES (NULL,'Educacional',15);
INSERT INTO tbl_genres VALUES (NULL,'Educational',16);





Chave estrangeira é a chave primaria de uma tabela que vai até outra tabela para fazer referencia entre registros

########### Regra para configuracao da regra ####################
Em relacionamento 1 x 1 a chave estrangeira fica na tabela mais fraca

Em relacionamento 1 x n a chave estrangeira fica para sempre na tabela com cardinalidade N x /


select * from tbl_tabela;
#######################################
/* SELECAO, PROJECAO E JUNCAO */
/* PROJECAO --> É TUDO QUE VOCE QUER VER NA TELA

SELECT NOW();
SELECT title, likes, pub_date, now() from tbl_videos;
#######################################

/* SELECAO --> é um subconjunto do conjunto total de registros de uma tabela.
A clausula de selecao (filtro) é WHERE */
#######################################
SELECT name, gender from tbl_author where gender='M';

SELECT genres /* Projecao */
from tbl_genres /* Origem */
WHERE genres='Action'; */ selecao */


/* Juncao --> JOIN */
SELECT name, gender, title, pub_date
from tbl_author
inner join tbl_videos
on id_author = idfk_author;
+------------------+--------+---------------------+------------+
| name             | gender | title               | pub_date   |
+------------------+--------+---------------------+------------+
| Franklin Moura   | M      | Learning JAVA       | 2022-03-19 |
| Franklin Moura   | M      | Learning JAVA       | 2021-01-11 |
| Franklin Moura   | M      | Learning JAVA       | 2021-01-11 |
| Franklin Moura   | M      | Learning CSS        | 2020-12-21 |
| Jorge Alvez      | M      | Learning Python     | 2019-09-28 |
| Jorge Alvez      | M      | Learning Python     | 2019-09-28 |
| Jorge Alvez      | M      | Learning Python     | 2019-09-28 |
| Jorge Alvez      | M      | Learning C#         | 2021-10-29 |
| Jorge Alvez      | M      | Learning C++        | 2019-09-30 |
| Jorge Alvez      | M      | Learning Cobol      | 2020-06-02 |
| Lucia Maria      | F      | Learning JavaScript | 2019-10-23 |
| Lucia Maria      | F      | Learning JavaScript | 2019-10-23 |
| Lucia Maria      | F      | Learning JavaScript | 2019-10-23 |
| Lucia Maria      | F      | Learning JavaScript | 2019-10-23 |
| Lucia Maria      | F      | Learning DJANGO     | 2020-08-13 |
| Lucia Maria      | F      | Test Horror         | 2019-03-01 |
| Claudia Oliveira | F      | Help Self bla bla   | 2018-09-10 |
| Claudia Oliveira | F      | Help Self bla bla   | 2018-09-10 |
| Claudia Oliveira | F      | Help Self bla bla   | 2018-09-10 |
| Claudia Oliveira | F      | Help Self bla bla   | 2018-09-10 |
| Claudia Oliveira | F      | Learning IA         | 2021-07-09 |
| Rodrigo Ruwer    | OTHER  | Learning HTML 5     | 2019-11-18 |
| Rodrigo Ruwer    | OTHER  | Comedy Film         | 2017-05-19 |
| Carlos Voss      | M      | Musical film        | 2018-04-13 |
+------------------+--------+---------------------+------------+
SELECT name, gender, title, pub_date
from tbl_author
inner join tbl_videos
on id_author = idfk_author
where gender='F';
+------------------+--------+---------------------+------------+
| name             | gender | title               | pub_date   |
+------------------+--------+---------------------+------------+
| Lucia Maria      | F      | Learning JavaScript | 2019-10-23 |
| Lucia Maria      | F      | Learning JavaScript | 2019-10-23 |
| Lucia Maria      | F      | Learning JavaScript | 2019-10-23 |
| Lucia Maria      | F      | Learning JavaScript | 2019-10-23 |
| Lucia Maria      | F      | Learning DJANGO     | 2020-08-13 |
| Lucia Maria      | F      | Test Horror         | 2019-03-01 |
| Claudia Oliveira | F      | Help Self bla bla   | 2018-09-10 |
| Claudia Oliveira | F      | Help Self bla bla   | 2018-09-10 |
| Claudia Oliveira | F      | Help Self bla bla   | 2018-09-10 |
| Claudia Oliveira | F      | Help Self bla bla   | 2018-09-10 |
| Claudia Oliveira | F      | Learning IA         | 2021-07-09 |
+------------------+--------+---------------------+------------+
11 rows in set (0.00 sec)

SELECT title, genres /* Projecao */
from tbl_videos /* Origem */
inner join tbl_genres /* Juncao */
on id_videos = idfk_videos; /* Selecao */

/* nome, title, pub_date, likes, dislikes, genres */
SELECT title, pub_date, likes, dislikes, times_watched , name, gender, genres
from tbl_videos
inner join tbl_author
on id_author = idfk_author
inner join tbl_genres
on id_videos = idfk_videos;

+---------------------+------------+--------+----------+---------------+------------------+--------+-------------+
| title               | pub_date   | likes  | dislikes | times_watched | name             | gender | genres      |
+---------------------+------------+--------+----------+---------------+------------------+--------+-------------+
| Learning JAVA       | 2022-03-19 | 130000 |      300 |        150000 | Franklin Moura   | M      | Educational |
| Learning JAVA       | 2021-01-11 | 130000 |        6 |       1583900 | Franklin Moura   | M      | Educational |
| Learning JAVA       | 2021-01-11 | 130000 |        6 |       1583900 | Franklin Moura   | M      | Educational |
| Learning JAVA       | 2021-01-11 | 130000 |        6 |       1583900 | Franklin Moura   | M      | Educational |
| Learning JAVA       | 2021-01-11 | 130000 |        6 |       1583900 | Franklin Moura   | M      | Educational |
| Learning JAVA       | 2021-01-11 | 130000 |        6 |       1583900 | Franklin Moura   | M      | Educational |
| Learning CSS        | 2020-12-21 |  14000 |     1580 |       1349000 | Franklin Moura   | M      | Educational |
| Learning CSS        | 2020-12-21 |  14000 |     1580 |       1349000 | Franklin Moura   | M      | Educational |
| Learning Python     | 2019-09-28 | 130000 |     1520 |        159000 | Jorge Alvez      | M      | Educational |
| Learning Python     | 2019-09-28 | 130000 |     1520 |        159000 | Jorge Alvez      | M      | Educational |
| Learning Python     | 2019-09-28 | 130000 |     1520 |        159000 | Jorge Alvez      | M      | Educational |
| Learning Python     | 2019-09-28 | 130000 |     1520 |        159000 | Jorge Alvez      | M      | Educational |
| Learning Python     | 2019-09-28 | 130000 |     1520 |        159000 | Jorge Alvez      | M      | Educational |
| Learning Python     | 2019-09-28 | 130000 |     1520 |        159000 | Jorge Alvez      | M      | Educational |
| Learning Python     | 2019-09-28 | 130000 |     1520 |        159000 | Jorge Alvez      | M      | Educational |
| Learning C#         | 2021-10-29 |  13900 |     1229 |       1290000 | Jorge Alvez      | M      | Educational |
| Learning C++        | 2019-09-30 | 111000 |     3000 |       1456900 | Jorge Alvez      | M      | Educational |
| Learning C++        | 2019-09-30 | 111000 |     3000 |       1456900 | Jorge Alvez      | M      | Educational |
| Learning JavaScript | 2019-10-23 | 130000 |     1220 |       5600000 | Lucia Maria      | F      | Educational |
| Learning JavaScript | 2019-10-23 | 130000 |     1220 |       5600000 | Lucia Maria      | F      | Educational |
| Learning JavaScript | 2019-10-23 | 130000 |     1220 |       5600000 | Lucia Maria      | F      | Educational |
| Learning JavaScript | 2019-10-23 | 130000 |     1220 |       5600000 | Lucia Maria      | F      | Educational |
| Learning JavaScript | 2019-10-23 | 130000 |     1220 |       5600000 | Lucia Maria      | F      | Educational |
| Learning JavaScript | 2019-10-23 | 130000 |     1220 |       5600000 | Lucia Maria      | F      | Educational |
| Learning JavaScript | 2019-10-23 | 130000 |     1220 |       5600000 | Lucia Maria      | F      | Educational |
| Learning JavaScript | 2019-10-23 | 130000 |     1220 |       5600000 | Lucia Maria      | F      | Educational |
| Learning JavaScript | 2019-10-23 | 130000 |     1220 |       5600000 | Lucia Maria      | F      | Educational |
| Learning JavaScript | 2019-10-23 | 130000 |     1220 |       5600000 | Lucia Maria      | F      | Educational |
| Learning JavaScript | 2019-10-23 | 130000 |     1220 |       5600000 | Lucia Maria      | F      | Educational |
| Learning JavaScript | 2019-10-23 | 130000 |     1220 |       5600000 | Lucia Maria      | F      | Educational |
| Learning JavaScript | 2019-10-23 | 130000 |     1220 |       5600000 | Lucia Maria      | F      | Educational |
| Learning JavaScript | 2019-10-23 | 130000 |     1220 |       5600000 | Lucia Maria      | F      | Educational |
| Learning JavaScript | 2019-10-23 | 130000 |     1220 |       5600000 | Lucia Maria      | F      | Educational |
| Learning JavaScript | 2019-10-23 | 130000 |     1220 |       5600000 | Lucia Maria      | F      | Educational |
| Learning JavaScript | 2019-10-23 | 130000 |     1220 |       5600000 | Lucia Maria      | F      | Educational |
| Learning JavaScript | 2019-10-23 | 130000 |     1220 |       5600000 | Lucia Maria      | F      | Educational |
| Learning JavaScript | 2019-10-23 | 130000 |     1220 |       5600000 | Lucia Maria      | F      | Educational |
| Test Horror         | 2019-03-01 |  15600 |      900 |       3000589 | Lucia Maria      | F      | Horror      |
| Help Self bla bla   | 2018-09-10 | 190000 |      300 |       1566000 | Claudia Oliveira | F      | Self Help   |
| Help Self bla bla   | 2018-09-10 | 190000 |      300 |       1566000 | Claudia Oliveira | F      | Self Help   |
| Help Self bla bla   | 2018-09-10 | 190000 |      300 |       1566000 | Claudia Oliveira | F      | Self Help   |
| Help Self bla bla   | 2018-09-10 | 190000 |      300 |       1566000 | Claudia Oliveira | F      | Self Help   |
| Help Self bla bla   | 2018-09-10 | 190000 |      300 |       1566000 | Claudia Oliveira | F      | Self Help   |
| Help Self bla bla   | 2018-09-10 | 190000 |      300 |       1566000 | Claudia Oliveira | F      | Self Help   |
| Help Self bla bla   | 2018-09-10 | 190000 |      300 |       1566000 | Claudia Oliveira | F      | Self Help   |
| Help Self bla bla   | 2018-09-10 | 190000 |      300 |       1566000 | Claudia Oliveira | F      | Self Help   |
| Help Self bla bla   | 2018-09-10 | 190000 |      300 |       1566000 | Claudia Oliveira | F      | Self Help   |
| Help Self bla bla   | 2018-09-10 | 190000 |      300 |       1566000 | Claudia Oliveira | F      | Self Help   |
| Help Self bla bla   | 2018-09-10 | 190000 |      300 |       1566000 | Claudia Oliveira | F      | Self Help   |
| Help Self bla bla   | 2018-09-10 | 190000 |      300 |       1566000 | Claudia Oliveira | F      | Self Help   |
| Help Self bla bla   | 2018-09-10 | 190000 |      300 |       1566000 | Claudia Oliveira | F      | Self Help   |
| Help Self bla bla   | 2018-09-10 | 190000 |      300 |       1566000 | Claudia Oliveira | F      | Self Help   |
| Help Self bla bla   | 2018-09-10 | 190000 |      300 |       1566000 | Claudia Oliveira | F      | Self Help   |
| Help Self bla bla   | 2018-09-10 | 190000 |      300 |       1566000 | Claudia Oliveira | F      | Self Help   |
| Help Self bla bla   | 2018-09-10 | 190000 |      300 |       1566000 | Claudia Oliveira | F      | Self Help   |
| Help Self bla bla   | 2018-09-10 | 190000 |      300 |       1566000 | Claudia Oliveira | F      | Self Help   |
| Help Self bla bla   | 2018-09-10 | 190000 |      300 |       1566000 | Claudia Oliveira | F      | Self Help   |
| Comedy Film         | 2017-05-19 | 113000 |     1000 |     458900034 | Rodrigo Ruwer    | OTHER  | Comedy      |
| Musical film        | 2018-04-13 | 180000 |      200 |      35900098 | Carlos Voss      | M      | Musical     |
+---------------------+------------+--------+----------+---------------+------------------+--------+-------------+
59 rows in set (0.01 sec)


/* 
    DML - Data manipulation language
    DDL - Data definition language
    DCL - Data control language
    TCL - Transaction control language

*/


