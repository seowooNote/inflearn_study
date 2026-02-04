SELECT * FROM users;
SELECT * FROM orders;

EXPLAIN
SELECT
	o.order_id,
    o.user_id,
    o.product_id,
    o.order_date
FROM
	orders o
INNER JOIN
	users u
ON o.user_id = u.user_id
WHERE
	u.address LIKE('서울시%');
    
    
EXPLAIN
SELECT
	o.order_id,
    o.user_id,
    o.product_id,
    o.order_date
FROM
	orders o
WHERE
	o.user_id IN (SELECT
						u.user_id 
					FROM
						users u
					WHERE
						u.address LIKE('서울시%'));
					
	