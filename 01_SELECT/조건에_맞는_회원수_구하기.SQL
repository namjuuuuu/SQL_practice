/* 문제: 조건에 맞는 회원수 구하기
플랫폼: PROGRAMMERS

학습 내용
- SELECT
- FROM
- WHERE
- COUNT()
- %는 LIKE와 함께 사용하는 와일드카드
- 날짜형 -> YEAR(), MONTH(), DAY() 함수 사용
- 범위 조건 사용 불가 -> BETWEEN a AND b
*/

SELECT COUNT(*)
FROM USER_INFO
WHERE YEAR(JOINED) = 2021
AND AGE BETWEEN 20 AND 29;