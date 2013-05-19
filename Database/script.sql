USE [Recruitment]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 5/17/2013 7:09:14 PM ******/
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
/****** Object:  Table [dbo].[Applicant]    Script Date: 5/17/2013 7:09:14 PM ******/
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
 CONSTRAINT [PK_Applicant] PRIMARY KEY CLUSTERED 
(
	[Applicant_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Interviewer]    Script Date: 5/17/2013 7:09:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Interviewer](
	[Interviewer_Id] [int] IDENTITY(1,1) NOT NULL,
	[Applicant_Id] [int] NULL,
	[Interviewer_Status] [nvarchar](50) NULL,
	[Interviewer_Result] [nvarchar](50) NULL,
	[Interviewer_Date] [nvarchar](50) NULL,
	[Interviewer_Time] [nvarchar](50) NULL,
	[Interviewer_Note] [ntext] NULL,
 CONSTRAINT [PK_Interviewer] PRIMARY KEY CLUSTERED 
(
	[Interviewer_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Vacancys]    Script Date: 5/17/2013 7:09:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vacancys](
	[Vacancy_Id] [int] IDENTITY(1,1) NOT NULL,
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
	[Vacancy_Status] [nvarchar](50) NULL,
 CONSTRAINT [PK_Vacancys] PRIMARY KEY CLUSTERED 
(
	[Vacancy_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Applicant] ON 

INSERT [dbo].[Applicant] ([Applicant_Id], [Vacancy_Id], [Applicant_FullName], [Applicant_FoneNumber], [Applicant_Email], [Applicant_CVPath], [Applicant_Address], [Applicant_IP], [Applicant_Desription], [Applicant_DateRegister]) VALUES (1, 1, N'Vũ Hoàng Chiến', N'0988236750', N'fchienvuhoang@gmail.com', N'/Upload/CV/Id_NameCV', N'Đông Dư - Gia Lâm - Hà Nội', N'113.911.115.002', N'Nothing', N'17-05-2013')
INSERT [dbo].[Applicant] ([Applicant_Id], [Vacancy_Id], [Applicant_FullName], [Applicant_FoneNumber], [Applicant_Email], [Applicant_CVPath], [Applicant_Address], [Applicant_IP], [Applicant_Desription], [Applicant_DateRegister]) VALUES (4, 1, N'Vũ Hoàng 1', N'0988236750', N'fchienvuhoang@gmail.com', N'/Upload/CV/Id_NameCV', N'Đông Dư - Gia Lâm - Hà Nội', N'113.911.115.002', N'Nothing', N'17-05-2013')
INSERT [dbo].[Applicant] ([Applicant_Id], [Vacancy_Id], [Applicant_FullName], [Applicant_FoneNumber], [Applicant_Email], [Applicant_CVPath], [Applicant_Address], [Applicant_IP], [Applicant_Desription], [Applicant_DateRegister]) VALUES (7, 1, N'Vũ Hoàng 2', N'0988236750', N'fchienvuhoang@gmail.com', N'/Upload/CV/Id_NameCV', N'Đông Dư - Gia Lâm - Hà Nội', N'113.911.115.002', N'Nothing', N'17-05-2013')
INSERT [dbo].[Applicant] ([Applicant_Id], [Vacancy_Id], [Applicant_FullName], [Applicant_FoneNumber], [Applicant_Email], [Applicant_CVPath], [Applicant_Address], [Applicant_IP], [Applicant_Desription], [Applicant_DateRegister]) VALUES (10, 1, N'Vũ Hoàng 3', N'0988236750', N'fchienvuhoang@gmail.com', N'/Upload/CV/Id_NameCV', N'Đông Dư - Gia Lâm - Hà Nội', N'113.911.115.002', N'Nothing', N'17-05-2013')
INSERT [dbo].[Applicant] ([Applicant_Id], [Vacancy_Id], [Applicant_FullName], [Applicant_FoneNumber], [Applicant_Email], [Applicant_CVPath], [Applicant_Address], [Applicant_IP], [Applicant_Desription], [Applicant_DateRegister]) VALUES (13, 1, N'Vũ Hoàng 4', N'0988236750', N'fchienvuhoang@gmail.com', N'/Upload/CV/Id_NameCV', N'Đông Dư - Gia Lâm - Hà Nội', N'113.911.115.002', N'Nothing', N'17-05-2013')
SET IDENTITY_INSERT [dbo].[Applicant] OFF
SET IDENTITY_INSERT [dbo].[Interviewer] ON 

INSERT [dbo].[Interviewer] ([Interviewer_Id], [Applicant_Id], [Interviewer_Status], [Interviewer_Result], [Interviewer_Date], [Interviewer_Time], [Interviewer_Note]) VALUES (1, 1, N'WaitingConfirm', N'Null', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Interviewer] OFF
SET IDENTITY_INSERT [dbo].[Vacancys] ON 

INSERT [dbo].[Vacancys] ([Vacancy_Id], [Vacancy_Name], [Vacancy_WorkAddress], [Vacancy_TypeTime], [Vacancy_Salary], [Vacancy_Positions], [Vacancy_NumberPeople], [Vacancy_Exp], [Vacancy_Gender], [Vacancy_Age], [Vacancy_Description], [Vacancy_DateStart], [Vacancy_DateEnd], [Vacancy_DateUp], [Vacancy_Status]) VALUES (1, N'Tuyển lập trình viên .NET', N'Hà Nội', N'Full Time ', N'500$', N'Nhân viên', 10, N'2 Năm', N'Male', N'22 - 35', N'Nothing', N'15-5-2013', N'30-5-2013', N'14-5-2013', N'true')
INSERT [dbo].[Vacancys] ([Vacancy_Id], [Vacancy_Name], [Vacancy_WorkAddress], [Vacancy_TypeTime], [Vacancy_Salary], [Vacancy_Positions], [Vacancy_NumberPeople], [Vacancy_Exp], [Vacancy_Gender], [Vacancy_Age], [Vacancy_Description], [Vacancy_DateStart], [Vacancy_DateEnd], [Vacancy_DateUp], [Vacancy_Status]) VALUES (2, N'Tuyển lập trình viên PHP', N'Hà Nội', N'Full Time ', N'250$', N'Nhân viên', 20, N'5 Năm', N'Female', N'40 - 77', N'Nothing', N'15-5-2013', N'30-5-2013', N'14-5-2013', N'true')
SET IDENTITY_INSERT [dbo].[Vacancys] OFF
ALTER TABLE [dbo].[Applicant]  WITH CHECK ADD  CONSTRAINT [FK_Applicant_Vacancys] FOREIGN KEY([Vacancy_Id])
REFERENCES [dbo].[Vacancys] ([Vacancy_Id])
GO
ALTER TABLE [dbo].[Applicant] CHECK CONSTRAINT [FK_Applicant_Vacancys]
GO
ALTER TABLE [dbo].[Interviewer]  WITH CHECK ADD  CONSTRAINT [FK_Interviewer_Applicant] FOREIGN KEY([Applicant_Id])
REFERENCES [dbo].[Applicant] ([Applicant_Id])
GO
ALTER TABLE [dbo].[Interviewer] CHECK CONSTRAINT [FK_Interviewer_Applicant]
GO
