select
    user_city,
    avg(delivery_minutes) as avg_delivery_time,
    sum(case when delivery_minutes > 30 then 1 else 0 end) as late_orders
from {{ ref('silver_orders') }}
where status = 'delivered'
group by user_city