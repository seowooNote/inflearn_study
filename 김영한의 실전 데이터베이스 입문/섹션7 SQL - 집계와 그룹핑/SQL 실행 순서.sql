# SQL 실행 순서
SELECT
	customer_name,
    SUM(price * quantity) AS total_purchase
FROM
	order_stat
GROUP BY
	customer_name
HAVING
	total_purchase >= 400000
ORDER BY
	total_purchase DESC;
    
# 문제
SELECT
	customer_name,
    SUM(price * quantity) AS total_purchase
FROM
	order_stat
WHERE
	order_date < '2025-05-14'
GROUP BY
	customer_name
HAVING
	count(*) >= 2
ORDER BY
	total_purchase DESC
LIMIT 1;


