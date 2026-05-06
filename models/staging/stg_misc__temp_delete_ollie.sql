with source as (
    select * from {{ source('del', 'Temp_Delete_Ollie') }}
),

renamed as (
    select
        {{ dbt_utils.generate_surrogate_key(['"ProductID"', '"SalesID"']) }} as sk_pk,
        "ColumnOne"  as columnone,
        "ColumnTwo"  as columntwo,
        "ProductID"  as productid,
        "SalesID"    as salesid
    from source
)

select * from renamed