SELECT * FROM users;
SELECT * FROM orders;
SELECT * FROM products;

SELECT
	u.name,
    u.email,
    o.order_date,
    p.name,
    p.price,
    o.quantity
FROM
	orders o
INNER JOIN
	users u
ON
	o.user_id = u.user_id
INNER JOIN
	products p
ON
	o.product_id = p.product_id
WHERE
	address LIKE '서울%' AND
	order_date >= '2025-06-01' AND order_date < '2025-07-01'
ORDER BY
	order_date DESC;
