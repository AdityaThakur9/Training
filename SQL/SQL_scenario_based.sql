create table Books( ID integer primary key, title varchar(100), Author varchar(30), isbn numeric unique, Published_date datetime);
insert into Books values (1, 'My First SQL book', 'Mary Parker',981483029127,'2012-02-22 12:08:17');
insert into Books values (2, 'My Second SQL book', 'John Mayer',857300923713,'1972-07-03 09:22:45');
insert into Books values (3, 'My Third SQL book', 'Cary Flint',523120967812,'2015-10-18 14:05:44');

--Create a book table with id as primary key and provide the appropriate data type to other attributes .isbn no should be unique for each book
 -- Write a query to fetch the details of the books written by author whose name ends with er.

 select * from books where Author like '%er';

create table Reviews(id integer primary key, book_id integer foreign key references Books(ID), reviewer_name varchar(30), content varchar(259),rating integer, published_date datetime);
insert into Reviews values (1, 1, 'John Smith', 'My First review', '4', '2017-12-10 05:50:11')
insert into Reviews values (2, 2, 'John Smith', 'My Second review', '5', '2017-10-13 15:05:12')
insert into Reviews values (3, 2, 'Alice Walker', 'Another review', '1', '2017-10-22 23:47:10')

--Display the Title ,Author and ReviewerName for all the books from the above table 
select a.title, a.author, b.reviewer_name from books a left join Reviews b on a.id=b.book_id;

--Display the  reviewer name who reviewed more than one book.
select reviewer_name from Reviews, books where books.id=reviews.book_id group by reviewer_name having count(*)>1;

--Display the Name for the customer from above customer table  who live in same address which has character o anywhere in address
create table Employee(ID integer primary key, Name varchar(20), Age integer, Address varchar(30), Salary int);
insert into Employee values (1, 'Ramesh', 32, 'Ahmedabad', 2000);
insert into Employee values (2, 'Khilan', 25, 'Delhi', 1500);
insert into Employee values(3, 'Kaushik', 23, 'Kota', 2000);
insert into Employee values(4, 'Chaitali', 25, 'Mumbai', 6500);
insert into Employee values(5, 'Hardik', 27, 'Bhopal', 8500);
insert into Employee values(6, 'Komal', 22, 'MP', 4500);
insert into Employee values(7, 'Muffy', 24, 'Indore', 10000);

--Query
select name from employee where address like '%o%';
