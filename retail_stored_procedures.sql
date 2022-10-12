-- STORED PROCEDURES

USE Retail;

DELIMITER //
DROP PROCEDURE IF EXISTS UpdateOrderStatus;
CREATE PROCEDURE UpdateOrderStatus
	(	IN $OrderID INT,
		IN $StatusID TINYINT
	)
BEGIN
	DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN ROLLBACK; RESIGNAL; END;
	START TRANSACTION;
		UPDATE OrderStatuses
		SET StatusID = $StatusID
		WHERE OrderID = $OrderID;
	COMMIT;
END //
DELIMITER ;

CALL UpdateOrderStatus (1, 3);

SELECT * FROM OrderStatuses;

DELIMITER //
DROP PROCEDURE IF EXISTS AddCustomer;
CREATE PROCEDURE AddCustomer
	(	IN $Firstname VARCHAR(25),
		IN $MiddleName VARCHAR(25),
        IN $LastName VARCHAR(25),
        IN $StreetAddress VARCHAR(35),
        IN $City VARCHAR(25),
        IN $State CHAR(2),
        IN $ZipCode	VARCHAR(11)
	)
BEGIN
	DECLARE $CustomerID INT UNSIGNED;
	DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN ROLLBACK; RESIGNAL; END;

	START TRANSACTION;
		INSERT INTO Customers (FirstName, MiddleName, LastName, StreetAddress, City, State, ZipCode)
		VALUES ($FirstName, $MiddleName, $LastName, $StreetAddress, $City, $State, $ZipCode);
		SET $CustomerID = LAST_INSERT_ID();
	COMMIT;
END //
DELIMITER ;

