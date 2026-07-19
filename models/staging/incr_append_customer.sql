{{ config(materialized='incremental',
   incremental_strategy='append'
  )
}}

select * from {{source('datafeed_shared_schema','customer_data')}}

{% if is_incremental() %}
where id>
(select max(id)
from {{ this }}
)
{% endif %};


