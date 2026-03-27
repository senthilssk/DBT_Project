{% snapshot customer_snapshot %}

{{
config(
target_database='DBT_DEMO_DB',
target_schema='SNAPSHOTS',
unique_key='customer_id',
strategy='timestamp',
updated_at='updated_at'
)
}}

select *
from DBT_DEMO_DB.RAW.CUSTOMERS_SCD

{% endsnapshot %}