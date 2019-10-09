
use classicmodels;
select * from customers;
select * from payments;
-- inner join
select customers.customerName,customerName ,phone, paymentDate, amount from customers
inner join payments
on customers.customerNumber = payments.customerNumber
where city  ='Las Vegas'

-- left join

select customers.customerNumber, customers.customerName, orders.orderNumber, orders.status
from customers
left join orders
on customers.customerNumber = orders.customerNumber 
where orderNumber is null;

-- 
