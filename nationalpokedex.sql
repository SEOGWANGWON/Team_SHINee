/*
DROP TABLE nationalpokedex; --ORACLE에서는 IF EXISTS 제공하지 않기 때문에 PL/SQL 사용 필요

CREATE TABLE NationalPokedex (
    no NUMBER PRIMARY KEY,
    name VARCHAR2(50), --외래키 추가 방법 설명 필요
    type VARCHAR2(15), --메인타입
    subtype VARCHAR2(15), --서브타입
    base_stats NUMBER --종족값
);

INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(1, '이상해씨', '풀', '독', 318);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(2, '이상해풀', '풀', '독', 405);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(3, '이상해꽃', '풀', '독', 525);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(4, '파이리', '불', NULL , 309);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(5, '리자드', '불', NULL , 405);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(6, '리자몽', '불', '비행', 534);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(7, '꼬부기', '물', NULL, 314);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(8, '어니부기', '물', NULL, 405);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(9, '거북왕', '물', NULL, 530); 
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(152, '치코리타', '풀', NULL, 318);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(153, '베이리프', '풀', NULL, 405);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(154, '메가니움', '풀', NULL, 525);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(155, '브케인', '불', NULL, 309);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(156, '마그케인', '풀', NULL, 405);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(157, '블레이범', '풀', NULL, 534);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(158, '리아코', '물', NULL, 314);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(159, '엘리게이', '물', NULL, 405);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(160, '장크로다일', '물', NULL, 530); 
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(252, '나무지기', '풀', NULL, 310);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(253, '나무돌이', '풀', NULL, 405);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(254, '나무킹', '풀', NULL, 530);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(255, '아차모', '불', NULL, 310);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(256, '영치코', '불', '격투', 405);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(257, '번치코', '불', '격투', 530);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(258, '물짱이', '물', NULL, 310);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(259, '늪짱이', '물', '땅', 405);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(260, '대짱이', '물', '땅', 535);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(387, '모부기', '풀', NULL, 318);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(388, '수풀부기', '풀', NULL, 405);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(389, '토대부기', '풀', '땅', 525);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(390, '불꽃숭이', '불', NULL, 309);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(391, '파이숭이', '물', '격투', 405);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(392, '초염몽', '불', '격투', 534);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(393, '팽도리', '물', NULL, 314);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(394, '팽태자', '물', NULL, 405);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(395, '엠페르트', '물', '강철', 530);

--UPDATE nationalpokedex SET subtype='불꽃' WHERE type='불';

INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(58, '가디', '불꽃', NULL, 350);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(59, '윈디', '불꽃', NULL, 555);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(25, '피카츄', '전기', NULL, 320);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(26, '라이츄', '전기', NULL, 485);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(92, '고오스', '고스트', '독', 310);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(93, '고우스트', '고스트', '독', 405);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(94, '팬텀', '고스트', '독', 500);

INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(104, '탕구리', '땅', NULL, 320);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(105, '텅구리', '땅', NULL, 425); 

INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(446, '먹고자', '노말', NULL, 390);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(143, '잠만보', '노말', NULL, 540); 

INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(144, '프리져', '얼음', '비행', 580);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(145, '썬더', '전기', '비행', 580);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(146, '파이어', '불꽃', '비행', 580);

INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(147, '미뇽', '드래곤', NULL, 300);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(148, '신뇽', '드래곤', NULL, 420);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(149, '망나뇽', '드래곤', '미뇽', 600);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(150, '뮤츠', '에스퍼', NULL, 680);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(151, '뮤', '에스퍼', NULL, 600);


INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(228, '델빌', '악', '불꽃', 330);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(229, '헬가', '악', '불꽃', 500);

INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(243, '라이코', '전기', NULL, 580);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(244, '엔테이', '불꽃', NULL, 580);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(245, '스이쿤', '물', NULL, 580);

INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(371, '아공이', '드래곤', NULL, 300);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(372, '쉘곤', '드래곤', NULL, 420);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(373, '보만다', '드래곤', '비행', 600);

INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(374, '메탕', '강철', '에스퍼', 300);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(375, '메탕구', '강철', '에스퍼', 420);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(376, '메타그로스', '강철', '에스퍼', 600); 

INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(382, '가이오가', '물', NULL, 670);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(383, '그란돈', '땅', NULL, 670);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(384, '레쿠쟈', '드래곤', '비행', 680);

INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(415, '세꿀버리', '벌레', '비행', 244);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(416, '비퀸', '벌레', '비행', 474);    
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(442, '화강돌', '고스트', '악', 485);

INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(443, '딥상어동', '드래곤', '땅', 300);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(444, '한바이트', '드래곤', '땅', 410);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(445, '한카리아스', '드래곤', '땅', 600);

INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(447, '리오르', '격투', NULL, 285);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(448, '루카리오', '격투', '강철', 525);

INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(483, '디아루가', '강철', '드래곤', 680);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(484, '펄기아', '물', '드래곤', 680);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(486, '레지기가스', '드래곤', NULL, 670);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(487, '기라티나', '드래곤', NULL, 680);

INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(491, '다크라이', '악', NULL, 600);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(493, '아르세우스', '노말', NULL, 720);

INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(215, '포푸니', '악', '얼음', 430);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(461, '포푸니라', '악', '얼음', 510);

INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(403, '꼬링크', '전기', NULL, 263);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(404, '럭시오', '전기', NULL, 363);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(405, '렌트라', '전기', NULL, 364);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(131, '라프라스', '물', '얼음', 535);

INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(436, '동미러', '강철', '에스퍼', 300);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(437, '동탁군', '강철', '에스퍼', 500);

INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(453, '삐딱구리', '독', '격투', 300);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(454, '독개굴', '독', '격투', 490);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(470, '리피아', '풀', NULL, 525);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(471, '글레이시아', '얼음', NULL, 525);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(361, '눈꼬마', '얼음', NULL, 300);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(362, '얼음귀신', '얼음', NULL, 480);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(478, '눈여아', '얼음', '고스트', 480);

INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(408, '두개도스', '바위', NULL, 350);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(409, '램펄드', '바위', NULL, 495);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(410, '방패톱스', '바위', '강철', 350);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(411, '바리톱스', '바위', '강철', 495);

INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(449, '히포포타스', '땅', NULL, 330);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(450, '하마돈', '땅', NULL, 525);

INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(343, '오뚝군', '땅', '에스퍼', 300);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(344, '점토도리', '땅', '에스퍼', 500);

INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(220, '꾸꾸리', '얼음', '땅', 250);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(221, '메꾸리', '얼음', '땅', 450);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(473, '맘모꾸리', '얼음', '땅', 530);

INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(216, '깜지곰', '노말', NULL, 330);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(217, '링곰', '노말', NULL, 500);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(123, '스라크', '벌레', '비행', 500);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(212, '핫삼', '벌레', '강철', 500);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(241, '밀탱크', '노말', NULL, 490);

INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(246, '에버라스', '바위', '땅', 300);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(247, '데기라스', '바위', '땅', 410);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(248, '마기라스', '바위', '악', 600);

INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(63, '케이시', '에스퍼', NULL, 310);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(64, '윤겔라', '에스퍼', NULL, 400);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(65, '후딘', '에스퍼', NULL, 500);


INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(52, '나옹', '노말', NULL, 290);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(53, '페르시안', '노말', NULL, 440);

INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(83, '파오리', '노말', '비행', 377);    

INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(236, '배루키', '격투', NULL, 210);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(106, '시라소몬', '격투', NULL, 455);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(107, '홍수몬', '격투', NULL, 455);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(237, '카포에라', '격투', NULL, 455);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(41, '주뱃', '독', '비행', 245);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(42, '골뱃', '독', '비행', 455);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(169, '크로뱃', '독', '비행', 535);

INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(249, '루기아', '에스퍼', '비행', 680);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(250, '칠색조', '불꽃', '비행', 680);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(425, '흔들풍손', '고스트', '비행', 348);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(426, '둥실라이드', '고스트',  '비행', 498);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(434, '스컹뿡', '독', '악', 329);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(435, '스컹탱크', '독', '악', 479);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(431, '나옹마', '노말', NULL, 310);
INSERT INTO nationalpokedex(no, name, type, subtype, base_stats)
VALUES(432, '몬냥이', '노말', NULL, 452);
*/

SELECT type, COUNT(type) FROM nationalpokedex GROUP BY type;

SELECT * FROM nationalpokedex WHERE base_stats > 500
ORDER BY base_stats DESC;

