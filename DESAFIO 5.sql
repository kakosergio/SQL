-- DESAFIO 5.a
/* 
Obter o ProductId dos 10 produtos mais caros cadastrados no sistema, listando do mais
caro para o mais barato
*/

SELECT TOP 10 ProductId, ListPrice
FROM Production.Product
ORDER BY ListPrice desc;

-- DESAFIO 5.b
/*
Obter o nome e o número do produto dos produtos que têm o productID entre 1~4
*/

-- Meu código que saiu o resultado correto
SELECT TOP 4 ProductNumber, Name
FROM Production.Product;

-- o código do professor
SELECT TOP 4 ProductNumber, Name
FROM Production.Product
ORDER BY Product asc