-- models/state.sql

with source as (
    select * 
    from {{ source('raw_layer', 'state') }}
),

renamed as (
    select
        cast(state_identifier as int) as state_id,
        cast(state_code as varchar(2)) as state_code,
        cast(st_name as varchar(30)) as state_name
    from source
)

select *
from renamed
