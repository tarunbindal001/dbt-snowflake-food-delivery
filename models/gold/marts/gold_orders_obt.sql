select
    order_id,
    user_id,
    restaurant_id,
    order_amount,
    order_time,
    delivery_time,
    status,
    user_city,
    cuisine,
    restaurant_city,
    delivery_minutes
from {{ ref('silver_orders') }}