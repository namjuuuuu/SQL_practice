/* 문제: 조건에 맞는 도서 리스트 출력하기
플랫폼: PROGRAMMERS

학습내용
- SELECT 
- WHERE
- TO_CHAR()

- TO_CHAR(값, '출력형식'): 날짜나 숫자를 형식을 갖춰 문자열로 바꾸는 함수
- WHERE절에는 참/거짓을 판단할 수 있는 조건이 들어가야 한다. 

풀이
1. 무엇을 출력하는가? 도서 ID와 출판일
2. 어떤 테이블에서 가져오는가? BOOK 테이블
3. 어떤 조건으로 가져오는가? 
   - 출판일이 2021년인 도서만 가져오기 -> TO_CHAR(PUBLISHED_DATE, 'YYYY') = '2021'
   - 출판일을 'YYYY-MM-DD' 형식으로 바꾸기 -> TO_CHAR(PUBLISHED_DATE, 'YYYY-MM-DD')
4. 어떤 순서로 나열하는가? 출판일 기준 오름차순 정렬
*/

SELECT BOOK_ID, TO_CHAR(PUBLISHED_DATE, 'YYYY-MM-DD') AS PUBLISHED_DATE
FROM BOOK
WHERE TO_CHAR(PUBLISHED_DATE, 'YYYY') = '2021'
ORDER BY PUBLISHED_DATE ASC;
