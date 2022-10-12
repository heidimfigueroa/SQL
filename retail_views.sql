-- VIEWS

USE Retail;

DROP VIEW IF EXISTS CustomerOrderInfo;
CREATE VIEW CustomerOrderInfo AS
SELECT C.CustomerID,
		   CONCAT( C.FirstName, ' ', COALESCE( C.MiddleName, ' ' ), ' ', C.LastName ) AS CustomerName,
		   CONCAT( C.StreetAddress, ' ', C.City, ', ', C.State, ' ', C.ZipCode ) AS CustomerAddress,
		   O.OrderID,
		   O.OrderDate,
		   W.WarehouseCity AS ProcessingLocation,
		   CONCAT( E.FirstName, ' ', E.LastName ) AS HandlerName,
		   (SELECT S.StatusName
           FROM Statuses AS S
           INNER JOIN OrderStatuses AS OS ON S.StatusID = OS.StatusID
           WHERE O.OrderID = OS.OrderID) AS CurrentStatus
	FROM Customers AS C
	INNER JOIN Orders AS O ON C.CustomerID = O.CustomerID
	INNER JOIN OrderStatuses AS OS ON  O.OrderID = OS.OrderID
	INNER JOIN PackageHandler AS PH ON O.EmployeeID = PH.EmployeeID
	INNER JOIN Employees AS E ON PH.EmployeeID = E.EmployeeID
	INNER JOIN Warehouse AS W ON E.WarehouseID = W.WarehouseID;

SELECT * FROM CustomerOrderInfo;

DROP VIEW IF EXISTS ProductSourceInfo;
CREATE VIEW ProductSourceInfo AS
	SELECT P.ProductID,
		  P.ProductName,
		  P.ProductDescription,
		  I.UnitCost,
		  V.VendorName
	FROM Products AS P
	INNER JOIN Inventory AS I ON P.ProductID = I.ProductID
	INNER JOIN Vendors AS V ON I.VendorID = V.VendorID
    ORDER BY ProductID ASC;

SELECT * FROM ProductSourceInfo;