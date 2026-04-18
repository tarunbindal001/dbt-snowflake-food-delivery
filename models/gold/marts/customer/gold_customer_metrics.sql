select
    user_id,
    count(*) as total_orders,
    sum(order_amount) as total_spent
from {{ ref('silver_orders') }}
where status = 'delivered'
group by user_id