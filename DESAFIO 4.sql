/* DESAFIO 4.a

Quero saber quantos produtos temos cadastrados em nossa tabela de produtos
 (tabela production.product)
*/

SELECT COUNT(*)
FROM Production.Product;

-- resposta 504

/* DESAFIO 4.b

Quero saber quantos tamanhos de produtos temos cadastrados em nossa tabela
 (tabela production.product)
*/
SELECT COUNT(Size)
FROM Production.Product;
-- resposta 211

-- Ou com tamanhos distintos
SELECT COUNT(DISTINCT Size)
FROM Production.Product;
-- resposta 18