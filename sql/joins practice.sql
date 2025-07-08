
# Find order id, name and city by joining users and orders.
select order_id,t2.name ,t2.city 
from orders t1
join users t2
on t1.user_id = t2.user_id;


# Find order_id, product category by joining order_details and category
select order_id, t2.vertical as product_cat ,category 
from order_details t1 
join category t2
on t1.category_id = t2.category_id;


# Find all the orders placed in pune
select * from orders t1 
join users t2
on t1.user_id = t2.user_id
where t2.city = "Pune";


# Find all orders under Chairs categoryl
select * from order_details t1
join category  t2
on t1.category_id = t2.category_id
where t2.vertical = "Chairs";

# Find all profitable orders
select t1.order_id,sum(t2.profit) as total_profit
from orders t1
join order_details t2
on t1.order_id = t2.order_id
group by t1.order_id
having sum(t2.profit) > 0
order by total_profit desc;

# Find the customer who has placed max number of orders
select t2.name as 'names' ,count(*) as 'num_orders' from orders t1
join users t2
on t1.user_id = t2.user_id
group by names
order by num_orders desc;


