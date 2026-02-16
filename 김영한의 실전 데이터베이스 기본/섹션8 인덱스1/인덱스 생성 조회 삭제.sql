CREATE INDEX idx_items_item_name ON items (item_name);

SHOW INDEX FROM items;
SHOW INDEX FROM sellers;

DROP INDEX idx_items_item_name ON items;

EXPLAIN SELECT * FROM items WHERE item_name = '게이밍 노트북';