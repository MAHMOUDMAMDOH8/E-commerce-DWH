use [E-Commerce-DWH] 

create table [DIM product]
(
   [product key] int identity(1,1)primary key,
   [product ID] int , 
   [producr Name] varchar(50),
   Category varchar(50),
   [sub-category] varchar(50) ,
   [store Name] varchar(50) ,
   [Store region] varchar(50),
   [Brand Name] varchar(50),
   [Brand Country] varchar(50),
   [supplier name] varchar(50),
   [supplier Location] varchar(50),
   price float ,
   cost float,
   source_system_code tinyint not null ,
   --SCD
   Start_Date datetime not null default (getdate()),
   End_date datetime,
   is_current tinyint not null default (1)
)

create index dim_productID on [DIM product]([product ID])
