{{ config(
    materialized='incremental',
    unique_key='order_id'
) }}

select
    order_id,
    user_id,
    restaurant_id,
    order_amount,
    delivery_minutes,
    status,
    order_time

from {{ ref('silver_orders') }}

{% if is_incremental() %}
where order_time > (select max(order_time) from {{ this }})
{% endif %}