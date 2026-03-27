{{ config(materialized='incremental') }}

with source_data as (

    select *
    from {{ ref('stg_orders_cdc') }}

    {% if is_incremental() %}
    where updated_at > (
        select coalesce(max(updated_at), '1900-01-01')
        from {{ this }}
    )
    {% endif %}

)

select *
from source_data