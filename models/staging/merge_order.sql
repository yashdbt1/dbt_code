{{ config(materialized='incremental',
          incremental_strategy='merge',
          unique_key=['ID','USER_ID'] 
          )
}}

select a.*, NVL({{add_months('a.order_date')}},'2025-01-22') as order_1 from {{source('datafeed_shared_schema','orders_data')}} a

{% if is_incremental () %}

where id>
(select max(id)
from {{ this }})
{% endif %}

