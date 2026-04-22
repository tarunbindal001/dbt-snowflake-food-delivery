select
    order_id,
    user_id,
    restaurant_id,
    order_amount,
    delivery_minutes,
    status,
    order_time
from {{ ref('silver_orders') }}