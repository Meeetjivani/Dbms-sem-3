use CSE_B_344

create table Student(StuID int,FirstName varchar(50),LastName varchar(50),Website varchar(50),city varchar(50),Address varchar(50))
insert into Student(StuID,FirstName,LastName,Website,city,Address)
values(1011,'Keyur','Patel','techonthenet.com','Rajkot','A-303 ''Vasant Kunj'',Rajkot'),
(1022,'Hardik','Shah','digminecraft.com','Ahmedabad','"Ram krupa",Raiya Road'),
(1033,'Kajal','Trivedi','bigactivities.com','Baroda','Raj bhavan plot,near garden'),
(1044,'Bhoomi','Gajera','checkyourmath.com','Ahmedabad','"Jig''s Home",Narol'),
(1055,'Harmit','Mitel','@me.darshan.com','Rajkot','B-55,Raj Residency'),
(1066,'Ashok','Jani',null,'Baroda','A502,Club House Building')

--Part A--
--Display the name of students whose name starts with ‘k’
select *from Student
where FirstName like 'k%'
--Display the name of students whose name consists of five characters.
select * from Student
where FirstName like '_____'
--Retrieve the first name & last name of students whose city name ends with a & contains six characters
select FirstName,LastName from Student
where city like '_____a'
--Display all the students whose last name ends with ‘tel
select * from Student
where LastName like '%tel'
--Display all the students whose first name starts with ‘ha’ & ends with‘t’
select * from Student
where FirstName like 'ha%t'
--Display all the students whose first name starts with ‘k’ and third character is ‘y’.
select * from Student
where FirstName like 'k_y%'
--Display the name of students having no website and name consists of five characters
select FirstName from Student
where FirstName like '_____' and Website is null
--Display all the students whose last name consist of ‘jer’
Select * from Student
where LastName like '%jer%'
--Display all the students whose city name starts with either ‘r’ or ‘b’.
Select * from Student
where city like '[r,b]%'
--Display all the name students having websites
Select * from Student
where Website is not null
--Display all the students whose name starts from alphabet A to H.
select * from Student
where FirstName like '[A-H]%'
 --Display all the students whose name’s second character is vowel
select * from Student
where FirstName like '_[a,e,i,o,u]%'
--Display the name of students having no website and name consists of minimum five characters
select FirstName from Student
where FirstName like '_____%' and Website is null
--Display all the students whose last name starts with ‘Pat’.
Select * from Student
where LastName like 'pat%'
--Display all the students whose city name does not starts with ‘b
select * from Student
where city not like 'b%'


---Part B--
--Display all the students whose name starts from alphabet A or H
select * from Student
where FirstName like '[a,h]%'
--Display all the students whose name’s second character is vowel and of and start with H.
select * from Student
where FirstName like'h[a,e,i,o,u]%'
--Display all the students whose last name does not ends with ‘a’
select * from Student
where LastName not like '%a'
--Display all the students whose first name starts with consonant
select * from Student
where FirstName not like '[a,e,i,o,u]%'
--Display all the students whose website contains .ne
select * from Student
where Website like'%.net%'

---Part C--
--Display all the students whose address consist of -
select * from Student
where Address like '%-%'
--Display all the students whose address contains single quote or double quote.
select * from Student
where Address like '%[''"]%'
--Display all the students whose website contains @.
select * from Student
where Website like '%@%'
--Display all the names those are either four or five characters.
select FirstName from Student
where FirstName like '____'or FirstName like'_____'
