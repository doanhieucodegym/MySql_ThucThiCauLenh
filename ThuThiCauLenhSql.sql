
SELECT * FROM customers;
select customerNumber,phone,city,country from customers;
SELECT customerName, phone, city, country FROM customers;
select * from customers where customerName ='Atelier Graphique'; 
select * from customers where customerName like '%A%';
/*SELECT * FROM customers WHERE customername like '%A%';*/
-- tìm tất cả thông tin với  điều  kiện thành phố có  tên  ở ngoặc 
select * from customers where city in ('Nantes','Las Vegas','NYC');