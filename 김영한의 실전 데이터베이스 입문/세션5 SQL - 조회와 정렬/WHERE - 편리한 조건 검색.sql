# BETWEEN
SELECT * FROM products 
WHERE price BETWEEN 5000 and 15000;

# NOT BETWEEN
SELECT * FROM products 
WHERE price NOT BETWEEN 5000 and 15000;

# IN
SELECT * FROM products 
WHERE name IN('갤럭시', '아이폰', '에어팟');

# NOT IN
SELECT * FROM products 
WHERE name NOT IN('갤럭시', '아이폰', '에어팟');

# LIKE
SELECT * FROM customers
WHERE email LIKE 'sejong%';

SELECT * FROM customers
WHERE email LIKE '%example.com';

SELECT * FROM customers
where address NOT LIKE '서울특별시%';




