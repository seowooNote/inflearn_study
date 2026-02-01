SELECT
	orders.user_id,
    orders.order_date,
    orders.user_id AS orders_user_id,
    users.user_id AS users_user_id,
    users.name
FROM
	orders
INNER JOIN
	users
ON orders.user_id = users.user_id;


SELECT
	orders.user_id,
    orders.order_date,
    orders.user_id AS orders_user_id,
    users.user_id AS users_user_id,
    users.name
FROM
	users
INNER JOIN
	orders
ON users.user_id = orders.user_id