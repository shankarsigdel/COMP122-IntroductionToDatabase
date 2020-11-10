--Name: Shankar Sigdel
--Assignment 2 (COMP122-005)
--Student Number# 301110925

--Q.1 Create a new table containing the category code and description for the categories of books sold by JustLee Books.
--The table should be called CATEGORY, and the columns should be CatCode and CatDesc. The CatCode column should store 
--a maximum of 2 characters, and the CatDesc column should store a maximum of 10 characters.

CREATE TABLE category
(Catcode VARCHAR2(2),
Catdesc VARCHAR2(10));

--Q.2 Create a new table containing these four columns: Emp#, Lastname, Firstname, and Job_class. 
--The table name should be EMPLOYEES. THE Job_class column should be able to store character strings up to a 
--maximum length of four, but the column values shouldn't be padded if the value has less than four characters. 
--The Emp# column contains a numeric ID and should allow five-digit number. Use column sizes you consider 
--suitable for the Firstname and Lastname columns.

CREATE TABLE employees
(emp# NUMBER(5), lastname VARCHAR2(15), firstname VARCHAR2(10), job_class VARCHAR2(4));

--Q.3 Add two columns to the EMPLOYEES table. One column, named EmpDate, contains the date of employment for each employee, 
--and its default value should be the systemdate, The second column, named EndDate, contains employees' date of termination.

ALTER TABLE employees ADD (empdate DATE DEFAULT SYSDATE, enddate DATE);

--Q.4 Modify the Job_class column of the EMPLOYEES table so that it allows storing a maximum width of two characters.
ALTER TABLE employees MODIFY job_class VARCHAR2(2);

--Q.5 Delete the EndDate column from the EMPLOYEES table.
ALTER TABLE employees DROP column enddate;

--Q.6 Rename the EMPLOYEES table as JL_EMPS.
RENAME employees TO jl_emps;

--Q.7 Create a new table containing these four columns from the existing BOOKS table: ISBN, Cost, Retail, and Category. 
--The name of the ISBN column should be ID, and the other columns should keep their original names. Name the new table BOOK_PRICING.

CREATE TABLE book_pricing (id, cost, retail, category) AS (SELECT isbn,cost,retail,category FROM books);

--Q.8 Mark the Category column of the BOOK_PRICING table as unused. Verify that the column is no longer available.

ALTER TABLE book_pricing SET UNUSED(category);
SELECT * FROM book_pricing;

--Q.9 Truncate the BOOK_PRICING table, and then verify that the table still exists but no loner contains any data.

TRUNCATE TABLE book_pricing;
SELECT * FROM book_pricing;

--Q.10 Delete the BOOK_PRICING tale permanently so that it isn't moved to the recycle bin. 
--Delete the JL_EMPS table so that it can be restored. Restore the JL_EMPS table and verify that it's available again.

DROP TABLE book_pricing PURGE;
DROP TABLE jl_emps;
FLASHBACK TABLE jl_emps TO BEFORE DROP;
SELECT FROM jl_emps;
