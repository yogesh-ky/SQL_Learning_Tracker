1.
select * from (select customer_name,count(r.order_id) as customer_return_orders
,count(O.order_id) as customer_total_orders, (r.order_id/O.order_id) * 100 as Return_Percentage
from orders o
left join returns r 
on o.order_id = r.order_id
group by customer_name
) as subq

2.

select 
case when price < 100 then "Low price"
when price >= 100 and price <= 500 then "Medium Price"
when price > 500 then "High Price"
end as Category
,count(product_id) No_of_Products from products
group by 
case when price < 100 then "Low price"
when price >= 100 and price <= 500 then "Medium Price"
when price > 500 "High Price" 
order by No_of_Products desc


3.

/* Write your T-SQL query statement below */
select buyer_id,U.join_date,  COUNT(CASE 
            WHEN O.order_date BETWEEN '2019-01-01' AND '2019-12-31' 
            THEN O.order_id 
         END) AS orders_in_2019 
from Users U
Left Join Orders O
on U.User_id = O.Buyer_id
group by buyer_id,U.Join_date


4.

SELECT product_id,product_name
FROM products
WHERE supplier_name IN ('Supplier A', 'Supplier B')
GROUP BY product_id,product_name
HAVING COUNT(DISTINCT supplier_name) = 2;
