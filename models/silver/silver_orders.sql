select 
    o.order_id,
    o.user_id,
    o.restaurant_id,
    o.order_amount,
    o.order_time,
    o.delivery_time,
    o.status,

    u.city as user_city,

    r.cuisine,
    r.city as restaurant_city,

    datediff(minute, o.order_time, o.delivery_time) as delivery_minutes

from {{ ref('bronze_orders') }} as o

left join {{ ref('bronze_users') }} as u
    on o.user_id = u.user_id

left join {{ ref('bronze_restaurants') }} as r 
    on o.restaurant_id = r.restaurant_id