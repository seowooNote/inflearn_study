SELECT * FROM items
WHERE category >= '패션' AND price = 20000;

CREATE INDEX idx_item_price_category_temp ON items (price, category);

EXPLAIN SELECT * FROM items
WHERE category >= '패션' AND price = 20000;

DROP INDEX idx_item_price_category_temp ON items;

# MySQL 옵티마이저는 IN (...) 을 하나의 큰 범위로 취급하지 않고, 여러 개의 동등 비교(=) 조건의 묶음으로 인식한다.
EXPLAIN SELECT * FROM items
WHERE category IN ('패션', '헬스/뷰티') AND price = 20000;