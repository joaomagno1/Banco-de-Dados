/*1. Listar o id, o nome e a cidade dos fornecedores ordenados por cidade:*/

select CustomerId, CustomerName, City FROM Customers
order by City;

/*2. Consultar o id, o nome e o sobrenome dos empregados ordenados pelo 1º nome em ordem decrescente:*/

select EmployeeID, FirstName, LastName FROM Employees
order by FirstName desc;

/*3.Consultar as categorias que começam com a letra C.*/

SELECT * FROM Categories
where CategoryName like 'C%';

/*4. Listar os clientes que começam o nome com a letra F ou M*/

SELECT * FROM Customers
where CustomerName like 'F%' or 'M%';

/*5. Consultar os clientes cujos países têm a segunda letra A.*/

SELECT * FROM Customers
where Country like '_A%';


/*6. Consultar as categorias que contenham a string ee em alguma parte da descrição.*/

SELECT * FROM Categories
where Description like '%ee%';


/*7. Consultar os produtos que tenham o preço entre 20 e 50, ordenados pelo nome do produto. (fazer a consulta das 2 formas possíveis)*/

SELECT * FROM Products
where Price between 20 and 50
order by ProductName;
—---
SELECT * FROM Products
where (Price >= 20 and Price <= 50)
order by ProductName;




/*8. Buscar os produtos das seguintes categorias: 2, 5 e 8. (fazer a consulta das 2 formas possíveis)*/

SELECT * FROM Products
where CategoryID = 2 or CategoryID = 5 or CategoryID = 8;
—---—--
SELECT * FROM Products
where CategoryID like 2 or CategoryID like 5 or CategoryID like 8;


/*9. Consultar os clientes somente dos países do Brazil, México e USA, ordenados por país e nome, todos em ordem decrescente.*/

SELECT * FROM Customers
where Country like 'Brazil' or Country like 'Mexico' or Country like 'USA'
order by Country desc, CustomerName desc;
