{%- set category = "Furniture" -%}
select
orderid,
case when category = '{{category}}' then orderprofit end as {{category}}_orderprofit
from {{ ref('stg_orders') }}
where {{category}}_orderprofit is not null