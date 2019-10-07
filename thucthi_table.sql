create table contacts
( contact_id int (11) not null auto_increment,
last_name varchar(30) not null,
first_name varchar(25),
birthday date,
constraint contacts_pk primary key (contact_id)

);
drop table customer;
-- sửa bảng  ta dùng  câu  lệnh  alter  
--  them  một  cột 
alter table contacts add last_name varchar (40) not  null after contact_id;
--  cú pháp  chỉnh sửa mô tả của  một cột 
alter table contacts modify last_name varchar (50) null;
-- cú  pháp  xóa một cột trong bảng 
alter table contact_type drop column contact_type;

create table suppliers 
(supplier_id int(11) not null auto_increment,
supplier_name varchar(50)not null,
account_rep varchar (30) not null default 'TbD',
constraint suppliers_pk primary key (supplier_id)
);
drop table suppliers;
/***************/
------------------------------------------------------------------

create table users(
 user_id int(10) auto_increment ,
 username varchar (40) not null,
 password varchar(300),
 email varchar (300),
 constraint users_pk primary key (user_id)
);
create table roles(
role_id int auto_increment,
role_name varchar (50),
constraint roles_pk primary key (role_id)
);
--- tạo khóa  phức hợp  
create table userroles(
user_id int not null,
role_id int not null,
constraint users_fk foreign key (user_id) references users (user_id),
constraint roles_fk foreign key (role_id) references roles (role_id),
constraint primary key (user_id ,role_id)
);
select * from userroles
-- thay  đổi khóa  chính khi thay đổi  bảng
-- cu  pháp :alter table table_name add primary key (primary_key_column);

-----------
create table customers(
id int auto_increment ,
name varchar (40),
address varchar (300),
emil varchar (255),
constraint customers_pk primary key (id)
);
create table orders(
orders_id int auto_increment,
staff varchar (50),
customer_id int,
constraint orders_fk primary key (orders_id),
constraint fk_orders_customers foreign key (customer_id) references customers(id)
);

