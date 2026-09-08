/* 문제: 12세 이하인 여자 환자 목록 출력하기
플랫폼: Programmers

학습 내용
- SELECT
- WHERE
- CASE WHEN
- IFNULL()

- SELECT절에서는 IF를 사용하지 않는다.
- WHERE절에는 참/거짓으로 평가되는 조건이 들어가야 한다.
- CASE WHEN
    CASE 
        WHEN 조건1 THEN 결과1
        WHEN 조건2 THEN 결과2
        ELSE 결과3
    END
- IFNULL(컬럼명, 대체값): 컬럼명이 NULL이면 대체값으로 바꿔준다.

풀이
1. 무엇을 출력하는가? 환자 이름, 성별코드, 나이, 전화번호(NULL일시, NONE출력) 
2. 어떤 테이블에서 가져오는가? PATIENT 
3. 어떤 조건으로 가져오는가?
    - 12세 이하인 여자 환자
4. 어떤 순서로 나열하는가? 
    - 나이 기준 내림차순, 
    - 나이가 같으면 환자 이름 기준 오름차순
*/

SELECT PT_NAME, PT_NO, GEND_CD, AGE, 
CASE 
    WHEN TLNO IS NULL  THEN 'NONE'
    WHEN TLNO IS NOT NULL THEN TLNO
    END
FROM PATIENT
WHERE GEND_CD = 'W'
AND AGE <= 12
ORDER BY AGE DESC, PT_NAME ASC


SELECT PT_NAME,
       PT_NO,
       GEND_CD,
       AGE,
       IFNULL(TLNO, 'NONE') AS TLNO
FROM PATIENT
WHERE GEND_CD = 'W'
  AND AGE <= 12
ORDER BY AGE DESC, PT_NAME ASC;