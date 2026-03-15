{{ config(materialized='table') }}

SELECT * FROM {{ source('my_snowflake_data', 'dbt_target_table') }}