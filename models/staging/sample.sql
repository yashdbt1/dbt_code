{{ config(materialized='table')}}

with cte as (
    select * from {{source('datafeed_shared_schema','orders_data')}}
)
select * from cte

