/*MODELAGEM BÁSICA - 
ENTIDADE = TABELA
CAMPOS = ATRIBUTOS*/

Cliente

Nome - caracter(30)
CPF - numerico(11)
Email - cracter(30)
Telefone - cracter(30)
Endereco - cracter(100)
Sexo - cracter(1)

/*PROCESSOS DE MODELAGEM*/

/*FASE 01 e FASE 02 - AD ADM DE DADOS*/

Modelagem Conceitual - Rascunho
Modelagem Lógica - Qualquer programa de modelagem

/*FASE 03 - DBA / AD */

Modelagem Física - Scripts de banco

/*INICIANDO A MODELAGEM FISICA*/

/*CRIANDO BANCO DE DADOS*/

CREATE DATABASE EXEMPLO;

CREATE DATABASE PROJETO;

/*CONECTANDO-SE BANCO DE DADOS*/

USE PROJETO;

/*CRIANDO A TABELA CLIENTES*/

CREATE TABLE CLIENTE(
	NOME VARCHAR(30),
	SEXO CHAR(1),
	CPF INT(11),
	TELEFONE VARCHAR(30),
	ENDERECO VARCHAR(100)

);

/*VERIFICANDO AS TABELAS DO BANCO DE DADOS*/

SHOW TABLES;

/*DESCOBRINDO ESTRUTURA DAS TABELAS*/

DESC CLIENTE;

/*SINTAXE BASICA PARA INSERT;'AO - INSERT INTO TABLE...*/

/*FORMA 01 - OMITINDO AS COLUNAS*/

INSERT INTO CLIENTE VALUES('JOAO', 'M', 988938273, '22923110', 'MAIA LACERDA ESTACIO - RIO DE JANEIRO - RJ', 'JOAO@GMAIL.COM');	
INSERT INTO CLIENTE VALUES('CELIA', 'F', 541521456, '25078869', 'RIACHUELO - CENTRO - RIO DE JANEIRO - RJ', 'CELIA@GMAIL.COM');	
INSERT INTO CLIENTE VALUES('JORGE', 'M', 885755896, '58748895', 'OSCAR CURY - BOM RETIRO - PATOS DE MINAS - MG', 'NULL');
INSERT INTO CLIENTE VALUES('CLARA', 'M', 99999999999, '58748895', 'OSCAR CURY - BOM RETIRO - PATOS DE MINAS - MG', 'NULL');

/*FORMA 02 - COLOCANDO AS COLUNAS*/

INSERT INTO CLIENTE(NOME, SEXO, CPF, TELEFONE, ENDERECO) VALUES('LILIAN', 'F', 887774856, '947785696', 'SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ');

/*FORMA 03 - INSERT COMPACTO - SOMENTE MySql*/

INSERT INTO CLIENTE VALUES('ANA', 'F', 85548962, '548556985', 'PRES ANTONIO CARLOS - CENTRO - SAO PAULO - SP', 'ANA@GLOBO.COM'),
						  ('CARLA', 'F', 7745828, '66587458', 'SAMUEL SILVA - CENTRO - BELO HORIZONTE - MG', 'CARLA@TERATI.COM.BR');

/*O CAMANDO SELECT SELECAO - PROJECAO - JUNCAO*/

SELECT NOW() as DATA_HORA, 'GLEYSON ANDRADE' as ANALISTA DE SISTEMAS;
SELECT 'GLEYSON ANDRADE';
SELECT 'ANALISTA SISTEMAS';

/*ALIAS DE COLUNAS*/

SELECT NOME, SEXO, EMAIL FROM CLIENTE;

SELECT NOME, SEXO, EMAIL, ENDERECO FROM CLIENTE;

SELECT NOME AS CLIENTE, SEXO, EMAIL FROM CLIENTE;

SELECT EMAIL, SEXO, ENDERECO, NOME, NOW() AS DATA_HORA FROM CLIENTE;

/*APENAS PARA FINS ACADEMICOS*/

SELECT * FROM CLIENTE;

/*FLTRANDO*/

SELECT NOME, SEXO FROM CLIENTE WHERE SEXO = 'M';

SELECT NOME, ENDERECO FROM CLIENTE WHERE SEXO = 'F';

SELECT NOME, SEXO FROM CLIENTE WHERE ENDERECO = 'RJ';

/*UTILIZANDO O LIKE*/

SELECT NOME, SEXO FROM CLIENTE WHERE ENDERECO LIKE 'RJ';

/*CRACTER CORINGA % -> QUALQUER COISA*/

SELECT NOME, SEXO FROM CLIENTE WHERE ENDERECO LIKE 'RJ';

SELECT NOME, SEXO, ENDERECO FROM CLIENTE WHERE ENDERECO LIKE '%RJ'

SELECT NOME, SEXO, ENDERECO FROM CLIENTE WHERE ENDERECO LIKE 'OSCAR CURY%';

SELECT NOME, SEXO, ENDERECO FROM CLIENTE WHERE ENDERECO LIKE '%CENTRO%';

/*OPERADORES LÓGICOS
  OR -> PARA QUE A SAIDA DA QUERY SEJA VERDADEIRA, BASTA QUE APENAS UMA CONDIÇÃO SEJA VERDADEIRA
  AND -> PARA QUE A SAIDA SEJA VERDADEIRA TODAS AS CONDIÇOES PRECISAM SER VERDADEIRAS*/
  
  /*OR - OU*/
  
  SHOW DATABASES;
  
  USE PROJETO;
  
  SELECT * FROM CLIENTE;
  
  SELECT NOME, SEXO, ENDERECO FROM CLIENTE
  WHERE
  SEXO = 'M' OR ENDERECO LIKE '%RJ';
  
  SELECT NOME, SEXO, ENDERECO FROM CLIENTE
  WHERE
  SEXO = 'M' AND ENDERECO LIKE '%RJ';
  
  SELECT NOME, SEXO, ENDERECO FROM CLIENTE
  WHERE
  SEXO = 'F' OR ENDERECO LIKE '%ESTACIO';
  
  /*AND - E*/
  
  SELECT NOME, SEXO, ENDERECO FROM CLIENTE
  WHERE
  SEXO = 'M' OR ENDERECO LIKE '%RJ';
  
  SELECT NOME, SEXO, ENDERECO FROM CLIENTE
  WHERE
  SEXO = 'F' OR ENDERECO LIKE '%ESTACIO';
  
  /*COUNT(*), GROUP BY, PERFORMANCE COM OPERADORES LOGICOS*/
  
  /*CONTANDO OS REGISTROS DE UMA TABELA*/
  
  SELECT COUNT(*) AS "QUANTIDADE DE REGISTROS DA TABELA CLIENTE" FROM CLIENTE;
  
  SELECT COUNT(*) FROM CLIENTE;
  
  /*OPERADOR GROUP BY*/
  
  SELECT SEXO, COUNT(*) FROM CLIENTE;
  
  SELECT * FROM CLIENTE;

  SELECT SEXO, COUNT(*) FROM CLIENTE GROUP BY SEXO;
  
/*FILTRAR VALORES NULOS*/

SELECT NOME, SEXO, ENDERECO
FROM CLIENTE
WHERE
SEXO = 'F';

SELECT NOME, SEXO, ENDERECO
FROM CLIENTE
WHERE EMAIL = NULL;

SELECT NOME, SEXO, ENDERECO
FROM CLIENTE
WHERE EMAIL IS NULL;

SELECT NOME, SEXO, ENDERECO
FROM CLIENTE
WHERE EMAIL IS NOT NULL;

/*IS OU IS NOT NULL*/

/*UTILIZANDO O UPDATE PARA ATUALIZAR VALORES*/

SELECT NOME, EMAIL
FROM CLIENTE;

UPDATE CLIENTE
SET EMAIL = 'LILIAN@HOTMAIL.COM';

/*WHERE -> VAI SER O SEU MELHOR AMIGO DA VIDA PRA VIDA INTEIRA*/

SELECT * FROM CLIENTE
WHERE NOME = 'JOAO';

UPDATE CLIENTE
SET EMAIL = 'JOAO@IG.COM.BR'
WHERE NOME = 'JOAO';

UPDATE CLIENTE
SET EMAIL = 'JORGE@IG.COM.BR'
WHERE NOME = 'JORGE';

UPDATE CLIENTE
SET EMAIL = 'ANA@IG.COM.BR'
WHERE NOME = 'ANA';

UPDATE CLIENTE
SET EMAIL = 'CARLA@IG.COM.BR'
WHERE NOME = 'CARLA';

/*COMMIT E ROLLBACK - RECUPERAR BANCO DE DADOS CASO UM ERRO*/

/*DELETANDO REGISTROS COM A CLAUSULA DELETE*/


DELETE FROM CLIENTE; -- SEMPRE UTILIZAR O WHERE PARA DELETE E UPDATE

SELECT * FROM CLIENTE WHERE NOME = 'ANA';

SELECT COUNT(*) FROM CLIENTE; -- TOTAL REGISTROS TABELA = 5

SELECT COUNT(*) FROM CLIENTE  -- TOTAL DELETADO 1
WHERE NOME = 'ANA';

DELETE FROM CLIENTE
WHERE NOME = 'ANA';

SELECT COUNT(*) FROM CLIENTE; -- RESTANTE 4

INSERT INTO CLIENTE VALUES('CARLA','F',0956622062,'NULL','RUA MACEIO-VISTA ALEGRE-IBIRITE-MG','CARLA@GMAIL.COM');

DELETE FROM CLIENTE -- TRAZ APENAS O REGISTRO QUE SATISFACA AS SUAS CONDICOES
WHERE NOME = 'CARLA'
OR EMAIL = 'CARLA@IG.COM.BR';

SELECT * FROM CLIENTE -- OR TRAZ TODO MUNDO COM PELO MENOS UMA DAS DUAS CONDICOES
WHERE NOME = 'CARLA'
AND EMAIL = 'CARLA@IG.COM.BR';

/*ENTRANDO COM MAIS TELEFONES*/

UPDATE CLIENTE
SET TELEFONE = '978665434'
WHERE NOME = 'JOAO';

SELECT * FROM CLIENTE;

SELECT SEXO,
COUNT(*) FROM CLIENTE
GROUP BY SEXO;

SELECT ENDERECO,
COUNT(*) FROM CLIENTE
GROUP BY ENDERECO;

/*PRIMEIRA FORMA NORMAL DE MODELAGEM*/

/*
1 - TODO CAMPO VETORIZADO SE TORNA A OUTRA TABELA
 [AMARELO, AZUL, LARANJA, VERDE ] -> CORES
 [KA, FIESTA, UNO, CIVIC ] -> CARROS
 
 2 - TODO CAMPO MULTIVALORADO SE TORNA OUTRA TABELA.
 QUANDO O CAMPO FOR DIVISIVEL.
 
 3 - TODA TABELA NECESSITA DE PELO MENOS UM CAMPO QUE IDENTIFIQUE
 TODO O REGISTRO COMO SENDO UNICO.
 ISSO QUE CHAMOS DE CHAVE PRIMARIA OU PRIMARY KEN
 
 CADINALIDADE
 
 QEUM DEFINE A CARDINALIDADE É A REGRA DE NEGOCIOS
 
 PRIMEIRO ALGORISMO - OBRIGATORIEDADE
 0 - NAO OBRIGATORIO
 1 - OBRIGATORIO
 
 SEGUNDO ALGORISMO - CARDINALIDADE
 1 - MAXIMO DE UM
 0 - MAIS DE UM
*/

CREATE DATABASE COMERCIO;

USE COMERCIO;

SHOW DATABASE;

DROP TABLE cliente;

CREATE TABLE CLIENTE(
	IDCLIENTE INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(30) NOT NULL,
	SEXO ENUM('M', 'F') NOT NULL,
	EMAIL VARCHAR(50)UNIQUE,
	CPF VARCHAR(15) UNIQUE
);

CREATE TABLE ENDERECO(
	IDENDERECO INT PRIMARY KEY AUTO_INCREMENT,
	RUA VARCHAR(30) NOT NULL,
	BAIRRO VARCHAR(30) NOT NULL,
	CIDADE VARCHAR(30) NOT NULL,
	ESTADO CHAR(2) NOT NULL,
	ID_CLIENTE INT UNIQUE,

	FOREIGN KEY(ID_CLIENTE)
	REFERENCES CLIENTE(IDCLIENTE)
);

CREATE TABLE TELEFONE(
	IDTELEFONE INT PRIMARY KEY AUTO_INCREMENT,
	TIPO ENUM('RES', 'COM', 'CEL') NOT NULL,
	NUMERO VARCHAR(10) NOT NULL,
	ID_CLIENTE INT,

	FOREIGN KEY(ID_CLIENTE)
	REFERENCES CLIENTE(IDCLIENTE)
);

/* ENDERECO - OBRIGATORIO
CADASTRO DE SOMENTE UM.
TELEFONE - NAO OBRIGATORIO
CADASTRO DE MAIS DE UM (OPCIONAL)*/

/*
CHAVE ESTRANGEIRA E A CHAVE PRIMARIA DE UMA TABELA 
QUE VAI ATE A OUTRA FAZER REFERENCIA ENTRE REGISTROS
EM RELACIONAMENTO 1X1 A CHAVE ESTRANGEIRA FICA NA TABELA MAIS FRACA
EM RELACIONAMENTOS 1XN A CHAVE ESTRANGEIRA FICARA SEMPRE NA CARDINALIDADE N
*/

/*
COMANDO PARA DESCRIÇÃO DA TABELA
*/

DESC CLIENTE;

INSERT INTO CLIENTE VALUES(NULL, 'JOAO', 'M', 'JOAO@IG.COM', '76567587887');
INSERT INTO CLIENTE VALUES(NULL, 'CARLOS', 'M', 'CARLOS@IG.COM', '76568787887');
INSERT INTO CLIENTE VALUES(NULL, 'ANA', 'F', 'ANA@IG.COM', '79217587887');
INSERT INTO CLIENTE VALUES(NULL, 'CLARA', 'F', NULL, '7656387587887');
INSERT INTO CLIENTE VALUES(NULL, 'JORGE', 'M', 'JORGE@IG.COM', '76564587887');
INSERT INTO CLIENTE VALUES(NULL, 'CELIA', 'F', 'CELIA@IG.COM', '76567589787');

+-----------+--------+------+---------------+---------------+
| IDCLIENTE | NOME   | SEXO | EMAIL         | CPF           |
+-----------+--------+------+---------------+---------------+
|         1 | JOAO   | M    | JOAO@IG.COM   | 76567587887   |
|         2 | CARLOS | M    | CARLOS@IG.COM | 76568787887   |
|         3 | ANA    | F    | ANA@IG.COM    | 79217587887   |
|         5 | JORGE  | M    | JORGE@IG.COM  | 76564587887   |
|         6 | CELIA  | F    | CELIA@IG.COM  | 76567589787   |
|         8 | CLARA  | F    | NULL          | 7656387587887 |
+-----------+--------+------+---------------+---------------+

DESC ENDERECO;

INSERT INTO ENDERECO VALUES(NULL, 'RUA ANTONIO SA', 'CENTRO', 'BELO HORIZONTE', 'MG', 3);
INSERT INTO ENDERECO VALUES(NULL, 'RUA CAPITAO HERMES', 'CENTRO', 'RIO DE JANEIRO', 'RJ', 1);
INSERT INTO ENDERECO VALUES(NULL, 'RUA PRES VARGAS', 'JARDINS', 'SAO PAULO', 'SP', 8);
INSERT INTO ENDERECO VALUES(NULL, 'RUA ALFANDEGA', 'ESTACIO', 'RIO DE JANEIRO', 'RJ', 6);
INSERT INTO ENDERECO VALUES(NULL, 'RUA DO OUVIDOR', 'FLAMENGO', 'RIO DE JANEIRO', 'RJ', 5);
INSERT INTO ENDERECO VALUES(NULL, 'RUA URUGUANA', 'CENTRO', 'VITORIA', 'ES', 2);

+------------+--------------------+----------+----------------+--------+------------+
| IDENDERECO | RUA                | BAIRRO   | CIDADE         | ESTADO | ID_CLIENTE |
+------------+--------------------+----------+----------------+--------+------------+
|          2 | RUA ANTONIO SA     | CENTRO   | BELO HORIZONTE | MG     |          3 |
|          3 | RUA CAPITAO HERMES | CENTRO   | RIO DE JANEIRO | RJ     |          1 |
|          4 | RUA PRES VARGAS    | JARDINS  | SAO PAULO      | SP     |          8 |
|          5 | RUA ALFANDEGA      | ESTACIO  | RIO DE JANEIRO | RJ     |          6 |
|          6 | RUA DO OUVIDOR     | FLAMENGO | RIO DE JANEIRO | RJ     |          5 |
|          7 | RUA URUGUANA       | CENTRO   | VITORIA        | ES     |          2 |
+------------+--------------------+----------+----------------+--------+------------+

DESC TELEFONE;

INSERT INTO TELEFONE VALUES(NULL, 'CEL', '78458743', 5);
INSERT INTO TELEFONE VALUES(NULL, 'RES', '78445743', 5);
INSERT INTO TELEFONE VALUES(NULL, 'CEL', '78453743', 1);
INSERT INTO TELEFONE VALUES(NULL, 'COM', '78458743', 2);
INSERT INTO TELEFONE VALUES(NULL, 'RES', '78454743', 1);
INSERT INTO TELEFONE VALUES(NULL, 'CEL', '78788743', 3);
INSERT INTO TELEFONE VALUES(NULL, 'CEL', '78498743', 3);
INSERT INTO TELEFONE VALUES(NULL, 'COM', '78453743', 1);
INSERT INTO TELEFONE VALUES(NULL, 'RES', '78458043', 5);
INSERT INTO TELEFONE VALUES(NULL, 'CEL', '78458114', 2);

+------------+------+----------+------------+
| IDTELEFONE | TIPO | NUMERO   | ID_CLIENTE |
+------------+------+----------+------------+
|          1 | CEL  | 78458743 |          5 |
|          2 | RES  | 78445743 |          5 |
|          3 | CEL  | 78453743 |          1 |
|          4 | COM  | 78458743 |          2 |
|          5 | RES  | 78454743 |          1 |
|          6 | CEL  | 78788743 |          3 |
|          7 | CEL  | 78498743 |          3 |
|          8 | COM  | 78453743 |          1 |
|          9 | RES  | 78458043 |          5 |
|         10 | CEL  | 78458114 |          2 |
+------------+------+----------+------------+

/*SELECAO, PROJETO E JUNCAO*/

/*PROJEÇÃO - É TUDO QUE VOCE QUER VER NA TELA*/

SELECT NOW() AS DATA_ATUAL;

SELECT 2 + 2 AS SOMA;

SELECT 2 + 2 AS SOMA, NOME, NOW()
FROM CLIENTE;

/* SELECAO E UM SUBCONJUNTO DO CONJUNTO TOTAL DE REGISTROS DE UMA TABELA
A CLAUSULA DE SELECAO E O WHERE
*/

SELECT NOME, SEXO, EMAIL /* PROJECAO */
FROM CLIENTE /* ORIGEM */
WHERE SEXO = 'F'; /* SELLECAO */

SELECT NUMERO /* PROJECAO */
FROM TELEFONE /* ORIGEM */
WHERE TIPO = 'RES'; /* SELLECAO */

/* JUNCAO - JOIN */

SELECT NOME, EMAIL, IDCLIENTE
FROM CLIENTE;

+--------+---------------+-----------+
| NOME   | EMAIL         | IDCLIENTE |
+--------+---------------+-----------+
| JOAO   | JOAO@IG.COM   |         1 |
| CARLOS | CARLOS@IG.COM |         2 |
| ANA    | ANA@IG.COM    |         3 |
| JORGE  | JORGE@IG.COM  |         5 |
| CELIA  | CELIA@IG.COM  |         6 |
| CLARA  | NULL          |         8 |
+--------+---------------+-----------+

SELECT ID_CLIENTE, BAIRRO, CIDADE
FROM ENDERECO;

+------------+----------+----------------+
| ID_CLIENTE | BAIRRO   | CIDADE         |
+------------+----------+----------------+
|          3 | CENTRO   | BELO HORIZONTE |
|          1 | CENTRO   | RIO DE JANEIRO |
|          8 | JARDINS  | SAO PAULO      |
|          6 | ESTACIO  | RIO DE JANEIRO |
|          5 | FLAMENGO | RIO DE JANEIRO |
|          2 | CENTRO   | VITORIA        |
+------------+----------+----------------+

/* NOME, SEXO, BAIRRO, CIDADE */

SELECT NOME, SEXO, BAIRRO, CIDADE /* PROJECAO */
FROM CLIENTE, ENDERECO/* ORIGEM */
WHERE IDCLIENTE = ID_CLIENTE;/* JUNCAO */

+--------+------+----------+----------------+
| NOME   | SEXO | BAIRRO   | CIDADE         |
+--------+------+----------+----------------+
| JOAO   | M    | CENTRO   | RIO DE JANEIRO |
| CARLOS | M    | CENTRO   | VITORIA        |
| ANA    | F    | CENTRO   | BELO HORIZONTE |
| JORGE  | M    | FLAMENGO | RIO DE JANEIRO |
| CELIA  | F    | ESTACIO  | RIO DE JANEIRO |
| CLARA  | F    | JARDINS  | SAO PAULO      |
+--------+------+----------+----------------+

/*WHERE = SELACAO*/

SELECT NOME, SEXO, BAIRRO, CIDADE
FROM CLIENTE, ENDERECO
WHERE IDCLIENTE = ID_CLIENTE
AND SEXO = 'F';

+-------+------+---------+----------------+
| NOME  | SEXO | BAIRRO  | CIDADE         |
+-------+------+---------+----------------+
| ANA   | F    | CENTRO  | BELO HORIZONTE |
| CELIA | F    | ESTACIO | RIO DE JANEIRO |
| CLARA | F    | JARDINS | SAO PAULO      |
+-------+------+---------+----------------+

/* WHERE IDCLIENTE = ID_CLIENTE 
AND SEXO = 'F'; -> TABELA VERDADE*/

SELECT NOME, SEXO, BAIRRO, CIDADE
FROM CLIENTE
INNER JOIN ENDERECO
ON IDCLIENTE = ID_CLIENTE;

+--------+------+----------+----------------+
| NOME   | SEXO | BAIRRO   | CIDADE         |
+--------+------+----------+----------------+
| JOAO   | M    | CENTRO   | RIO DE JANEIRO |
| CARLOS | M    | CENTRO   | VITORIA        |
| ANA    | F    | CENTRO   | BELO HORIZONTE |
| JORGE  | M    | FLAMENGO | RIO DE JANEIRO |
| CELIA  | F    | ESTACIO  | RIO DE JANEIRO |
| CLARA  | F    | JARDINS  | SAO PAULO      |
+--------+------+----------+----------------+

SELECT NOME, SEXO, BAIRRO, CIDADE /* PROJECAO */
FROM CLIENTE /* ORIGEM */
  INNER JOIN ENDERECO /* JUNCAO */
  ON IDCLIENTE = ID_CLIENTE
WHERE SEXO = 'F'; /* SELECAO */

+-------+------+---------+----------------+
| NOME  | SEXO | BAIRRO  | CIDADE         |
+-------+------+---------+----------------+
| ANA   | F    | CENTRO  | BELO HORIZONTE |
| CELIA | F    | ESTACIO | RIO DE JANEIRO |
| CLARA | F    | JARDINS | SAO PAULO      |
+-------+------+---------+----------------+

/* NOME, SEXO, EMAIL, TIPO, NUMERO */

SELECT NOME, SEXO, EMAIL, TIPO, NUMERO
  FROM CLIENTE
  INNER JOIN TELEFONE
ON IDCLIENTE = ID_CLIENTE;

+--------+------+---------------+------+----------+
| NOME   | SEXO | EMAIL         | TIPO | NUMERO   |
+--------+------+---------------+------+----------+
| JORGE  | M    | JORGE@IG.COM  | CEL  | 78458743 |
| JORGE  | M    | JORGE@IG.COM  | RES  | 78445743 |
| JOAO   | M    | JOAO@IG.COM   | CEL  | 78453743 |
| CARLOS | M    | CARLOS@IG.COM | COM  | 78458743 |
| JOAO   | M    | JOAO@IG.COM   | RES  | 78454743 |
| ANA    | F    | ANA@IG.COM    | CEL  | 78788743 |
| ANA    | F    | ANA@IG.COM    | CEL  | 78498743 |
| JOAO   | M    | JOAO@IG.COM   | COM  | 78453743 |
| JORGE  | M    | JORGE@IG.COM  | RES  | 78458043 |
| CARLOS | M    | CARLOS@IG.COM | CEL  | 78458114 |
+--------+------+---------------+------+----------+

/* NOME, SEXO, BAIRRO, CIDADE, TIPO, NUMERO*/

SELECT CLIENTE.NOME, CLIENTE.SEXO, ENDERECO.BAIRRO, ENDERECO.CIDADE, TELEFONE.TIPO, TELEFONE.NUMERO
FROM CLIENTE
INNER JOIN ENDERECO 
ON IDCLIENTE = ENDERECO.ID_CLIENTE
INNER JOIN TELEFONE
ON IDCLIENTE = TELEFONE.ID_CLIENTE;

+--------+------+----------+----------------+------+----------+
| NOME   | SEXO | BAIRRO   | CIDADE         | TIPO | NUMERO   |
+--------+------+----------+----------------+------+----------+
| JORGE  | M    | FLAMENGO | RIO DE JANEIRO | CEL  | 78458743 |
| JORGE  | M    | FLAMENGO | RIO DE JANEIRO | RES  | 78445743 |
| JOAO   | M    | CENTRO   | RIO DE JANEIRO | CEL  | 78453743 |
| CARLOS | M    | CENTRO   | VITORIA        | COM  | 78458743 |
| JOAO   | M    | CENTRO   | RIO DE JANEIRO | RES  | 78454743 |
| ANA    | F    | CENTRO   | BELO HORIZONTE | CEL  | 78788743 |
| ANA    | F    | CENTRO   | BELO HORIZONTE | CEL  | 78498743 |
| JOAO   | M    | CENTRO   | RIO DE JANEIRO | COM  | 78453743 |
| JORGE  | M    | FLAMENGO | RIO DE JANEIRO | RES  | 78458043 |
| CARLOS | M    | CENTRO   | VITORIA        | CEL  | 78458114 |
+--------+------+----------+----------------+------+----------+

SELECT C.NOME, C.SEXO, E.BAIRRO, E.CIDADE, T.TIPO, T.NUMERO
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE;

+--------+------+----------+----------------+------+----------+
| NOME   | SEXO | BAIRRO   | CIDADE         | TIPO | NUMERO   |
+--------+------+----------+----------------+------+----------+
| JORGE  | M    | FLAMENGO | RIO DE JANEIRO | CEL  | 78458743 |
| JORGE  | M    | FLAMENGO | RIO DE JANEIRO | RES  | 78445743 |
| JOAO   | M    | CENTRO   | RIO DE JANEIRO | CEL  | 78453743 |
| CARLOS | M    | CENTRO   | VITORIA        | COM  | 78458743 |
| JOAO   | M    | CENTRO   | RIO DE JANEIRO | RES  | 78454743 |
| ANA    | F    | CENTRO   | BELO HORIZONTE | CEL  | 78788743 |
| ANA    | F    | CENTRO   | BELO HORIZONTE | CEL  | 78498743 |
| JOAO   | M    | CENTRO   | RIO DE JANEIRO | COM  | 78453743 |
| JORGE  | M    | FLAMENGO | RIO DE JANEIRO | RES  | 78458043 |
| CARLOS | M    | CENTRO   | VITORIA        | CEL  | 78458114 |
+--------+------+----------+----------------+------+----------+

/*
  DML - DATA MANIPULATION LANGUAGE
  DDL - DATA DEFINITION LANGUAGE
  DCL - DATA CONTROL LANGUAGE
  TCL - TRANSACTION CONTROL LANGUAGE
*/

/* INSERT */

INSERT INTO CLIENTE VALUES(NULL, 'PAULA', 'M', NULL, '77437493');
INSERT INTO ENDERECO VALUES(NULL, 'RUA JOAQUIM SILVA', 'ALVORADA', 'NITEROI', 'RJ', 9);

SELECT * FROM CLIENTE;

/* FILTROS */

SELECT * FROM CLIENTE
WHERE SEXO = 'M';

/* UPDATE */

SELECT * FROM CLIENTE
WHERE IDCLIENTE = 9;

UPDATE CLIENTE
SET SEXO = 'F'
WHERE IDCLIENTE = 9;

/* DELETE */

INSERT INTO CLIENTE VALUES(NULL, 'XXX', 'M', NULL, 'XXX');

SELECT * FROM CLIENTE
WHERE IDCLIENTE = 10;

DELETE FROM CLIENTE
WHERE IDCLIENTE = 10;

/* 
  DDL - DATA DEFINITION LANGUAGE  
*/

CREATE TABLE PRODUTO(
  IDPRODUTO INT PRIMARY KEY AUTO_INCREMENT,
  NOME_PRODUTO VARCHAR(30) NOT NULL,
  PRECO INT,
  FRETE FLOAT(10,2) NOT NULL
);

/* ALTER TABLE */

/* ALTERANDO O NOME DE UMA COLUNA - CHANGE */

ALTER TABLE PRODUTO
CHANGE PRECO VALOR_UNITARIO INT NOT NULL;

+----------------+-------------+------+-----+---------+----------------+
| Field          | Type        | Null | Key | Default | Extra          |
+----------------+-------------+------+-----+---------+----------------+
| IDPRODUTO      | int(11)     | NO   | PRI | NULL    | auto_increment |
| NOME_PRODUTO   | varchar(30) | NO   |     | NULL    |                |
| VALOR_UNITARIO | int(11)     | NO   |     | NULL    |                |
| FRETE          | float(10,2) | NO   |     | NULL    |                |
+----------------+-------------+------+-----+---------+----------------+

DESC PRODUTO;

+--------------+-------------+------+-----+---------+----------------+
| Field        | Type        | Null | Key | Default | Extra          |
+--------------+-------------+------+-----+---------+----------------+
| IDPRODUTO    | int(11)     | NO   | PRI | NULL    | auto_increment |
| NOME_PRODUTO | varchar(30) | NO   |     | NULL    |                |
| PRECO        | int(11)     | YES  |     | NULL    |                |
| FRETE        | float(10,2) | NO   |     | NULL    |                |
+--------------+-------------+------+-----+---------+----------------+

ALTER TABLE PRODUTO
CHANGE VALOR_UNITARIO VALOR_UNITARIO INT;

+----------------+-------------+------+-----+---------+----------------+
| Field          | Type        | Null | Key | Default | Extra          |
+----------------+-------------+------+-----+---------+----------------+
| IDPRODUTO      | int(11)     | NO   | PRI | NULL    | auto_increment |
| NOME_PRODUTO   | varchar(30) | NO   |     | NULL    |                |
| VALOR_UNITARIO | int(11)     | YES  |     | NULL    |                |
| FRETE          | float(10,2) | NO   |     | NULL    |                |
+----------------+-------------+------+-----+---------+----------------+

/* MODIFY ALTERANDO O TIPO */

ALTER TABLE PRODUTO
MODIFY VALOR_UNITARIO VARCHAR(50) NOT NULL;

+----------------+-------------+------+-----+---------+----------------+
| Field          | Type        | Null | Key | Default | Extra          |
+----------------+-------------+------+-----+---------+----------------+
| IDPRODUTO      | int(11)     | NO   | PRI | NULL    | auto_increment |
| NOME_PRODUTO   | varchar(30) | NO   |     | NULL    |                |
| VALOR_UNITARIO | varchar(50) | NO   |     | NULL    |                |
| FRETE          | float(10,2) | NO   |     | NULL    |                |
+----------------+-------------+------+-----+---------+----------------+

/* ADICIONANDO COLUNAS */

ALTER TABLE PRODUTO
ADD PESO FLOAT(10,2) NOT NULL;

+----------------+-------------+------+-----+---------+----------------+
| Field          | Type        | Null | Key | Default | Extra          |
+----------------+-------------+------+-----+---------+----------------+
| IDPRODUTO      | int(11)     | NO   | PRI | NULL    | auto_increment |
| NOME_PRODUTO   | varchar(30) | NO   |     | NULL    |                |
| VALOR_UNITARIO | varchar(50) | NO   |     | NULL    |                |
| FRETE          | float(10,2) | NO   |     | NULL    |                |
| PESO           | float(10,2) | NO   |     | NULL    |                |
+----------------+-------------+------+-----+---------+----------------+

/* APAGANDO UMA COLUNA*/

ALTER TABLE PRODUTO
DROP COLUMN PESO;

+----------------+-------------+------+-----+---------+----------------+
| Field          | Type        | Null | Key | Default | Extra          |
+----------------+-------------+------+-----+---------+----------------+
| IDPRODUTO      | int(11)     | NO   | PRI | NULL    | auto_increment |
| NOME_PRODUTO   | varchar(30) | NO   |     | NULL    |                |
| VALOR_UNITARIO | varchar(50) | NO   |     | NULL    |                |
| FRETE          | float(10,2) | NO   |     | NULL    |                |
+----------------+-------------+------+-----+---------+----------------+

/* ADICIONANDO UMA COLUNA EM ORDEM ESPECIFICA */

ALTER TABLE PRODUTO
ADD COLUMN PESO FLOAT(10,2) NOT NULL
AFTER NOME_PRODUTO;

+----------------+-------------+------+-----+---------+----------------+
| Field          | Type        | Null | Key | Default | Extra          |
+----------------+-------------+------+-----+---------+----------------+
| IDPRODUTO      | int(11)     | NO   | PRI | NULL    | auto_increment |
| NOME_PRODUTO   | varchar(30) | NO   |     | NULL    |                |
| PESO           | float(10,2) | NO   |     | NULL    |                |
| VALOR_UNITARIO | varchar(50) | NO   |     | NULL    |                |
| FRETE          | float(10,2) | NO   |     | NULL    |                |
+----------------+-------------+------+-----+---------+----------------+

ALTER TABLE PRODUTO
ADD COLUMN PESO FLOAT(10,2) NOT NULL
FIRST;

+----------------+-------------+------+-----+---------+----------------+
| Field          | Type        | Null | Key | Default | Extra          |
+----------------+-------------+------+-----+---------+----------------+
| PESO           | float(10,2) | NO   |     | NULL    |                |
| IDPRODUTO      | int(11)     | NO   | PRI | NULL    | auto_increment |
| NOME_PRODUTO   | varchar(30) | NO   |     | NULL    |                |
| VALOR_UNITARIO | varchar(50) | NO   |     | NULL    |                |
| FRETE          | float(10,2) | NO   |     | NULL    |                |
+----------------+-------------+------+-----+---------+----------------+
