SELECT * FROM users;
SELECT * FROM products;
SELECT * FROM orders;
# 문제1 : 특정 카테고리의 미판매 상품 찾기
SELECT
	p.name,
    p.price
FROM
	products p
LEFT JOIN
	orders o
ON 
	p.product_id = o.product_id
WHERE
	p.category = '전자기기' AND o.order_id IS NULL;
    
# 문제2: 고객별 주문 횟수 구하기 (주문 없는 고객 포함)
SELECT
	u.name,
	COUNT(o.order_id) AS order_count
FROM
	users u
LEFT JOIN
	orders o
ON u.user_id = o.user_id
GROUP BY
	u.user_id;

# 문제3: RIGHT JOIN으로 주문 없는 고객 찾기
SELECT
	u.name,
    u.email
FROM
	orders o
RIGHT JOIN
	users u
ON o.user_id = u.user_id
WHERE
	o.order_id IS NULL;
    
# 문제4: 고객별 주문 상품 목록 조회하기
SELECT
	u.name AS user_name,
    p.name AS product_name
FROM
	users u
LEFT JOIN
	orders o
ON u.user_id = o.user_id
LEFT JOIN
	products p
ON o.product_id = p.product_id
ORDER BY
	user_name, product_name;

