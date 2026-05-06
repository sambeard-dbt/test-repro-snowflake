with stg_misc__temp_delete_ollie as (
    select * from {{ ref('stg_misc__temp_delete_ollie') }}
),

final as (
    select
        columnone,
        columntwo,
        sum(columnone) over (partition by productid) as total_product_columnone,
        sum(columnone) over (partition by salesid)   as total_salesid_columnone
    from stg_misc__temp_delete_ollie
)

select * from final