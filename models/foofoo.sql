with source as (
    select * from {{ source('del2', '"Customers_Two"') }}
)

select customer_name from source