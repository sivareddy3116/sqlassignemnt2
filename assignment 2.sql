create database ExerciseDb2
use OurExerciseDb2


create table CompanyInfo
(CId int primary key,
CName nvarchar(50) not null
)

insert into CompanyInfo values(1,'Samsung')
insert into CompanyInfo values(2,'HP')
insert into CompanyInfo values(3,'Apple')
insert into CompanyInfo values(4,'Dell')
insert into CompanyInfo values(5,'Toshiba')
insert into CompanyInfo values(6,'Redmi')

select * from CompanyInfo
-------------------------------------------------------------------------------------------
--ProductInfo Table

create table ProductInfo
(PId int primary key identity(101,1),
PName nvarchar(50) not null,
PPrice float,
PMDate date,
CId int foreign key references CompanyInfo
)
insert into ProductInfo values('Laptop',55000.90,'12/12/2023',1)
insert into ProductInfo values('Laptop',35000.90,'12/12/2012',2)
insert into ProductInfo values('Mobile',15000.90,'12/03/2012',2)
insert into ProductInfo values('Laptop',155000.90,'12/12/2012',3)
insert into ProductInfo values('Mobile',65000.90,'12/12/2012',3)
insert into ProductInfo values('Laptop',35000.90,'12/12/2012',5)
insert into ProductInfo values('Mobile',35000.90,'12/01/2012',5)
insert into ProductInfo values('Earpod',1000.90,'12/01/2022',3)
insert into ProductInfo values('Laptop',85000.90,'12/12/2021',6)
insert into ProductInfo values('Mobile',55000.70,'12/12/2020',1)
select * from ProductInfo

--1.Show All Companies Name and their products details
select * from CompanyInfo c  left outer join ProductInfo p on c.CId=p.CId

--2.Show All Product Names and Their respective Comapny name
select p.PName,c.CName from ProductInfo p  left outer join CompanyInfo c on c.CId=p.CId

--3.Show all possible combinations of company and products
select * from CompanyInfo c  right outer join ProductInfo p on c.CId=p.CId

select * from CompanyInfo c   join ProductInfo p on c.CId=p.CId

select * from CompanyInfo c  inner join ProductInfo p on c.CId=p.CId

select * from CompanyInfo c  full outer join ProductInfo p on c.CId=p.CId

--Company name and product name combinations
select c.CName'Company name',p.PName 'Product Name' from CompanyInfo c  right outer join ProductInfo p on c.CId=p.CId
select c.CName'Company name',p.PName 'Product Name' from CompanyInfo c  left outer join ProductInfo p on c.CId=p.CId
select c.CName'Company name',p.PName 'Product Name' from CompanyInfo c  full outer join ProductInfo p on c.CId=p.CId
select c.CName'Company name',p.PName 'Product Name' from CompanyInfo c  join ProductInfo p on c.CId=p.CId
select c.CName'Company name',p.PName 'Product Name' from CompanyInfo c  inner join ProductInfo p on c.CId=p.CId

--Company name,product name,product price combinations
select c.CName'Company name',p.PName 'Product Name',p.PMDate 'Product Mfg Date' from CompanyInfo c  right outer join ProductInfo p on c.CId=p.CId
select c.CName'Company name',p.PName 'Product Name',p.PMDate 'Product Mfg Date' from CompanyInfo c  left outer join ProductInfo p on c.CId=p.CId
select c.CName'Company name',p.PName 'Product Name',p.PMDate 'Product Mfg Date' from CompanyInfo c  full outer join ProductInfo p on c.CId=p.CId
select c.CName'Company name',p.PName 'Product Name',p.PMDate 'Product Mfg Date' from CompanyInfo c  join ProductInfo p on c.CId=p.CId
select c.CName'Company name',p.PName 'Product Name',p.PMDate 'Product Mfg Date' from CompanyInfo c  inner join ProductInfo p on c.CId=p.CId

--Company name,product name,product id combinations
select c.CName'Company name',p.PName 'Product Name',p.PId 'Product ID' from CompanyInfo c  right outer join ProductInfo p on c.CId=p.CId
select c.CName'Company name',p.PName 'Product Name',p.PId 'Product ID' from CompanyInfo c  left outer join ProductInfo p on c.CId=p.CId
select c.CName'Company name',p.PName 'Product Name',p.PId 'Product ID' from CompanyInfo c  full outer join ProductInfo p on c.CId=p.CId
select c.CName'Company name',p.PName 'Product Name',p.PId 'Product ID' from CompanyInfo c  join ProductInfo p on c.CId=p.CId
select c.CName'Company name',p.PName 'Product Name',p.PId 'Product ID' from CompanyInfo c  inner join ProductInfo p on c.CId=p.CId

select * from CompanyInfo