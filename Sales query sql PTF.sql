create database dataleum;
use dataleum;
create table sales
(productid int, name text, orderdate date);

select * from sales;
SET SQL_SAFE_UPDATES = 0;
insert into sales values(1, 'pencil',"2024-01-31");

insert into sales values
(2,"book", "2023-04-23"),(3,"ruler", "2021-12-02"),(4,"Television", "2020-09-12");
update sales 
set name = "chair" where productid = 1;
alter table sales drop orderdate;

alter table sales add color varchar (100);

alter table sales drop color;

alter table sales add color varchar(100);

update sales set color = 'blue' where productid = 1;

delete from sales where productid=4;



drop database dataleum;

create database chivita;
use chivita;
select * from sales;
select state from sales;

select state,brandname from sales;
select distinct state from sales;
select distinct brandname from sales;
select *
 from sales where state = "kwara";
 
select *
 from sales where brandname = 'litware';
 
select * 
from sales where state = 'edo';

select * from sales where state = 'kwara' and brandname = 'contoso';

select * from sales where state = 'kwara' or brandname = 'contoso';

select * from sales where state in ('kwara','ogun', 'ondo', 'lagos');

select * from sales where brandname in ('contoso', 'litware');

select * from sales where brandname = 'contoso' and state in ('lagos', 'ogun');

select * from sales where orderqty between 4 and 6;

select * from sales;

select * from sales where productname like '%red';

select * from sales where state like 'b%';


select count(*) from sales;

select count(state) from sales;

select count(distinct state) from sales;

select count(distinct productname) from sales;

select max(orderqty) from sales;

select min(orderqty), avg(orderqty) from sales;

select max(orderqty) as highest_order, min(orderqty) as lowest_qty, avg(orderqty) as average_gty from sales;

select state as location from sales;

select * from sales;

select state, sum(orderqty) as total_orders from sales

group by state;


select productname, max(price) as highest_price from sales group by productname;


select state,
 sum(orderqty) as total_qty from sales group by state order by sum(orderqty) desc
limit 6;	

select brandname,
 avg(price) as Average_price from sales 
group by brandname order by avg(price) desc limit 3;

select * from sales where costofsales > 200;

alter table sales 
add revenue decimal (10,2);

Update sales
 set revenue = price * orderqty;
 
select * from sales;

alter table sales add Profit decimal (10,2);

Update sales set profit = revenue - costofsales;

select productname, max(profit) from sales group by productname;

select state, max(profit) as highest_profit from sales group by state order by max(profit) asc;

select state, max(profit) as highest_profit from sales group by state order by max(profit) desc;