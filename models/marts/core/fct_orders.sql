with orders as (
    select *
    from {{ ref('stg_elt_orders') }}
)

select * from orders
