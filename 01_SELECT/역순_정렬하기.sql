/* 문제: 역순 정렬하기
플랫폼: PROGRAMMERS

학습내용
- SELECT
- FROM
- ORDER BY

풀이
1. 어느 테이블에서 가져오는가? 
2. 어떤 순서로 나열하는가?
3. 어떤 컬럼을 가져오는가?
*/

SELECT NAME, DATETIME
FROM ANIMAL_INS
ORDER BY ANIMAL_ID DESC;