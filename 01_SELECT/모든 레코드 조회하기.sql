/* 문제: 모든 레코드 조회하기
플랫폼: PROGRAMERS

학습 내용
- SELECT
- FROM
- ORDER BY

- 모든 레코드를 조회할 때는 SELECT * FROM 테이블명; 을 사용한다.

풀이
1. 어느 테이블에서 가져오는가? ANIMAL_INS테이블
2. 어떤 순서로 나열하는가? ANIMAL_ID ASC
3. 무엇을 출력하는가? 동물 보호소에 들어온 모든 동물의 정보
*/

SELECT *
FROM ANIMAL_INS
ORDER BY ANIMAL_ID ASC;