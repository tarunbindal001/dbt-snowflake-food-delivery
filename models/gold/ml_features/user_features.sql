select
    user_id,
    count(*) as total_orders,
    sum(order_amount) as total_spent,
    avg(order_amount) as avg_order_value,
    avg(delivery_minutes) as avg_delivery_time,
    max(delivery_minutes) as max_delivery_time,
    sum(case when status = 'cancelled' then 1 else 0 end) as total_cancellations,
    round(
        sum(case when status = 'cancelled' then 1 else 0 end) * 1.0 / count(*),
        2
    ) as cancellation_rate,
    max(order_time) as last_order_time,
    datediff(day, min(order_time), max(order_time)) as active_days,
    stddev(order_amount) as order_value_variability

from {{ ref('silver_orders') }}

group by user_id