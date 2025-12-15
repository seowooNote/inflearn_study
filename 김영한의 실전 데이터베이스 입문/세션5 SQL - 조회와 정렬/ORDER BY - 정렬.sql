# 정렬 내림차순(DESC)
SELECT * FROM customers ORDER BY join_date DESC;
SELECT * FROM products ORDER BY price DESC;

# 정렬 오름차순(ASC, 생략가능)
SELECT * FROM customers ORDER BY join_date ASC;
SELECT * FROM products ORDER BY price;

# 다중 정렬
SELECT * FROM products ORDER BY stock_quantity DESC, price ASC;