-- 사용자 테이블
DROP TABLE USERS;

CREATE TABLE USERS(
	ID 			NUMBER(5)	 	NOT NULL UNIQUE,
	USERNAME 	VARCHAR2(50)	PRIMARY KEY,
	PASSWORD 	VARCHAR2(50)	NOT NULL,
	EMAIL 		VARCHAR2(100) 	NOT NULL,
	NICKNAME 	VARCHAR2(50)	NOT NULL,
	PHONE		VARCHAR2(50),
	CREATE_DATE DATE,
	MODIFY_DATE DATE,
	PERMISSION 	VARCHAR2(5)
);

insert into users values(seq_w3kindergarten_users.nextval,'woongtae','1234','angle2v@naver.com','woongtaeKING','01058125340',sysdate,sysdate,1);
insert into users values(seq_w3kindergarten_users.nextval,'icji','icji','icji@naver.com','inchul','01051526123',sysdate,sysdate,1);



-- 사용자 로그인 로그 테이블(네이버: Procedure 사용하여  자동 기입되도록 설정)
DROP TABLE USER_LOG;
CREATE TABLE USER_LOG(
	ID 				NUMBER(5),
	LOGIN_DATE 		DATE,
	LOGIN_STATUS  	VARCHAR(45),
	LOGIN_TYPE 		VARCHAR(45)
);



-- 게시판 테이블
DROP TABLE BOARD;

CREATE TABLE BOARD(
	BOARD_NO  	NUMBER PRIMARY KEY,
	TITLE  		VARCHAR2(100) NOT NULL,
	CONTENT  	LONG NOT NULL,
	USERNAME 	VARCHAR2(50) NOT NULL,
	CREATE_DATE DATE,
	MODIFY_DATE DATE,
	READ_NUM 	NUMBER,
	CONSTRAINT BOARD_USERNAME_FK FOREIGN KEY (USERNAME) REFERENCES USERS(USERNAME)
);



--댓글
DROP TABLE COMMENTS;

CREATE TABLE COMMENTS(
	COMMENT_NO 			NUMBER(5) 			PRIMARY KEY,
	BOARD_NO   			NUMBER(5),
	USERNAME  			VARCHAR(50),
	COMMENT_REPLY  	  	long,
	CREATE_DATE 		DATE,
	MODIFY_DATE 		DATE,
	CONSTRAINT COMMENTS_BOARD_NO_FK FOREIGN KEY(BOARD_NO) REFERENCES BOARD(BOARD_NO),
	CONSTRAINT COMMENTS_USERNAME_FK FOREIGN KEY(USERNAME) REFERENCES USERS(USERNAME)
);


-- 댓글 답글 테이블?????????
DROP TABLE COMMENTS_REPLY;
CREATE TABLE COMMENTS_REPLY(
	REPLY_NO  		NUMBER(5),
	COMMENT_NO 		NUMBER(5),
	USER_ID	 		VARCHAR(50),
	REPLY_COMMENT 	long,
	CREATE_DATE 	DATE,
	MODIFY_DATE 	DATE	
);

--insert into comments_reply values(1,2,'3',4,sysdate,sysdate);




-- SEQUENCE
DROP SEQUENCE seq_w3kindergarten_users;
CREATE SEQUENCE seq_w3kindergarten_users;

DROP SEQUENCE seq_w3kindergarten_Board;
CREATE SEQUENCE seq_w3kindergarten_Board;
