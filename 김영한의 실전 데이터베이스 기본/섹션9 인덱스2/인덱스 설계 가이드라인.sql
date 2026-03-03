# 카디널리티(Cardinality)
# 해당 컬럼에 저장된 값들의 고유성(uniqueness) 정도를 나타내는 지표
# 카디널리티가 높다(High Cardinality) : 해당 컬럼에 중복되는 값이 거의 없다는 의미
# 카디널리티가 낮다(Low Cardinality) : 해당 컬럼에 값이 몇 종류 안되어 중복되는 값이 많다는 의미
# 핵심 규치 : 카디널리티가 높은 즉, 식별력이 좋은 컬럼에 생성할 때 가장 효율적이다.

# 인덱스 생성 가이드라인
# 1. WHERE 절에서 자주 사용되는 컬럼
# 2. JOIN 의 연결고리가 되는 컬럼(외래 키) (MySQL 은 외래 키 제약조건을 설정하면 인덱스를 자동으로 생성한다.)
# 3. ORDER BY 절에서 자주 사용되는 컬럼
EXPLAIN SELECT 
	s.seller_name,
    i.item_name,
    i.price
FROM items i
JOIN sellers s ON i.seller_id = s.seller_id
WHERE s.seller_name = '행복쇼핑';

SHOW INDEX FROM sellers;
