/* 문제: 아픈 동물 찾기
플랫폼: PROGRAMMERS

학습내용
- SELCT
- FROM
- WHERE
- ORDER BY

풀이
1. 어떤 테이블에서 가져오는가? ANIMAL_INS 테이블
2. 어떤 순서로 나열하는가? 아이디 순
3. 무엇을 출력하는가? 아이디와 이름
4. 어떤 조건으로 가져오는가? 동물 보호소에 들어온 동물 중 아픈 동물 
*/

SELECT ANIMAL_ID, NAME
FROM ANIMAL_INS
WHERE INTAKE_CONDITION = 'Sick'
ORDER BY ANIMAL_ID ASC;