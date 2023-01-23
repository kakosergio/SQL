--? COMANDOS SQL

--! SELECT
-- SQL SERVER, Postgres, Oracle, mySQL

-- Selecionar dados de determinadas colunas
SELECT coluna1, coluna2
FROM tabela

-- Selecionar todas as colunas de uma determinada tabela
SELECT *
FROM tabela

--! DISTINCT
--Selecionar valores únicos (não duplicados) em uma determinada tabela ou coluna
SELECT DISTINCT FirstName
FROM person.Person

--! WHERE
-- Busca informações específicas no banco de dados
SELECT coluna1, coluna2, coluna_n
FROM tabela
WHERE condição; -- onde condição é:
/* 

--! OPERADOR         -           DESCRIÇÃO
=                                IGUAL
>                                MAIOR QUE
<                                MENOR QUE
>=                               MAIOR OU IGUAL A
<=                               MENOR OU IGUAL A
<>                               DIFERENTE DE
AND                              OPERADOR LÓGICO E
OR                               OPERADOR LÓGICO OU

*/

--! COUNT
-- Conta quantos elementos tem em uma tabela ou quantas linhas em uma coluna

SELECT COUNT(*)
FROM TABELA

-- se quiser pode inserir o DISTINCT

SELECT COUNT(DISTINCT coluna1)
FROM TABELA

--! TOP
-- RETORNA APENAS OS RESULTADOS DO TOPO DA TABELA. VOCE DEVE ESPECIFICAR QUANTOS RESULTADOS
-- ELE DEVE RETORNAR

SELECT TOP 100 *
FROM TABELA

--! ORDER BY
-- ORDENA OS RESULTADOS DEPENDENDO DA SINTAXE QUE VOCÊ USA

SELECT coluna1, coluna2
FROM TABELA
ORDER BY coluna1 asc/desc

--! BETWEEN
/*
O BETWEEN é usado para encontrar um valor entre um mínimo e um máximo.

value BETWEEN min AND max;

É a mesma coisa que dizer:

value >= min AND value <= max;
*/

SELECT *
FROM Production.Product
WHERE ListPrice BETWEEN 1000 AND 1500;

-- SE QUISER FAZER O OPOSTO DO ACIMA, BASTA USAR O --! NOT

SELECT *
FROM Production.Product
WHERE ListPrice NOT BETWEEN 1000 AND 1500;

-- Para filtrar data, o formato é --!'AAAA/MM/DD'
-- envolvido com aspas simples

SELECT *
FROM HumanResources.Employee
WHERE HireDate BETWEEN '2009/01/01' AND '2010/01/01'
ORDER BY HireDate;

--! IN
-- Usamos em conjunto com o WHERE para verificar se um valor corresponde com qualquer valor passado na lista de valores
-- No código abaixo ele vai buscar só os resultados que forem 2, 7 e 13:
SELECT *
FROM Person.Person
WHERE BusinessEntityID IN (2, 7, 13);

-- Se o IN não existisse, teríamos que escrever esse código dessa forma:

SELECT *
FROM Person.Person
WHERE BusinessEntityID = 2
OR BusinessEntityID = 7
OR BusinessEntityID = 13;

--! LIKE
-- Função que busca na coluna ou tabela alguma informação incompleta. Digamos que você não saiba o nome completo de uma determinada
-- pessoa, mas que sabe que tem 'essa' no meio do nome (como Vanessa, Andressa, etc). Então o código seria o seguinte:

SELECT FirstName
FROM Person.Person
WHERE FirstName LIKE '%essa%';

-- O símbolo de porcentagem serve para pegar quaisquer valores encontrados antes ou depois da palavra, pelo menos nesse exemplo.
-- É um caracter coringa, portanto.
-- Caso queira encontrar apenas um caractere, pode utilizar o underline --! _

SELECT FirstName
FROM Person.Person
WHERE FirstName LIKE 'ro_';

-- Nesse código acima, ele pode encontrar Ron, Roy, Ros, por exemplo.