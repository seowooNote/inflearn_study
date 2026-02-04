SELECT 
	status, 
    COUNT(*)
FROM
	orders
GROUP BY
	status;
    
SELECT
	'Total' AS category, COUNT(*) AS total_orders 
FROM
	orders
UNION ALL
SELECT
	status AS category, COUNT(*) AS count FROM orders GROUP BY status;
    
    
SELECT
	(SELECT COUNT(*) FROM orders) AS total_orders,
    (SELECT COUNT(*) FROM orders WHERE status = 'COMPLETE') AS completed_count,
    (SELECT COUNT(*) FROM orders WHERE status = 'SHIPPED') AS shipped_count,
    (SELECT COUNT(*) FROM orders WHERE status = 'PENDING') AS pending_count;
    
    

    