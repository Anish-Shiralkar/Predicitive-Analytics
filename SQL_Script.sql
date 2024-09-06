create database inventory;

use inventory;

create table supplier (
			SupplierID varchar(255) primary KEY,
            Supplier VARCHAR(255),
            Average_Lead_Time_Days int
            );  
 
-- drop table supplier;--
 
 select * from supplier; 
 
 
 
create table product (
			ProductID VARCHAR(255) PRIMARY KEY,
            Product_Category VARCHAR(255),
            Description_ VARCHAR(255)
            );
-- drop table product;--            


select * from product;               
            
create table customer (
            CustomerID VARCHAR(255),
            Country VARCHAR(255),
            PRIMARY KEY (CustomerID)
            );
-- drop table customer;--


select * from customer;

     
     
CREATE TABLE sales (
    SalesID INT AUTO_INCREMENT PRIMARY KEY,  -- Unique identifier for the sales record
	Product_Category VARCHAR(255),
    ProductID VARCHAR(255),  -- Foreign key referencing ProductID in the product table
    CustomerID VARCHAR(255),  -- Foreign key referencing CustomerID in the customer table
    SupplierID VARCHAR(255),  -- Foreign key referencing SupplierID in the supplier table
    InvoiceDate DATETIME,
    Quantity_Sold INT,
    Sales_Value DECIMAL(10, 2),  -- Using DECIMAL for precision in monetary values
    Sales_Channel VARCHAR(255),
    Country VARCHAR(255),
    Initial_Stock INT,
    Current_Inventory_Levels INT,
    Current_Inventory_Value DECIMAL(10, 2),  -- Using DECIMAL for precision in monetary values
    Lead_Time_Days INT,
    Avg_Daily_Sales INT,
    Avg_Lead_Time INT,
    Min_Stock INT,
    Safety_Stock INT,
    Max_Stock INT,
    Reorder_Point INT,
    FOREIGN KEY (ProductID) REFERENCES product(ProductID),
    FOREIGN KEY (CustomerID) REFERENCES customer(CustomerID),
    FOREIGN KEY (SupplierID) REFERENCES supplier(SupplierID)
);
-- drop table sales;--
SHOW CREATE TABLE sales;
select * from sales;
            
            
            
