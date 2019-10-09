create database Account_bank; 
create table Customers
(
customer_number int not  null,
full_name varchar (50) not null ,
address varchar (250),
email varchar (250),
phone varchar (11),
Constraint pk_Customers PRIMARY KEY (customer_number) 
);
drop  table Customers;
create table Accounts 
(
accounts_number int not null,
customer_number int not  null,
account_type varchar (50),
account_opening date ,
balance double ,
Constraint pk_Accounts primary key (accounts_number),
constraint fk_Accounts_Customers foreign key (accounts_number) references Customers(customer_number)
);
drop table Accounts;

create table Transactions 
(
Ma_tran_number int not null,
accounts_number int not null,
transaction_time date ,
amounts double ,
descriptions varchar(250),
constraint pk_Transactions primary key (Ma_tran_number),
constraint fk_Transactions_Accounts foreign key (Ma_tran_number) references Accounts(accounts_number)

);


