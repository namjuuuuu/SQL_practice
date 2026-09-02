/*
문제: 평균 일일 대여 요금 구하기
플랫폼: Programmers

학습 내용
- SELECT
- WHERE
- AVG()
- ROUND()

풀이
SUV 차량만 선택한 후
DAILY_FEE의 평균값을 계산한다.
*/

SELECT ROUND(AVG(DAILY_FEE)) AS AVERAGE_FEE
FROM CAR_RENTAL_COMPANY_CAR
WHERE CAR_TYPE = 'SUV';