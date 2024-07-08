create database LAB_2
use CSE_B_344
--Retrieve all data from table DEPOSIT--
SELECT * FROM Deposit
--Retrieve all data fall datrom table borrow--
SELECT * FROM borrow
--Retrieve a from table CUSTOMER--
SELECT * FROM CUSTOMERS
--Display Account No, Customer Name & Amount from DEPOSIT.--
SELECT ActNo,CName,Amount from Deposit 
--Display Loan No, Amount from BORROW--
SELECT LOANNO,AMOUNT FROM borrow
--Display loan details of all customers who belongs to ‘ANDHERI’ branch from borrow table--
SELECT * from borrow where BNAME='ANDHERI'
--Give account no and amount of depositor, whose account no is equals to 106 from deposit table--
SELECT ActNo,Amount FROM Deposit where ActNo=106
--Give name of borrowers having amount greater than 5000 from borrow table--
SELECT CNAME FROM borrow where AMOUNT<5000
--Give name of customers who opened account after date '1-12-96' from deposit table--
 SELECT CName From Deposit where ADate>'1996-12-1'
 --Display name of customers whose account no is less than 105 from deposit table
 SELECT CName from Deposit where ActNo>105
 --Display name of customer who belongs to either ‘NAGPUR’ or ‘DELHI’ from customer table. (OR & IN)
 ---or--
 SELECT *from CUSTOMERS where CITY='NAGPUR' or CITY='DELHI'
 --in--
 SELECT * from CUSTOMERS where CITY IN('NAGPUR','DELHI')
 --Display name of customers with branch whose amount is greater than 4000 and account no is less than 105 from deposit table
 SELECT CName,BName from Deposit where Amount>4000 and ActNo<105
--Find all borrowers whose amount is greater than equals to 3000 & less than equals to 8000 from borrow table. (AND & BETWEEN
SELECT * FROM borrow where AMOUNT >=3000 and AMOUNT<=8000
--between--
SELECT * FROM borrow where AMOUNT BETWEEN 3000 and 8000
--Find all depositors who do not belongs to ‘ANDHERI’ branch from deposit table--
SELECT * FROM Deposit where BName='ANDHERI'
--Display Account No, Customer Name & Amount of such customers who belongs to ‘AJNI’, ‘KAROLBAGH’ Or ‘M.G.ROAD’ and Account No is less than 104 from deposit table.
SELECT ActNo,CName,Amount FROM Deposit where BName in('AJNI','KAROLBAGH','M.G.ROAD') and ActNo<104


---PART B ----

--Display all the details of first five customers from deposit table--
SELECT top 5 * from Deposit
--Display all the details of first three depositors whose amount is greater than 1000.--
SELECT top 3 * from Deposit where Amount>1000
--Display Loan No, Customer Name of first five borrowers whose branch name does not belongs to ‘ANDHERI’ from borrow table
SELECT top 5 LOANNO,CNAME from borrow where BNAME <>'ANDHERI'
--Retrieve all unique cities using DISTINCT. (Use Customers Table)
SELECT DISTINCT CITY from CUSTOMERS
--Retrieve all unique branches using DISTINCT. (Use Branch Table)
SELECT DISTINCT BNAME from BRANCH


---PART c ---
--Retrieve top 50% record from table BORROW
SELECT Top 50 percent * from  borrow
--Display top 10% amount from table DEPOSIT--
SELECT top 10 percent Amount from Deposit
--Display top 25% customer who deposited more than 5000
SELECT top 25 percent CNAME from Deposit where Amount>5000
--Retrieve first 10% Loan Amounts
SELECT top 10 percent AMOUNT from borrow
--Retrieve all unique customer names with city
SELECT DISTINCT CNAME ,CITY from CUSTOMERS
--Retrieve all Loan records with one more column in Loan Amount as 10% extra amount.
