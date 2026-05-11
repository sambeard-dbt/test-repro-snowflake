with source as (
    select * from {{ source('del', 'Temp_Delete_Ollie_rename_test_3') }}
),

renamed as (
    select
        "ColumnOne" as columnone,
        ColumnTwo  as columntwo,
        product_id  as productid,
        "salesid"    as salesid
    from source
)

select * from renamed