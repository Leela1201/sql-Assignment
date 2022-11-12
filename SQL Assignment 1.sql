      Create table Customer
(
  id int primary key,
  FirstName nvarchar(40) not null,
  LastName nvarchar(40),
  City nvarchar(40),
  Country nvarchar(40),
  Phone int,
)
  insert into Customer values(1,'ram','ganisetti','tuni','India',123456789)
  insert into Customer values(2,'ruth','adrin','berlin','Germany',19432156789)
  insert into Customer values(3,'chandu','adabala','vizag','India',9876543210)
  insert into Customer values(4,'sri','leela','rajahmundry','India',7856498654)
  
   
   Create table Orde
   ( 
     id int primary key,
	 OrderDate datetime not null,
	 OrderNumber nvarchar(10),
	 Customerid int references Customer(id) ,
	 TotalNumber decimal(12,2)
	 )
	 insert into Orde values(897,2022-10-12,25,1,8.23)
	 insert  into Orde values(789,2022-09-14 ,20,2,12.20)
	 insert into Orde values(876,2022-08-15,13,3,5.73)
	 drop table Orde

	 Create table Product
	 (
	   id int primary key,
	   ProductName nvarchar(50),
	   Unitprice decimal(12,2),
	   Package nvarchar(30)
	   )
	   insert into Product values(111,'Milk',8.24,'jersey')
	   insert into Product values(122,'Apple',12.34,'Simla')
       insert into Product values(133,'Rose',9.21,'flower')

	   Create table OrderItem
	   (
	     id int primary key,
		 OrderdId int references Orde(id),
		 ProductId int references Product(id),
		 UnitPrice decimal(12,2),
		 Quantity int
		 )

		 insert into OrderItem values(101,897,111,10.23,30)
		 insert into OrderItem values(102,789,122,8.79,43)
		 insert into OrderItem values(103,876,133,7.23,22)
		 

		 select * from Customer
		 select* from Customer Where FirstName LIKE '__I%';
		 select * from Customer where Country like  'A%' or Country like 'I%';
		 select * from  OrderItem;
		 select * from Customer where Country='Germany';
		 select * from Customer where id=1;
		 select * from Customer Where FirstName Like '_U%';
		 select * from OrderItem where UnitPrice > 10 and UnitPrice < 20;
		 select * from Orde  order by OrderDate asc;
