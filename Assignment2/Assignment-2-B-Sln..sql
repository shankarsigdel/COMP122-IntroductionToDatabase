
--SHANKAR SIGDEL
--STUDENT ID: 301110925
--ASSIGNMENT 2(B)

--1 Modify the following SQL command so that the rep_ID column is the primary key for the table and the default value 
--of Y is assigned to the comm column:
CREATE TABLE store_reps
(rep_ID NUMBER(5),
last VARCHAR2(15),
first VARCHAR2(10),
comm CHAR(1) );

--Answer

CREATE TABLE store_reps
(rep_ID NUMBER(5),
last VARCHAR2(15),
first VARCHAR2(10),
comm CHAR(1) DEFAULT 'Y',
CONSTRAINT "REP_ID" PRIMARY KEY ("REP_ID"));

--2 Change the STORE_REPS table so that NULL values can’t be entered in the name columns (first and last).

--Answer

alter table store_reps 
Modify (last constraint store_reps_last_nn Not Null,
first constraint store_reps_first_nn Not Null);

--3 Change the STORE_REPS table so that only a Y or N can be entered in the common column

--Answer

ALTER TABLE store_reps
ADD CONSTRAINT store_reps_comm_ck check (comm IN ('Y','N'));

--4.Add a column named Base_salary with a datatype of NUMBER(7,2) to the STORE_REPS table. 
--Ensure that the amount entered is above zero.

--Answer

create table store_reps (id number);
ALTER TABLE store_reps 
ADD Base_Salary NUMBER(7, 2)
CONSTRAINT store_reps_Base_Salary CHECK (Base_Salary>0);

--5.Create a table named BOOK_STORES to include the columns listed in the following chart.

--Answer

CREATE TABLE book_stores
(Store_ID Number(8), 
Name Varchar2(30), 
contact varchar2(30), 
Rep_ID varchar2(5), 
constraint book_stores_store_ID_pk Primary key (Store_ID),
constraint book_stores_name_uk Unique (name)); 

--6.Add a constraint to make sure the Rep_ID value entered in the BOOK_STORES table is valid value 
--contained in the STORE_REPS table. The Rep_ID columns of both tables were initially created as 
--different datatypes. Does this cause an error when adding the constraint? Yes. Make table modifications 
--as needed so that you can add the required constraint.
--Column Name             Datatype                       Constraint Comments
--Store_ID                Number(8)                       PRIMARY KEY column
--Name                   VARCHAR2(30)                Should be UNIQUE and NOT NULL
--Contact                VARCHAR2(30)
--Rep_ID                VARCHAR2(5)

--Answer

ALTER TABLE book_stores MODIFY (rep_ID number(5)) 
add constraint book_stores_Rep_ID_fk foreign key (Rep_ID) 
References Store_Reps (Rep_ID);

--7. Change the constraint created in Assignment #6 so that associated rows of the BOOK_STORES table 
--are deleted automatically if a row in the STORE_REPS table is deleted.

--Answer

DROP CONSTRANT bookstores_repid_fk
References Store_Reps (rep_ID) ON DELETE CASCADE;

--8. Create a table named REP_CONTRACTS containing the columns listed in the following chart. A composite PRIMARY KEY 
--constraint including the Rep_ID, Store_ID, and Quarter columns should be assigned. In addition, FOREIGN KEY constraints 
--should be assigned to both the Rep_ID and Store_ID columns.
Column Name Datatype
Store_ID NUMBER(8)
Name NUMBER(5)
Quarter CHAR(3)
Rep_ID NUMBER(5)

--Answer

CREATE TABLE REP_CONTRACTS
( Store_ID NUMBER(8) CONSTRAINT 
repcontracts_storeID_fk references
Book_stores(Store_ID),
Name Number(5),
Quarter Char(3),
Rep_ID Number(5),
CONSTRAINT REP_CONTRACTS_PK PRIMARY KEY (STORE_ID, QUARTER, REP_ID),
constraint rep_contracts_Store_ID_fk Foreign key (Store_ID)references Book_stores (Store_ID),
constraint rep_contracts_Rep_ID_fk foreign Key (Rep_ID)references Store_Reps (Rep_ID));

--9. Produce a list of information about all existing constraints on the STORE_REPS table.

--Answer

SELECT * FROM user_constraints
WHERE table_name = 'STORE_REPS';

--10. Issue the commands to disable and then enable the CHECK constraint on the Base_salary column.

--Answer

ALTER TABLE store_reps DISABLE CONSTRAINT store_reps_Base_salary_ck; 
ALTER TABLE store_reps ENABLE CONSTRAINT store_reps_Base_salary_ck;
