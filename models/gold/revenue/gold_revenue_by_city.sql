select
    user_city,
    cuisine,
    sum(order_amount) as total_revenue,
    count(*) as total_orders
from {{ ref('silver_orders') }}
where status = 'delivered'
group by user_city, cuisine