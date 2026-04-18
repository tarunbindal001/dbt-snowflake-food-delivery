select
    user_city,
    count(*) as total_orders,
    sum(case when status = 'cancelled' then 1 else 0 end) as cancelled_orders,
    round(
        sum(case when status = 'cancelled' then 1 else 0 end) * 100.0 / count(*),
        2
    ) as cancellation_rate
from {{ ref('silver_orders') }}
group by user_city