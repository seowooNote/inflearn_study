SELECT * FROM users;
SELECT * FROM orders;

SELECT name, address FROM users
WHERE
	address = (SELECT
					u.address
				FROM
					orders o
				INNER JOIN
					users u
				ON 
					o.user_id = u.user_id
				WHERE
					o.order_id = 1);	
