use northwind;

-- Problem 1
SELECT products.ProductID, products.ProductName, products.UnitPrice, categories.CategoryName from products
inner join categories on
products.CategoryID = categories.CategoryID
order by CategoryName, ProductName;

-- Problem 2
SELECT products.ProductID, products.ProductName, products.UnitPrice, suppliers.ContactName from products
inner join suppliers on
products.SupplierID = suppliers.SupplierID
order by ProductName;

-- Problem 3
SELECT products.ProductID, products.ProductName, products.UnitPrice, categories.CategoryName, suppliers.ContactName
from products
inner join categories on
products.CategoryID = categories.CategoryID
inner join suppliers on
products.SupplierID = suppliers.SupplierID
order by ProductName;

-- Problem 4
SELECT products.ProductName, products.UnitPrice, categories.CategoryName from products
inner join categories on
products.CategoryID = categories.CategoryID
where UnitPrice = (SELECT max(UnitPrice) from products);

-- Problem 5
SELECT orders.OrderID, orders.ShipName, orders.ShipAddress, CompanyName from orders
inner join shippers on
shippers.ShipperID = orders.ShipVia
where ShipCountry = "Germany";

-- Problem 6
SELECT orders.OrderID, orders.OrderDate, orders.ShipName, orders.ShipAddress, ProductID from orders
left join `order details` on 
`order details`.ProductID = ProductID
where ProductID = (SELECT ProductID from products
		where ProductName = "Sasquatch Ale");
