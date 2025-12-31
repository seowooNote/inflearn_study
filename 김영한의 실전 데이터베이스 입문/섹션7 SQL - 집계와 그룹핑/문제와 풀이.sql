# 문제1 : 기본 통계 조회하기
SELECT 
	COUNT(*) AS `총 주문 건수`,
	COUNT(category) AS `카테고리 보유 건수`
FROM order_stat;

# 문제2 : 쇼핑몰 매출 현황 파악하기
SELECT
	SUM(price * quantity) AS `총 매출액`,
    AVG(price * quantity) AS `평균 주문 금액`,
    MAX(price) AS `최고 단가`,
    MIN(price) AS `최저 단가`
FROM
	order_stat;

# 문제3 : 카테고리별 실적 분석하기
SELECT
	category,
    COUNT(*) AS `카테고리별 총 판매 수량`,
    SUM(price * quantity) AS `카테고리별 총 매출액`
FROM
	order_stat
GROUP BY
	category;

# 문제4 : 고객별 주문 통계 분석하기
SELECT
	customer_name,
    COUNT(*) AS `총 주문 횟수`,
    SUM(quantity) AS `총 구매 수량`
FROM
	order_stat
GROUP BY
	customer_name
ORDER BY
	`총 주문 횟수` DESC, `총 구매 수량` DESC;
    
# 문제5 : VIP 고객 필터링하기
SELECT
	customer_name,
    SUM(price * quantity) AS `총 구매 금액`
FROM
	order_stat
GROUP BY
	customer_name
HAVING
	SUM(price * quantity) >= 400000
ORDER BY
	`총 구매 금액` DESC;
    
# 문제6 : 복합 조건으로 핵심 고객 그룹 찾기
SELECT
	customer_name,
    COUNT(*) AS `주문 횟수`,
    SUM(price * quantity) AS `총 사용 금액`
FROM
	order_stat
WHERE
	category != '도서'
GROUP BY
	customer_name
HAVING
	count(*) >= 2
ORDER BY
	`총 사용 금액` DESC;

