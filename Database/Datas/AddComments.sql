USE [BlogDB]
GO

SET IDENTITY_INSERT [dbo].[Comments] ON

INSERT INTO [dbo].[Comments] ([ID], [ArticleID] ,[CreateDate] ,[CreatedByUserID] ,[Text]) VALUES (1, 1, GETDATE(), 1, 'Asd')
INSERT INTO [dbo].[Comments] ([ID], [ArticleID] ,[CreateDate] ,[CreatedByUserID] ,[Text]) VALUES (2, 1, GETDATE(), 2, 'Qwe')
INSERT INTO [dbo].[Comments] ([ID], [ArticleID] ,[CreateDate] ,[CreatedByUserID] ,[Text]) VALUES (3, 1, GETDATE(), 1, 'Wer')
INSERT INTO [dbo].[Comments] ([ID], [ArticleID] ,[CreateDate] ,[CreatedByUserID] ,[Text]) VALUES (4, 2, GETDATE(), 1, 'Sdf')
INSERT INTO [dbo].[Comments] ([ID], [ArticleID] ,[CreateDate] ,[CreatedByUserID] ,[Text]) VALUES (5, 2, GETDATE(), 2, 'Dfg')
INSERT INTO [dbo].[Comments] ([ID], [ArticleID] ,[CreateDate] ,[CreatedByUserID] ,[Text]) VALUES (6, 4, GETDATE(), 1, 'Yxc')
INSERT INTO [dbo].[Comments] ([ID], [ArticleID] ,[CreateDate] ,[CreatedByUserID] ,[Text]) VALUES (7, 4, GETDATE(), 2, 'Ert')
INSERT INTO [dbo].[Comments] ([ID], [ArticleID] ,[CreateDate] ,[CreatedByUserID] ,[Text]) VALUES (8, 4, GETDATE(), 1, 'Xcv')
INSERT INTO [dbo].[Comments] ([ID], [ArticleID] ,[CreateDate] ,[CreatedByUserID] ,[Text]) VALUES (9, 4, GETDATE(), 2, 'Fgh')
INSERT INTO [dbo].[Comments] ([ID], [ArticleID] ,[CreateDate] ,[CreatedByUserID] ,[Text]) VALUES (10, 4, GETDATE(), 1, 'Vbn')

SET IDENTITY_INSERT [dbo].[Comments] OFF
GO


