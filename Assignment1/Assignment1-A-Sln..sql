--Shankar Sigdel, Student No:301110925

CREATE TABLE instructor_info
(
ins_id INT PRIMARY KEY,i

lastname varchar(20) not null,
firstname varchar(20) not null,
city varchar(25),
country char(25)
);

--insert value in the table
insert into instructor_info (ins_id,lastname,firstname, city, country) values (001,'Anna','Rov','Toronto','CA');
insert into instructor_info (ins_id,lastname,firstname, city, country) values (002,'Chong','Raul','Toronto','CA');
insert into instructor_info (ins_id,lastname,firstname, city, country) values (003,'Vasudevan','Hima','Chicago','US');

--insert value only from two fields
insert into instructor_info (ins_id,lastname,firstname, city, country) values (004,'Raos','Dev','Newfoundland','CA');
insert into instructor_info (ins_id,lastname,firstname, city, country) values (005,'Nava','Monty','Kathmandu','NP');

--insert value only from one field
insert into instructor_info (ins_id,lastname,firstname, city, country) values (006,'Sharma','Saran','London','UK');

select * from instructor_info


update instructor_info set city='Markham' where ins_id=001;

delete from instructor_info where ins_id=002;