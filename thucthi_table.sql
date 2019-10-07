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
