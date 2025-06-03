use northwind;

SELECT ProductID, ProductName, UnitPrice, UnitsInStock FROM products

where UnitsInStock >= 100

ORDER BY UnitPrice desc;
