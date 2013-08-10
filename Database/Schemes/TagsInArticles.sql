USE [BlogDB]
GO

/****** Object:  Table [dbo].[TagsInArticles]    Script Date: 2013.08.10. 12:53:03 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
-- Check if the table already exists
IF (EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'TagsInArticles'))
	BEGIN
		PRINT 'ERROR: TagsInArticles already exists'
	END
ELSE
	BEGIN
		CREATE TABLE [dbo].[TagsInArticles]
		(
			 [ArticleID]		INT NOT NULL
			,[TagID]			INT	NOT NULL
			,CONSTRAINT [PK_TagsInArticles] PRIMARY KEY CLUSTERED 
			(
				[ArticleID] ASC,
				[TagID] ASC
			)
			WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
		) 
		ON [PRIMARY]

		ALTER TABLE [dbo].[TagsInArticles]  WITH CHECK ADD  CONSTRAINT [FK_TagsInArticles_Articles] FOREIGN KEY([ArticleID])
		REFERENCES [dbo].[Articles] ([ID])

		ALTER TABLE [dbo].[TagsInArticles] CHECK CONSTRAINT [FK_TagsInArticles_Articles]

		ALTER TABLE [dbo].[TagsInArticles]  WITH CHECK ADD  CONSTRAINT [FK_TagsInArticles_Tags] FOREIGN KEY([TagID])
		REFERENCES [dbo].[Tags] ([ID])

		ALTER TABLE [dbo].[TagsInArticles] CHECK CONSTRAINT [FK_TagsInArticles_Tags]

	END
GO
