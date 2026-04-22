select distinct
    user_id,
    user_city
from {{ ref('silver_orders') }}