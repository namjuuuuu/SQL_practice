/* 문제: 과일로 만든 아이스크림 고르기
플랫폼: Programmers

학습 내용
- SELECT
- FROM
- WHERE
- ORDER BY
- JOIN

- SELECT절에서는 AND를 사용하지 않는다.
- FROM절에 두 테이블을 ,로 연결시 카티션 곱이 발생한다. 
- 따라서, 두 테이블을 연결할 때는 두 테이블을 판단하는 기준에 따라 JOIN을 사용해야 한다. 
- 문자열은 따옴표를 사용해야 한다.
- 큰 숫자부터 나열하는 것은 내림차순 DESC정렬이다. 

풀이
1. 무엇을 출력하는가? 아이스크림의 맛(FLAVOR) -> SELECT I.FLAVOR
2. 어떤 테이블에서 가져오는가? ICECREAM_INFO, FIRST_HALF -> FROM ICECREAM_INFO I, FIRST_HALF F
3. 어떤 조건으로 가져오는가?
   - 두 테이블을 연결하는 기준은 맛(FLAVOR) -> I.FLAVOR = F.FLAVOR
   - 총 주문량이 3000 이상인 아이스크림만 가져오기 -> F.TOTAL_ORDER > 3000
   - 과일로 만든 아이스크림만 가져오기 -> I.INGREDIENT_TYPE = 'fruit_based'
4. 어떤 순서로 나열하는가? 총 주문량이 큰 순서대로 나열 -> ORDER BY F.TOTAL_ORDER DESC
*/

SELECT I.FLAVOR
FROM ICECREAM_INFO I, FIRST_HALF F
WHERE 
I.FLAVOR = F.FLAVOR
AND F.TOTAL_ORDER > 3000 
AND I.INGREDIENT_TYPE = 'fruit_based'
ORDER BY F.TOTAL_ORDER DESC;