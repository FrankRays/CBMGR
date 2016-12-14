/*******************************************
 * data: 2016-12-10
 * auth: Rhaegar
 * desc: Game information table
 *******************************************/
 IF EXISTS(SELECT NAME FROM SYSOBJECTS WHERE NAME='CBMG_TB_GameInfo')
 DROP TABLE CBMG_TB_GameInfo
 GO
 
 CREATE TABLE CBMG_TB_GameInfo
 (
 	[GAME_ID] VARCHAR(50) PRIMARY KEY NOT NULL
 	,[GAME_TITLE] NVARCHAR(20) NOT NULL
 	,[CREATOR_ID] VARCHAR(50) NOT NULL
 	,[BEGIN_DATE] DATETIME NOT NULL
 	,[END_DATE] DATETIME NOT NULL
 	,[LOCK_DATE] DATETIME NOT NULL
 	,[GROUND_COUNT] INT NOT NULL
 	,[PERSON_PER_GROUND] INT NOT NULL DEFAULT 6
 	,[BALL_INFO] NVARCHAR(50) NULL
 	,[GAME_STATE] INT NOT NULL
 	,[COMMENT] NVARCHAR(200) NULL
 )