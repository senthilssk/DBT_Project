{{ config(materialized='table') }}

select
    c.customer_id,
    c.customer_name,
    c.country,
    count(o.order_id) as total_orders,
    sum(o.amount) as total_amount
from {{ ref('stg_orders') }} o
join {{ ref('stg_customers') }} c
    on o.customer_id = c.customer_id
group by c.customer_id, c.customer_name, c.country