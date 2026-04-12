  select
        user_id,
        lower(city) as city,
        cast(signup_date as date) as signup_date

    from {{ source('food_delivery_source', 'raw_USERS') }}

    where user_id is not null

