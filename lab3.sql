create database Lab_3
use CSE_B_344

--lab-3--
--part-a--
create table Cricket(name varchar(50),city varchar(50),age int)
insert into Cricket (name,city,age)
values('sachin tendulkar','mumbai',30),
('rahul dravid','bombay',35),
('m.s.dhoni','jharkhand',31),
('suresh raina','gujarat',30)

select * from Cricket

select * into Worldcup from Cricket
select * from Worldcup

select name,city into T20 from Cricket where 1=2

select * from T20
 
select * into IPL from Cricket where 1=0
select * from IPL


--part-B--

create table EMPLOYEE(name varchar(50),city varchar(50),age int)
insert into EMPLOYEE
values('jay patel','rajkot',30),
('rahul dave','baroda',35),
('jeet patel','surat',31),
('vijay patel','rajkot',30)

select *from EMPLOYEE

select * into Enployee_detail from EMPLOYEE
select * from Enployee_detail

select name,city into Employee_data from EMPLOYEE where 1=0
select * from Employee_data

select * into Employee_info from EMPLOYEE where 1=2
select * from Employee_info



--update opration--
update Deposit 
set Amount=5000
where Amount=3000

select * from Deposit

update borrow
set BName='C.G.ROAD'
where CName='ANIL'


select * from borrow

update Deposit 
set ActNo=111,Amount=5000
where CName='SANDIP' 

select * from Deposit

update Deposit
set Amount=7000
where CName='KRANTI'

select * from Deposit

update BRANCH
set BNAME='ANDHERI WEST'
where BNAME='ANDHERI'

select * from BRANCH

update Deposit
set BName='NEHRU PALACE'
where CName='MEHUL'

select * from Deposit

update Deposit
set Amount=5000
where ActNo>=103 and ActNo<=107

select * from Deposit

update Deposit
set ADate='1995-4-1'
where CName='ANIL'

select * from Deposit

update Deposit
set Amount=1000
where CName='MINU'

select * from Deposit

update Deposit
set CName='PRAMOD'
where CName='PRMOD'

update Deposit
set Amount=5000,ADate='1996-4-1'
where CName='PRAMOD'

select * from Deposit

---part-B--

update borrow
set AMOUNT=AMOUNT*1.10

select * from borrow

update Deposit
set Amount=Amount*1.20

select * from Deposit


---part-c--

update borrow
set LOANNO=NULL
where LOANNO=321

select * from borrow

update borrow
set CNAME=NULL
where CNAME='KRANTI'

select * from borrow

select * from borrow where AMOUNT is Null

update borrow
set AMOUNT=5000
where BNAME='VRCE'and CNAME='DARSHAN' and LOANNO=481

select * from borrow

update Deposit
set ADate='2021-01-01'
where Amount<2000
 
select * from Deposit

update Deposit
set ADate=NULL,BName='ANDHERI'
where ActNo=110

select * from Deposit
