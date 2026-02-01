SELECT user_id, name, email
FROM users
WHERE user_id = 1;

SELECT order_id, product_id, user_id
FROM orders
WHERE user_id = 1;

SELECT
	o.order_id,
    o.product_id,
    o.user_id AS orders_user_id,
    u.user_id AS users_user_id,
    u.name,
    u.email
FROM
	orders o
INNER JOIN users u on o.user_id = u.user_id
WHERE o.user_id = 1;

SELECT
	u.user_id as users_user_id,
    u.name,
    u.email,
	o.order_id,
    o.product_id,
    o.user_id as orders_user_id
FROM
	users u 
INNER JOIN orders o on u.user_id = o.user_id
WHERE o.user_id = 1;

SELECT
	user_id, name, email
FROM
	users;
    
SELECT
	user_id, product_id, order_id
FROM
	orders;
    
SELECT
	o.order_id,
    o.product_id,
    o.user_id,
    u.user_id,
    u.name,
    u.email
FROM
	orders o
INNER JOIN
	users u
ON
	o.user_id = u.user_id;

SELECT
    u.user_id,
    u.name,
    u.email,
	o.order_id,
    o.product_id,
    o.user_id
FROM
	users u
INNER JOIN
	orders o
ON
	u.user_id = o.user_id;

