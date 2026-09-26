create table raw_superstore (
	Row_ID Integer, Order_ID varchar(50),Order_Date DATE,
	Ship_Date DATE,Ship_Mode varchar(50),Customer_ID varchar (50),
	Customer_Name varchar(150),Segment varchar(50) ,City varchar(50),
	State_v varchar(50),Country varchar(50),Postal_Code varchar(20),
	Market varchar (50),Region varchar(50),Product_ID varchar(100),Category varchar(50),	
	Sub_Category varchar(50),Product_Name varchar(255),Sales numeric (12,2),Quantity integer,Discount NUMERIC(5,2),	
	Profit NUMERIC(12,2),Shipping_Cost NUMERIC(12,2),Order_Priority varchar(50)
);
truncate table raw_superstore;
copy raw_superstore
from 'D:\Projets DATA\superstore_dataset2011-2015.csv'
with (  format csv,
		header true, 
		delimiter ';'
		);

select count(*)
from raw_superstore;

create table superstore_clean as 
select*
from raw_superstore
	where Sales is not null
	and Quantity is not null
	and Profit is not null
	and Shipping_cost is not null
	and Discount is not null;
