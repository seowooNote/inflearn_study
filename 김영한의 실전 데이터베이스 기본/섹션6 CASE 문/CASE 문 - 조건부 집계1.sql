SELECT
	COUNT(*) as total_orders,
	SUM(CASE status WHEN 'COMPLETE' THEN 1 ELSE 0 END) AS completed_count,
    SUM(CASE status WHEN 'SHIPPED' THEN 1 ELSE 0 END) AS shipped_count,
    SUM(CASE status WHEN 'PENDING' THEN 1 ELSE 0 END) AS pending_count
FROM
	orders;
    
SELECT
	p.category,
	COUNT(*) as total_orders,
	SUM(CASE status WHEN 'COMPLETE' THEN 1 ELSE 0 END) AS completed_count,
    SUM(CASE status WHEN 'SHIPPED' THEN 1 ELSE 0 END) AS shipped_count,
    SUM(CASE status WHEN 'PENDING' THEN 1 ELSE 0 END) AS pending_count
FROM
	orders o
INNER JOIN
	products p
ON o.product_id = p.product_id
GROUP BY p.category;