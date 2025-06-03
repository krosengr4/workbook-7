use northwind;

-- Problem 1
SELECT count(*) from suppliers;

-- Problem 2
SELECT sum(Salary) from employees;

-- Problem 3
SELECT min(UnitPrice) from products;

-- Problem 4
SELECT avg(UnitPrice) from products;

-- Problem 5
SELECT max(UnitPrice) from products;

-- Problem 6
SELECT * from products;
SELECT SupplierID, count(*) from products
group by SupplierID;

-- Problem 7
SELECT CategoryID, avg(UnitPrice) from products
group by CategoryID;

-- Problem 9
SELECT * from products;
SELECT ProductID, ProductName, UnitPrice * UnitsInStock as InventoryValue from products
order by InventoryValue desc, ProductName;