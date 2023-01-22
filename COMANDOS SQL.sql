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