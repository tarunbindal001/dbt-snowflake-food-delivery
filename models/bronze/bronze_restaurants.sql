select
    restaurant_id,
    lower(cuisine) as cuisine,
    lower(city) as city,
    cast(rating as float) as rating

from {{ source('food_delivery_source', 'raw_RESTAURANTS') }}

where restaurant_id is not null