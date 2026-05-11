with source as (
    select * from {{ source('del2', 'customers') }}
)

select customer_name from source
