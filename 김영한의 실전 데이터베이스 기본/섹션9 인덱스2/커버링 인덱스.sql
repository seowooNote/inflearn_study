# 커버링 인덱스(Covering Index)
# 쿼리에 필요한 모든 컬럼을 포함하고 있는 인덱스
EXPLAIN SELECT item_id, price, item_name FROM items WHERE price BETWEEN 50000 AND 100000;
EXPLAIN SELECT item_id, price FROM items WHERE price BETWEEN 50000 AND 100000;

DROP INDEX idx_items_price ON items;
CREATE INDEX idex_items_pirce_name ON items (price, item_name);