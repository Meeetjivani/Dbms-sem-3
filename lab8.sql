use CSE_B_344

create table SALES_DATA(Region varchar(50),Product varchar(50),Sales_Amount int,Year int)
insert into SALES_DATA(Region,Product,Sales_Amount,Year)

Values('North America','Watch',1500,2023),
('Europe','Mobile',1200,2023),
('Asia','Europe',1800,2023),
('North America','TV',900,2024),
('Europe','Europe',2000,2024),
('Asia','Mobial',1000,2024),
('North America','Mobile',1600,2023),
('Europe','TV',1500,2023),
('Asia','TV',1100,2024),
('North America','Watch',1700,2024)

select * from SALES_DATA

--Part A--

--Display Total Sales Amount by Region.
select sum(Sales_Amount),Region from SALES_DATA
group by Region

--Display Average Sales Amount by Product--
select avg(Sales_Amount),Product from SALES_DATA
group by Product
 
--Display Maximum Sales Amount by Year
select max(Sales_Amount),Year from SALES_DATA
group by Year

--Display Minimum Sales Amount by Region and Year
select min(Sales_Amount),Region,Year from SALES_DATA
group by Region,Year

--Count of Products Sold by Region
select COUNT(Product),Region from SALES_DATA
group by Region

--Display Sales Amount by Year and Product
select sum(Sales_Amount),year,Product from SALES_DATA 
group by Year,Product

--Display Regions with Total Sales Greater Than 5000
select sum(Sales_Amount),Region from SALES_DATA
group by Region
having sum(Sales_Amount)>5000

--Display Products with Average Sales Less Than 10000
select avg(Sales_Amount),Product from SALES_DATA
group by Product
having avg(Sales_Amount)<10000

--Display Years with Maximum Sales Exceeding 500
select max(Sales_Amount),Year from SALES_DATA
group by Year
having max(Sales_Amount)>500

--Display Regions with at Least 3 Distinct Products Sold-
select count(distinct Product),Region from SALES_DATA
group by Region
having count(distinct Product)>=3

--Display Years with Minimum Sales Less Than 1000
select min(Sales_Amount),Year from SALES_DATA
group by Year
having min(Sales_Amount)>1000

--Display Total Sales Amount by Region for Year 2023, Sorted by Total Amount
select sum(Sales_Amount),Region from SALES_DATA
where Year=2023
group by Region
order by sum(Sales_Amount)


--Part B

--Display Count of Orders by Year and Region, Sorted by Year and Region
select count(Product),year,Region from SALES_DATA
group by year,Region
order by year,Region

--Display Regions with Maximum Sales Amount Exceeding 1000 in Any Year, Sorted by Region
select max(Sales_Amount),Region from SALES_DATA
group by Region
having max(Sales_Amount)>1000
order by Region

--Display Years with Total Sales Amount Less Than 1000, Sorted by Year Descending
select sum(Sales_Amount),year from SALES_DATA
group by Year
having sum(Sales_Amount)<1000
order by year desc

--Display Top 3 Regions by Total Sales Amount in Year 2024
select top 3 sum(Sales_Amount),Region from SALES_DATA
where year=2024
group by Region



--Part c--

--Display Products with Average Sales Amount Between 1000 and 2000, Ordered by Product Name
select avg(Sales_Amount),Product from SALES_DATA
group by Product
having avg(Sales_Amount) between 1000 and 2000
order by Product

--Display Years with More Than 5 Orders from Each Region
select year  from SALES_DATA
group by year,region
having count(product)>5



--Display Regions with Average Sales Amount Above 1500 in Year 2023 sort by amount in descending
select Region,avg(Sales_Amount) from SALES_DATA
where Year=2023
group by Region
having avg(Sales_Amount)>1500
order by avg(Sales_Amount) Desc

--Find out region wise duplicate product
select Region,Product,count(Product) from SALES_DATA
group by Region,Product
having count(Product)>=2

--Find out region wise highest sales amount
select Region,max(Sales_Amount) from SALES_DATA
group by Region
