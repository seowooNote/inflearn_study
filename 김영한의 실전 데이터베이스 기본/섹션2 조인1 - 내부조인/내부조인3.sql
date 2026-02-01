SELECT
	o.user_id,
    o.order_date,
    o.user_id AS orders_user_id,
    u.user_id AS users_user_id,
    u.name
FROM
	orders AS o
INNER JOIN
	users AS u
ON o.user_id = u.user_id;