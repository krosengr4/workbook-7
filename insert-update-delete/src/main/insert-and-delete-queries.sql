use northwind;

-- Problem 1
SELECT * from suppliers;
INSERT INTO suppliers (SupplierID, CompanyName, ContactName, ContactTitle, Address, City, Region, PostalCode, Country, Phone)
VALUES (30, "Kev's Kolaches", "Kevin Rosengren", "Sales Manager", "1234 Kolache Cv.", "West", "Texas", 798552, "USA", "(512)-523-9823");

-- Problem 2
SELECT * from products;
INSERT INTO products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued)
VALUES (78, "Strawberry Kolache", 30, 3, "6 Kolaches per box", 20.99, 32, 5, 0, 0); 

-- Problem 3
SELECT products.ProductID, products.ProductName, products.UnitPrice, suppliers.CompanyName, suppliers.ContactName from products
inner join suppliers on
suppliers.SupplierID = products.SupplierID
order by ProductID desc;

-- Problem 4
UPDATE products
SET UnitPrice = (UnitPrice * .015) + UnitPrice
where ProductID = 78;

-- Problem 5
SELECT ProductName, UnitPrice from products
where SupplierID = (SELECT SupplierID from suppliers
		where CompanyName like "%Kev%");
        
-- Problem 6
DELETE from products
where ProductName = "Strawberry Kolache";

-- Problem 7
DELETE from suppliers
where SupplierID = 30;

-- Problem 8
SELECT * from products;

-- Problem 9
SELECT * from suppliers;