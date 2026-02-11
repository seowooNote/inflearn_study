CREATE VIEW 
	v_category_order_status AS
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

SELECT * FROM v_category_order_status;
SELECT category, total_orders FROM v_category_order_status;
SELECT * FROM v_category_order_status WHERE category = '전자기기';

ALTER VIEW 
	v_category_order_status AS
SELECT
	p.category,
    SUM(p.price * o.quantity) AS total_sales, -- 매출액 컬럼 추가!
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

DROP VIEW v_category_order_status;

