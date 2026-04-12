select
    order_id,
    user_id,
    restaurant_id,
    cast(order_amount as int) as order_amount,
    cast(order_time as timestamp) as order_time,
    cast(delivery_time as timestamp) as delivery_time,
    lower(status) as status

from {{ source('food_delivery_source', 'raw_ORDERS') }}

where order_id is not null