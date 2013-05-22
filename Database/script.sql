USE [Recruitment]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 5/23/2013 12:08:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[Admin_Id] [int] IDENTITY(1,1) NOT NULL,
	[Admin_FullName] [nvarchar](50) NULL,
	[Admin_Account] [nvarchar](50) NULL,
	[Admin_Password] [nvarchar](200) NULL,
	[Admin_Status] [bit] NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[Admin_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Applicant]    Script Date: 5/23/2013 12:08:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Applicant](
	[Applicant_Id] [int] IDENTITY(1,3) NOT NULL,
	[Vacancy_Id] [int] NULL,
	[Applicant_FullName] [nvarchar](50) NULL,
	[Applicant_FoneNumber] [nvarchar](50) NULL,
	[Applicant_Email] [nvarchar](50) NULL,
	[Applicant_CVPath] [nvarchar](200) NULL,
	[Applicant_Address] [nvarchar](50) NULL,
	[Applicant_IP] [nvarchar](50) NULL,
	[Applicant_Desription] [ntext] NULL,
	[Applicant_DateRegister] [nvarchar](50) NULL,
	[Applicant_Admin_Accept] [nchar](10) NULL,
	[Applicant_Client_Confirm] [nchar](10) NULL,
 CONSTRAINT [PK_Applicant] PRIMARY KEY CLUSTERED 
(
	[Applicant_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Interviewer]    Script Date: 5/23/2013 12:08:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Interviewer](
	[Interviewer_Id] [int] IDENTITY(1,1) NOT NULL,
	[Schedule_Id] [int] NULL,
	[Interviewer_Status] [nvarchar](50) NULL,
	[Interviewer_Result] [nvarchar](50) NULL,
	[Interviewer_Note] [ntext] NULL,
 CONSTRAINT [PK_Interviewer] PRIMARY KEY CLUSTERED 
(
	[Interviewer_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Schedule]    Script Date: 5/23/2013 12:08:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Schedule](
	[Schedule_Id] [int] IDENTITY(1,1) NOT NULL,
	[DateTime_Create] [nvarchar](50) NULL,
	[Schedule_Date] [nvarchar](50) NULL,
	[Admin_Id] [int] NULL,
 CONSTRAINT [PK_Schedule] PRIMARY KEY CLUSTERED 
(
	[Schedule_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Vacancys]    Script Date: 5/23/2013 12:08:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vacancys](
	[Vacancy_Id] [int] IDENTITY(1,1) NOT NULL,
	[Schedule_Id] [int] NULL,
	[Vacancy_Name] [nvarchar](200) NULL,
	[Vacancy_WorkAddress] [nvarchar](200) NULL,
	[Vacancy_TypeTime] [nchar](10) NULL,
	[Vacancy_Salary] [nvarchar](50) NULL,
	[Vacancy_Positions] [nvarchar](50) NULL,
	[Vacancy_NumberPeople] [int] NULL,
	[Vacancy_Exp] [nvarchar](50) NULL,
	[Vacancy_Gender] [nvarchar](50) NULL,
	[Vacancy_Age] [nvarchar](50) NULL,
	[Vacancy_Description] [ntext] NULL,
	[Vacancy_DateStart] [nvarchar](50) NULL,
	[Vacancy_DateEnd] [nvarchar](50) NULL,
	[Vacancy_DateUp] [nvarchar](50) NULL,
	[Vacancy_DateInterViewer] [nvarchar](50) NULL,
	[Vacancy_TimeInterViewer] [nvarchar](50) NULL,
	[Vacancy_Status] [nvarchar](50) NULL,
 CONSTRAINT [PK_Vacancys] PRIMARY KEY CLUSTERED 
(
	[Vacancy_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Admin] ON 

INSERT [dbo].[Admin] ([Admin_Id], [Admin_FullName], [Admin_Account], [Admin_Password], [Admin_Status]) VALUES (1, N'Nguyen Admin', N'Admin', N'123456', 1)
SET IDENTITY_INSERT [dbo].[Admin] OFF
SET IDENTITY_INSERT [dbo].[Applicant] ON 

INSERT [dbo].[Applicant] ([Applicant_Id], [Vacancy_Id], [Applicant_FullName], [Applicant_FoneNumber], [Applicant_Email], [Applicant_CVPath], [Applicant_Address], [Applicant_IP], [Applicant_Desription], [Applicant_DateRegister], [Applicant_Admin_Accept], [Applicant_Client_Confirm]) VALUES (1, NULL, N'Vũ Hoàng Chiến', N'0988236750', N'fchienvuhoang@gmail.com', N'/Upload/CV/Id_NameCV', N'Đông Dư - Gia Lâm - Hà Nội', N'113.911.115.002', N'Nothing', N'17-05-2013', NULL, NULL)
INSERT [dbo].[Applicant] ([Applicant_Id], [Vacancy_Id], [Applicant_FullName], [Applicant_FoneNumber], [Applicant_Email], [Applicant_CVPath], [Applicant_Address], [Applicant_IP], [Applicant_Desription], [Applicant_DateRegister], [Applicant_Admin_Accept], [Applicant_Client_Confirm]) VALUES (4, NULL, N'Vũ Hoàng 1', N'0988236750', N'fchienvuhoang@gmail.com', N'/Upload/CV/Id_NameCV', N'Đông Dư - Gia Lâm - Hà Nội', N'113.911.115.002', N'Nothing', N'17-05-2013', NULL, NULL)
INSERT [dbo].[Applicant] ([Applicant_Id], [Vacancy_Id], [Applicant_FullName], [Applicant_FoneNumber], [Applicant_Email], [Applicant_CVPath], [Applicant_Address], [Applicant_IP], [Applicant_Desription], [Applicant_DateRegister], [Applicant_Admin_Accept], [Applicant_Client_Confirm]) VALUES (7, NULL, N'Vũ Hoàng 2', N'0988236750', N'fchienvuhoang@gmail.com', N'/Upload/CV/Id_NameCV', N'Đông Dư - Gia Lâm - Hà Nội', N'113.911.115.002', N'Nothing', N'17-05-2013', NULL, NULL)
INSERT [dbo].[Applicant] ([Applicant_Id], [Vacancy_Id], [Applicant_FullName], [Applicant_FoneNumber], [Applicant_Email], [Applicant_CVPath], [Applicant_Address], [Applicant_IP], [Applicant_Desription], [Applicant_DateRegister], [Applicant_Admin_Accept], [Applicant_Client_Confirm]) VALUES (10, NULL, N'Vũ Hoàng 3', N'0988236750', N'fchienvuhoang@gmail.com', N'/Upload/CV/Id_NameCV', N'Đông Dư - Gia Lâm - Hà Nội', N'113.911.115.002', N'Nothing', N'17-05-2013', NULL, NULL)
INSERT [dbo].[Applicant] ([Applicant_Id], [Vacancy_Id], [Applicant_FullName], [Applicant_FoneNumber], [Applicant_Email], [Applicant_CVPath], [Applicant_Address], [Applicant_IP], [Applicant_Desription], [Applicant_DateRegister], [Applicant_Admin_Accept], [Applicant_Client_Confirm]) VALUES (13, NULL, N'Vũ Hoàng 4', N'0988236750', N'fchienvuhoang@gmail.com', N'/Upload/CV/Id_NameCV', N'Đông Dư - Gia Lâm - Hà Nội', N'113.911.115.002', N'Nothing', N'17-05-2013', NULL, NULL)
INSERT [dbo].[Applicant] ([Applicant_Id], [Vacancy_Id], [Applicant_FullName], [Applicant_FoneNumber], [Applicant_Email], [Applicant_CVPath], [Applicant_Address], [Applicant_IP], [Applicant_Desription], [Applicant_DateRegister], [Applicant_Admin_Accept], [Applicant_Client_Confirm]) VALUES (16, NULL, N'Vũ Hoàng 5', N'0988236750', N'fchienvuhoang@gmail.com', N'/Upload/CV/Id_NameCV', N'Đông Dư - Gia Lâm - Hà Nội', N'113.911.115.002', N'Nothing', N'17-05-2013', NULL, NULL)
INSERT [dbo].[Applicant] ([Applicant_Id], [Vacancy_Id], [Applicant_FullName], [Applicant_FoneNumber], [Applicant_Email], [Applicant_CVPath], [Applicant_Address], [Applicant_IP], [Applicant_Desription], [Applicant_DateRegister], [Applicant_Admin_Accept], [Applicant_Client_Confirm]) VALUES (19, NULL, N'Vũ Hoàng 6', N'0988236750', N'fchienvuhoang@gmail.com', N'/Upload/CV/Id_NameCV', N'Đông Dư - Gia Lâm - Hà Nội', N'113.911.115.002', N'Nothing', N'17-05-2013', NULL, NULL)
INSERT [dbo].[Applicant] ([Applicant_Id], [Vacancy_Id], [Applicant_FullName], [Applicant_FoneNumber], [Applicant_Email], [Applicant_CVPath], [Applicant_Address], [Applicant_IP], [Applicant_Desription], [Applicant_DateRegister], [Applicant_Admin_Accept], [Applicant_Client_Confirm]) VALUES (22, NULL, N'Vũ Hoàng 7', N'0988236750', N'fchienvuhoang@gmail.com', N'/Upload/CV/Id_NameCV', N'Đông Dư - Gia Lâm - Hà Nội', N'113.911.115.002', N'Nothing', N'17-05-2013', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Applicant] OFF
SET IDENTITY_INSERT [dbo].[Interviewer] ON 

INSERT [dbo].[Interviewer] ([Interviewer_Id], [Schedule_Id], [Interviewer_Status], [Interviewer_Result], [Interviewer_Note]) VALUES (1, NULL, N'WaitingConfirm', N'Not Update', NULL)
INSERT [dbo].[Interviewer] ([Interviewer_Id], [Schedule_Id], [Interviewer_Status], [Interviewer_Result], [Interviewer_Note]) VALUES (2, NULL, N'WaitingConfirm', N'Not Update', NULL)
INSERT [dbo].[Interviewer] ([Interviewer_Id], [Schedule_Id], [Interviewer_Status], [Interviewer_Result], [Interviewer_Note]) VALUES (3, NULL, N'WaitingConfirm', N'Not Update', NULL)
INSERT [dbo].[Interviewer] ([Interviewer_Id], [Schedule_Id], [Interviewer_Status], [Interviewer_Result], [Interviewer_Note]) VALUES (4, NULL, N'Confirmed', N'Not Update', NULL)
INSERT [dbo].[Interviewer] ([Interviewer_Id], [Schedule_Id], [Interviewer_Status], [Interviewer_Result], [Interviewer_Note]) VALUES (5, NULL, N'Done', N'Good', NULL)
INSERT [dbo].[Interviewer] ([Interviewer_Id], [Schedule_Id], [Interviewer_Status], [Interviewer_Result], [Interviewer_Note]) VALUES (6, NULL, N'Done', N'Normal', NULL)
INSERT [dbo].[Interviewer] ([Interviewer_Id], [Schedule_Id], [Interviewer_Status], [Interviewer_Result], [Interviewer_Note]) VALUES (7, NULL, N'Done', N'Bad', NULL)
SET IDENTITY_INSERT [dbo].[Interviewer] OFF
SET IDENTITY_INSERT [dbo].[Schedule] ON 

INSERT [dbo].[Schedule] ([Schedule_Id], [DateTime_Create], [Schedule_Date], [Admin_Id]) VALUES (1, N'25-05-2013 13:01', N'25-05-2013', 1)
INSERT [dbo].[Schedule] ([Schedule_Id], [DateTime_Create], [Schedule_Date], [Admin_Id]) VALUES (2, N'25-05-2013 13:05', N'27-05-2013', 1)
SET IDENTITY_INSERT [dbo].[Schedule] OFF
SET IDENTITY_INSERT [dbo].[Vacancys] ON 

INSERT [dbo].[Vacancys] ([Vacancy_Id], [Schedule_Id], [Vacancy_Name], [Vacancy_WorkAddress], [Vacancy_TypeTime], [Vacancy_Salary], [Vacancy_Positions], [Vacancy_NumberPeople], [Vacancy_Exp], [Vacancy_Gender], [Vacancy_Age], [Vacancy_Description], [Vacancy_DateStart], [Vacancy_DateEnd], [Vacancy_DateUp], [Vacancy_DateInterViewer], [Vacancy_TimeInterViewer], [Vacancy_Status]) VALUES (1, 1, N'Tuyển lập trình viên .NET', N'Hà Nội', N'Full Time ', N'500$', N'Nhân viên', 10, N'2 Năm', N'Male', N'22 - 35', N'Nothing', N'15-5-2013', N'30-5-2013', N'14-5-2013', NULL, NULL, N'true')
INSERT [dbo].[Vacancys] ([Vacancy_Id], [Schedule_Id], [Vacancy_Name], [Vacancy_WorkAddress], [Vacancy_TypeTime], [Vacancy_Salary], [Vacancy_Positions], [Vacancy_NumberPeople], [Vacancy_Exp], [Vacancy_Gender], [Vacancy_Age], [Vacancy_Description], [Vacancy_DateStart], [Vacancy_DateEnd], [Vacancy_DateUp], [Vacancy_DateInterViewer], [Vacancy_TimeInterViewer], [Vacancy_Status]) VALUES (2, 1, N'Tuyển lập trình viên PHP', N'Hà Nội', N'Full Time ', N'250$', N'Nhân viên', 20, N'5 Năm', N'Female', N'40 - 77', N'Nothing', N'15-5-2013', N'30-5-2013', N'14-5-2013', NULL, NULL, N'true')
INSERT [dbo].[Vacancys] ([Vacancy_Id], [Schedule_Id], [Vacancy_Name], [Vacancy_WorkAddress], [Vacancy_TypeTime], [Vacancy_Salary], [Vacancy_Positions], [Vacancy_NumberPeople], [Vacancy_Exp], [Vacancy_Gender], [Vacancy_Age], [Vacancy_Description], [Vacancy_DateStart], [Vacancy_DateEnd], [Vacancy_DateUp], [Vacancy_DateInterViewer], [Vacancy_TimeInterViewer], [Vacancy_Status]) VALUES (3, 2, N'Tuyển lập trình viên Ruby', N'Hà Nội', N'Full Time ', N'100$', N'Nhân viên', 20, N'5 Năm', N'Female', N'40 - 77', N'Nothing', N'15-5-2013', N'30-5-2013', N'14-5-2013', NULL, NULL, N'true')
SET IDENTITY_INSERT [dbo].[Vacancys] OFF
ALTER TABLE [dbo].[Applicant]  WITH CHECK ADD  CONSTRAINT [FK_Applicant_Vacancys] FOREIGN KEY([Vacancy_Id])
REFERENCES [dbo].[Vacancys] ([Vacancy_Id])
GO
ALTER TABLE [dbo].[Applicant] CHECK CONSTRAINT [FK_Applicant_Vacancys]
GO
ALTER TABLE [dbo].[Interviewer]  WITH CHECK ADD  CONSTRAINT [FK_Interviewer_Schedule] FOREIGN KEY([Schedule_Id])
REFERENCES [dbo].[Schedule] ([Schedule_Id])
GO
ALTER TABLE [dbo].[Interviewer] CHECK CONSTRAINT [FK_Interviewer_Schedule]
GO
ALTER TABLE [dbo].[Schedule]  WITH CHECK ADD  CONSTRAINT [FK_Schedule_Admin] FOREIGN KEY([Admin_Id])
REFERENCES [dbo].[Admin] ([Admin_Id])
GO
ALTER TABLE [dbo].[Schedule] CHECK CONSTRAINT [FK_Schedule_Admin]
GO
ALTER TABLE [dbo].[Vacancys]  WITH CHECK ADD  CONSTRAINT [FK_Vacancys_Schedule] FOREIGN KEY([Schedule_Id])
REFERENCES [dbo].[Schedule] ([Schedule_Id])
GO
ALTER TABLE [dbo].[Vacancys] CHECK CONSTRAINT [FK_Vacancys_Schedule]
GO
