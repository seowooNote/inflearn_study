# 내부 조인(INNER JOIN)
# 두 테이블을 연결할 때, 양쪽 테이블에 모두 공통으로 존재하는 데이터만을 결과로 보여준다. 

# 두 테이블을 그대로 연결하기
SELECT
	*
FROM
	orders 
INNER JOIN
	users
on orders.user_id = users.user_id;

# 필요한 컬럼만 선택하고, WHERE 로 필터링하기
SELECT
	users.user_id,
    users.name,
    orders.order_date
FROM
	orders 
INNER JOIN
	users
on orders.user_id = users.user_id
WHERE orders.status = 'COMPLETED';



