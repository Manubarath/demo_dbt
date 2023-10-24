select 
    ProductId,
    ProductName,
    Category,
    Subcategory,
    sum(Order_Profit) as Product_profit
from {{ ref('stg_orders') }}
group by 
    ProductId,
    ProductName,
    Category,
    Subcategory
