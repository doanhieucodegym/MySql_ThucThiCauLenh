create database Manage_Oto;
create table ProducLine
(
productLine varchar (20) not null,
texDescription varchar (300) not  null,
image varchar  (300) null,
Constraint pk_ProducLine primary key(productLine)
);
drop table ProducLine;

create table Products 
(
Id_product int not null,
productLine varchar (20) not  null,
productName varchar (50) not null,
productScale varchar (50) not null,
productVendor varchar (50) not null ,
productDesscription varchar (50) not  null,
quantiylnStock int ,
buyPrice double ,
MSRP double ,
Constraint pk_Products primary key (Id_product),
Constraint pf_Products_ProducLine foreign key (productLine) references ProducLine(productLine)
);
drop table Products;


create table Offices
(
 Id_office varchar (10) not null,
 city varchar (50) not  null, 
 phone varchar (10) not  null,  
 addressLine1 varchar (50) not null,
 addressLine2 varchar (50) not  null,
 state varchar (100) null,
 country  varchar (50) not null,
 postalCode varchar (50) null,
 Constraint pk_Offices primary key (Id_office)
);

drop table Offices;

create table Employees
(
Id_number int  not null, 
Id_office varchar(10) not  null,
name_ varchar (20) not  null,
email varchar(50),
jobTitle varchar (300) null ,
Constraint pk_Employess primary key (Id_number),
Constraint fk_Employess_office foreign key (Id_office) references Offices(Id_office)
);
drop table Employees;

Create table Customers
(
Id_customer int  not  null,
Name_customer varchar (20) not  null,
phone varchar (11) ,
addressLine1 varchar (50) not  null,
addressLine2 varchar (50) null,
city varchar (100)  not null,
state varchar (50) null,
salesIdRepemployeenumber int not  null,
creditLimit  double not  null,
Constraint pk_Customer primary key (Id_customer) ,
Constraint fk_Customer_Employess foreign key (salesIdRepemployeenumber) references Employees(Id_number) 
);
drop table Customers;
select * from Cusomers;
Create table Payments
(
checkNumber varchar (10) not null ,
Id_customer1 int not null,
paymentDate date,
amount double not null,
Constraint pk_Payments primary key (checkNumber),
Constraint pk_Payments_Customers foreign key (Id_customer1) references Custormers(Id_customer)

);
drop table Payments;

Create table Orders
(
Id_orderNumber int not null  ,
Id_customer int  not  null  ,
orderDate date ,
requiredDate date,
shippedDate date ,
status_ varchar (50),
comments varchar (100),
priceEach double,
Constraint pk_orders primary key (Id_orderNumber),
Constraint fk_orders_Customers foreign key (Id_customer) references Customers(Id_customer)
);
drop table Orders;


create table Orderdetails
(
Id_orderNumber int  not  null,
Id_product int  not  null, 
quantityOrdered int  not  null,
priceEach double ,
orderLineNumber int not  null,
Constraint fk_Orderdetails_produts foreign key (Id_product) references Products(Id_product),
Constraint fk_Orderdetails_Ocustomersrders foreign key (Id_orderNumber) references Orders(Id_orderNumber),
Constraint pk_Orderdetails primary  key (Id_orderNumber,Id_product)

);
drop table Orderdetails;

