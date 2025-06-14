/*1. Consultar a quantidade de clientes.*/

SELECT count(CustomerName) FROM Customers;

/*2. Consultar a quantidade de países na tabela clientes.*/

SELECT count(distinct Country) FROM Customers;

*/3. Calcular a média dos preços dos produtos.*/

SELECT avg(Price) as preco_media FROM Products;

*/4. Consultar o maior e o menor preço de produto.*/

SELECT max(Price)  'Maior Preco',
	min(Price) 'MenorPreco'
FROM Products;

*/5. Calcular a quantidade de clientes que são brasileiros. O título da consulta deve ser ‘Quantidade de Brasileiros’.*/
	
SELECT count(Country) "Quantidade de Brasileiros" 
FROM Customers
where Country = "Brazil";

/*-------------------------------------------------------//-------------------------------------------------------*/

/*1. Descobrir quantos pedidos cada cliente fez. O título da consulta deve ser “ID do Cliente” e a “Quantidade de Pedidos”.*/

SELECT CustomerID "ID do cliete",
count(OrderID) "Quantidade de pedidos"
FROM Orders
group by CustomerID;

/*2. Obter o valor médio dos produtos para cada Categoria.*/

SELECT CategoryID 'Categoria do produto', 
avg(Price) 'Média por categoria'
FROM Products
group by CategoryID;

/*3. Apresentar o total de quantidades de produtos por pedido.*/

SELECT OrderID, sum(quantity) 'Total de Qtde por pedido'
FROM OrderDetails 
group by OrderID;

/*4. Verificar quantos fornecedores estão cadastrados por país.*/

SELECT Country, count(Country) 'Fornecedores cadastrados por países'
FROM Suppliers
group by Country;

/*5. Verificar quantos fornecedores estão cadastrados por país no qual essa quantidade tem que ser acima de 1.*/

SELECT Country 'País',
count(Country) 'Fornecedores cadastrados por países'
FROM Suppliers
group by Country
having count(Country) > 1;

/*6. Calcular a quantidade de pedidos realizadas por funcionário. */

SELECT EmployeeID 'ID Funcionario',
count(EmployeeID) 'Qtde de pedidos por funcionários'
FROM Orders
group by EmployeeID;
