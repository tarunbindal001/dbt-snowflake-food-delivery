select distinct
    restaurant_id,
    cuisine,
    restaurant_city
from {{ ref('silver_orders') }}