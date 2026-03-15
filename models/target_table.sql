{{ config(materialized='table') }}

-- Replace RAW_DB with your actual Snowflake Database name
-- Replace RAW_SCHEMA with your actual Snowflake Schema name
-- Replace ORIGINAL_100_TABLE with the table that HAS the records

SELECT * FROM DBT_DB.DBT_SCHEMA.dbt_customer