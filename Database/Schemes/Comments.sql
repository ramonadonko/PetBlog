USE [BlogDB]
GO

/****** Object:  Table [dbo].[Comments]    Script Date: 2013.08.10. 12:51:47 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
-- Check if the table already exists
IF (EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'Comments'))
	BEGIN
		PRINT 'ERROR: Comments already exists'
	END
ELSE
	BEGIN
		CREATE TABLE [dbo].[Comments]
		(
			 [ID]				INT				IDENTITY(1,1)	NOT NULL
			,[ArticleID]			INT								NOT NULL
			,[CreateDate]		DATETIME						NOT NULL
			,[CreatedByUserID]	INT								NOT NULL
			,[Text]				NVARCHAR(1024)					NOT NULL
			,CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
			(
				[ID] ASC
			)
			WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
		) 
		ON [PRIMARY]

		ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Articles] FOREIGN KEY([ArticleID])
		REFERENCES [dbo].[Articles] ([ID])

		ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Articles]

		ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Users] FOREIGN KEY([CreatedByUserID])
		REFERENCES [dbo].[Users] ([ID])

		ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Users]
	END
GO

