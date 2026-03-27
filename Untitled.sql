update DBT_DEMO_DB.RAW.CUSTOMERS_SCD
set country = 'Canada',
updated_at = current_timestamp
where customer_id = 1;

select * from DBT_DEMO_DB.SNAPSHOTS.customer_snapshot;

create or replace table DBT_DEMO_DB.RAW.ORDERS_CDC (
    order_id number,
    customer_id number,
    amount number,
    updated_at timestamp
);

insert into DBT_DEMO_DB.RAW.ORDERS_CDC values
(1, 101, 500, current_timestamp),
(2, 102, 700, current_timestamp);

select * from DBT_DEMO_DB.RAW.ORDERS_CDC;

update DBT_DEMO_DB.RAW.ORDERS_CDC
set amount = 2900,
    updated_at = current_timestamp
where order_id = 1;

