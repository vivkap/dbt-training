select
 CUSTOMERID,
	CUSTOMERNAME,
	SEGMENT,
	COUNTRY,
    sum(orderprofit) as profit
    from {{ ref('stg_orders') }}
    group by
     CUSTOMERID,
	CUSTOMERNAME,
	SEGMENT,
	COUNTRY

