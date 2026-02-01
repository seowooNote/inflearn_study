SELECT * FROM employees;
SELECT * FROM orders;
SELECT * FROM users;

# 문제1: 특정 상사의 부하 직원 찾기

SELECT
	e2.employee_id,
	e2.name,
	e2.manager_id,
	e1.name AS manager_name
FROM
	employees e1
JOIN
	employees e2 ON e1.employee_id = e2.manager_id
WHERE
	e1.name = '최과장';
    
# 문제2: 모든 상품 옵션 조합에 재질 추가하기
CREATE TABLE materials (
material VARCHAR(20) PRIMARY KEY
);
INSERT INTO materials(material) VALUES ('Cotton'), ('Silk');
SELECT
	CONCAT('기본티셔츠-', c.color, '-', s.size, '-', m.material) AS product_full_name,
	c.color,
    s.size,
    m.material
FROM
	colors c
CROSS JOIN
	sizes s
CROSS JOIN
	materials m;
	
# 문제3: 특정 고객의 주문 내역 상세 조회하기
SELECT
	u.name AS customer_name,
    p.name AS porduct_name,
    o.order_date,
    o.quantity
FROM
	orders o
LEFT JOIN
	users u
ON o.user_id = u.user_id
LEFT JOIN
	products p
ON o.product_id = p.product_id
WHERE
	u.name = '네이트';

# 문제4: 서울 지역 고객의 총 주문 금액 계산하기
SELECT
	u.name AS customer_name,
    sum(p.price * o.quantity) AS total_spent
FROM
	orders o
LEFT JOIN
	users u
ON 
	u.user_id = o.user_id
LEFT JOIN
	products p
ON 
	o.product_id = p.product_id
WHERE 
	u.address like '서울%'
GROUP BY 
	u.name
ORDER BY 
	total_spent DESC;

