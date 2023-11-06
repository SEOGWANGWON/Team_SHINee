--------------------------------------------------------
--  ������ ������ - ������-11��-06-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ALBUM_INFO
--------------------------------------------------------

  CREATE TABLE "SHINEE"."ALBUM_INFO" 
   (	"ALBUM_ID" VARCHAR2(10 BYTE), 
	"ALBUM_NAME" VARCHAR2(100 BYTE), 
	"ALBUM_TYPE" VARCHAR2(50 BYTE), 
	"ARTIST_NAME" VARCHAR2(50 BYTE), 
	"RELEASE_DATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C008425
--------------------------------------------------------

  CREATE UNIQUE INDEX "SHINEE"."SYS_C008425" ON "SHINEE"."ALBUM_INFO" ("ALBUM_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table ALBUM_INFO
--------------------------------------------------------

  ALTER TABLE "SHINEE"."ALBUM_INFO" MODIFY ("ALBUM_ID" NOT NULL ENABLE);
  ALTER TABLE "SHINEE"."ALBUM_INFO" MODIFY ("ALBUM_NAME" NOT NULL ENABLE);
  ALTER TABLE "SHINEE"."ALBUM_INFO" MODIFY ("ALBUM_TYPE" NOT NULL ENABLE);
  ALTER TABLE "SHINEE"."ALBUM_INFO" MODIFY ("ARTIST_NAME" NOT NULL ENABLE);
  ALTER TABLE "SHINEE"."ALBUM_INFO" MODIFY ("RELEASE_DATE" NOT NULL ENABLE);
  ALTER TABLE "SHINEE"."ALBUM_INFO" ADD PRIMARY KEY ("ALBUM_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;


--------------------------------------------------------
--  ������ ������ - ������-11��-06-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table USER_INFO
--------------------------------------------------------

  CREATE TABLE "SHINEE"."USER_INFO" 
   (	"USER_ID" VARCHAR2(12 BYTE), 
	"USER_NAME" VARCHAR2(15 BYTE), 
	"USER_NICKNAME" VARCHAR2(20 BYTE), 
	"USER_PASSWORD" VARCHAR2(20 BYTE), 
	"EMAIL" VARCHAR2(100 BYTE), 
	"PHONE_NUMBER" VARCHAR2(11 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_ID
--------------------------------------------------------

  CREATE UNIQUE INDEX "SHINEE"."PK_ID" ON "SHINEE"."USER_INFO" ("USER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table USER_INFO
--------------------------------------------------------

  ALTER TABLE "SHINEE"."USER_INFO" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "SHINEE"."USER_INFO" MODIFY ("USER_NAME" NOT NULL ENABLE);
  ALTER TABLE "SHINEE"."USER_INFO" MODIFY ("USER_PASSWORD" NOT NULL ENABLE);
  ALTER TABLE "SHINEE"."USER_INFO" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "SHINEE"."USER_INFO" MODIFY ("PHONE_NUMBER" NOT NULL ENABLE);
  ALTER TABLE "SHINEE"."USER_INFO" ADD CONSTRAINT "PK_ID" PRIMARY KEY ("USER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;


--------------------------------------------------------
--  ������ ������ - ������-11��-06-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table PLAYLIST_SONG
--------------------------------------------------------

  CREATE TABLE "SHINEE"."PLAYLIST_SONG" 
   (	"PLAYLIST_ID" VARCHAR2(20 BYTE), 
	"SONG_ID" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table PLAYLIST_SONG
--------------------------------------------------------

  ALTER TABLE "SHINEE"."PLAYLIST_SONG" MODIFY ("PLAYLIST_ID" NOT NULL ENABLE);
  ALTER TABLE "SHINEE"."PLAYLIST_SONG" MODIFY ("SONG_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table PLAYLIST_SONG
--------------------------------------------------------

  ALTER TABLE "SHINEE"."PLAYLIST_SONG" ADD CONSTRAINT "FK_PLAYLIST_ID" FOREIGN KEY ("PLAYLIST_ID")
	  REFERENCES "SHINEE"."PLAYLIST_INFO" ("PLAYLIST_ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "SHINEE"."PLAYLIST_SONG" ADD CONSTRAINT "FK_SONG_ID" FOREIGN KEY ("SONG_ID")
	  REFERENCES "SHINEE"."MUSIC_INFO" ("SONG_ID") ON DELETE CASCADE ENABLE;


--------------------------------------------------------
--  ������ ������ - ������-11��-06-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table PLAYLIST_INFO
--------------------------------------------------------

  CREATE TABLE "SHINEE"."PLAYLIST_INFO" 
   (	"PLAYLIST_ID" VARCHAR2(20 BYTE), 
	"USER_ID" VARCHAR2(12 BYTE), 
	"PLAYLIST_NAME" VARCHAR2(50 BYTE), 
	"CREATE_DATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C008403
--------------------------------------------------------

  CREATE UNIQUE INDEX "SHINEE"."SYS_C008403" ON "SHINEE"."PLAYLIST_INFO" ("PLAYLIST_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table PLAYLIST_INFO
--------------------------------------------------------

  ALTER TABLE "SHINEE"."PLAYLIST_INFO" MODIFY ("PLAYLIST_ID" NOT NULL ENABLE);
  ALTER TABLE "SHINEE"."PLAYLIST_INFO" MODIFY ("PLAYLIST_NAME" NOT NULL ENABLE);
  ALTER TABLE "SHINEE"."PLAYLIST_INFO" ADD PRIMARY KEY ("PLAYLIST_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PLAYLIST_INFO
--------------------------------------------------------

  ALTER TABLE "SHINEE"."PLAYLIST_INFO" ADD FOREIGN KEY ("USER_ID")
	  REFERENCES "SHINEE"."USER_INFO" ("USER_ID") ENABLE;


--------------------------------------------------------
--  ������ ������ - ������-11��-06-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table MUSIC_INFO
--------------------------------------------------------

  CREATE TABLE "SHINEE"."MUSIC_INFO" 
   (	"SONG_ID" VARCHAR2(10 BYTE), 
	"ALBUM_ID" VARCHAR2(10 BYTE), 
	"SONG_NAME" VARCHAR2(100 BYTE), 
	"ARTIST_NAME" VARCHAR2(50 BYTE), 
	"GENRE" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C008430
--------------------------------------------------------

  CREATE UNIQUE INDEX "SHINEE"."SYS_C008430" ON "SHINEE"."MUSIC_INFO" ("SONG_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table MUSIC_INFO
--------------------------------------------------------

  ALTER TABLE "SHINEE"."MUSIC_INFO" MODIFY ("SONG_ID" NOT NULL ENABLE);
  ALTER TABLE "SHINEE"."MUSIC_INFO" MODIFY ("ALBUM_ID" NOT NULL ENABLE);
  ALTER TABLE "SHINEE"."MUSIC_INFO" MODIFY ("SONG_NAME" NOT NULL ENABLE);
  ALTER TABLE "SHINEE"."MUSIC_INFO" MODIFY ("ARTIST_NAME" NOT NULL ENABLE);
  ALTER TABLE "SHINEE"."MUSIC_INFO" ADD PRIMARY KEY ("SONG_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;


--------------------------------------------------------
--  ������ ������ - ������-11��-06-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table FOLLOW_LIST
--------------------------------------------------------

  CREATE TABLE "SHINEE"."FOLLOW_LIST" 
   (	"FOLLOWER_ID" VARCHAR2(12 BYTE), 
	"FOLLOWING_ID" VARCHAR2(12 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table FOLLOW_LIST
--------------------------------------------------------

  ALTER TABLE "SHINEE"."FOLLOW_LIST" MODIFY ("FOLLOWER_ID" NOT NULL ENABLE);
  ALTER TABLE "SHINEE"."FOLLOW_LIST" MODIFY ("FOLLOWING_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table FOLLOW_LIST
--------------------------------------------------------

  ALTER TABLE "SHINEE"."FOLLOW_LIST" ADD FOREIGN KEY ("FOLLOWER_ID")
	  REFERENCES "SHINEE"."USER_INFO" ("USER_ID") ENABLE;
  ALTER TABLE "SHINEE"."FOLLOW_LIST" ADD FOREIGN KEY ("FOLLOWING_ID")
	  REFERENCES "SHINEE"."USER_INFO" ("USER_ID") ENABLE;


INSERT INTO album_info(album_id, album_name, album_type, artist_name, release_date)
VALUES('08', 'THE SHINee World', '����', 'SHINee', TO_DATE('2008-08-28','YYYY-MM-DD'));

INSERT INTO MUSIC_INFO(song_id, album_id, song_name, artist_name, genre)
VALUES ('08-1','08','��� ���� ��','SHINee','������');
INSERT INTO MUSIC_INFO(song_id, album_id, song_name, artist_name, genre)
VALUES ('08-2','08','��.��.��','SHINee','������');

INSERT INTO playlist_info(playlist_id, user_id, playlist_name, create_date)
VALUES('im2ho-1','im2ho', '����ƾ�����', to_date(sysdate,'yyyy-mm-dd'));

INSERT INTO playlist_info(playlist_id, user_id, playlist_name, create_date)
VALUES('tmddo-1','tmddo', '������ �� ��� ����', to_date(sysdate,'yyyy-mm-dd'));

INSERT INTO playlist_info(playlist_id, user_id, playlist_name, create_date)
VALUES('tjrhkd-1','tjrhkd', '�ΰ����尡���ð�', to_date(sysdate,'yyyy-mm-dd'));

INSERT INTO playlist_info(playlist_id, user_id, playlist_name, create_date)
VALUES('gkdms2710-1','gkdms2710', '������', to_date(sysdate,'yyyy-mm-dd'));

INSERT INTO playlist_song(playlist_id, song_id)
VALUES('im2ho-1','07-1');

ALTER TABLE playlist_song ADD CONSTRAINT playlist_id FOREIGN KEY (playlist_id) REFERENCES playlist_info(playlist_id) ON DELETE CASCADE; 
ALTER TABLE playlist_song ADD CONSTRAINT song_id FOREIGN KEY (song_id) REFERENCES music_info(song_id) ON DELETE CASCADE;