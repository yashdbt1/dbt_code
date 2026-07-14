{{ config(materialized='table')
}}

SELECT A.*,ADD_MONTHS(ORDER_DATE,12) AS 1_year
FROM {{ref('model_orders')}} A




