use CSE_B_344

create table EMP(EID int,EName varchar(50),Department varchar(50),salry int,JoiningDate DateTime,City varchar(50))

insert into EMP(EID,EName,Department,salry,JoiningDate,City)values

(101,'Rahul','Admin',56000,'1990-Jan-1','Rajkot'),
(102,'Hardik','IT',18000,'1990-Sep-25','Ahmedabad'),
(103,'Bhavin','HR',25000,'1991-May-14','Baroda'),
(104,'Bhoomi','Admin',39000,'1991-Feb-8','Rajkot'),
(105,'Rohit','IT',17000,'1990-Jul-23','Jamnagar'),
(106,'Priya','IT',9000,'1990-Oct-18','Ahmedabad'),
(107,'Bhoomi','HR',34000,'1991-Dec-25','Rajkot')

select * from EMP

--Part-A--

--Display the Highest, Lowest, Label the columns Maximum, Minimum respectively--
Select max(salry) as Highest,min(salry) as Lowest from EMP

--Display Total, and Average salary of all employees. Label the columns Total_Sal and Average_Sal,respectively
select sum(salry) as Total_sal, avg(salry) as Average_sal from EMP

--Find total number of employees of EMPLOYEE table
select COUNT(EName) as Count_Emp from EMP

--Find highest salary from Rajkot city
select max(salry) as Highestsal from EMP
where City='Rajkot'

--Give maximum salary from IT department
select max(salry) as maxsal from EMP
where Department='IT'

--Count employee whose joining date is after 8-feb-91
select COUNT(EName) as CountEmp from EMP
where JoiningDate<'1991-Feb-8'

--Display average salary of Admin department
select avg(salry) as AvgSal from EMP
where Department='Admin'

--Display total salary of HR department
select sum(salry) as TotalSal from EMP
where Department='HR'

--Count total number of cities of employee without duplication
select COUNT(distinct City) as Totalcity from EMP

--Count unique departments.
select COUNT(distinct Department) as countdep from EMP

--Give minimum salary of employee who belongs to Ahmedabad
select min(salry) as Minsalary from EMP
where City='Ahmedabad'

--Find city wise highest salary.
select City,max(salry) as Maxsal from EMP
group by City

--Find department wise lowest salary
select Department,min(salry) as Minsal from EMP
group by Department

--Display city with the total number of employees belonging to each city
select City,count(EName) as Toatalemp from EMP
group by City

--Give total salary of each department of EMP table
select Department,sum(salry) as Totalsalary from EMP
group by Department

--Give average salary of each department of EMP table without displaying the respective department name
select avg(salry) as AvgSal from EMP
group by Department


---Part B

--Count the number of employees living in Rajkot
select count(EName) As CountEMP from EMP
where City='Rajkot'

--Display the difference between the highest and lowest salaries. Label the column DIFFERENCE
 select max(salry)-min(salry) as DIFFERENCE from EMP

 --Display the total number of employees hired before 1st January, 1991.
 select count(EName) as COuntEMP from EMP
 where JoiningDate>'1991-Jan-1'


 --Part c--

 --Count the number of employees living in Rajkot or Baroda
 select count(EName) as COUNTEMP from EMP
 where City='Rajkot'

 --Display the total number of employees hired before 1st January, 1991 in IT department
  select count(EName) as COuntEMP from EMP
 where JoiningDate>'1991-Jan-1' and Department='IT'

 --Find the Joining Date wise Total Salaries
 select JoiningDate,Sum(salry) as Totalsal from EMP
 Group by JoiningDate

 --Find the Maximum salary department & city wise in which city name starts with ‘R
 select Department,City,max(salry) as MAXSAL from EMP
 where City like'R%'
 group by Department,City
