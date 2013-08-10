USE [BlogDB]
GO

/****** Object:  Table [dbo].[Articles]    Script Date: 2013.08.10. 12:48:50 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- Check if the table already exists
IF (EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'Articles'))
	BEGIN
		PRINT 'ERROR: Articles already exists'
	END
ELSE
	BEGIN

		CREATE TABLE [dbo].[Articles]
		(
			 [ID]				INT				IDENTITY(1,1)	NOT NULL
			,[Title]			NVARCHAR(128)					NOT NULL
			,[CreateDate]		DATETIME						NOT NULL
			,[CreatedByUserID]	INT								NOT NULL
			,[Text]				NVARCHAR(2048)					NOT NULL
			,CONSTRAINT [PK_Articles] PRIMARY KEY CLUSTERED 
			(
				[ID] ASC
			)
			WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
		) 
		ON [PRIMARY]

		ALTER TABLE [dbo].[Articles]  WITH CHECK ADD  CONSTRAINT [FK_Articles_Users] FOREIGN KEY([CreatedByUserID])
		REFERENCES [dbo].[Users] ([ID])

		ALTER TABLE [dbo].[Articles] CHECK CONSTRAINT [FK_Articles_Users]
	END


