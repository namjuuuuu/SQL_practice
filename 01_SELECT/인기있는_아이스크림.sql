/*
문제: 인기있는 아이스크림
플랫폼: Programmers

학습 내용
- SELECT
- ORDER BY

- ORDER BY COL1 DESC, COL2 ASC: COL1을 내림차순으로 정렬하고, COL1이 동일할 경우 COL2를 오름차순으로 정렬한다. 
- 내림차순은 DESC, 오름차순은 ASC

풀이
1. 아이스크림 맛을 고른다 -> SELECT 
2. 총주문량을 기준으로 내림차순 정렬, 총주문량이 같을 경우 출하 번호 기준으로 오름차순 정렬 -> ORDER BY
*/

SELECT FLAVOR
FROM FIRST_HALF
ORDER BY TOTAL_ORDER DESC, SHIPMENT_ID ASC