/*******************************************
 * data: 2016-12-20
 * auth: Rhaegar
 * desc: System enum type
 *******************************************/
 
IF EXISTS(SELECT NAME FROM SYSOBJECTS WHERE NAME = 'CM_SysEnumType')
DROP TABLE CM_SysEnumType
GO

CREATE TABLE CM_SysEnumType
(
	[TYPE_ID] INT PRIMARY KEY NOT NULL
	,[TYPE_NAME] NVARCHAR(20) NOT NULL
	,[CREATE_DATE] DATETIME NOT NULL
	,[COMMENT] NVARCHAR(200) NULL
	,[ENABLED] BIT NOT NULL DEFAULT 1
)

--User level
INSERT INTO CM_SysEnumType([TYPE_ID],[TYPE_NAME],CREATE_DATE,COMMENT,[ENABLED])VALUES(1,N'��Ա�ȼ�',GETDATE(),N'����Ա�ȼ�',1)

--Balance type
INSERT INTO CM_SysEnumType([TYPE_ID],[TYPE_NAME],CREATE_DATE,COMMENT,[ENABLED])VALUES(2,N'���㷽ʽ',GETDATE(),N'�����㷽ʽ',1)