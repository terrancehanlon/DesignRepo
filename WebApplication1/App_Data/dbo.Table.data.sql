SET IDENTITY_INSERT [dbo].[Table] ON
INSERT INTO [dbo].[Table] ([Id], [Title], [Description]) VALUES (1, N'Title ', N'Some Description')
INSERT INTO [dbo].[Table] ([Id], [Title], [Description]) VALUES (2, N'Title 2', N'Next Challenge Description')
SET IDENTITY_INSERT [dbo].[Table] OFF
