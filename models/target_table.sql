{{ config(materialized='table') }}

SELECT * FROM {{ source('my_snowflake_project', 'dbt_target_table') }}