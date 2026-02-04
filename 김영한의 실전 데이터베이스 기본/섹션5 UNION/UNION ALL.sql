# UNION : 중복 제거
SELECT u.name, u.email
FROM users u
INNER JOIN orders o
ON u.user_id = o.user_id
INNER JOIN products p
ON o.product_id = p.product_id
WHERE p.category = '전자기기'

UNION

SELECT name, email
FROM users
WHERE address LIKE('서울%');

# UNION ALL : 중복 허용
SELECT u.name, u.email
FROM users u
INNER JOIN orders o
ON u.user_id = o.user_id
INNER JOIN products p
ON o.product_id = p.product_id
WHERE p.category = '전자기기'

UNION ALL

SELECT name, email
FROM users
WHERE address LIKE('서울%');

