use [E-Commerce-DWH]

create table [Dim customer]
(
    [customer key] int identity (1,1) primary key not null ,
    [Customer id] int ,
	[Customer Name] varchar(100),
	gender varchar(10),
	age int ,
	Country varchar(50),
	City varchar(50),
	[zip code] int ,
	email varchar(50),
	password varchar(50),
    source_system_code tinyint not null ,
    --SCD
    Start_Date datetime not null default (getdate()),
    End_date datetime,
    is_current tinyint not null default (1)

)

create index dimcus_ID_pk on [Dim customer]([Customer id])
