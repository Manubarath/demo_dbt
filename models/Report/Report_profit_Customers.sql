select 
    customerid,
    segment,
    country,
sum(order_profit)as customer_profit
 from {{ ref('stg_orders') }}
 group by 
    customerid,
    segment,
    country