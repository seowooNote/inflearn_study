# HAVING - 그룹 필터링1
# 예제1: '핵심 카테고리' 필터링하기
SELECT
	category,
    SUM(price * quantity) AS total_sales
FROM
	order_stat
GROUP BY
	category
HAVING
	total_sales >= 500000;
    
# 예제2: 충성 고객 필터링하기
SELECT
	customer_name,
    COUNT(*) AS order_count
FROM
	order_stat
GROUP BY
	customer_name
HAVING
	COUNT(*) >= 3;
    
# HAVING - 그룹 필터링2
# 종합 예제 : WHERE 과 HAVING 함께 사용하기
SELECT
	category,
    COUNT(*) AS premium_order_count
FROM
	order_stat
WHERE
	price >= 100000
GROUP BY
	category
HAVING
	COUNT(*) >= 2;
