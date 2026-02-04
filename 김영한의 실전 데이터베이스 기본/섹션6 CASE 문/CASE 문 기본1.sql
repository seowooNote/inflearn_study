# 단순 CASE 문(Simple CASE Exception)
# 특정 하나의 컬럼이나 표현식의 값에 따라 결과를 다르게 하고 싶을 때 사용한다.

SELECT 
order_id, 
user_id, 
product_id, 
quantity, 
status,
	CASE status
		WHEN 'PENDING' THEN '주문 대기'
        WHEN 'COMPLETED' THEN '결제 완료'
        WHEN 'SHIPPED' THEN '배송'
        WHEN 'CANCELED' THEN '주문 취소'
        ELSE '알 수 없음'
	END
FROM orders;

# 검색 CASE 문(Searched CASE Exception)
# 단순 CASE 문처럼 하나의 특정 값을 비교하는 대신, 각 WHEN 절에 독립적인 조건식을 사용하여 복잡한 논리를 구현할 때 사용한다.
SELECT
	name,
    price,
    CASE 
		WHEN price >= 100000 THEN '고가'
        WHEN price >= 30000 THEN '중가'
        ELSE '저가'
	END AS price_label
FROM
	products;
