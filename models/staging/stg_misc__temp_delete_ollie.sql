with source as (
    select * from {{ source('del', 'Temp_Delete_Ollie') }}
),

renamed as (
    select
        "ColumnOne"  as columnone,
        "ColumnTwo"  as columntwo,
        "ProductID"  as productid,
        "SalesID"    as salesid
    from source
)

select * from renamed