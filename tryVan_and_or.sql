use classicmodels;
select productCode, productName, buyprice, quantityInStock from products
where buyprice > 56.76 and quantityInStock > 10;
-- jion hai bang va co dieu  kien
SELECT productCode,productName, buyprice, textDescription
FROM products
INNER JOIN productlines
ON products.productline = productlines.productline
WHERE buyprice > 56.76 AND buyprice < 95.59;
-- su dung  or  

select productCode, productName, buyprice, quantityInStock, productVendor, productLine 
from products 
where productLine = 'Classic Cars' or productVendor = 'Min Lin Diecast';