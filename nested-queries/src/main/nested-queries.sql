use northwind;

-- Problem 1
SELECT ProductName from products
where UnitPrice = ((SELECT max(UnitPrice) from products)); 

-- Problem 2
SELECT OrderID, ShipName, ShipAddress from orders
where ShipVia = (SELECT ShipperID from shippers 
where CompanyName = 'Federal Shipping');

-- Problem 3
SELECT OrderID from `order details`
where ProductID in (SELECT ProductID from products
where ProductName = 'Sasquatch Ale');

-- Problem 4
SELECT FirstName, LastName from employees
where EmployeeID in (SELECT EmployeeID from orders
where OrderID = 10266);

-- Problem 5
Select ContactName from customers
where CustomerID in (SELECT CustomerID from orders
where OrderID = 10266);
