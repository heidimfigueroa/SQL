-- QUERIES

USE Target;

-- How much inventory of each product category has been sold? 
-- How much revenue has each product category brought in?

SELECT P.ProductCategory, 
COUNT(OL.ProductID) AS UnitsSold,
CONCAT('$', SUM(OL.Price * OL.Quantity)) AS SalesRevenue 
FROM Products AS P
JOIN OrderLines AS OL ON P.ProductID = OL.ProductID
GROUP BY ProductCategory
ORDER BY UnitsSold DESC, SalesRevenue DESC;

-- Query the number of items per product category processed through each warehouse region

SELECT WR.RegionID, 
P.ProductCategory,
COUNT(OL.ProductID) AS UnitsSold
FROM WarehouseRegion AS WR
JOIN Warehouse AS W ON WR.WarehouseID = W.WarehouseID
JOIN Employees AS E ON W.WarehouseID = E.WarehouseID
JOIN PackageHandler AS PH ON E.EmployeeID = PH.EmployeeID
JOIN Orders AS O ON PH.EmployeeID = O.EmployeeID
JOIN OrderLines AS OL ON O.OrderID = OL.OrderID
JOIN Products AS P ON OL.ProductID = P.ProductID
GROUP BY WR.RegionID, P.ProductCategory
ORDER BY COUNT(OL.ProductID) DESC;

-- Which products have had a surplus or deficit?
SELECT P.ProductName,
	   P.InventoryOnHand,
	   COUNT(OL.ProductID) AS UnitsSold,
	   P.InventoryOnHand - (COUNT(OL.ProductID)) AS Leftover,
       CASE WHEN P.InventoryOnHand - (COUNT(OL.ProductID)) > 0 THEN 'Surplus'
       WHEN P.InventoryOnHand - (COUNT(OL.ProductID)) < 0 THEN 'Deficit'
       END AS SurplusDeficit
FROM Products AS P
JOIN OrderLines AS OL ON P.ProductID = OL.ProductID
JOIN Orders AS O ON OL.OrderID = O.OrderID
GROUP BY P.ProductName, P.InventoryOnHand;

-- Determine Profit per product category
SELECT P.ProductCategory, 
CONCAT('$', SUM(OL.Price * OL.Quantity)) AS SalesRevenue,
CONCAT('$', SUM(I.UnitCost * OL.Quantity)) AS Cost,
CONCAT('$', SUM(OL.Price * OL.Quantity) - SUM(I.UnitCost * OL.Quantity)) AS Profit
FROM Products AS P
JOIN OrderLines AS OL ON P.ProductID = OL.ProductID
JOIN Inventory AS I ON OL.ProductID = I.ProductID
GROUP BY ProductCategory;

-- Query number of orders per order status by Warehouse
SELECT W.WarehouseCity AS Warehouse,
COUNT(O.OrderID) AS OrderCount,
S.StatusName
FROM Warehouse AS W
JOIN Employees AS E ON W.WarehouseID = E.WarehouseID
JOIN PackageHandler AS PH ON E.EmployeeID = PH.EmployeeID
JOIN Orders AS O ON PH.EmployeeID = O.EmployeeID
JOIN OrderStatuses AS OS ON O.OrderID = OS.OrderID
JOIN Statuses AS S ON OS.StatusID = S.StatusID
GROUP BY Warehouse, StatusName
ORDER BY Warehouse ASC;
