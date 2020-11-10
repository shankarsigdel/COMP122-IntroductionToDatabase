--Name		: Shankar Sigdel
--Assignment 	: 4 (COMP122-005)
--StudentNumber	: 301110925
--Professor	: Vijayalakshmi Tiruchengode Angamuthu 

CREATE TABLE Suppliers
(CompanyType VARCHAR2(10),
SupplierID NUMBER(4),
FirstName VARCHAR2(10) NOT NULL,
LastName VARCHAR2(10) NOT NULL,
Address VARCHAR2(20),
City VARCHAR2(15),
Province VARCHAR2(4),
PostalCode VARCHAR2(8),
ContactNumber NUMBER(14),
Country CHAR(4),
Email VARCHAR2(30),
Items VARCHAR2(12));
INSERT INTO Suppliers
VALUES ('PRIVATE', '1120', 'SHIVA', 'SHIVAM', '5 BRIDLE DRIVE', 'SCARBOROUGH', 'ON', 'M1E1B2', '0164765555', 'CA', 'SHIVA@CANADA.CA', 'FURNITURE');
INSERT INTO Suppliers
VALUES ('PUBLIC', '1121', 'SHANKAR', 'SIGDE', '25 DOEN ST', 'DOWNTOWN', 'ON', 'M1E4B3', '0164765556', 'CA', 'SHANKAR@CANADA.CA', 'HOMENEEDS');
INSERT INTO Suppliers
VALUES ('PRIVATE', '1122', 'SUSHANK', 'RIT', '10 PAYZAC RD', 'SCARBOROUGH', 'ON', 'C1A1B2', '0164765557', 'CA', 'SUSHANK@CANADA.CA', 'OFFICEITEM');
INSERT INTO Suppliers
VALUES ('PRIVATE', '1123', 'SUJANA', 'ADHIK', '20 LONDON DRIVE', 'lONDON', 'LN', 'U2B1B2', '0164765558', 'UK', 'SUJANA@UK.UK', 'KITCHEN');
INSERT INTO Suppliers
VALUES ('PUBLIC', '1124', 'VIJI', 'VIJI', '7 SAGARMATHA RD', 'WASHINGTON', 'ON', 'U2S1B2', '0164765559', 'US', 'VIJI@GMAIL.COM', 'FURNITURE');
INSERT INTO Suppliers
VALUES ('COMMUNITY', '1125', 'AAKRITI', 'GUPTA', '20 KATHMANDU DR', 'KATHMANDU', 'KM', 'N1P1B2', '0164765560', 'NP', 'AAKRITI@YAHOO.COM', 'BEDSET');
INSERT INTO Suppliers
VALUES ('PRIVATE', '1126', 'TAMANNA', 'JITU', '18 DOWNHILL RD', 'BANA', 'BN', 'B1D1B2', '0164765561', 'BD', 'TAMANNA@GMAIL.COM', 'BATHSET');
INSERT INTO Suppliers
VALUES ('PUBLIC', '1127', 'ANIM', 'SHARMA', '25 MADRAS RD', 'MADA', 'MD', 'I1D1B2', '0164765562', 'IN', 'ANIM@YAHOO.COM', 'GARAGE');
INSERT INTO Suppliers
VALUES ('PRIVATE', '1128', 'IBRAHIM', 'IBMN', '11 HUKKA DR', 'KIHUN', 'GP', 'H3K1B2', '0164765563', 'NP', 'IBRAHIM@HOTMAIL.COM', 'LIQUORS');
INSERT INTO Suppliers
VALUES ('COMMUNITY', '1129', 'ISHWOR', 'SHIVAM', '21 STATEHILL', 'YOHAN', 'YN', 'C5H1B2', '0164765564', 'CH', 'ISHWOR@HOTMAIL.COM', 'GROSARY');
INSERT INTO Suppliers
VALUES ('COMMUNITY', '1130', 'SANTOSH', 'MANAN', '11 BAGDOLE RD', 'KATHMANDU', 'KM', 'N3P1B2', '0164765565', 'NP', 'SANTOSH@GMAIL.COM', 'CLOTHES');

CREATE TABLE Products_Items(
Market_id VARCHAR2(10),
price NUMBER(5),
quanitities VARCHAR2(10) NOT NULL,
Home_Address VARCHAR2(30),
Shipping_Address VARCHAR2(25),
ContactNumber NUMBER(14),
CheckOut_Status VARCHAR2(6),
Email VARCHAR2(30),
delivery_Date VARCHAR2(14));
INSERT INTO Products_Items VALUES (1000,300,5,'155 School ON','Home address','647647647','out','school@example.com','2020-08-12');  
INSERT INTO Products_Items VALUES (1001,500,3,'280 South East ON','Home address','647647648','out','south@example.com','2020-08-13');  
INSERT INTO Products_Items VALUES (1002,400,2,'24 Bridl ON','Home address','647647649','No','brid@example.com','2020-08-14');
INSERT INTO Products_Items VALUES (1003,300,5,'155 Down ON','Home address','647647641','out','down@example.com','2020-08-12');  
INSERT INTO Products_Items VALUES (1004,200,3,'280 East ON','Home address','647647642','out','coronation@example.com','2020-08-13');  
INSERT INTO Products_Items VALUES (1005,100,2,'24 McCawn Rd. ON','Home address','647647642','no','cawan@example.com','2020-08-16');
INSERT INTO Products_Items VALUES (1006,600,5,'155 station Rd. ON','Home address','647647644','out','starin@example.com','2020-08-17');  
INSERT INTO Products_Items VALUES (1007,800,3,'280 view point ON','Home address','647647645','out','hola@example.com','2020-08-18');  
INSERT INTO Products_Items VALUES (1008,700,2,'24 peace Rd. ON','Home address','647647646','no','peaceu@example.com','2020-08-19');

CREATE TABLE ORDER_GOODS#( 
Order# NUMBER(4) NOT NULL,
Item# NUMBER(2),
sno NUMBER(10),
Quantity NUMBER(3), 
PaidEach varchar2(10),
CONSTRAINT ordergoods_pk PRIMARY KEY (order#));
INSERT INTO ORDER_GOODS# VALUES (1000,1,1,1,'yes');  
INSERT INTO ORDER_GOODS# VALUES (1001,1,2,3,'No');  
INSERT INTO ORDER_GOODS# VALUES (1002,2,3,2,'No'); 
INSERT INTO ORDER_GOODS# VALUES (1003,1,4,1,'yes');  
INSERT INTO ORDER_GOODS# VALUES (1004,1,5,3,'No');  
INSERT INTO ORDER_GOODS# VALUES (1005,2,6,2,'No'); 


CREATE TABLE brand (
brand_id number(10) NOT NULL,
product_name varchar2(30),
price number (10),
color varchar2(10));
INSERT INTO brand VALUES (1000,'Canada Goose',5000,'red');  
INSERT INTO brand VALUES (1001,'Reebook',4000,'green');  
INSERT INTO brand VALUES (1002,'The North Face',3000,'Blue');
INSERT INTO brand VALUES (1003,'Sketcher',2000,'white');  
INSERT INTO brand VALUES (1004,'Amna',1000,'yellow');  
INSERT INTO brand VALUES (1005,'freed',500,'Green');

CREATE TABLE markets (
market_id number(10),
product_count varchar2(50),
name# varchar2(20),
shops_count varchar2(20),
CONSTRAINT pk_market_id PRIMARY KEY(market_id));
INSERT INTO markets VALUES (1000,1,'Regular Market',5);  
INSERT INTO markets VALUES (1001,2,'Sale Market',6);  
INSERT INTO markets VALUES (1002,3,'Retail Market',11);
INSERT INTO markets VALUES (1003,4,'Royal Market',2);  
INSERT INTO markets VALUES (1004,5,'Hart Market',7);  
INSERT INTO markets VALUES (1005,6,'Grossary Market',5);

CREATE TABLE shops(
market_id number(10),
product_count varchar2(20),
name# varchar2(20),
address varchar2(30));
INSERT INTO shops VALUES (1000,5,'Shoppers','155 station Rd. ON');  
INSERT INTO shops VALUES (1001,6,'Dollorama','280 view point ON');  
INSERT INTO shops VALUES (1002,7,'Shobeys','24 peace Rd. ON');
INSERT INTO shops VALUES (1003,5,'Wallmart','155 station Rd. ON');  
INSERT INTO shops VALUES (1004,3,'HomeDeport','280 view point ON');  
INSERT INTO shops VALUES (1005,2,'Nofrills','24 peace Rd. ON');

---------------------------------------------------------------------
--QUERIES
---------------------------------------------------------------------

select * from suppliers;
--SEARCHING SUPPLIERS FROM SUPPLIERID
SELECT * FROM SUPPLIERS WHERE SUPPLIERID>=1126 ;
SELECT * FROM SUPPLIERS WHERE SUPPLIERID BETWEEN 1127 AND 1130;
SELECT * FROM SUPPLIERS WHERE SUPPLIERID IN(1120 ,1121,1122,1123);
select * from SUPPLIERS where SUPPLIERID>=1125 and SUPPLIERID<=1129;

-- LIST OF CUSTOMERS FROM THE CITY SCARBOROUGH
select * from SUPPLIERS where city ='SCARBOROUGH';

--LIST OF SUPPLIERS WHO ARE NOT FROM THE CITY OF SCARBOROUGH 
select * from SUPPLIERS where city!='SCARBOROUGH';
select * from SUPPLIERS where city<>'SCARBOROUGH';

-- LIST OF CUSTOMERS BY CITY 
SELECT * FROM SUPPLIERS ORDER BY 5 ,2 DESC; 
SELECT * FROM SUPPLIERS ORDER BY 3,5 ;

 --% ANY NUMBER OF CHARACTER 
SELECT * FROM SUPPLIERS WHERE LASTNAME LIKE'%N%';
SELECT * FROM SUPPLIERS WHERE LASTNAME LIKE'S%';
SELECT * FROM SUPPLIERS WHERE LASTNAME LIKE '%N';

-- FIND CUSTOMERS WHOSE FIRSTNAME STARTS WITH S AND LASTNAME ENDS WITH S.
SELECT * FROM SUPPLIERS;
select * from SUPPLIERS where firstname like 'S%'and lastname like '_I%E';
SELECT * FROM SUPPLIERS WHERE LASTNAME LIKE 'R_T%';

SELECT * FROM SUPPLIERS WHERE LASTNAME 
LIKE '%K' AND PROVINCE IN ('LN');

select * from Products_Items;
--SEARCHING Products_Items FROM MarketID
SELECT * FROM Products_Items WHERE Market_id>=1004 ;
SELECT * FROM Products_Items WHERE Market_id BETWEEN 1001 AND 1004;
SELECT * FROM Products_Items WHERE Market_id IN(1001 ,1002,1003,1004);
select * from Products_Items where Market_id>=1002 and Market_id<=1007;

-- LIST OF CUSTOMERS FROM THE HOME_ADDRESS 24 Bridl ON
select * from Products_Items where HOME_ADDRESS ='24 Bridl ON';

--LIST OF SUPPLIERS WHO ARE NOT FROM HOME_ADDRESS OF 24 Bridl ON 
select * from Products_Items where HOME_ADDRESS!='24 Bridl ON';
select * from Products_Items where HOME_ADDRESS<>'24 Bridl ON';

-- LIST OF CUSTOMERS BY Products_Items 
SELECT * FROM Products_Items ORDER BY 5 ,2 DESC; 
SELECT * FROM Products_Items ORDER BY 3,5 ;

--CREAT CONSTRAINT
select * from user_constraints where table_name='BRAND' OR table_name='MARKETS';


