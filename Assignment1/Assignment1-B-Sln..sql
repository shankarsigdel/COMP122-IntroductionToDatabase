

Shankar Sigdel #301110925
Assignment 1-B
COMP122-005 Database


Write query  under each questions given below. 

1.Display a list of all data contained in the BOOKS table. 
	SELECT * FROM books;

2.List the title and ISBN of all books  using the BOOKS table.
	SELECT title, ISBN FROM books;

3.List the title and publication date for each book in the BOOKS table. 
	Use the column heading “Publication Date” for the Pubdate field.
	SELECT title, pubdate as "Publication Date" FROM books;

4.Determine which categories are represented in the current book inventory. List each category only once.
	SELECT distinct(category) FROM books;

5.Write a query to display PUBDATE  is after 21st January  2015
	SELECT pubdate FROM books where pubdate > to_date('21-JAN-15', 'dd-mon-yy');

6.Rearrange the data  in ascending order based on the cost of the book
	SELECT * FROM books order by cost asc;

7.Display a list of all data except  the record  which has ISBN no 1059831198
	SELECT * FROM books where ISBN !=1059831198;