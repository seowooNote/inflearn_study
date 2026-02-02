SELECT user_id, status FROM orders WHERE order_id = 3;

SELECT
	order_id, user_id, status, order_date
FROM
	orders
WHERE (user_id, status) = (SELECT 
								user_id, 
								status 
							FROM 
								orders 
							WHERE order_id = 3)
AND order_id != 3;

SELECT
	o.order_id,
    o.user_id,
    u.name,
    p.name as product_name,
    o.order_date
FROM
	orders o
INNER JOIN users u
ON 
	o.user_id = u.user_id
INNER JOIN products p
ON 
	p.product_id = o.product_id
WHERE (o.user_id, o.order_date) IN (SELECT
										user_id, MIN(order_date)
									FROM
										orders
									GROUP BY
										user_id);
	
