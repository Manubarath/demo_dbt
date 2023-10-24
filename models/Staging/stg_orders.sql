select 
--from Order table
o.OrderID ,
o.OrderDate,
o.shipdate,
o.shipmode,
o.OrderSellingPrice-OrderCostPrice as Order_Profit,

--from customer table
c.customerID,
c.customername,
c.segment,
c.country,

--from products
p.ProductId,
p.ProductName,
p.category,
p.SubCategory
from {{ ref('Orders') }} as o
left join {{ ref('Customers') }} as c on o.CustomerID=c.CustomerID
left join {{ ref('Products') }} as p on o.ProductId=p.ProductId