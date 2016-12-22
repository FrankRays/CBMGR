/*******************************************
 * data: 2016-12-20
 * auth: Rhaegar
 * desc: System enum type
 *******************************************/
 
IF EXISTS(SELECT NAME FROM SYSOBJECTS WHERE NAME = 'CBMGR_TB_SysEnumType')
DROP TABLE CBMGR_TB_SysEnumType
GO

CREATE TABLE CBMGR_TB_SysEnumType
(
	[TYPE_ID] INT PRIMARY KEY NOT NULL
	,[TYPE_NAME] NVARCHAR(20) NOT NULL
	,[CREATE_DATE] DATETIME NOT NULL
	,[COMMENT] NVARCHAR(200) NULL
	,[ENABLED] BIT NOT NULL DEFAULT 1
)

--User level
INSERT INTO CBMGR_TB_SysEnumType([TYPE_ID],[TYPE_NAME],CREATE_DATE,COMMENT,[ENABLED])VALUES(1,N'会员等级',GETDATE(),N'球会成员等级',1)

--Balance type
INSERT INTO CBMGR_TB_SysEnumType([TYPE_ID],[TYPE_NAME],CREATE_DATE,COMMENT,[ENABLED])VALUES(2,N'结算方式',GETDATE(),N'球会结算方式',1)