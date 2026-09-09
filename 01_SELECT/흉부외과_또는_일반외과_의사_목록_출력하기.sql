/* 문제: 흉부외과 또는 일반외과 의사 목록 출력하기
플랫폼: Programmers

학습 내용
- SELECT
- FROM
- WHERE
- ORDER BY

풀이
1. 무엇을 출력하는가? 의사의 이름, 의사 ID, 진료과, 고용일자
2. 어떤 테이블에서 가져오는가? doctor 테이블
3. 어떤 조건으로 가져오는가? 진료과가 흉부외과이거나 일반외과
4. 어떤 순서로 나열하는가? 고용일자 내림차순, 이름 오름차순
*/

SELECT DR_NAME, DR_ID, MCDP_CD, HIRE_YMD
FROM DOCTOR
WHERE MCDP_CD = 'CS'
    OR MCDP_CD = 'GS'
ORDER BY HIRE_YMD DESC, DR_NAME ASC;