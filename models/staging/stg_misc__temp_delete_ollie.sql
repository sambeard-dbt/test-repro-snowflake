with source as (
    select * from {{ source('del', 'Temp_Delete_Ollie_rename_test') }}
),

renamed as (
    select
        "column_one"  as columnone,
        "column_two"  as columntwo,
        "product_id"  as productid,
        "sales_id"    as salesid
    from source
)

select * from renamed