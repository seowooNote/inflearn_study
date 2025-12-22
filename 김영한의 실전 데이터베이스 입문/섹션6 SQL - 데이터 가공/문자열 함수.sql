# 문자열 함수
SELECT name, email FROM customers;

# CONCAT() 함수로 문자열 합치기
SELECT CONCAT(name, email) FROM customers;
SELECT CONCAT(name, ' - ' ,email) FROM customers;
SELECT CONCAT(name, ' (' ,email, ')') AS name_and_email FROM customers;
SELECT CONCAT_WS(' - ', name, email, address) AS customer_details FROM customers;

# UPPER/LOWER 대소문자
SELECT email, UPPER(email) AS upper_email from customers;

# 문자열 길이
# LENGTH() : 문자열의 길이를 바이트 단위로 반환
# CHAR_LENGTH() : 글자 수를 반환
# UTF-8 인코딩 기준 한글은 3바이트
SELECT name, CHAR_LENGTH(name) as char_length, length(name) as byte_length
FROM customers;
