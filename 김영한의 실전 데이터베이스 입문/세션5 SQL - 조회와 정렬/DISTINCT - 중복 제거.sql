# 중복 제거(DISTINCT)
SELECT DISTINCT customer_id FROM orders;

# 다중 중복 제거
SELECT DISTINCT customer_id, product_id FROM orders
ORDER BY customer_id, product_id;
