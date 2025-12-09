# 데이터베이스 생성
CREATE DATABASE my_shop;

# 데이터베이스 선택
USE my_shop;

# 테이블 생성
CREATE TABLE sample(
	product_id INT PRIMARY KEY,
    name VARCHAR(100),
    price INT,
    stock_quantity INT,
    release_date DATE
);

# 테이블 구조 확인
DESC sample;

# 현재 서버에 있는 데이터베이스 목록 확인
SHOW DATABASES;

# 현재 데이터베이스에 있는 테이블 목록 확인
SHOW TABLES;

# 테이블 삭제
DROP TABLE sample;

# 데이터베이스 삭제
DROP DATABASE my_shop;