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
SELECT UnitPrice, ProductName FROM products
WHERE UnitsInStock >= 1 and UnitPrice = 10
ORDER BY UnitPrice desc, ProductName asc;

-- Problem 7
SELECT UnitPrice, ProductName FROM products
WHERE UnitsInStock = 0 AND UnitsOnOrder >= 1
ORDER BY ProductName;

--  Problem 8
-- The table that holds the categories of products is called categories

-- Problem 9
SELECT * FROM categories;
-- The seafood category is ID #8
SELECT CategoryID from categories
where CategoryName = 'Seafood';

-- Problem 10
SELECT * from products
WHERE CategoryID = 8;

-- Problem 11
SELECT FirstName, LastName FROM employees;

-- Problem 12
SELECT FirstName, LastName, Title FROM employees
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





