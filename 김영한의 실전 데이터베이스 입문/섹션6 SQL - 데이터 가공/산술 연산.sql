# 산술 연산
USE my_shop;

SELECT name, price, stock_quantity FROM products;

SELECT 
	name, 
	price, 
	stock_quantity, 
	price * stock_quantity AS total_stock_value
FROM products;

SELECT 
	name, 
	price,
    price + 3000 AS expected_price
FROM products;

SELECT 
	name, 
	price,
    price - 1000 AS discounted_price
FROM products;

SELECT 
	name, 
	price,
    price / 10 AS montly_payment
FROM products;


