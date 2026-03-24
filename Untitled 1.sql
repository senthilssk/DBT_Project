create or replace table DBT_DEMO_DB.RAW.CUSTOMERS_SCD (
customer_id number,
customer_name string,
country string,
updated_at timestamp
);

insert into DBT_DEMO_DB.RAW.CUSTOMERS_SCD values
(1, 'Amit', 'India', current_timestamp),
(2, 'John', 'USA', current_timestamp);

