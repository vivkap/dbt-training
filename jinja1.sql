{%- set tabletype = "orderstable" -%}

select
orderid,
'{{tabletype}}' as tabletype
from {{ ref('stg_orders') }}