/* 문제: 강원도에 위치한 생산공장 목록 출력하기
플랫폼: PROGRAMMERS

학습내용
- SELECT
- FROM
- WHERE
- ORDER BY
- LIKE

- 컬럼 값에서 특정 문자열을 조회할 때는 LIKE 연산자를 사용합니다.
- LIKE 연산자에서 %는 0개 이상의 임의의 문자열을 의미한다.
- LIKE 연산자에서 _는 1개의 임의의 문자열을 의미한다.

풀이
1. 어떤 테이블에서 가져오는가? FOOD_FACTORY 테이블
2. 무엇을 출력하는가? 식품공장의 공장 ID, 공장 이름, 주소
3. 어떤 순서로 나열하는가? 공장 ID를 기준으로 오름차순
4. 어떤 조건으로 가져오는가? 강원도에 위치한 공장
*/

SELECT
    FACTORY_ID, 
    FACTORY_NAME,
    ADDRESS
FROM FOOD_FACTORY
WHERE ADDRESS LIKE '%강원도%'
ORDER BY FACTORY_ID ASC;