/* 문제: 조건에 부합하는 중고거래 댓글 조회하기
플랫폼: Programmers

학습내용
- SELECT
- FROM
- WHERE
- ORDER BY
- DATE_FORMAT(컬럼, '형식')

- DATE_FORMAT(): 날짜/시간 값을 원하는 문자열 형태로 바꾸는 함수
- DATE_FORMAT(컬럼, '형식')에서 '형식'은 다음과 같은 형식으로 지정할 수 있습니다.
  - %Y: 연도(4자리)
  - %m: 월(2자리)
  - %d: 일(2자리)
  - %H: 시간(24시간 기준, 2자리)
  - %i: 분(2자리)
  - %s: 초(2자리)

  풀이
  1. 어떤 테이블에서 가져오는가? USED_GOODS_BOARD, USED_GOODS_REPLY 테이블
  2. 어떤 순서로 나열하는가? 댓글 작성일 오름차순, 게시글 제목 오름차순
  3. 무엇을 출력하는가? 
  - 2022년 10월에 작성된 게시글 제목, 게시글 ID, 댓글 ID, 댓글 작성자 ID, 댓글내용, 댓글 작성일
  4. 어떤 조건으로 가져오는가?
  - 댓글 작성일이 2022년 10월
  - 두 테이블 을 JOIN하여 게시글 제목과 댓글 정보를 함께 가져오기
*/

  SELECT
    B.TITLE,
    B.BOARD_ID,
    R.REPLY_ID,
    R.WRITER_ID, 
    R.CONTENTS,
    DATE_FORMAT(R.CREATED_DATE, '%Y-%m-%d') AS CREATED_DATE
FROM USED_GOODS_BOARD B, USED_GOODS_REPLY R
WHERE B.BOARD_ID = R.BOARD_ID
    AND DATE_FORMAT(B.CREATED_DATE, '%Y-%m') = '2022-10'
ORDER BY R.CREATED_DATE ASC, B.TITLE ASC;