
CREATE DATABASE [Recruitment]
GO
USE [Recruitment]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 6/14/2013 7:58:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[Admin_Id] [int] IDENTITY(1,1) NOT NULL,
	[Admin_FullName] [nvarchar](50) NULL,
	[Admin_Account] [nvarchar](50) NULL,
	[Admin_Password] [nvarchar](200) NULL,
	[Admin_Role] [nchar](10) NULL,
	[Admin_Status] [bit] NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[Admin_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Applicant]    Script Date: 6/14/2013 7:58:14 AM ******/
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
	[Skill] [ntext] NULL,
	[PositionApply] [nvarchar](50) NULL,
	[certificate] [ntext] NULL,
	[suggestSalary] [nvarchar](50) NULL,
	[Applicant_Address] [nvarchar](50) NULL,
	[Applicant_IP] [nvarchar](50) NULL,
	[Applicant_Desription] [ntext] NULL,
	[Applicant_DateRegister] [nvarchar](50) NULL,
	[Applicant_Admin_Accept] [nchar](10) NULL,
	[Applicant_Result] [nchar](10) NULL,
	[Applicant_Client_Confirm] [nchar](10) NULL,
 CONSTRAINT [PK_Applicant] PRIMARY KEY CLUSTERED 
(
	[Applicant_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Interview]    Script Date: 6/14/2013 7:58:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Interview](
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
/****** Object:  Table [dbo].[Schedule]    Script Date: 6/14/2013 7:58:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Schedule](
	[Schedule_Id] [int] IDENTITY(1,1) NOT NULL,
	[DateTime_Create] [nvarchar](50) NULL,
	[Schedule_Date] [nvarchar](50) NULL,
 CONSTRAINT [PK_Schedule] PRIMARY KEY CLUSTERED 
(
	[Schedule_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Vacancys]    Script Date: 6/14/2013 7:58:14 AM ******/
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
	[Vacancy_Skill] [nvarchar](200) NULL,
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
	[Admin_Id] [int] NULL,
 CONSTRAINT [PK_Vacancys] PRIMARY KEY CLUSTERED 
(
	[Vacancy_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Admin] ON 

INSERT [dbo].[Admin] ([Admin_Id], [Admin_FullName], [Admin_Account], [Admin_Password], [Admin_Role], [Admin_Status]) VALUES (1, N'Nguyen Admin', N'Admin', N'123456', N'Admin     ', 1)
INSERT [dbo].[Admin] ([Admin_Id], [Admin_FullName], [Admin_Account], [Admin_Password], [Admin_Role], [Admin_Status]) VALUES (2, N'Anne Dodsworth', N'Inter1', N'123456', N'Interview ', 1)
INSERT [dbo].[Admin] ([Admin_Id], [Admin_FullName], [Admin_Account], [Admin_Password], [Admin_Role], [Admin_Status]) VALUES (3, N'Margaret Peacock', N'Inter2', N'123456', N'Interview ', 1)
SET IDENTITY_INSERT [dbo].[Admin] OFF
SET IDENTITY_INSERT [dbo].[Applicant] ON 

INSERT [dbo].[Applicant] ([Applicant_Id], [Vacancy_Id], [Applicant_FullName], [Applicant_FoneNumber], [Applicant_Email], [Skill], [PositionApply], [certificate], [suggestSalary], [Applicant_Address], [Applicant_IP], [Applicant_Desription], [Applicant_DateRegister], [Applicant_Admin_Accept], [Applicant_Result], [Applicant_Client_Confirm]) VALUES (3073, 2019, N'Đinh Ngọc Hưng', N'0192019201', N'fchienvuhoang@gmail.com', N'PHP, JQUERY', N'Nhân Viên', N'FPT - APTECH', N'300$', N'Hà Nội', NULL, NULL, NULL, N'false     ', NULL, N'false     ')
INSERT [dbo].[Applicant] ([Applicant_Id], [Vacancy_Id], [Applicant_FullName], [Applicant_FoneNumber], [Applicant_Email], [Skill], [PositionApply], [certificate], [suggestSalary], [Applicant_Address], [Applicant_IP], [Applicant_Desription], [Applicant_DateRegister], [Applicant_Admin_Accept], [Applicant_Result], [Applicant_Client_Confirm]) VALUES (3076, 2026, N'People A', N'0912134567', N'fchienvuhoang@gmail.com', N'Empty', N'Empty', N'Empty', N'600$', N'Ha Noi', NULL, NULL, NULL, N'true      ', N'Bad       ', N'true      ')
INSERT [dbo].[Applicant] ([Applicant_Id], [Vacancy_Id], [Applicant_FullName], [Applicant_FoneNumber], [Applicant_Email], [Skill], [PositionApply], [certificate], [suggestSalary], [Applicant_Address], [Applicant_IP], [Applicant_Desription], [Applicant_DateRegister], [Applicant_Admin_Accept], [Applicant_Result], [Applicant_Client_Confirm]) VALUES (3079, 2026, N'People B', N'23452345', N'oep@gmail.com', N'Empty ', N'Empty ', N'Empty ', N' 800$', N'Ha Noi', NULL, NULL, NULL, N'false     ', NULL, N'true      ')
INSERT [dbo].[Applicant] ([Applicant_Id], [Vacancy_Id], [Applicant_FullName], [Applicant_FoneNumber], [Applicant_Email], [Skill], [PositionApply], [certificate], [suggestSalary], [Applicant_Address], [Applicant_IP], [Applicant_Desription], [Applicant_DateRegister], [Applicant_Admin_Accept], [Applicant_Result], [Applicant_Client_Confirm]) VALUES (3082, 2026, N'People 3', N'23452345435', N'peole@gmail.com', N'empty', N'empty', N'empty', N'400$', N'HN', NULL, NULL, NULL, N'false     ', NULL, N'true      ')
INSERT [dbo].[Applicant] ([Applicant_Id], [Vacancy_Id], [Applicant_FullName], [Applicant_FoneNumber], [Applicant_Email], [Skill], [PositionApply], [certificate], [suggestSalary], [Applicant_Address], [Applicant_IP], [Applicant_Desription], [Applicant_DateRegister], [Applicant_Admin_Accept], [Applicant_Result], [Applicant_Client_Confirm]) VALUES (3085, 2026, N'Jimmy Tomes', N'0988236750', N'fchienvuhoang@gmail.com', N'ANGULAR JS, NODEJS, ASP.NET, JQUERY, BACKBONJS, MONGO DB...', N'Development', N'APTECH', N'700$', N'Ha Noi', NULL, NULL, NULL, N'false     ', NULL, N'true      ')
INSERT [dbo].[Applicant] ([Applicant_Id], [Vacancy_Id], [Applicant_FullName], [Applicant_FoneNumber], [Applicant_Email], [Skill], [PositionApply], [certificate], [suggestSalary], [Applicant_Address], [Applicant_IP], [Applicant_Desription], [Applicant_DateRegister], [Applicant_Admin_Accept], [Applicant_Result], [Applicant_Client_Confirm]) VALUES (3088, 2025, N'Applicant 1', N'010201201', N'app@gmail.com', N'asdlfkasjdfl', N'asdfasdf', N'asdfasdfasdf', N'4500$', N'Hn', NULL, NULL, NULL, N'true      ', NULL, N'true      ')
INSERT [dbo].[Applicant] ([Applicant_Id], [Vacancy_Id], [Applicant_FullName], [Applicant_FoneNumber], [Applicant_Email], [Skill], [PositionApply], [certificate], [suggestSalary], [Applicant_Address], [Applicant_IP], [Applicant_Desription], [Applicant_DateRegister], [Applicant_Admin_Accept], [Applicant_Result], [Applicant_Client_Confirm]) VALUES (3091, 2020, N'Chienvu ', N'12010291', N'fchienvuhoang@Gmail.com', N'All skills', N'tong giam doc', N'all cer', N'10000$', N'Ha Noi', NULL, NULL, NULL, N'false     ', NULL, N'true      ')
SET IDENTITY_INSERT [dbo].[Applicant] OFF
SET IDENTITY_INSERT [dbo].[Interview] ON 

INSERT [dbo].[Interview] ([Interviewer_Id], [Schedule_Id], [Interviewer_Status], [Interviewer_Result], [Interviewer_Note]) VALUES (1, NULL, N'WaitingConfirm', N'Not Update', NULL)
INSERT [dbo].[Interview] ([Interviewer_Id], [Schedule_Id], [Interviewer_Status], [Interviewer_Result], [Interviewer_Note]) VALUES (2, NULL, N'WaitingConfirm', N'Not Update', NULL)
INSERT [dbo].[Interview] ([Interviewer_Id], [Schedule_Id], [Interviewer_Status], [Interviewer_Result], [Interviewer_Note]) VALUES (3, NULL, N'WaitingConfirm', N'Not Update', NULL)
INSERT [dbo].[Interview] ([Interviewer_Id], [Schedule_Id], [Interviewer_Status], [Interviewer_Result], [Interviewer_Note]) VALUES (4, NULL, N'Confirmed', N'Not Update', NULL)
INSERT [dbo].[Interview] ([Interviewer_Id], [Schedule_Id], [Interviewer_Status], [Interviewer_Result], [Interviewer_Note]) VALUES (5, NULL, N'Done', N'Good', NULL)
INSERT [dbo].[Interview] ([Interviewer_Id], [Schedule_Id], [Interviewer_Status], [Interviewer_Result], [Interviewer_Note]) VALUES (6, NULL, N'Done', N'Normal', NULL)
INSERT [dbo].[Interview] ([Interviewer_Id], [Schedule_Id], [Interviewer_Status], [Interviewer_Result], [Interviewer_Note]) VALUES (7, NULL, N'Done', N'Bad', NULL)
SET IDENTITY_INSERT [dbo].[Interview] OFF
SET IDENTITY_INSERT [dbo].[Schedule] ON 

INSERT [dbo].[Schedule] ([Schedule_Id], [DateTime_Create], [Schedule_Date]) VALUES (1007, N'6/12/2013 7:09:31 AM', N'6/13/2013 ')
INSERT [dbo].[Schedule] ([Schedule_Id], [DateTime_Create], [Schedule_Date]) VALUES (1008, N'6/12/2013 7:12:29 AM', N'6/7/2013 ')
INSERT [dbo].[Schedule] ([Schedule_Id], [DateTime_Create], [Schedule_Date]) VALUES (1009, N'6/13/2013 3:05:13 AM', N'7/6/2013 ')
SET IDENTITY_INSERT [dbo].[Schedule] OFF
SET IDENTITY_INSERT [dbo].[Vacancys] ON 

INSERT [dbo].[Vacancys] ([Vacancy_Id], [Schedule_Id], [Vacancy_Name], [Vacancy_WorkAddress], [Vacancy_TypeTime], [Vacancy_Salary], [Vacancy_Positions], [Vacancy_NumberPeople], [Vacancy_Skill], [Vacancy_Exp], [Vacancy_Gender], [Vacancy_Age], [Vacancy_Description], [Vacancy_DateStart], [Vacancy_DateEnd], [Vacancy_DateUp], [Vacancy_DateInterViewer], [Vacancy_TimeInterViewer], [Vacancy_Status], [Admin_Id]) VALUES (2019, 1007, N'Lập trình viên php', N'Hà Nội', N'FullTime  ', N'400$', N'Nhân Viên', 30, N'PHP, JQUERY', N'2 Năm', N'Male', N'', N'', N'6/19/2013 ', N'6/20/2013 ', N'6/9/2013 10:35:52 PM', NULL, N'23:00:00', N'Done', 2)
INSERT [dbo].[Vacancys] ([Vacancy_Id], [Schedule_Id], [Vacancy_Name], [Vacancy_WorkAddress], [Vacancy_TypeTime], [Vacancy_Salary], [Vacancy_Positions], [Vacancy_NumberPeople], [Vacancy_Skill], [Vacancy_Exp], [Vacancy_Gender], [Vacancy_Age], [Vacancy_Description], [Vacancy_DateStart], [Vacancy_DateEnd], [Vacancy_DateUp], [Vacancy_DateInterViewer], [Vacancy_TimeInterViewer], [Vacancy_Status], [Admin_Id]) VALUES (2020, 1008, N'Lập trình viên .NET', N'Hà Nội', N'FullTime  ', N'500$', N'Nhân viên', 10, N'MVC 4, AJAX, JQUERY, ANGULARJS, MOLTOLSJS', N'2 Năm', N'Male', N'20 - 40', N'Nothing...', N'6/21/2013 ', N'6/26/2013 ', N'6/13/2013 1:33:12 AM', NULL, N'08:00:00', N'Waiting', 2)
INSERT [dbo].[Vacancys] ([Vacancy_Id], [Schedule_Id], [Vacancy_Name], [Vacancy_WorkAddress], [Vacancy_TypeTime], [Vacancy_Salary], [Vacancy_Positions], [Vacancy_NumberPeople], [Vacancy_Skill], [Vacancy_Exp], [Vacancy_Gender], [Vacancy_Age], [Vacancy_Description], [Vacancy_DateStart], [Vacancy_DateEnd], [Vacancy_DateUp], [Vacancy_DateInterViewer], [Vacancy_TimeInterViewer], [Vacancy_Status], [Admin_Id]) VALUES (2021, NULL, N'Lập trình viên NODEJS', N'Hà Nội', N'FullTime  ', N'500$', N'Nhân viên', 10, N'MVC 4, AJAX, JQUERY, ANGULARJS, MOLTOLSJS', N'2 Năm', N'Male', N'20 - 40', N'Nothing...', N'6/21/2013 ', N'6/26/2013 ', N'6/13/2013 1:33:29 AM', NULL, NULL, NULL, NULL)
INSERT [dbo].[Vacancys] ([Vacancy_Id], [Schedule_Id], [Vacancy_Name], [Vacancy_WorkAddress], [Vacancy_TypeTime], [Vacancy_Salary], [Vacancy_Positions], [Vacancy_NumberPeople], [Vacancy_Skill], [Vacancy_Exp], [Vacancy_Gender], [Vacancy_Age], [Vacancy_Description], [Vacancy_DateStart], [Vacancy_DateEnd], [Vacancy_DateUp], [Vacancy_DateInterViewer], [Vacancy_TimeInterViewer], [Vacancy_Status], [Admin_Id]) VALUES (2022, NULL, N'Lập trình viên PYTHON', N'Hà Nội', N'FullTime  ', N'500$', N'Nhân viên', 10, N'MVC 4, AJAX, JQUERY, ANGULARJS, MOLTOLSJS', N'2 Năm', N'Male', N'20 - 40', N'Nothing...', N'6/21/2013 ', N'6/26/2013 ', N'6/13/2013 1:33:44 AM', NULL, NULL, NULL, NULL)
INSERT [dbo].[Vacancys] ([Vacancy_Id], [Schedule_Id], [Vacancy_Name], [Vacancy_WorkAddress], [Vacancy_TypeTime], [Vacancy_Salary], [Vacancy_Positions], [Vacancy_NumberPeople], [Vacancy_Skill], [Vacancy_Exp], [Vacancy_Gender], [Vacancy_Age], [Vacancy_Description], [Vacancy_DateStart], [Vacancy_DateEnd], [Vacancy_DateUp], [Vacancy_DateInterViewer], [Vacancy_TimeInterViewer], [Vacancy_Status], [Admin_Id]) VALUES (2023, NULL, N'Lập trình viên IOS', N'Hà Nội', N'FullTime  ', N'500$', N'Nhân viên', 10, N'MVC 4, AJAX, JQUERY, ANGULARJS, MOLTOLSJS', N'2 Năm', N'Male', N'20 - 40', N'Nothing...', N'6/21/2013 ', N'6/26/2013 ', N'6/13/2013 1:34:01 AM', NULL, NULL, NULL, NULL)
INSERT [dbo].[Vacancys] ([Vacancy_Id], [Schedule_Id], [Vacancy_Name], [Vacancy_WorkAddress], [Vacancy_TypeTime], [Vacancy_Salary], [Vacancy_Positions], [Vacancy_NumberPeople], [Vacancy_Skill], [Vacancy_Exp], [Vacancy_Gender], [Vacancy_Age], [Vacancy_Description], [Vacancy_DateStart], [Vacancy_DateEnd], [Vacancy_DateUp], [Vacancy_DateInterViewer], [Vacancy_TimeInterViewer], [Vacancy_Status], [Admin_Id]) VALUES (2024, NULL, N'Lập trình viên ANDROID', N'Hà Nội', N'FullTime  ', N'500$', N'Nhân viên', 10, N'MVC 4, AJAX, JQUERY, ANGULARJS, MOLTOLSJS', N'2 Năm', N'Male', N'20 - 40', N'Nothing...', N'6/21/2013 ', N'6/26/2013 ', N'6/13/2013 1:34:08 AM', NULL, NULL, NULL, NULL)
INSERT [dbo].[Vacancys] ([Vacancy_Id], [Schedule_Id], [Vacancy_Name], [Vacancy_WorkAddress], [Vacancy_TypeTime], [Vacancy_Salary], [Vacancy_Positions], [Vacancy_NumberPeople], [Vacancy_Skill], [Vacancy_Exp], [Vacancy_Gender], [Vacancy_Age], [Vacancy_Description], [Vacancy_DateStart], [Vacancy_DateEnd], [Vacancy_DateUp], [Vacancy_DateInterViewer], [Vacancy_TimeInterViewer], [Vacancy_Status], [Admin_Id]) VALUES (2025, 1009, N'Lập trình viên ANGULARJS, NODEJS', N'Hà Nội', N'FullTime  ', N'500$', N'Nhân viên', 10, N'MVC 4, AJAX, JQUERY, ANGULARJS, MOLTOLSJS', N'2 Năm', N'Male', N'20 - 40', N'Nothing...', N'6/21/2013 ', N'6/26/2013 ', N'6/13/2013 1:34:21 AM', NULL, N'10:00:00', N'Waiting', 2)
INSERT [dbo].[Vacancys] ([Vacancy_Id], [Schedule_Id], [Vacancy_Name], [Vacancy_WorkAddress], [Vacancy_TypeTime], [Vacancy_Salary], [Vacancy_Positions], [Vacancy_NumberPeople], [Vacancy_Skill], [Vacancy_Exp], [Vacancy_Gender], [Vacancy_Age], [Vacancy_Description], [Vacancy_DateStart], [Vacancy_DateEnd], [Vacancy_DateUp], [Vacancy_DateInterViewer], [Vacancy_TimeInterViewer], [Vacancy_Status], [Admin_Id]) VALUES (2026, 1007, N'Lập trình viên ARLANG', N'Hà Nội', N'FullTime  ', N'500$', N'Nhân viên', 10, N'MVC 4, AJAX, JQUERY, ANGULARJS, MOLTOLSJS', N'2 Năm', N'Male', N'20 - 40', N'Nothing...', N'6/21/2013 ', N'6/26/2013 ', N'6/13/2013 1:34:29 AM', NULL, N'08:00:00', N'Done', 2)
SET IDENTITY_INSERT [dbo].[Vacancys] OFF
ALTER TABLE [dbo].[Applicant]  WITH CHECK ADD  CONSTRAINT [FK_Applicant_Vacancys] FOREIGN KEY([Vacancy_Id])
REFERENCES [dbo].[Vacancys] ([Vacancy_Id])
GO
ALTER TABLE [dbo].[Applicant] CHECK CONSTRAINT [FK_Applicant_Vacancys]
GO
ALTER TABLE [dbo].[Interview]  WITH CHECK ADD  CONSTRAINT [FK_Interviewer_Schedule] FOREIGN KEY([Schedule_Id])
REFERENCES [dbo].[Schedule] ([Schedule_Id])
GO
ALTER TABLE [dbo].[Interview] CHECK CONSTRAINT [FK_Interviewer_Schedule]
GO
ALTER TABLE [dbo].[Vacancys]  WITH CHECK ADD  CONSTRAINT [FK_Vacancys_Admin] FOREIGN KEY([Admin_Id])
REFERENCES [dbo].[Admin] ([Admin_Id])
GO
ALTER TABLE [dbo].[Vacancys] CHECK CONSTRAINT [FK_Vacancys_Admin]
GO
ALTER TABLE [dbo].[Vacancys]  WITH CHECK ADD  CONSTRAINT [FK_Vacancys_Schedule] FOREIGN KEY([Schedule_Id])
REFERENCES [dbo].[Schedule] ([Schedule_Id])
GO
ALTER TABLE [dbo].[Vacancys] CHECK CONSTRAINT [FK_Vacancys_Schedule]
GO
