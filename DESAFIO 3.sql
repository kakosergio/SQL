-- DESAFIO 3.a
/*

A equipe de produção de produtos precisam de todos os nomes de produtos das peças que pesam mais que 500 kg mas não mais que 700kg
para inspeção

*/

SELECT Name
FROM Production.Product
WHERE Weight > 500 and Weight <= 700;

-- DESAFIO 3.b
/*

Foi pedido pelo marketing uma relação de todos os empregados (employees) que são casados (single = solteiro, married = casado) e 
são assalariados (salaried)

*/

SELECT *
FROM HumanResources.Employee
WHERE MaritalStatus = 'M' and SalariedFlag = 1;

-- DESAFIO 3.c
/*

Um usuário chamado Peter Krebs está devendo um pagamento. Consiga o e-mail dele para que possamos enviar uma cobrança!
(você terá que usar a tabela person.person e depois a tabela person.emailaddress)

*/

-- Encontrado o BusinessEntityID do Peter Krebs com o codigo abaixo
SELECT *
FROM Person.Person
WHERE FirstName = 'Peter' and LastName = 'Krebs';

-- Recuperado o E-mail do cara com o código abaixo, sabendo agora o ID dele

SELECT EmailAddress
FROM Person.EmailAddress
WHERE BusinessEntityID = 26;
