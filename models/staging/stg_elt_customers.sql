
with source as (
    select *
    from {{ source('raw_layer','customers') }}
),

renamed as (
    select
        customer_id,
        zipcode,
        city,
        state_code,
        datetime_created::TIMESTAMP as datetime_created,
        datetime_updated::TIMESTAMP as datetime_updated,
    from source
)

select *
from renamed
