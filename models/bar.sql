with source as (
    select * from {{ source('del', 'Customers_Two') }}
)

select customer_name from source