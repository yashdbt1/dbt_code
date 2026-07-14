{{ config(materialized='table')
}}

SELECT A.*,ADD_MONTHS(ORDER_DATE,12) AS NEXT_30
FROM {{ref('model_orders')}} A




