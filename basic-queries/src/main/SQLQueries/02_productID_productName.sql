use northwind;

-- Problem 1
-- The table name of the items Northwind sells is called products

-- Problem 2
SELECT productID, ProductName, UnitPrice FROM products;

-- Problem 3
SELECT ProductID, ProductName, UnitPrice FROM products

order by UnitPrice;

--  Problem 4
SELECT ProductID, ProductName, UnitPrice FROM products

where UnitPrice <= 7.50;

-- Problem 5
SELECT ProductID, ProductName, UnitPrice FROM products

where UnitsInStock >= 100
order by UnitPrice desc;

-- Problem 6
SELECT distinct(UnitPrice), ProductName FROM products
WHERE UnitsInStock >= 100
ORDER BY UnitPrice desc;

SELECT UnitPrice, ProductName FROM products
where UnitsInStock >= 100
ORDER BY UnitPrice;

-- Problem 7
SELECT UnitPrice, ProductName FROM products
WHERE UnitsInStock IS NULL AND UnitsOnOrder >= 1
ORDER BY ProductName;

--  Problem 8
SELECT * FROM categories;
-- The table that holds the categories of products is called categories

-- Problem 9
SELECT * FROM categories;
-- The seafood category is ID #8

-- Problem 10
SELECT * from products
WHERE CategoryID = 8;

-- Problem 11
SELECT FirstName, LastName FROM employees;

-- Problem 12
SELECT FirstName, LastName FROM employees
WHERE Title LIKE '%Manager%';

-- Problem 13
SELECT DISTINCT(Title) FROM employees;

--  Problem 14
SELECT FirstName, LastName, Salary from employees
where Salary BETWEEN 2000 and 2500;

-- Problem 15
SELECT * FROM suppliers;

-- Problem 16
SELECT * FROM Products
where SupplierID = 4;





