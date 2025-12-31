# GROUP BY - 그룹으로 묶기
# 예제 : 카테고리별 주문 건수
SELECT
	category,
    COUNT(*) AS '카테고리별 주문 건수'
FROM
	order_stat
GROUP BY
	category;
    
# 예제 : 고객별로 총 몇번이나 주문했을까?
SELECT
	customer_name,
    count(*) AS '주문 횟수'
FROM
	order_stat
GROUP BY
	customer_name;

# 예제 시나리오 : 고객별 구매 활동 분석(VIP 고객 찾기)
SELECT
	customer_name,
    COUNT(*) AS `주문 횟수`,
    SUM(quantity) AS `총 구매 수량`,
    SUM(price) AS `총 구매 금액`
FROM
	order_stat
GROUP BY
	customer_name
ORDER BY
	`총 구매 금액` DESC;
    
# 주의! - ORDER BY 백틱 사용
# ORDER BY 에서 총 구매 금액 문자에 백틱(`)을 사용했다. 이렇게 백틱을 사용해야 SELECT에서 사용한 컬럼명으로 인식한다.
# MySQL에서 작은 따옴표(' '), 큰 따옴표(" ")명으로 인식하지 못한다.
# 이렇게 되면 모두 같은 문자 상수로 정렬되어 버린다. 
# 여기서는 모든 컬럼이 "총 구매 금액"이라는 문자 값으로 정렬되므로 정렬 효과가 없다. 
# 따라서 정렬이 안되는 문제가 있다.

# 더 세분화된 그룹으로 분석하 : 여러 컬럼 기준 그룹화
SELECT
	customer_name,
    category,
    SUM(price * quantity) as `카테고리별 구매 금액`
FROM
	order_stat
GROUP BY
	customer_name, category
ORDER BY
	customer_name, `카테고리별 구매 금액` DESC;

# GROUP BY - 주의사항
# GROUP BY 를 사용할 때 SELECT 절에는 GROUP BY 에 사용된 컬럼과 집계 함수만 사용할 수 있다.

    
