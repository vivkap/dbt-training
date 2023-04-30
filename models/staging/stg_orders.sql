select 
-- from orders
ORDERID ,
	o.ORDERDATE ,
	o.SHIPDATE ,
	o.SHIPMODE ,
    o.ORDERSELLINGPRICE,
    o.ORDERCOSTPRICE,
    o.ORDERSELLINGPRICE - o.ORDERCOSTPRICE as orderprofit,
-- from customers
    c.CUSTOMERID ,
	c.CUSTOMERNAME ,
	c.SEGMENT ,
	c.COUNTRY ,
 -- from products
    p.CATEGORY ,
	p.PRODUCTID ,
	p.PRODUCTNAME ,
	p.SUBCATEGORY ,
    {{ markup('ORDERSELLINGPRICE','ORDERCOSTPRICE') }}   as markup
          from {{ ref('raw_orders') }} o
          left join {{ ref('raw_customer') }} c
          on c.CUSTOMERID = o.CUSTOMERID
          left join {{ ref('raw_product') }} p
          on p.PRODUCTID = o.PRODUCTID