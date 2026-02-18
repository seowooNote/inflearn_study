# ORDER BY 가 인덱스를 잘 활용하면, 별도의 정렬 과정 없이 이미 정렬된 인덱스를 순서대로 읽기만 하면 되므로 매우 빠르게 동작한다. 
# 데이터베이스는 이 과정에서 filesort 라는 별도의 정렬 작업을 생략할 수 있게 된다.
# 여기서 filesort 라는 이름만 보고 파일 시스템을 사용한다고 오해하면 안 된다.
# 실제로는 메모리나 디스크를 사용해 정렬하는 내부 프로세스를 의미한다. 
# 우리의 목표는 바로 이 비효율적인 filesort 를 피하는 것이다.

EXPLAIN SELECT * FROM items ORDER BY stock_quantity;

EXPLAIN SELECT * FROM items WHERE price BETWEEN 50000 AND 100000;

# 인덱스를 역방향으로 조회하는 경우
# 단일 컬럼 인덱스에서는 filesort 없이 효율적인 처리가 가능하다.
# 데이터베이스 옵티마이저는 인덱스를 거꾸로 읽는, 즉 역방향 스캔(Backward Index Scan)을 할 수 있기 때문이다.
EXPLAIN SELECT * FROM items WHERE price BETWEEN 50000 AND 100000 ORDER BY price DESC;

# 내림차순 인덱스(Descending Index)
# 역방향 스캔은 효율적이지만, 정렬 방향과 일치하는 인덱스를 직접 만들어 줄 수도 있다.
# MySQL 8.0 버전부터는 내림차순 인덱스(Descending Index) 생성을 정식으로 지원한다.
# 데이터 자체를 처음부터 내림차순으로 정렬하여 저장하는 인덱스이다.
SHOW INDEX FROM items;
DROP INDEX idx_items_price ON items;
CREATE INDEX idx_items_price ON items(price DESC);
SELECT * FROM items WHERE price BETWEEN 50000 AND 100000;
