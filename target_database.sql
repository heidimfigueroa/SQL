-- DATABASE CREATION

DROP DATABASE IF EXISTS Target;
CREATE DATABASE Target;

USE Target;

DROP TABLE IF EXISTS Warehouse;
CREATE TABLE Warehouse
( WarehouseID		SMALLINT NOT NULL AUTO_INCREMENT,
  WarehouseCity		VARCHAR(25),
  CONSTRAINT PK_Warehouse_WarehouseID PRIMARY KEY (WarehouseID)
);

INSERT INTO Warehouse (WarehouseCity)
VALUES ('New York');

INSERT INTO Warehouse (WarehouseCity)
VALUES ('Los Angeles');

INSERT INTO Warehouse (WarehouseCity)
VALUES ('Chicago');

INSERT INTO Warehouse (WarehouseCity)
VALUES ('Houston');

INSERT INTO Warehouse (WarehouseCity)
VALUES ('Phoenix');

INSERT INTO Warehouse (WarehouseCity)
VALUES ('Philadelphia');

INSERT INTO Warehouse (WarehouseCity)
VALUES ('San Antonio');

INSERT INTO Warehouse (WarehouseCity)
VALUES ('Atlanta');

INSERT INTO Warehouse (WarehouseCity)
VALUES ('Dallas');

INSERT INTO Warehouse (WarehouseCity)
VALUES ('San Jose');

INSERT INTO Warehouse (WarehouseCity)
VALUES ('Austin');

INSERT INTO Warehouse (WarehouseCity)
VALUES ('Jacksonville');

INSERT INTO Warehouse (WarehouseCity)
VALUES ('Fort Worth');

INSERT INTO Warehouse (WarehouseCity)
VALUES ('Columbus');

INSERT INTO Warehouse (WarehouseCity)
VALUES ('Charlotte');

INSERT INTO Warehouse (WarehouseCity)
VALUES ('Olympia');

INSERT INTO Warehouse (WarehouseCity)
VALUES ('Salem');

INSERT INTO Warehouse (WarehouseCity)
VALUES ('Cheyenne');

INSERT INTO Warehouse (WarehouseCity)
VALUES ('Raleigh');

INSERT INTO Warehouse (WarehouseCity)
VALUES ('Baton Rouge');

DROP TABLE IF EXISTS WarehouseRegion;
CREATE TABLE WarehouseRegion
( WarehouseID		SMALLINT NOT NULL,
  RegionID			SMALLINT NOT NULL, 
  CONSTRAINT PK_WarehouseRegion_WarehouseID_RegionID PRIMARY KEY (WarehouseID, RegionID),
  CONSTRAINT FK_WarehouseRegion_WarehouseID FOREIGN KEY (WarehouseID) REFERENCES Warehouse (WarehouseID)
);

INSERT INTO WarehouseRegion (WarehouseID, RegionID)
VALUES ('1', '2');

INSERT INTO WarehouseRegion (WarehouseID, RegionID)
VALUES ('2', '3');

INSERT INTO WarehouseRegion (WarehouseID, RegionID)
VALUES ('3', '2');

INSERT INTO WarehouseRegion (WarehouseID, RegionID)
VALUES ('4', '3');
INSERT INTO WarehouseRegion (WarehouseID, RegionID)
VALUES ('5', '3');

INSERT INTO WarehouseRegion (WarehouseID, RegionID)
VALUES ('6', '2');

INSERT INTO WarehouseRegion (WarehouseID, RegionID)
VALUES ('7', '3');

INSERT INTO WarehouseRegion (WarehouseID, RegionID)
VALUES ('8', '4');

INSERT INTO WarehouseRegion (WarehouseID, RegionID)
VALUES ('9', '3');

INSERT INTO WarehouseRegion (WarehouseID, RegionID)
VALUES ('10', '3');

INSERT INTO WarehouseRegion (WarehouseID, RegionID)
VALUES ('11', '3');

INSERT INTO WarehouseRegion (WarehouseID, RegionID)
VALUES ('12', '4'); 

INSERT INTO WarehouseRegion (WarehouseID, RegionID)
VALUES ('13', '3');

INSERT INTO WarehouseRegion (WarehouseID, RegionID)
VALUES ('14', '2');

INSERT INTO WarehouseRegion (WarehouseID, RegionID)
VALUES ('15', '4');

INSERT INTO WarehouseRegion (WarehouseID, RegionID)
VALUES ('16', '1');

INSERT INTO WarehouseRegion (WarehouseID, RegionID)
VALUES ('17', '1');

INSERT INTO WarehouseRegion (WarehouseID, RegionID)
VALUES ('18', '1');

INSERT INTO WarehouseRegion (WarehouseID, RegionID)
VALUES ('19', '4');

INSERT INTO WarehouseRegion (WarehouseID, RegionID)
VALUES ('20', '4');

DROP TABLE IF EXISTS Customers;
CREATE TABLE Customers
( CustomerID			INT NOT NULL AUTO_INCREMENT,
  FirstName				VARCHAR(25) NOT NULL,
  MiddleName			VARCHAR(25) DEFAULT NULL,
  LastName				VARCHAR(25) NOT NULL,
  StreetAddress			VARCHAR(35) NOT NULL,
  City					VARCHAR(25) NOT NULL,
  State					CHAR(2) NOT NULL,
  ZipCode				VARCHAR(10) NOT NULL,
  CONSTRAINT PK_Customers_CustomerID PRIMARY KEY ( CustomerID )
);

INSERT INTO Customers (FirstName, MiddleName, LastName, StreetAddress, City, State, ZipCode)
VALUES ('Grace', NULL, 'Williams', '550 Bradford Street', 'Kearny', 'NJ', '07032');

INSERT INTO Customers (FirstName, MiddleName, LastName, StreetAddress, City, State, ZipCode)
VALUES ('Jillian', NULL, 'Jolley', '15 Orchard Avenue', 'Vernon Rockville', 'CT', '06066');

INSERT INTO Customers (FirstName, MiddleName, LastName, StreetAddress, City, State, ZipCode)
VALUES ('Cody', NULL, 'Miller', '800 Harvard Lane', 'Jonesborough', 'TN', '37659');

INSERT INTO Customers (FirstName, MiddleName, LastName, StreetAddress, City, State, ZipCode)
VALUES ('Noel', NULL, 'Ko', '50 Pierce Street', 'Atlanta', 'GA', '30301');

INSERT INTO Customers (FirstName, MiddleName, LastName, StreetAddress, City, State, ZipCode)
VALUES ('Nicole', 'Dee', 'Johnson', '459 S Mill Avenue', 'Royersford', 'PA', '19468');

INSERT INTO Customers (FirstName, MiddleName, LastName, StreetAddress, City, State, ZipCode)
VALUES ('Jenny', 'Stephanie', 'Gray', '9878 Wayne Street', 'Bethpage', 'NY', '11714');

INSERT INTO Customers (FirstName, MiddleName, LastName, StreetAddress, City, State, ZipCode)
VALUES ('Derrick', NULL, 'Johnson', '322 Heritage Street', 'Hixson', 'TN', '37343');

INSERT INTO Customers (FirstName, MiddleName, LastName, StreetAddress, City, State, ZipCode)
VALUES ('Max', 'Cole', 'Smith', '677 Meadowbrook Street', 'Johnston', 'RI', '02919');

INSERT INTO Customers (FirstName, MiddleName, LastName, StreetAddress, City, State, ZipCode)
VALUES ('Jeremy', NULL, 'Willis', '382 Military Drive', 'Drexel Hill', 'PA', '19026');

INSERT INTO Customers (FirstName, MiddleName, LastName, StreetAddress, City, State, ZipCode)
VALUES ('Anthony', NULL, 'Gerald', '9706 South Arrowhead Lane', 'Cherry Hill', 'NJ', '08003');

INSERT INTO Customers (FirstName, MiddleName, LastName, StreetAddress, City, State, ZipCode)
VALUES ('Merilee', NULL, 'Fuller', '9989 Thompson Street', 'Trenton', 'NJ', '08610');

INSERT INTO Customers (FirstName, MiddleName, LastName, StreetAddress, City, State, ZipCode)
VALUES ('Zachary', NULL, 'Butterfield', '4 South Hudson Avenue', 'Eastlake', 'OH', '44095');

INSERT INTO Customers (FirstName, MiddleName, LastName, StreetAddress, City, State, ZipCode)
VALUES ('George', NULL, 'Robertson', '450 West Main Lane', 'Passaic', 'NJ', '07055');

INSERT INTO Customers (FirstName, MiddleName, LastName, StreetAddress, City, State, ZipCode)
VALUES ('Maria', NULL, 'Ruben', '49 Trusal Lane', 'Euless', 'TX', '76039');

INSERT INTO Customers (FirstName, MiddleName, LastName, StreetAddress, City, State, ZipCode)
VALUES ('Anna', 'Rose', 'Dearing', '8963 Treasure Street', 'Alpine', 'GA', '30004');

INSERT INTO Customers (FirstName, MiddleName, LastName, StreetAddress, City, State, ZipCode)
VALUES ('Catherine', 'Rose', 'Cato', '1237 Raver Croft Drive', 'Cleveland', 'TN', '37311');

INSERT INTO Customers (FirstName, MiddleName, LastName, StreetAddress, City, State, ZipCode)
VALUES ('Theresa', 'Josephine', 'Smith', '2475 Hidden Pond Road', 'Maxie', 'VA', '24628');

INSERT INTO Customers (FirstName, MiddleName, LastName, StreetAddress, City, State, ZipCode)
VALUES ('Cheryl', NULL, 'Smith', '2886 Big Elm', 'Chicago', 'IL', '60656');

INSERT INTO Customers (FirstName, MiddleName, LastName, StreetAddress, City, State, ZipCode)
VALUES ('Joey', NULL, 'Fasano', '3577 Washington Avenue', 'Jackson', 'MS', '39211');

INSERT INTO Customers (FirstName, MiddleName, LastName, StreetAddress, City, State, ZipCode)
VALUES ('Jessie', 'James', 'Kennedy', '1596 Shobe Lane', 'Denver', 'CO', '80216');

INSERT INTO Customers (FirstName, MiddleName, LastName, StreetAddress, City, State, ZipCode)
VALUES ('Marie', 'Tracy', 'Crain', '4417 Bridge Street', 'Pryor', 'OK', '74361');

INSERT INTO Customers (FirstName, MiddleName, LastName, StreetAddress, City, State, ZipCode)
VALUES ('Ruben', NULL, 'Phillips', '4024 New Street', 'Coos Bay', 'OR', '97420');

INSERT INTO Customers (FirstName, MiddleName, LastName, StreetAddress, City, State, ZipCode)
VALUES ('Francisco', NULL, 'Larose', '3781 Martha Street', 'Riverside', 'CA', '92514');

INSERT INTO Customers (FirstName, MiddleName, LastName, StreetAddress, City, State, ZipCode)
VALUES ('Billy', 'Jones', 'Steele', '650 Thorn Street', 'Moran', 'WY', '83013');

INSERT INTO Customers (FirstName, MiddleName, LastName, StreetAddress, City, State, ZipCode)
VALUES ('Danna', 'Joanna', 'Burnett', '4633 Kerry Way', 'Bellflower', 'CA', '90706');

INSERT INTO Customers (FirstName, MiddleName, LastName, StreetAddress, City, State, ZipCode)
VALUES ('Wilford', NULL, 'Mize', '4831 Clearview Drive', 'Cooke', 'MT', '59020');

INSERT INTO Customers (FirstName, MiddleName, LastName, StreetAddress, City, State, ZipCode)
VALUES ('Shelton', 'Michael', 'Fox', '296 Cambridge Drive', 'Tolleson', 'AZ', '85353');

INSERT INTO Customers (FirstName, MiddleName, LastName, StreetAddress, City, State, ZipCode)
VALUES ('Richard', 'John', 'Crawford', '4882 Junior Avenue', 'Atlanta', 'GA', '30303');

INSERT INTO Customers (FirstName, MiddleName, LastName, StreetAddress, City, State, ZipCode)
VALUES ('Jordan', NULL, 'Allen', '3761 Dovetail Estates', 'Snohomish', 'WA', '98291');

INSERT INTO Customers (FirstName, MiddleName, LastName, StreetAddress, City, State, ZipCode)
VALUES ('Cynthia', NULL, 'Birch', '3875 Ritter Street', 'Anniston', 'AL', '36201');

INSERT INTO Customers (FirstName, MiddleName, LastName, StreetAddress, City, State, ZipCode)
VALUES ('Johnathan', NULL, 'Vandusen', '1922 Mulberry Avenue', 'Little Rock', 'AR', '72211');

INSERT INTO Customers (FirstName, MiddleName, LastName, StreetAddress, City, State, ZipCode)
VALUES ('Millie', 'Terry', 'Putz', '3554 Michael Street', 'Farley', 'MO', '64028');

INSERT INTO Customers (FirstName, MiddleName, LastName, StreetAddress, City, State, ZipCode)
VALUES ('Stephanie', NULL, 'Bacon', '2712 Ashford Drive', 'Mclean', 'VA', '22101');

INSERT INTO Customers (FirstName, MiddleName, LastName, StreetAddress, City, State, ZipCode)
VALUES ('James', 'Ian', 'Goldsmith', '4130 Colonial Drive', 'College Station', 'TX', '77840');

INSERT INTO Customers (FirstName, MiddleName, LastName, StreetAddress, City, State, ZipCode)
VALUES ('Mattie', 'James', 'Mazza', '3028 Lonely Oak Drive', 'Stout', 'IA', '50673');

INSERT INTO Customers (FirstName, MiddleName, LastName, StreetAddress, City, State, ZipCode)
VALUES ('Brian', NULL, 'Pleasants', '3423 Taylor Street', 'Harrison', 'NY', '10528');

INSERT INTO Customers (FirstName, MiddleName, LastName, StreetAddress, City, State, ZipCode)
VALUES ('Lisa', NULL, 'Roe', '3978 Michigan Avenue', 'Pittsburgh', 'PA', '15222');

INSERT INTO Customers (FirstName, MiddleName, LastName, StreetAddress, City, State, ZipCode)
VALUES ('Adrian', 'Larry', 'Kaufman', '2491 Late Avenue', 'Clinton', 'OK', '73601');

INSERT INTO Customers (FirstName, MiddleName, LastName, StreetAddress, City, State, ZipCode)
VALUES ('Gail', NULL, 'Williams', '2664 Public Works Drive', 'Knoxville', 'TN', '37917');

INSERT INTO Customers (FirstName, MiddleName, LastName, StreetAddress, City, State, ZipCode)
VALUES ('Rosalind', NULL, 'Blake', '3955 Larry Street', 'Lake Isabella', 'CA', '93240');

DROP TABLE IF EXISTS EmployeeType;
CREATE TABLE EmployeeType
( EmployeeTypeID	TINYINT NOT NULL AUTO_INCREMENT,
  Title				VARCHAR(25) NOT NULL,
  CONSTRAINT PK_EmployeeType_EmployeeTypeID PRIMARY KEY ( EmployeeTypeID )
);

INSERT INTO EmployeeType (Title)
VALUES ('Warehouse Manager');

INSERT INTO EmployeeType (Title)
VALUES ('Package Handler');

INSERT INTO EmployeeType (Title)
VALUES ('Operations Manager');

INSERT INTO EmployeeType (Title)
VALUES ('Safety Coordinator');

INSERT INTO EmployeeType (Title)
VALUES ('Forklift Operator');

INSERT INTO EmployeeType (Title)
VALUES ('Machine Operator');

INSERT INTO EmployeeType (Title)
VALUES ('Processing Specialist');

INSERT INTO EmployeeType (Title)
VALUES ('Manufacturing Specialist');

INSERT INTO EmployeeType (Title)
VALUES ('Material Handler');

INSERT INTO EmployeeType (Title)
VALUES ('Warehouse Clerk');

INSERT INTO EmployeeType (Title)
VALUES ('Records Keeper');

INSERT INTO EmployeeType (Title)
VALUES ('Inventory Control Manager');

INSERT INTO EmployeeType (Title)
VALUES ('Intern');

INSERT INTO EmployeeType (Title)
VALUES ('Audit Coordinator');

INSERT INTO EmployeeType (Title)
VALUES ('Distribution Manager');

DROP TABLE IF EXISTS Employees;
CREATE TABLE Employees
( EmployeeID			SMALLINT NOT NULL AUTO_INCREMENT,
  SSN					CHAR(11) NOT NULL,
  FirstName				VARCHAR(25) NOT NULL,
  MiddleName			VARCHAR(25) DEFAULT NULL,
  LastName				VARCHAR(25) NOT NULL,
  StreetAddress			VARCHAR(35) NOT NULL,
  City					VARCHAR(25) NOT NULL,
  State					CHAR(2) NOT NULL,
  ZipCode				VARCHAR(10) NOT NULL,
  EmployeeTypeID			TINYINT NOT NULL,
  WarehouseID				SMALLINT NOT NULL,
  CONSTRAINT PK_Employees_EmployeeID PRIMARY KEY ( EmployeeID ),
  CONSTRAINT FK_Employees_EmployeeTypeID FOREIGN KEY ( EmployeeTypeID ) REFERENCES EmployeeType ( EmployeeTypeID ),
  CONSTRAINT FK_Employees_WarehouseID FOREIGN KEY ( WarehouseID ) REFERENCES Warehouse ( WarehouseID ) 
);

INSERT INTO Employees (SSN, FirstName, MiddleName, LastName, StreetAddress, City, State, ZipCode, EmployeeTypeID, WarehouseID)
VALUES ('123-23-1253', 'Jeanine', NULL, 'Gardner', '8698 Grand Road', 'Hopkins', 'OR', '55343', '1', '17');

INSERT INTO Employees (SSN, FirstName, MiddleName, LastName, StreetAddress, City, State, ZipCode, EmployeeTypeID, WarehouseID)
VALUES ('456-86-4924', 'Rod', NULL, 'Jeppsen', '40 Rosewood Avenue', 'Decatur', 'GA', '30030', '1', '8');

INSERT INTO Employees (SSN, FirstName, MiddleName, LastName, StreetAddress, City, State, ZipCode, EmployeeTypeID, WarehouseID)
VALUES ('356-80-8484', 'Candace', NULL, 'Williams', '954 Ramblewood Street', 'Pembroke Pines', 'FL', '33028', '1', '12' );

INSERT INTO Employees (SSN, FirstName, MiddleName, LastName, StreetAddress, City, State, ZipCode, EmployeeTypeID, WarehouseID)
VALUES ('126-86-4334', 'Kelly', 'Jo', 'Tingy', '9775 Armstrong Avenue', 'East Brunswick', 'NY', '08816', '1', '1');

INSERT INTO Employees (SSN, FirstName, MiddleName, LastName, StreetAddress, City, State, ZipCode, EmployeeTypeID, WarehouseID)
VALUES ('231-06-2673', 'Michelle', NULL, 'Bowman', '8382 E FieldStone Road', 'La Crosse', 'WY', '54601', '1', '18');

INSERT INTO Employees (SSN, FirstName, MiddleName, LastName, StreetAddress, City, State, ZipCode, EmployeeTypeID, WarehouseID)
VALUES ('761-08-2573', 'Marisa', NULL, 'Wilcox', '7238 Old Court Street', 'Smyrna', 'GA', '30080', '1', '8');

INSERT INTO Employees (SSN, FirstName, MiddleName, LastName, StreetAddress, City, State, ZipCode, EmployeeTypeID, WarehouseID)
VALUES ('341-05-0653', 'Taylor', NULL, 'McDonald', '8312 Hillcrest Street', 'El Dorado', 'TX', '71730', '1', '11');

INSERT INTO Employees (SSN, FirstName, MiddleName, LastName, StreetAddress, City, State, ZipCode, EmployeeTypeID, WarehouseID)
VALUES ('361-00-2003', 'Kendra', 'Marie', 'Morris', '64 Country County', 'Chester', 'PA', '19013', '1', '6');

INSERT INTO Employees (SSN, FirstName, MiddleName, LastName, StreetAddress, City, State, ZipCode, EmployeeTypeID, WarehouseID)
VALUES ('111-02-2999', 'Mark', NULL, 'Chamberlain', '9801 Foster Drive', 'Littlefield', 'AZ', '84010', '1', '3');

INSERT INTO Employees (SSN, FirstName, MiddleName, LastName, StreetAddress, City, State, ZipCode, EmployeeTypeID, WarehouseID)
VALUES ('221-09-2023', 'Diane', NULL, 'Spangler', '299 Fairground Drive', 'Wooster', 'NC', '44691', '1', '15');

INSERT INTO Employees (SSN, FirstName, MiddleName, LastName, StreetAddress, City, State, ZipCode, EmployeeTypeID, WarehouseID)
VALUES ('211-05-2433', 'Aleks', NULL, 'Sinclair', '39 Temple Road', 'Barberton', 'OH', '44203', '1', '14');

INSERT INTO Employees (SSN, FirstName, MiddleName, LastName, StreetAddress, City, State, ZipCode, EmployeeTypeID, WarehouseID)
VALUES ('161-07-2386', 'Laurie', NULL, 'Loveland', '618 North Foxrun Drive', 'Ankeny', 'CA', '50023', '1', '10');

INSERT INTO Employees (SSN, FirstName, MiddleName, LastName, StreetAddress, City, State, ZipCode, EmployeeTypeID, WarehouseID)
VALUES ('113-07-2313', 'Brad', NULL, 'Rentfro', '8396 S Princess Street', 'Northbrook', 'IL', '60062', '1', '3');

INSERT INTO Employees (SSN, FirstName, MiddleName, LastName, StreetAddress, City, State, ZipCode, EmployeeTypeID, WarehouseID)
VALUES ('333-04-2433','Matt', NULL, 'Connelly', '9386 Shipley Avenue', 'New Brunswick', 'NY', '08901', '1', '1');

INSERT INTO Employees (SSN, FirstName, MiddleName, LastName, StreetAddress, City, State, ZipCode, EmployeeTypeID, WarehouseID)
VALUES ('222-04-2333', 'Kylie', NULL, 'Blair', '750 W Golf Court', 'Ridgewood', 'NY', '07450', '1', '1');

INSERT INTO Employees (SSN, FirstName, MiddleName, LastName, StreetAddress, City, State, ZipCode, EmployeeTypeID, WarehouseID)
VALUES ('212-70-7840', 'Myra', 'Danielle', 'Kerr', '468 Lunetta Street', 'Tampa', 'FL', '33624', '1', '12');

INSERT INTO Employees (SSN, FirstName, MiddleName, LastName, StreetAddress, City, State, ZipCode, EmployeeTypeID, WarehouseID)
VALUES ('075-16-5415', 'Timothy', NULL, 'Chrisman', '2974 Locust Court', 'Santa Fe Springs', 'CA', '90670', '1', '3');

INSERT INTO Employees (SSN, FirstName, MiddleName, LastName, StreetAddress, City, State, ZipCode, EmployeeTypeID, WarehouseID)
VALUES ('040-32-7529', 'Annabella', 'Rose', 'Bush', '4786 Jennifer Lane', 'Raleigh', 'NC', '27604', '1', '4');

INSERT INTO Employees (SSN, FirstName, MiddleName, LastName, StreetAddress, City, State, ZipCode, EmployeeTypeID, WarehouseID)
VALUES ('515-90-7871', 'Claire', NULL, 'Burris', '4081 Conner Street', 'Ohio City', 'OH', '73157', '1', '2');

INSERT INTO Employees (SSN, FirstName, MiddleName, LastName, StreetAddress, City, State, ZipCode, EmployeeTypeID, WarehouseID)
VALUES ('280-14-1365', 'Paul', 'Samuel', 'Giles', '4737 Boone Street', 'Corpus Christi', 'TX', '78476', '1', '7');

INSERT INTO Employees (SSN, FirstName, MiddleName, LastName, StreetAddress, City, State, ZipCode, EmployeeTypeID, WarehouseID)
VALUES ('092-88-8554', 'Michael', 'Kurt', 'Cromer', '305 Jett Lane', 'Burbank', 'CA', '91505', '2', '2');

INSERT INTO Employees (SSN, FirstName, MiddleName, LastName, StreetAddress, City, State, ZipCode, EmployeeTypeID, WarehouseID)
VALUES ('374-20-1207', 'Kevin', 'Richard', 'Callicoat', '2140 Cooks Mine Road', 'Phoenix', 'AZ', '87106', '2', '5');

INSERT INTO Employees (SSN, FirstName, MiddleName, LastName, StreetAddress, City, State, ZipCode, EmployeeTypeID, WarehouseID)
VALUES ('569-23-5878', 'Richard', NULL, 'Hudson', '2735 Cecil Street', 'Burr Ridge', 'TX', '60527', '2', '7');

INSERT INTO Employees (SSN, FirstName, MiddleName, LastName, StreetAddress, City, State, ZipCode, EmployeeTypeID, WarehouseID)
VALUES ('607-24-9505', 'Alexis', 'Jay', 'Walker', '163 Fort Street', 'Tacoma', 'WA', '98491', '2', '16');

INSERT INTO Employees (SSN, FirstName, MiddleName, LastName, StreetAddress, City, State, ZipCode, EmployeeTypeID, WarehouseID)
VALUES ('006-09-1436', 'Carol', 'Dana', 'Dawson', '3305 Melrose Street', 'Concord', 'CA', '94520', '2', '2');

INSERT INTO Employees (SSN, FirstName, MiddleName, LastName, StreetAddress, City, State, ZipCode, EmployeeTypeID, WarehouseID)
VALUES ('481-33-5617', 'Anna', NULL, 'Ramirez', '4457 Lowes Alley', 'Mansfield', 'OH', '44902', '2', '14');

INSERT INTO Employees (SSN, FirstName, MiddleName, LastName, StreetAddress, City, State, ZipCode, EmployeeTypeID, WarehouseID)
VALUES ('017-28-5283', 'Robert', NULL, 'Shively', '2912 James Avenue', 'Waterfalls', 'WA', '67202', '2', '16');

INSERT INTO Employees (SSN, FirstName, MiddleName, LastName, StreetAddress, City, State, ZipCode, EmployeeTypeID, WarehouseID)
VALUES ('066-58-6238', 'Stephen', 'Alex', 'Reese', '3217 Lamberts Branch Road', 'Ft Lauderdale', 'FL', '33311', '2', '12');

INSERT INTO Employees (SSN, FirstName, MiddleName, LastName, StreetAddress, City, State, ZipCode, EmployeeTypeID, WarehouseID)
VALUES ('361-62-4982', 'Charles', 'Peter', 'Velez', '1726 Maple Lane', 'Gadsden', 'AZ', '35903', '2', '5');

INSERT INTO Employees (SSN, FirstName, MiddleName, LastName, StreetAddress, City, State, ZipCode, EmployeeTypeID, WarehouseID)
VALUES ('243-84-4430', 'Mary', NULL, 'Witherspoon', '2259 Late Avenue', 'Waynoka', 'OH', '73860', '2', '14');

INSERT INTO Employees (SSN, FirstName, MiddleName, LastName, StreetAddress, City, State, ZipCode, EmployeeTypeID, WarehouseID)
VALUES ('408-68-1675', 'Shirley', 'Rose', 'Moses', '1230 Golf Course Drive', 'Manassas', 'PA', '22110', '2', '6');

INSERT INTO Employees (SSN, FirstName, MiddleName, LastName, StreetAddress, City, State, ZipCode, EmployeeTypeID, WarehouseID)
VALUES ('351-68-4256', 'Kevin', NULL, 'Huang', '4559 Patton Lane', 'Mebane', 'NC', '27302', '2', '19');

INSERT INTO Employees (SSN, FirstName, MiddleName, LastName, StreetAddress, City, State, ZipCode, EmployeeTypeID, WarehouseID)
VALUES ('064-09-9279', 'Scott', NULL, 'Alexander', '1111 Thomas Street', 'Lake Zurich', 'IL', '60047', '2', '3');

INSERT INTO Employees (SSN, FirstName, MiddleName, LastName, StreetAddress, City, State, ZipCode, EmployeeTypeID, WarehouseID)
VALUES ('323-54-0476', 'Steven', NULL, 'Algarin', '3081 Pearcy Avenue', 'Wayfield', 'WY', '53066', '2', '18');

INSERT INTO Employees (SSN, FirstName, MiddleName, LastName, StreetAddress, City, State, ZipCode, EmployeeTypeID, WarehouseID)
VALUES ('199-26-7172', 'Nicholas', NULL, 'Hollis', '4095 Fairmont Avenue', 'Cut City', 'NC', '64106', '2', '19');

INSERT INTO Employees (SSN, FirstName, MiddleName, LastName, StreetAddress, City, State, ZipCode, EmployeeTypeID, WarehouseID)
VALUES ('180-66-6937', 'Debi', NULL, 'Gilmore', '4393 Broaddus Avenue', 'Bowling Green', 'TX', '42101', '2', '13');

INSERT INTO Employees (SSN, FirstName, MiddleName, LastName, StreetAddress, City, State, ZipCode, EmployeeTypeID, WarehouseID)
VALUES ('628-94-4265', 'James', 'Cole', 'Everson', '3214 Thompson Street', 'Gardena', 'LA', '90248', '2', '20');

INSERT INTO Employees (SSN, FirstName, MiddleName, LastName, StreetAddress, City, State, ZipCode, EmployeeTypeID, WarehouseID)
VALUES ('116-12-0125', 'Max', NULL, 'Belcher', '2072 Berkley Street', 'Newark', 'PA', '19714', '2', '6');

INSERT INTO Employees (SSN, FirstName, MiddleName, LastName, StreetAddress, City, State, ZipCode, EmployeeTypeID, WarehouseID)
VALUES ('151-11-1541', 'Anthony', NULL, 'Jones', '3681 Koontz Lane', 'Northridge', 'CA', '91324', '2', '2');

INSERT INTO Employees (SSN, FirstName, MiddleName, LastName, StreetAddress, City, State, ZipCode, EmployeeTypeID, WarehouseID)
VALUES ('764-28-7177', 'Margaret', 'Helen', 'Lee', '1686 Parkway Drive', 'Tucson', 'AZ', '85701', '2', '5');



DROP TABLE IF EXISTS WarehouseManager;
CREATE TABLE WarehouseManager
( EmployeeID			SMALLINT NOT NULL,
  EmployeeTypeID		TINYINT NOT NULL,
  Salary				DECIMAL(7,2) NOT NULL,
  CONSTRAINT PK_WarehouseManager_EmployeeID PRIMARY KEY ( EmployeeID ),
  CONSTRAINT FK_WarehouseManager_EmployeeID FOREIGN KEY ( EmployeeID ) REFERENCES Employees ( EmployeeID ),
  CONSTRAINT FK_WarehouseManager_EmployeeTypeID FOREIGN KEY ( EmployeeTypeID ) REFERENCES EmployeeType ( EmployeeTypeID ),
  CONSTRAINT WarehouseManager_CheckType CHECK ( EmployeeTypeID = 1 )
);

INSERT INTO WarehouseManager (EmployeeID, EmployeeTypeID, Salary)
VALUES ('1', '1', '45000.00');

INSERT INTO WarehouseManager (EmployeeID, EmployeeTypeID, Salary) 
VALUES ('2', '1', '58000.00');

INSERT INTO WarehouseManager (EmployeeID, EmployeeTypeID, Salary) 
VALUES ('3', '1', '55000.00');

INSERT INTO WarehouseManager (EmployeeID, EmployeeTypeID, Salary) 
VALUES ('4', '1', '45000.00');

INSERT INTO WarehouseManager (EmployeeID, EmployeeTypeID, Salary) 
VALUES ('5', '1', '52000.00');

INSERT INTO WarehouseManager (EmployeeID, EmployeeTypeID, Salary) 
VALUES ('6', '1', '55000.00');

INSERT INTO WarehouseManager (EmployeeID, EmployeeTypeID, Salary) 
VALUES ('7', '1', '45000.00');

INSERT INTO WarehouseManager (EmployeeID, EmployeeTypeID, Salary) 
VALUES ('8', '1', '54000.00');

INSERT INTO WarehouseManager (EmployeeID, EmployeeTypeID, Salary) 
VALUES ('9', '1', '55000.00');

INSERT INTO WarehouseManager (EmployeeID, EmployeeTypeID, Salary) 
VALUES ('10', '1', '45000.00');

INSERT INTO WarehouseManager (EmployeeID, EmployeeTypeID, Salary) 
VALUES ('11', '1', '53000.00');

INSERT INTO WarehouseManager (EmployeeID, EmployeeTypeID, Salary) 
VALUES ('12', '1', '55000.00');

INSERT INTO WarehouseManager (EmployeeID, EmployeeTypeID, Salary) 
VALUES ('13', '1', '45000.00');

INSERT INTO WarehouseManager (EmployeeID, EmployeeTypeID, Salary) 
VALUES ('14', '1', '53000.00');

INSERT INTO WarehouseManager (EmployeeID, EmployeeTypeID, Salary) 
VALUES ('15', '1', '55000.00');

INSERT INTO WarehouseManager (EmployeeID, EmployeeTypeID, Salary) 
VALUES ('16', '1', '45000.00');

INSERT INTO WarehouseManager (EmployeeID, EmployeeTypeID, Salary) 
VALUES ('17', '1', '52000.00');

INSERT INTO WarehouseManager (EmployeeID, EmployeeTypeID, Salary) 
VALUES ('18', '1', '55000.00');

INSERT INTO WarehouseManager (EmployeeID, EmployeeTypeID, Salary) 
VALUES ('19', '1', '47000.00');

INSERT INTO WarehouseManager (EmployeeID, EmployeeTypeID, Salary) 
VALUES ('20', '1', '51000.00');


DROP TABLE IF EXISTS PackageHandler; 
CREATE TABLE PackageHandler
( EmployeeID			SMALLINT NOT NULL,
  EmployeeTypeID		TINYINT NOT NULL,
  HourlyWage			DECIMAL(4,2) NOT NULL,
  CONSTRAINT PK_PackageHandler_EmployeeID_EmployeeTypeID PRIMARY KEY ( EmployeeID ),
  CONSTRAINT FK_PackageHandler_EmployeeID FOREIGN KEY ( EmployeeID ) REFERENCES Employees ( EmployeeID ),
  CONSTRAINT FK_PackageHandler_EmployeeTypeID FOREIGN KEY ( EmployeeTypeID ) REFERENCES EmployeeType ( EmployeeTypeID ),
  CONSTRAINT PackageHandlerCheckType CHECK ( EmployeeTypeID = 2 )
);

INSERT INTO PackageHandler (EmployeeID,EmployeeTypeID, HourlyWage)
VALUES ('21', '2', '15.75');
 
INSERT INTO PackageHandler (EmployeeID,EmployeeTypeID, HourlyWage)
VALUES ('22', '2', '16.00');
 
INSERT INTO PackageHandler (EmployeeID,EmployeeTypeID, HourlyWage)
VALUES ('23', '2', '15.75');
 
INSERT INTO PackageHandler (EmployeeID,EmployeeTypeID, HourlyWage)
VALUES ('24', '2', '15.75');
 
INSERT INTO PackageHandler (EmployeeID,EmployeeTypeID, HourlyWage)
VALUES ('25', '2', '15.10');
 
INSERT INTO PackageHandler (EmployeeID,EmployeeTypeID, HourlyWage)
VALUES ('26', '2', '15.75');
 
INSERT INTO PackageHandler (EmployeeID,EmployeeTypeID, HourlyWage)
VALUES ('27', '2', '15.75');
 
INSERT INTO PackageHandler (EmployeeID,EmployeeTypeID, HourlyWage)
VALUES ('28', '2', '15.25');
 
INSERT INTO PackageHandler (EmployeeID,EmployeeTypeID, HourlyWage)
VALUES ('29', '2', '15.75');
 
INSERT INTO PackageHandler (EmployeeID,EmployeeTypeID, HourlyWage)
VALUES ('30', '2', '15.75');
 
INSERT INTO PackageHandler (EmployeeID,EmployeeTypeID, HourlyWage)
VALUES ('31', '2', '15.50');
 
INSERT INTO PackageHandler (EmployeeID,EmployeeTypeID, HourlyWage)
VALUES ('32', '2', '15.75');
 
INSERT INTO PackageHandler (EmployeeID,EmployeeTypeID, HourlyWage)
VALUES ('33', '2', '15.75');
 
INSERT INTO PackageHandler (EmployeeID,EmployeeTypeID, HourlyWage)
VALUES ('34', '2', '15.50');
 
INSERT INTO PackageHandler (EmployeeID,EmployeeTypeID, HourlyWage)
VALUES ('35', '2', '15.75');
 
INSERT INTO PackageHandler (EmployeeID,EmployeeTypeID, HourlyWage)
VALUES ('36', '2', '15.75');
 
INSERT INTO PackageHandler (EmployeeID,EmployeeTypeID, HourlyWage)
VALUES ('37', '2', '15.10');
 
INSERT INTO PackageHandler (EmployeeID,EmployeeTypeID, HourlyWage)
VALUES ('38', '2', '15.75');
 
INSERT INTO PackageHandler (EmployeeID,EmployeeTypeID, HourlyWage)
VALUES ('39', '2', '15.75');
 
INSERT INTO PackageHandler (EmployeeID,EmployeeTypeID, HourlyWage)
VALUES ('40', '2', '15.10');
 

DROP TABLE IF EXISTS PackageHandlerShifts; 
CREATE TABLE PackageHandlerShifts
( EmployeeID				SMALLINT NOT NULL,
  StartTime				TIME NOT NULL,
  EndTime				TIME NOT NULL,
  CONSTRAINT PK_PackageHandlerShifts_EmployeeID_EmployeeTypeID PRIMARY KEY ( EmployeeID ),
  CONSTRAINT FK_PackageHandlerShifts_EmployeeID FOREIGN KEY ( EmployeeID ) REFERENCES PackageHandler ( EmployeeID )
);

INSERT INTO PackageHandlerShifts (EmployeeID, StartTime, EndTime)
VALUES ('21', '09:00', '14:00');

INSERT INTO PackageHandlerShifts (EmployeeID, StartTime, EndTime)
VALUES ('22', '09:00', '14:00');

INSERT INTO PackageHandlerShifts (EmployeeID, StartTime, EndTime)
VALUES ('23', '05:00', '10:00');

INSERT INTO PackageHandlerShifts (EmployeeID, StartTime, EndTime)
VALUES ('24', '08:00', '13:00');

INSERT INTO PackageHandlerShifts (EmployeeID, StartTime, EndTime)
VALUES ('25', '07:00', '12:00');

INSERT INTO PackageHandlerShifts (EmployeeID, StartTime, EndTime)
VALUES ('26', '09:00', '13:00');

INSERT INTO PackageHandlerShifts (EmployeeID, StartTime, EndTime)
VALUES ('27', '14:00', '20:00');

INSERT INTO PackageHandlerShifts (EmployeeID, StartTime, EndTime)
VALUES ('28', '13:00', '21:00');

INSERT INTO PackageHandlerShifts (EmployeeID, StartTime, EndTime)
VALUES ('29', '09:00', '14:00');

INSERT INTO PackageHandlerShifts (EmployeeID, StartTime, EndTime)
VALUES ('30', '12:00', '19:00');

INSERT INTO PackageHandlerShifts (EmployeeID, StartTime, EndTime)
VALUES ('31', '09:00', '18:00');

INSERT INTO PackageHandlerShifts (EmployeeID, StartTime, EndTime)
VALUES ('32', '09:00', '14:00');

INSERT INTO PackageHandlerShifts (EmployeeID, StartTime, EndTime)
VALUES ('33', '12:00', '19:00');

INSERT INTO PackageHandlerShifts (EmployeeID, StartTime, EndTime)
VALUES ('34', '11:00', '17:00');

INSERT INTO PackageHandlerShifts (EmployeeID, StartTime, EndTime)
VALUES ('35', '07:00', '12:00');

INSERT INTO PackageHandlerShifts (EmployeeID, StartTime, EndTime)
VALUES ('36', '13:00', '22:00');

INSERT INTO PackageHandlerShifts (EmployeeID, StartTime, EndTime)
VALUES ('37', '10:00', '15:00');

INSERT INTO PackageHandlerShifts (EmployeeID, StartTime, EndTime)
VALUES ('38', '16:00', '22:00');

INSERT INTO PackageHandlerShifts (EmployeeID, StartTime, EndTime)
VALUES ('39', '06:00', '11:00');

INSERT INTO PackageHandlerShifts (EmployeeID, StartTime, EndTime)
VALUES ('40', '09:00', '14:00');


DROP TABLE IF EXISTS Orders;
CREATE TABLE Orders
( OrderID			INT NOT NULL AUTO_INCREMENT,
  EmployeeID			SMALLINT NOT NULL,
  CustomerID			INT NOT NULL,
  OrderDate			DATE NOT NULL,
  OrderTime			TIME NOT NULL,
  CONSTRAINT PK_Orders_OrderID PRIMARY KEY (OrderID),
  CONSTRAINT FK_Orders_EmployeeID FOREIGN KEY (EmployeeID) REFERENCES Employees (EmployeeID),
  CONSTRAINT FK_Orders_CustomerID FOREIGN KEY (CustomerID) REFERENCES Customers (CustomerID)
);

INSERT INTO Orders (EmployeeID, CustomerID, OrderDate, OrderTime)
VALUES ('21', '1', '2020-02-02', '07:00:00');

INSERT INTO Orders (EmployeeID, CustomerID, OrderDate, OrderTime)
VALUES ('21', '2', '2020-01-01', '08:00:00');

INSERT INTO Orders (EmployeeID, CustomerID, OrderDate, OrderTime)
VALUES ('22', '3', '2020-04-05', '10:00:07');

INSERT INTO Orders (EmployeeID, CustomerID, OrderDate, OrderTime)
VALUES ('22', '4', '2020-03-02', '12:00:05');

INSERT INTO Orders (EmployeeID, CustomerID, OrderDate, OrderTime)
VALUES ('23', '5', '2020-01-04', '07:45:00');

INSERT INTO Orders (EmployeeID, CustomerID, OrderDate, OrderTime)
VALUES ('23', '6', '2020-03-07', '10:03:09');

INSERT INTO Orders (EmployeeID, CustomerID, OrderDate, OrderTime)
VALUES ('24', '7', '2020-05-02', '07:45:00');

INSERT INTO Orders (EmployeeID, CustomerID, OrderDate, OrderTime)
VALUES ('24', '8', '2020-05-06', '09:12:07');

INSERT INTO Orders (EmployeeID, CustomerID, OrderDate, OrderTime)
VALUES ('25', '9', '2020-06-01', '12:00:08');

INSERT INTO Orders (EmployeeID, CustomerID, OrderDate, OrderTime)
VALUES ('26', '10', '2020-06-20', '13:00:05');

INSERT INTO Orders (EmployeeID, CustomerID, OrderDate, OrderTime)
VALUES ('26', '11', '2020-06-22', '15:00:07');

INSERT INTO Orders (EmployeeID, CustomerID, OrderDate, OrderTime)
VALUES ('26', '12', '2020-06-14', '16:15:07');

INSERT INTO Orders (EmployeeID, CustomerID, OrderDate, OrderTime)
VALUES ('27', '13', '2020-06-03', '12:15:00');

INSERT INTO Orders (EmployeeID, CustomerID, OrderDate, OrderTime)
VALUES ('27', '14', '2020-06-07', '14:30:05');

INSERT INTO Orders (EmployeeID, CustomerID, OrderDate, OrderTime)
VALUES ('28', '15', '2020-05-04', '15:00:00');

INSERT INTO Orders (EmployeeID, CustomerID, OrderDate, OrderTime)
VALUES ('28', '16', '2020-07-01', '16:30:00');

INSERT INTO Orders (EmployeeID, CustomerID, OrderDate, OrderTime)
VALUES ('29', '17', '2020-01-03', '14:45:00');

INSERT INTO Orders (EmployeeID, CustomerID, OrderDate, OrderTime)
VALUES ('29', '18', '2020-04-02', '12:30:00');

INSERT INTO Orders (EmployeeID, CustomerID, OrderDate, OrderTime)
VALUES ('30', '19', '2020-03-02', '15:45:00');

INSERT INTO Orders (EmployeeID, CustomerID, OrderDate, OrderTime)
VALUES ('30', '20', '2020-02-27', '16:45:00');

INSERT INTO Orders (EmployeeID, CustomerID, OrderDate, OrderTime)
VALUES ('31', '21', '2020-02-02', '07:00:00');

INSERT INTO Orders (EmployeeID, CustomerID, OrderDate, OrderTime)
VALUES ('32', '22', '2020-01-01', '08:00:00');

INSERT INTO Orders (EmployeeID, CustomerID, OrderDate, OrderTime)
VALUES ('33', '23', '2020-04-05', '10:00:07');

INSERT INTO Orders (EmployeeID, CustomerID, OrderDate, OrderTime)
VALUES ('33', '24', '2020-03-02', '12:00:05');

INSERT INTO Orders (EmployeeID, CustomerID, OrderDate, OrderTime)
VALUES ('34', '25', '2020-01-04', '07:45:00');

INSERT INTO Orders (EmployeeID, CustomerID, OrderDate, OrderTime)
VALUES ('34', '26', '2020-03-07', '10:03:09');

INSERT INTO Orders (EmployeeID, CustomerID, OrderDate, OrderTime)
VALUES ('34', '27', '2020-05-02', '07:45:00');

INSERT INTO Orders (EmployeeID, CustomerID, OrderDate, OrderTime)
VALUES ('34', '28', '2020-05-06', '09:12:07');

INSERT INTO Orders (EmployeeID, CustomerID, OrderDate, OrderTime)
VALUES ('34', '29', '2020-06-01', '12:00:08');

INSERT INTO Orders (EmployeeID, CustomerID, OrderDate, OrderTime)
VALUES ('35', '30', '2020-06-20', '13:00:05');

INSERT INTO Orders (EmployeeID, CustomerID, OrderDate, OrderTime)
VALUES ('35', '31', '2020-06-22', '15:00:07');

INSERT INTO Orders (EmployeeID, CustomerID, OrderDate, OrderTime)
VALUES ('35', '32', '2020-06-14','16:15:07');

INSERT INTO Orders (EmployeeID, CustomerID, OrderDate, OrderTime)
VALUES ('35', '33', '2020-06-03', '12:15:00');

INSERT INTO Orders (EmployeeID, CustomerID, OrderDate, OrderTime)
VALUES ('36', '34', '2020-06-07', '14:30:05');

INSERT INTO Orders (EmployeeID, CustomerID, OrderDate, OrderTime)
VALUES ('36', '35', '2020-05-04', '15:00:00');

INSERT INTO Orders (EmployeeID, CustomerID, OrderDate, OrderTime)
VALUES ('37', '36', '2020-07-01', '16:30:00');

INSERT INTO Orders (EmployeeID, CustomerID, OrderDate, OrderTime)
VALUES ('37', '37', '2020-01-03', '14:45:00');

INSERT INTO Orders (EmployeeID, CustomerID, OrderDate, OrderTime)
VALUES ('38', '38', '2020-04-02', '12:30:00');

INSERT INTO Orders (EmployeeID, CustomerID, OrderDate, OrderTime)
VALUES ('39', '39', '2020-03-02', '15:45:00');

INSERT INTO Orders (EmployeeID, CustomerID, OrderDate, OrderTime)
VALUES ('40', '40', '2020-02-27', '16:45:00');


DROP TABLE IF EXISTS Products;
CREATE TABLE Products
( ProductID				INT NOT NULL AUTO_INCREMENT,
  ProductName			VARCHAR(30) NOT NULL,
  ProductDescription	VARCHAR(100) NOT NULL,
  SalesPrice			Decimal(6,2) NOT NULL,
  InventoryOnHand		SMALLINT NOT NULL,
  ProductCategory		VARCHAR(25) NOT NULL,
  CONSTRAINT PK_Products_ProductID PRIMARY KEY (ProductID)
);

INSERT INTO Products (ProductName, ProductDescription, SalesPrice, InventoryOnHand, ProductCategory)
VALUES ('Wastebasket', 'Stylish and practical. Great for keeping your room trash-free', '6.00', '200', 'Home');

INSERT INTO Products (ProductName, ProductDescription, SalesPrice, InventoryOnHand, ProductCategory)
VALUES ('Floral Comforter', 'This comfortable, cute comforter will be a great addition to your bedroom!', '35.00', '150', 'Home');

INSERT INTO Products (ProductName, ProductDescription, SalesPrice, InventoryOnHand, ProductCategory)
VALUES ('Lamp', 'This lamp will provide excellent lighting', '20.00', '100', 'Home');

INSERT INTO Products (ProductName, ProductDescription, SalesPrice, InventoryOnHand, ProductCategory)
VALUES ('Picture Frame', 'This wooden picture frame provides a great background to your cherished memories', '8.00', '200', 'Home');

INSERT INTO Products (ProductName, ProductDescription, SalesPrice, InventoryOnHand, ProductCategory)
VALUES ('Blanket', 'This comfy blanket will provide great warmth and style to your bed', '10.00', '400', 'Home');

INSERT INTO Products (ProductName, ProductDescription, SalesPrice, InventoryOnHand, ProductCategory)
VALUES ('Desk', 'This desk will provide a great place to do work and study', '70.00', '75', 'Home');

INSERT INTO Products (ProductName, ProductDescription, SalesPrice, InventoryOnHand, ProductCategory)
VALUES ('Hand Mirror', 'Look at your reflection with this glass mirror', '4.00', '200', 'Home');

INSERT INTO Products (ProductName, ProductDescription, SalesPrice, InventoryOnHand, ProductCategory)
VALUES ('Recliner Chair', 'Lounge comfortably in this chair', '300.00', '50', 'Home');

INSERT INTO Products (ProductName, ProductDescription, SalesPrice, InventoryOnHand, ProductCategory)
VALUES ('Alarm Clock', 'Keep track of time with this alarm clock', '10.00', '40', 'Home');

INSERT INTO Products (ProductName, ProductDescription, SalesPrice, InventoryOnHand, ProductCategory)
VALUES ('Rug', 'Add a pop of color with this blue rug', '10.00', '200','Home');

INSERT INTO Products (ProductName, ProductDescription, SalesPrice, InventoryOnHand, ProductCategory)
VALUES ('Laptop', 'Surf the web with this laptop', '1000.00', '100', 'Technology');

INSERT INTO Products (ProductName, ProductDescription, SalesPrice, InventoryOnHand, ProductCategory)
VALUES ('Phone Charger', 'Charge your phone', '20.00', '200', 'Technology');

INSERT INTO Products (ProductName, ProductDescription, SalesPrice, InventoryOnHand, ProductCategory)
VALUES ('Laptop Charger', 'Charge your laptop', '40.00', '150','Technology');

INSERT INTO Products (ProductName, ProductDescription, SalesPrice, InventoryOnHand, ProductCategory)
VALUES ('Watch', 'Stylish watch to keep track of time', '200.00', '200', 'Technology');

INSERT INTO Products (ProductName, ProductDescription, SalesPrice, InventoryOnHand, ProductCategory)
VALUES ('TV', 'Watch all your favorite movies and shows', '500.00', '150', 'Technology');

INSERT INTO Products (ProductName, ProductDescription, SalesPrice, InventoryOnHand, ProductCategory)
VALUES ('Keyboard', 'Comfortable to type on', '20.00', '300', 'Technology');

INSERT INTO Products (ProductName, ProductDescription, SalesPrice, InventoryOnHand, ProductCategory)
VALUES ('WebCam', 'Connect to your computer for video conferencing', '60', '400', 'Technology');

INSERT INTO Products (ProductName, ProductDescription, SalesPrice, InventoryOnHand, ProductCategory)
VALUES ('Headphones', 'Listen to audio comfortably', '100.00', '200', 'Technology');

INSERT INTO Products (ProductName, ProductDescription, SalesPrice, InventoryOnHand, ProductCategory)
VALUES ('Aux Cable', 'Listen to audio by connecting with preferred device', '5.00', '300', 'Technology');

INSERT INTO Products (ProductName, ProductDescription, SalesPrice, InventoryOnHand, ProductCategory)
VALUES ('6 Outlet Wall Tap', 'Be able to power six devices', '8.00', '300', 'Technology');

INSERT INTO Products (ProductName, ProductDescription, SalesPrice, InventoryOnHand, ProductCategory)
VALUES ('Cleanser', 'Keep your face clean', '12.00', '250', 'Beauty');

INSERT INTO Products (ProductName, ProductDescription, SalesPrice, InventoryOnHand, ProductCategory)
VALUES ('Toner', 'Tone your face', '10.00', '200', 'Beauty');

INSERT INTO Products (ProductName, ProductDescription, SalesPrice, InventoryOnHand, ProductCategory)
VALUES ('Eyeshadow Palette', 'Create your favorite looks on your eyes', '15.00', '250', 'Beauty');

INSERT INTO Products (ProductName, ProductDescription, SalesPrice, InventoryOnHand, ProductCategory)
VALUES ('Eyeliner Pencil', 'Line your eyes', '8.00', '300', 'Beauty');

INSERT INTO Products (ProductName, ProductDescription, SalesPrice, InventoryOnHand, ProductCategory)
VALUES ('Lip Liner', 'Line your lips', '4.00', '200', 'Beauty');

INSERT INTO Products (ProductName, ProductDescription, SalesPrice, InventoryOnHand, ProductCategory)
VALUES ('Eyelash Curler', 'Curl your lashes', '5.00', '100', 'Beauty');

INSERT INTO Products (ProductName, ProductDescription, SalesPrice, InventoryOnHand, ProductCategory)
VALUES ('Mascara', 'Lengthen and darken your lashes', '10.00', '200', 'Beauty');

INSERT INTO Products (ProductName, ProductDescription, SalesPrice, InventoryOnHand, ProductCategory)
VALUES ('Lip Gloss', 'Make your lips shiny', '8.00', '300', 'Beauty');

INSERT INTO Products (ProductName, ProductDescription, SalesPrice, InventoryOnHand, ProductCategory)
VALUES ('Lip Stick', 'Pinken your lips', '7.00', '200', 'Beauty');

INSERT INTO Products (ProductName, ProductDescription, SalesPrice, InventoryOnHand, ProductCategory)
VALUES ('Highlighter', 'Highlight the main points of your face', '10.00', '200', 'Beauty');

INSERT INTO Products (ProductName, ProductDescription, SalesPrice, InventoryOnHand, ProductCategory)
VALUES ('Lawn Chair', 'Wooden chair that will match with any garden exterior', '100.00', '500', 'Patio & Garden');

INSERT INTO Products (ProductName, ProductDescription, SalesPrice, InventoryOnHand, ProductCategory)
VALUES ('Outdoor Sofa', 'Lounge comfortably outside', '500.00', '300', 'Patio & Garden');

INSERT INTO Products (ProductName, ProductDescription, SalesPrice, InventoryOnHand, ProductCategory) 
VALUES ('Patio table', 'Have dinners outside with this patio table', '300.00', '300', 'Patio & Garden');

INSERT INTO Products (ProductName, ProductDescription, SalesPrice, InventoryOnHand, ProductCategory)
VALUES ('Hammock', 'Lounge comfortably outside with the cotton exterior', '200.00', '400', 'Patio & Garden');

INSERT INTO Products (ProductName, ProductDescription, SalesPrice, InventoryOnHand, ProductCategory)
VALUES ('Firepit', 'Roast food over this firepit that provides warmth for chilly nights', '1000.00', '400', 'Patio & Garden');

INSERT INTO Products (ProductName, ProductDescription, SalesPrice, InventoryOnHand, ProductCategory)
VALUES ('Patio Bar Cart', 'Mix all your favorite drinks with this bar cat meant for the outdoors', '300.00', '400', 'Patio & Garden');

INSERT INTO Products (ProductName, ProductDescription, SalesPrice, InventoryOnHand, ProductCategory)
VALUES ('Flowerpot', 'Keep your favorite plants in place', '20.00', '500', 'Patio & Garden');

INSERT INTO Products (ProductName, ProductDescription, SalesPrice, InventoryOnHand, ProductCategory)
VALUES ('Patio Accent Table', 'Add this stylish table', '100.00', '200', 'Patio & Garden');

INSERT INTO Products (ProductName, ProductDescription, SalesPrice, InventoryOnHand, ProductCategory)
VALUES ('Wooden Bench', 'Add this bench to sit or decoration', '200.00', '350', 'Patio & Garden');

INSERT INTO Products (ProductName, ProductDescription, SalesPrice, InventoryOnHand, ProductCategory)
VALUES ('Patio Storage Box', 'Have a place to store outdoor items', '150', '400', 'Patio & Garden');


DROP TABLE IF EXISTS Vendors;
CREATE TABLE Vendors
( VendorID				INT NOT NULL AUTO_INCREMENT,
  VendorName			VARCHAR(30) NOT NULL,
  VendorDescription		VARCHAR(100) NOT NULL,
  CONSTRAINT PK_Vendors_VendorID PRIMARY KEY (VendorID)
);
INSERT INTO Vendors (VendorName, VendorDescription)
VALUES ('Lush Decor', 'Home Decoration and Essentials Company');

INSERT INTO Vendors (VendorName, VendorDescription)
VALUES ('Hearth & Hand', 'Home Decoration and Essentials Company');
 
INSERT INTO Vendors (VendorName, VendorDescription)
VALUES ('Hallmark Home', 'Home Decoration and Essentials Company');

INSERT INTO Vendors (VendorName, VendorDescription)
VALUES ('Apple', 'Technology Company');

INSERT INTO Vendors (VendorName, VendorDescription)
VALUES ('Toshiba', 'Technology Company');

INSERT INTO Vendors (VendorName, VendorDescription)
VALUES ('Logitech', 'Technology Company');

INSERT INTO Vendors (VendorName, VendorDescription)
VALUES ('PTZOptics', 'Technology Company');

INSERT INTO Vendors (VendorName, VendorDescription)
VALUES ('Neutrogena', 'Beauty Company');

INSERT INTO Vendors (VendorName, VendorDescription)
VALUES ('Maybelline', 'Beauty Company');

INSERT INTO Vendors (VendorName, VendorDescription)
VALUES ('NYX', 'Beauty Company');

INSERT INTO Vendors (VendorName, VendorDescription)
VALUES ('Rimmel', 'Beauty Company');

INSERT INTO Vendors (VendorName, VendorDescription)
VALUES ('Elf', 'BeautyCompany');

INSERT INTO Vendors (VendorName, VendorDescription)
VALUES ('Harmonia Living', 'Outdoor Furniture Company');

INSERT INTO Vendors (VendorName, VendorDescription)
VALUES ('Gloster', 'Outdoor Furniture Company');

INSERT INTO Vendors (VendorName, VendorDescription)
VALUES ('Woodard', 'Outdoor Furniture Company');

INSERT INTO Vendors (VendorName, VendorDescription)
VALUES ('Forever Patio', 'Outdoor Furniture Company');

INSERT INTO Vendors (VendorName, VendorDescription)
VALUES ('Alfresco Home', 'Outdoor Furniture Company');


DROP TABLE IF EXISTS Inventory;
CREATE TABLE Inventory
( ProductID				INT NOT NULL,
  VendorID				INT NOT NULL,
  UnitCost				DECIMAL(6,2) NOT NULL,
  CONSTRAINT PK_Inventory_ProductID_VendorID PRIMARY KEY (ProductID, VendorID),
  CONSTRAINT FK_Inventory_ProductID FOREIGN KEY (ProductID) REFERENCES Products (ProductID),
  CONSTRAINT FK_Inventory_VendorID FOREIGN KEY (VendorID) REFERENCES Vendors (VendorID)
);
INSERT INTO Inventory (ProductID, VendorID, UnitCost)
VALUES ('1', '2', '2.50');

INSERT INTO Inventory (ProductID, VendorID, UnitCost)
VALUES ('2', '2', '10.00');

INSERT INTO Inventory (ProductID, VendorID, UnitCost)
VALUES ('3', '1', '4.50');

INSERT INTO Inventory (ProductID, VendorID, UnitCost)
VALUES ('4', '3', '1.50');

INSERT INTO Inventory (ProductID, VendorID, UnitCost)
VALUES ('5', '3', '2.50');

INSERT INTO Inventory (ProductID, VendorID, UnitCost)
VALUES ('6', '2', '15.00');

INSERT INTO Inventory (ProductID, VendorID, UnitCost)
VALUES ('7', '1', '1.50');

INSERT INTO Inventory (ProductID, VendorID, UnitCost)
VALUES ('8', '1', '40.00');

INSERT INTO Inventory (ProductID, VendorID, UnitCost)
VALUES ('9', '2', '3.50');

INSERT INTO Inventory (ProductID, VendorID, UnitCost)
VALUES ('10', '2', '1.50');

INSERT INTO Inventory (ProductID, VendorID, UnitCost)
VALUES ('11', '4', '50.00');

INSERT INTO Inventory (ProductID, VendorID, UnitCost)
VALUES ('12', '4', '5.00');

INSERT INTO Inventory (ProductID, VendorID, UnitCost)
VALUES ('13', '4', '7.00');

INSERT INTO Inventory (ProductID, VendorID, UnitCost)
VALUES ('14', '4', '30.00');

INSERT INTO Inventory (ProductID, VendorID, UnitCost)
VALUES ('15', '5', '75.00');

INSERT INTO Inventory (ProductID, VendorID, UnitCost)
VALUES ('16', '6', '5.00');

INSERT INTO Inventory (ProductID, VendorID, UnitCost)
VALUES ('17', '7', '18.00');

INSERT INTO Inventory (ProductID, VendorID, UnitCost)
VALUES ('18', '4', '20.00');

INSERT INTO Inventory (ProductID, VendorID, UnitCost)
VALUES ('19', '6', '1.50');

INSERT INTO Inventory (ProductID, VendorID, UnitCost)
VALUES ('20', '6', '3.50');

INSERT INTO Inventory (ProductID, VendorID, UnitCost)
VALUES ('21', '8', '2.00');

INSERT INTO Inventory (ProductID, VendorID, UnitCost)
VALUES ('22', '8', '1.00');

INSERT INTO Inventory (ProductID, VendorID, UnitCost)
VALUES ('23', '9', '3.00');

INSERT INTO Inventory (ProductID, VendorID, UnitCost)
VALUES ('24', '10', '1.50');

INSERT INTO Inventory (ProductID, VendorID, UnitCost)
VALUES ('25', '10', '1.00');

INSERT INTO Inventory (ProductID, VendorID, UnitCost)
VALUES ('26', '9', '1.50');

INSERT INTO Inventory (ProductID, VendorID, UnitCost)
VALUES ('27', '11', '2.50');

INSERT INTO Inventory (ProductID, VendorID, UnitCost)
VALUES ('28', '12', '2.50');

INSERT INTO Inventory (ProductID, VendorID, UnitCost)
VALUES ('29', '9', '1.50');

INSERT INTO Inventory (ProductID, VendorID, UnitCost)
VALUES ('30', '12', '2.00');

INSERT INTO Inventory (ProductID, VendorID, UnitCost)
VALUES ('31', '13', '25.00');

INSERT INTO Inventory (ProductID, VendorID, UnitCost)
VALUES ('32', '13','40.00');

INSERT INTO Inventory (ProductID, VendorID, UnitCost)
VALUES ('33', '14', '50.00');

INSERT INTO Inventory (ProductID, VendorID, UnitCost)
VALUES ('34', '14', '30.00');

INSERT INTO Inventory (ProductID, VendorID, UnitCost)
VALUES ('35',' 15', '200.00');

INSERT INTO Inventory (ProductID, VendorID, UnitCost)
VALUES ('36', '15', '40.00');

INSERT INTO Inventory (ProductID, VendorID, UnitCost)
VALUES ('37', '15', '2.00');

INSERT INTO Inventory (ProductID, VendorID, UnitCost)
VALUES ('38', '16', '30.00');

INSERT INTO Inventory (ProductID, VendorID, UnitCost)
VALUES ('39', '17', '40.00');

INSERT INTO Inventory (ProductID, VendorID, UnitCost)
VALUES ('40', '16', '45.00');

DROP TABLE IF EXISTS OrderLines;
CREATE TABLE OrderLines
( OrderID				INT NOT NULL,
  ProductID				INT NOT NULL,
  Price					DECIMAL(6,2) NOT NULL,
  Quantity				SMALLINT NOT NULL,
  CONSTRAINT PK_OrderLines_OrderID_ProductID PRIMARY KEY (OrderID, ProductID),
  CONSTRAINT FK_OrderLines_OrderID FOREIGN KEY (OrderID) REFERENCES Orders (OrderID),
  CONSTRAINT FK_OrderLines_ProductID FOREIGN KEY (ProductID) REFERENCES Products (ProductID)
);
INSERT INTO OrderLines (OrderID, ProductID, Price, Quantity)
VALUES ('1', '1', '6.00', '1');

INSERT INTO OrderLines (OrderID, ProductID, Price, Quantity)
VALUES ('2', '3', '20.00', '1');

INSERT INTO OrderLines (OrderID, ProductID, Price, Quantity)
VALUES ('3', '4', '8.00', '1');

INSERT INTO OrderLines (OrderID, ProductID, Price, Quantity)
VALUES ('4', '5', '10.00', '1');

INSERT INTO OrderLines (OrderID, ProductID, Price, Quantity)
VALUES ('5', '6', '70.00', '1');

INSERT INTO OrderLines (OrderID, ProductID, Price, Quantity)
VALUES ('6', '7', '8.00', '2');

INSERT INTO OrderLines (OrderID, ProductID, Price, Quantity)
VALUES ('7', '8', '300.00', '1');

INSERT INTO OrderLines (OrderID, ProductID, Price, Quantity)
VALUES ('8', '9', '20.00', '2');

INSERT INTO OrderLines (OrderID, ProductID, Price, Quantity)
VALUES ('9', '10', '30.00', '3');

INSERT INTO OrderLines (OrderID, ProductID, Price, Quantity)
VALUES ('10', '11', '1000.00', '1');

INSERT INTO OrderLines (OrderID, ProductID, Price, Quantity)
VALUES ('11', '12', '40.00', '2');

INSERT INTO OrderLines (OrderID, ProductID, Price, Quantity)
VALUES ('12', '13', '40.00', '1');

INSERT INTO OrderLines (OrderID, ProductID, Price, Quantity)
VALUES ('13', '14', '400.00', '2');

INSERT INTO OrderLines (OrderID, ProductID, Price, Quantity)
VALUES ('14', '15', '500.00', '1');

INSERT INTO OrderLines (OrderID, ProductID, Price, Quantity)
VALUES ('15', '16', '40.00', '2');

INSERT INTO OrderLines (OrderID, ProductID, Price, Quantity)
VALUES ('16', '17', '60.00', '1');

INSERT INTO OrderLines (OrderID, ProductID, Price, Quantity)
VALUES ('17', '18', '200.00', '2');

INSERT INTO OrderLines (OrderID, ProductID, Price, Quantity)
VALUES ('18', '19', '10.00', '2');

INSERT INTO OrderLines (OrderID, ProductID, Price, Quantity)
VALUES ('19', '20', '16.00', '2');

INSERT INTO OrderLines (OrderID, ProductID, Price, Quantity)
VALUES ('20', '21', '12.00', '1');

INSERT INTO OrderLines (OrderID, ProductID, Price, Quantity)
VALUES ('21', '22', '20.00', '2');

INSERT INTO OrderLines (OrderID, ProductID, Price, Quantity)
VALUES ('22', '23', '15.00', '1');

INSERT INTO OrderLines (OrderID, ProductID, Price, Quantity)
VALUES ('23', '24', '24.00', '3');

INSERT INTO OrderLines (OrderID, ProductID, Price, Quantity)
VALUES ('24', '25', '8.00', '2');

INSERT INTO OrderLines (OrderID, ProductID, Price, Quantity)
VALUES ('25', '26', '5.00', '1');

INSERT INTO OrderLines (OrderID, ProductID, Price, Quantity)
VALUES ('26', '27', '20.00', '2');

INSERT INTO OrderLines (OrderID, ProductID, Price, Quantity)
VALUES ('27', '28', '16.00', '2');

INSERT INTO OrderLines (OrderID, ProductID, Price, Quantity)
VALUES ('28', '29', '21.00', '3');

INSERT INTO OrderLines (OrderID, ProductID, Price, Quantity)
VALUES ('29', '30', '10.00', '1');

INSERT INTO OrderLines (OrderID, ProductID, Price, Quantity)
VALUES ('30', '31', '200.00', '2');

INSERT INTO OrderLines (OrderID, ProductID, Price, Quantity)
VALUES ('31', '32', '500.00', '1');

INSERT INTO OrderLines (OrderID, ProductID, Price, Quantity)
VALUES ('32', '33', '300.00', '1');

INSERT INTO OrderLines (OrderID, ProductID, Price, Quantity)
VALUES ('33', '34', '400.00', '2');

INSERT INTO OrderLines (OrderID, ProductID, Price, Quantity)
VALUES ('34', '35', '1000.00', '1');

INSERT INTO OrderLines (OrderID, ProductID, Price, Quantity)
VALUES ('35', '36', '300.00', '1');

INSERT INTO OrderLines (OrderID, ProductID, Price, Quantity)
VALUES ('36', '37', '60.00', '3');

INSERT INTO OrderLines (OrderID, ProductID, Price, Quantity)
VALUES ('37', '38', '200.00', '2');

INSERT INTO OrderLines (OrderID, ProductID, Price, Quantity)
VALUES ('38', '39', '400.00', '2');

INSERT INTO OrderLines (OrderID, ProductID, Price, Quantity)
VALUES ('39', '40', '150.00', '1');

INSERT INTO OrderLines (OrderID, ProductID, Price, Quantity)
VALUES ('40', '34', '200.00', '1');

DROP TABLE IF EXISTS Statuses;
CREATE TABLE Statuses
( StatusID			TINYINT NOT NULL AUTO_INCREMENT,
  StatusName		VARCHAR(25) NOT NULL,
  StatusDescription VARCHAR(100) NOT NULL,
  CONSTRAINT PK_Statuses_StatusID PRIMARY KEY ( StatusID )
);

INSERT INTO Statuses (StatusName, StatusDescription)
VALUES ('Processing', 'Your order is being processed at our facility.');

INSERT INTO Statuses (StatusName, StatusDescription)
VALUES ('Shipping', 'Your order is in transit to destination.');

INSERT INTO Statuses (StatusName, StatusDescription)
VALUES ('Delivered', 'Your order has arrived at the destination.');


DROP TABLE IF EXISTS OrderStatuses;
CREATE TABLE OrderStatuses
( OrderID			INT NOT NULL,
  StatusID			TINYINT NOT NULL,
  StatusDate		Date NOT NULL,
  StatusTime		Time NOT NULL,
  CONSTRAINT PK_OrderStatuses_OrderID_StatusID PRIMARY KEY ( OrderID, StatusID ),
  CONSTRAINT FK_OrderStatuses_OrderID FOREIGN KEY ( OrderID ) REFERENCES Orders ( OrderID ),
  CONSTRAINT FK_OrderStatuses_StatusID FOREIGN KEY ( StatusID ) REFERENCES Statuses ( StatusID )
);
INSERT INTO OrderStatuses (OrderID, StatusID, StatusDate, StatusTime)
VALUES ('1', '1', '2020-02-03', '05:15:00');

INSERT INTO OrderStatuses (OrderID, StatusID, StatusDate, StatusTime)
VALUES ('2', '2', '2020-01-05', '07:45:00');

INSERT INTO OrderStatuses (OrderID, StatusID, StatusDate, StatusTime)
VALUES ('3', '3', '2020-04-20', '09:15:00');

INSERT INTO OrderStatuses (OrderID, StatusID, StatusDate, StatusTime)
VALUES ('4', '1', '2020-03-04', '05:15:00');

INSERT INTO OrderStatuses (OrderID, StatusID, StatusDate, StatusTime)
VALUES ('5', '2', '2020-01-07', '07:45:00');

INSERT INTO OrderStatuses (OrderID, StatusID, StatusDate, StatusTime)
VALUES ('6', '3', '2020-03-15', '09:15:00');

INSERT INTO OrderStatuses (OrderID, StatusID, StatusDate, StatusTime)
VALUES ('7', '1', '2020-05-04', '05:15:00');

INSERT INTO OrderStatuses (OrderID, StatusID, StatusDate, StatusTime)
VALUES ('8', '2', '2020-05-07', '07:45:00');

INSERT INTO OrderStatuses (OrderID, StatusID, StatusDate, StatusTime)
VALUES ('9', '3', '2020-06-12', '09:15:00');

INSERT INTO OrderStatuses (OrderID, StatusID, StatusDate, StatusTime)
VALUES ('10', '1', '2020-06-21', '05:15:00');

INSERT INTO OrderStatuses (OrderID, StatusID, StatusDate, StatusTime)
VALUES ('11', '2', '2020-06-25', '07:45:00');

INSERT INTO OrderStatuses (OrderID, StatusID, StatusDate, StatusTime)
VALUES ('12', '3', '2020-06-30', '09:15:00');

INSERT INTO OrderStatuses (OrderID, StatusID, StatusDate, StatusTime)
VALUES ('13', '1', '2020-06-04', '05:15:00');

INSERT INTO OrderStatuses (OrderID, StatusID, StatusDate, StatusTime)
VALUES ('14', '2', '2020-06-09', '07:45:00');

INSERT INTO OrderStatuses (OrderID, StatusID, StatusDate, StatusTime)
VALUES ('15', '3', '2020-05-20', '09:15:00');

INSERT INTO OrderStatuses (OrderID, StatusID, StatusDate, StatusTime)
VALUES ('16', '1', '2020-07-02', '05:15:00');

INSERT INTO OrderStatuses (OrderID, StatusID, StatusDate, StatusTime)
VALUES ('17', '2', '2020-01-05', '07:45:00');

INSERT INTO OrderStatuses (OrderID, StatusID, StatusDate, StatusTime)
VALUES ('18', '3', '2020-04-30', '09:15:00');

INSERT INTO OrderStatuses (OrderID, StatusID, StatusDate, StatusTime)
VALUES ('19', '1', '2020-03-05', '05:15:00');

INSERT INTO OrderStatuses (OrderID, StatusID, StatusDate, StatusTime)
VALUES ('20', '2', '2020-02-29', '07:45:00');

INSERT INTO OrderStatuses (OrderID, StatusID, StatusDate, StatusTime)
VALUES ('21', '3', '2020-02-18', '09:15:00');

INSERT INTO OrderStatuses (OrderID, StatusID, StatusDate, StatusTime)
VALUES ('22', '1', '2020-01-02', '05:15:00');

INSERT INTO OrderStatuses (OrderID, StatusID, StatusDate, StatusTime)
VALUES ('23', '2', '2020-04-08', '07:45:00');

INSERT INTO OrderStatuses (OrderID, StatusID, StatusDate, StatusTime)
VALUES ('24', '3', '2020-03-10', '09:15:00');

INSERT INTO OrderStatuses (OrderID, StatusID, StatusDate, StatusTime)
VALUES ('25', '1', '2020-01-06', '05:15:00');

INSERT INTO OrderStatuses (OrderID, StatusID, StatusDate, StatusTime)
VALUES ('26', '2', '2020-03-11', '07:45:00');

INSERT INTO OrderStatuses (OrderID, StatusID, StatusDate, StatusTime)
VALUES ('27', '3', '2020-05-25', '09:15:00');

INSERT INTO OrderStatuses (OrderID, StatusID, StatusDate, StatusTime)
VALUES ('28', '1', '2020-05-07', '05:15:00');

INSERT INTO OrderStatuses (OrderID, StatusID, StatusDate, StatusTime)
VALUES ('29', '2', '2020-06-05', '07:45:00');

INSERT INTO OrderStatuses (OrderID, StatusID, StatusDate, StatusTime)
VALUES ('30', '3', '2020-06-30', '09:15:00');

INSERT INTO OrderStatuses (OrderID, StatusID, StatusDate, StatusTime)
VALUES ('31', '1', '2020-06-23', '05:15:00');

INSERT INTO OrderStatuses (OrderID, StatusID, StatusDate, StatusTime)
VALUES ('32', '2', '2020-06-17', '07:45:00');

INSERT INTO OrderStatuses (OrderID, StatusID, StatusDate, StatusTime)
VALUES ('33', '3', '2020-06-27', '09:15:00');

INSERT INTO OrderStatuses (OrderID, StatusID, StatusDate, StatusTime)
VALUES ('34', '1', '2020-06-09', '05:15:00');

INSERT INTO OrderStatuses (OrderID, StatusID, StatusDate, StatusTime)
VALUES ('35', '2', '2020-05-09', '07:45:00');

INSERT INTO OrderStatuses (OrderID, StatusID, StatusDate, StatusTime)
VALUES ('36', '3', '2020-07-07', '09:15:00');

INSERT INTO OrderStatuses (OrderID, StatusID, StatusDate, StatusTime)
VALUES ('37', '1', '2020-01-05', '05:15:00');

INSERT INTO OrderStatuses (OrderID, StatusID, StatusDate, StatusTime)
VALUES ('38', '2', '2020-04-09', '07:45:00');

INSERT INTO OrderStatuses (OrderID, StatusID, StatusDate, StatusTime)
VALUES ('39', '3', '2020-03-30', '09:15:00');

INSERT INTO OrderStatuses (OrderID, StatusID, StatusDate, StatusTime)
VALUES ('40', '3', '2020-02-29', '09:15:00');