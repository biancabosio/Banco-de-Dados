/*Modelagem*/
CREATE DATABASE LIVRARIA;

/*Conectando ao banco criado*/
USE LIVRARIA;

/*Criando a tabela*/
CREATE TABLE Livros (
Livro VARCHAR (100),
Autor VARCHAR (100),
Sexo CHAR (1),
Paginas INT (5),
Editora VARCHAR (30),
Preço FLOAT (10,2),
UF CHAR (2),
Ano INT (4));

/*Verificando*/
SHOW TABLES; 

/*Inserindo dados*/
INSERT INTO Livros VALUES ('Cavaleiro Real','Ana Claudia','F',465,'Atlas',49.9,'RJ',2009);
INSERT INTO Livros VALUES ('SQL para leigos','João Nunes','M',450,'Addison',98,'SP',2018);
INSERT INTO Livros VALUES ('Receitas Caseiras','Celia Tavares','F',210,'Atlas',45,'RJ',2008);
INSERT INTO Livros VALUES ('Pessoas Efetivas','Eduardo Santos','M',390,'Beta',78,'RJ',2018);
INSERT INTO Livros VALUES ('Habitos Saudáveis','Eduardo Santos','M',630,'Beta',150,'RJ',2019);
INSERT INTO Livros VALUES ('A Casa Marrom','Hermes Macedo','M',250,'Bubba',60,'MG',2016);
INSERT INTO LIVROS VALUES('Estacio Querido','Geraldo Francisco','M',310,'Insignia',100,'ES',2015);
INSERT INTO Livros VALUES ('Pra sempre amigas','Leda Silva','F',510,'Insignia',78,'ES',2011);
INSERT INTO Livros VALUES ('Copas Inesqueciveis','Marco Alcantara','M',200,'Larson',130,'RS',2018);
INSERT INTO Livros VALUES ('O poder da mente','Clara Mafra','F',120,'Continental',56,'SP',2017);

/*1 – Trazer todos os dados*/
SELECT * FROM Livros;
 
/*2 – Trazer o nome do livro e o nome da editora*/
SELECT Livro, 
UF
FROM Livros; 

/*3 – Trazer o nome do livro e a UF dos livros publicados por autores do sexo masculino.*/
SELECT Livro, 
UF
FROM Livros
WHERE Sexo = 'M';

/*4 - Trazer o nome do livro e o número de páginas dos livros publicados por autores do sexo feminino.*/
SELECT Livro, 
Paginas
FROM Livros
WHERE Sexo = 'F';

/*5 – Trazer os valores dos livros das editoras de São Paulo.*/
SELECT Preço, 
Livro
FROM Livros 
WHERE UF LIKE 'SP';

/*6 – Trazer os dados dos autores do sexo masculino que tiveram livros publicados por São Paulo ou Rio de Janeiro (Questão Desafio).*/

SELECT * FROM Livros
WHERE Sexo = 'M' AND (UF = 'SP' OR 'RJ');

