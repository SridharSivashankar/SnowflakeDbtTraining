-- {{ config(schema='silver') }}

-- with silver_customers1 as (
 
--     select customer_id
--      from {{ ref('stg_sample__customer') }}
 
-- )
-- -- ,
{{ config(schema='silver') }}
 
with avg_bal as (
    select customer_id, round(avg(c_acctbal) , 2) as avgbalance
    from {{ ref('stg_sample__customer')}}
    group by customer_id
)
select *
from avg_bal
 
-- -- cleaned_customers as (
 
-- --     select
-- --         customer_id, avg(c_acctbal)
-- --     from silver_customers1
-- --     group by customer_id
 
-- -- )
 
-- select *
-- from silver_customers1

