COMANDOS SQL

SELECT
-- SQL SERVER, Postgres, Oracle, mySQL

-- Selecionar dados de determinadas colunas
SELECT coluna1, coluna2
FROM tabela

-- Selecionar todas as colunas de uma determinada tabela
SELECT *
FROM tabela

-- Selecionar valores únicos (não duplicados) em uma determinada tabela
SELECT DISTINCT FirstName
FROM person.Person

-- WHERE, que busca informações específicas no banco de dados
SELECT coluna1, coluna2, coluna_n
FROM tabela
WHERE condição; -- onde condição é:
/* 

OPERADOR            -            DESCRIÇÃO
=                                IGUAL
>                                MAIOR QUE
<                                MENOR QUE
>=                               MAIOR OU IGUAL A
<=                               MENOR OU IGUAL A
<>                               DIFERENTE DE
AND                              OPERADOR LÓGICO E
OR                               OPERADOR LÓGICO OU

*/

-- Conta quantos elementos tem em uma tabela ou quantas linhas em uma coluna

SELECT COUNT(*)
FROM TABELA

-- se quiser pode inserir o DISTINCT

SELECT COUNT(DISTINCT coluna1)
FROM TABELA

-- TOP - RETORNA APENAS OS RESULTADOS DO TOPO DA TABELA. VOCE DEVE ESPECIFICAR QUANTOS RESULTADOS
-- ELE DEVE RETORNAR

SELECT TOP 100 *
FROM TABELA

-- ORDER BY - ORDENA OS RESULTADOS DEPENDENDO DA SINTAXE QUE VOCÊ USA

SELECT coluna1, coluna2
FROM TABELA
ORDER BY coluna1 asc/desc

-- BETWEEN
/*
O BETWEEN é usado para encontrar um valor entre um mínimo e um máximo.

value BETWEEN min AND max;

É a mesma coisa que dizer:

value >= min AND value <= max;
*/

SELECT *
FROM Production.Product
WHERE ListPrice BETWEEN 1000 AND 1500;

-- SE QUISER FAZER O OPOSTO DO ACIMA, BASTA USAR O NOT

SELECT *
FROM Production.Product
WHERE ListPrice NOT BETWEEN 1000 AND 1500;