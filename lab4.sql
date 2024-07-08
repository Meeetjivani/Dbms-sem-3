use CSE_B_344
--part A--
alter table Deposit
add City varchar(20),pincode int 

select * from Deposit_Detail

alter table Deposit
alter column CName varchar(35)

alter table Deposit
alter column Amount int

sp_rename 'Deposit.ActNo','ANO'

alter table Deposit
drop column City

sp_rename 'Deposit','Deposit_Detail'

---part B--

sp_rename 'Deposit_Detail.ADate','AOPENDATE'

alter table Deposit_Detail
drop column AOPENDATE

sp_rename 'Deposit_Detail.CName','CustomerName'

---part C--

create table Student_Detail(Enrollment_No varchar(20),Name varchar(25),CPI decimal(5,2),Birthdate datetime)

alter table Student_Detail
add city varchar(20) not null ,Backlog int null

alter table Student_Detail
alter column Name varchar(35)

alter table Student_Detail
alter column CPI int

sp_rename 'Student_Detail.Enrollment_No','ENO'

alter table Student_Detail
drop column city

sp_rename 'Student_Detail','STUDENT_MASTER'

select * from STUDENT_MASTER

---DELETE,Truncate,Drop--

--part A--


delete from Deposit_Detail
where Amount>=4000

select * from Deposit_Detail

delete from Deposit_Detail
where BName='CHANDI'

delete from Deposit_Detail
where ANO>105

truncate table Deposit_Detail

drop table Deposit_Detail


create table Employee_Master(EmpNo int,EmpName varchar(25),JoiningDate datetime,Salary decimal(8,2),City varchar(20))

insert into Employee_Master values(101,'Keyur','2002-1-5',12000,'Rajkot'),
(102,'Hardik','2004-2-15',14000,'Ahmedabad'),
(103,'Kajal','2006-3-14',15000,'Baroda'),
(104,'Bhoomi','2005-6-23',12500,'Ahmedabad'),
(105,'Harmit','2004-2-15',14000,'Rajkot'),
(106,'Mitesh','2001-9-25',5000,'Jamnagar'),
(107,'Meera',null,7000,'morbi'),
(108,'Kishan','2003-2-6',10000,null)

select * from Employee_Master

delete from Employee_Master
where Salary>=14000

delete from Employee_Master
where City='Rajkot'

delete from Employee_Master
where JoiningDate>'2007-1-1'

delete from Employee_Master
where JoiningDate is null

delete from Employee_Master
where Salary= 20000 * 0.5

delete from Employee_Master
where City<>null

truncate table Employee_Master

drop table Employee_Master

--part C--

--Delete condition muikine row delete karva vapray
--Trncate table ni under no badho deta delete karava vapray
--drop akhu table delete karava vapray