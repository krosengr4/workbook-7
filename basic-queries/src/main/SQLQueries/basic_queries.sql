use northwind;

SELECT ProductID, ProductName, UnitPrice, UnitsInStock FROM products

where UnitsInStock >= 100

ORDER BY UnitPrice desc;

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

