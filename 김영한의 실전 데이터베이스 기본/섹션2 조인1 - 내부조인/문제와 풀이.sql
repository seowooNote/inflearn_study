# 문제1 : 주문별 상품 정보 조회
SELECT
	o.order_id,
    p.name,
    o.quantity
FROM
	orders AS o
INNER JOIN
	products AS p
ON o.product_id = p.product_id
ORDER BY o.order_id;

# 문제2 : 3개 테이블 조인하기
SELECT
	o.order_id,
    u.name AS user_name,
    p.name AS product_name,
    o.order_date
FROM
	orders AS o
INNER JOIN
	users AS u
ON o.user_id = u.user_id
INNER JOIN
	products AS p
ON o.product_id = p.product_id
WHERE o.status = 'SHIPPED';

# 문제3 : 고객별 총 구매액 계산
SELECT
	u.name AS user_name,
    SUM(o.quantity * p.price) AS total_purchase_amount
FROM
	orders o
INNER JOIN
	users u
ON o.user_id = u.user_id
INNER JOIN
	products p
ON o.product_id = p.product_id
GROUP BY u.name
ORDER BY total_purchase_amount DESC;