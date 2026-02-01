SELECT
	u.user_id,
    u.name,
    o.user_id,
    o.order_id
FROM
	users u
LEFT JOIN
	orders o 
ON 
	o.user_id = u.user_id
ORDER BY
	u.user_id;
    
SELECT
	u.user_id,
    u.name,
	u.email
FROM
	users u
LEFT JOIN
	orders o 
ON 
	o.user_id = u.user_id
WHERE
	o.user_id IS NULL;