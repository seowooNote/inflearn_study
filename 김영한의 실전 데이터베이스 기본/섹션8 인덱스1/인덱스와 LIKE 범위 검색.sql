# LIKE 검색은 % 를 마지막에 사용할 때만 인덱스를 활용할 수 있다.
EXPLAIN SELECT * FROM items WHERE item_name LIKE '게이밍%';
EXPLAIN SELECT * FROM items WHERE item_name LIKE '%게이밍';
EXPLAIN SELECT * FROM items WHERE item_name LIKE '%게이밍%';

# LIKE '%검색어%' 방식은 데이터가 많아질수록 성능이 심각하게 저하되어 실제 서비스에서는 사용하기 어렵다.
# 이런 '내용 검색' 또는 '포함 검색' 문제를 해결하기 위해 데이터베이스는 전문 검색(Full-Text Search)이라는 특수한 기능을 제공한다.
# 전문 검색 인덱스는 B-Tree 인덱스와는 달리, 텍스트를 단어(토큰) 단위로 쪼개서 인덱싱하는 방식이다. 이를 통해 텍스트 중간에 있는 단어도 매우 빠르게 검색할 수 있다.