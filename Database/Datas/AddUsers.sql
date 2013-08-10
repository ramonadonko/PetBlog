USE [BlogDB]
GO
SET IDENTITY_INSERT [dbo].[Users] ON

INSERT INTO [dbo].[Users] ([ID], [Name]) VALUES (1, 'Ramri')
INSERT INTO [dbo].[Users] ([ID], [Name]) VALUES (2, 'TestUser')

SET IDENTITY_INSERT [dbo].[Users] OFF
GO


