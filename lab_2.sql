use demo;

create table Account(
AccountID int,
Accounttype varchar(20),
Balance float);

SELECT * FROM Account;


create table Transactions(
TransactionID int,
TransactionDate date,
Amount float,
TransactionType varchar(20));

select *from Transactions;

create table Branch(
BranchID int,
BranchName varchar(100),
BranchAddress varchar(200),
BranchPhone varchar(15));

select * from Branch;

create table AccountBranch(
AssignmentDate date);

select * from AccountBranch;

create table Loans(
Loan_ID int,
Loan_Amount float,
Interest_Rate float,
StaRT_Date date,
End_Date date);

select * from Loans;

create table Customer(
First_name varchar(50),
Last_name varchar(50),
Email varchar(100),
Phone varchar(15));

select * from Customer;

alter table Customer add DateofBirth date;

alter table Customer modify Phone varchar(20);


alter table Account add constraint b1 check(balance>1000);
alter table Account add Account_branch varchar(100);
alter table Account drop column Account_branch;

alter table Customer add Customer_id int;
alter table Customer add constraint pk primary key(Customer_id);

alter table Customer modify first_name varchar(200) not null;
alter table Customer add constraint uk unique (email);


drop database class;
use class;


create database class;
use class;

create table class(
s_id int,
s_name varchar(100),
degree varchar(100),
c_name varchar(200),
age int);

alter table class add constraint pk primary key(s_id);
alter table class modify s_name varchar(100) not null;
alter table class modify degree varchar(100) not null;
alter table class modify c_name varchar(200) not null;
alter table class add constraint c_k check(age>18); 

select * from class;
 insert into class value(101,"abc","bsc","ty",21),(102,"xyz","msc","fy",25);
 delete from class where s_id=101;
 alter table class rename column s_name to stu_name;
 truncate table class;
 drop table class;
 drop database class;
 
 
 
 
 create database new;
 use new;
 
 create table emp(
 id int primary key,
 name varchar(200) not null);
 
 create table dep(
 dep_id int primary key,
 dep_name varchar (200) not null,
 emp_id int,
 foreign key(emp_id) references emp(id));
 
 insert into emp value(1,"ajay"),(2,"riya");
 insert into emp value(3,"ojas")
 
 select * from emp;
 
 insert into dep value(101,"it",1),(102,"cs",2);
 
 select * from dep;
 
 insert into dep value(103,"zoo",3);
 
 
 create table customer(
 c_id int primary key,
 c_name varchar(100) not null,
 c_email varchar(100) unique);
 
 create table product(
 p_id int primary key,
 p_name varchar(100) not null);
 
 create table orders(
 o_id int primary key,
 p_id int,
 c_id int,
 foreign key(p_id) references product(p_id),
 foreign key(c_id) references customer(c_id),
 amount int default(0));
 
 select * from orders;
 
 insert into customer value(101,"riya","abc56@gmail.com"),(102,"ajay","xyz42@gmail.com");
select * from customer;

insert into product value(1,"tv"),(2,"mobail");
select * from product;

insert into orders value(222,1,101,29000),(333,2,102,97000);
select * from orders;

alter table Account add column Customer_id int;
select * from Account;

alter table Account add constraint fk foreign key(Customer_id) references Customer(Customer_id);
select * from Customer;


 
 