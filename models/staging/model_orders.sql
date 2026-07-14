{{ config(materialized='view')}}

with cte as (
    select * from {{source('datafeed_shared_schema','orders_data')}}
)
select * from cte

