# 집계 함수
SELECT * FROM order_stat;
# 전체 데이터 건수 파악하기: COUNT()
SELECT COUNT(*) FROM order_stat;
SELECT COUNT(category) FROM order_stat;
SELECT
	COUNT(*) AS '전체 주문 건수',
    COUNT(category) AS '카테고리 등록 건수'
FROM
	order_stat;

# 합계와 평균 계산으로 매출 분석하기: SUM(), AVG()
# 예제1 : 총 매출액과 평균 주문 금액 분석하기
# SUM() 과 AVG() 는 NULL 값을 자동으로 제외해서 계산
SELECT
	SUM(price * quantity) AS '총 매출액',
    AVG(price * quantity) AS '평균 주문 금액'
FROM
	order_stat;
    
# 예제2: 총 판매 상품 수량과 주문당 평균 수량 분석하기
SELECT
	SUM(quantity) AS '총 판매 상품 수량',
    AVG(quantity) AS '주문당 평균 수량'
FROM
	order_stat;

# 최대, 최소값으로 상품 전략 세우기: MAX(), MIN()
# 예제1 : 최고가, 최저가 상품 찾기
SELECT
	MAX(price) AS 최고가,
    MIN(price) AS 최저가
FROM
	order_stat;
    
# 예제2 : 최초 주문일과 최근 주문일 찾기
SELECT
	MIN(order_date) AS '최초 주문일',
	MAX(order_date) AS '최근 주문일'
FROM
	order_stat;

# 고유 고객 수 파악하기: DISTINCT    
SELECT
	COUNT(DISTINCT customer_name)
FROM
	order_stat;