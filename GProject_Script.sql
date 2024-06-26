USE [db_a97113_gproject8]
GO
/****** Object:  Table [dbo].[Address_Info]    Script Date: 6/1/2023 4:17:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address_Info](
	[ADI_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[ADI_Country] [nvarchar](20) NULL,
	[ADI_City] [nvarchar](20) NULL,
	[ADI_Region] [nvarchar](20) NULL,
	[ADI_PAT_ID] [bigint] NULL,
 CONSTRAINT [PK_Address_Info] PRIMARY KEY CLUSTERED 
(
	[ADI_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Application]    Script Date: 6/1/2023 4:17:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Application](
	[APP_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[APP_DateTime] [datetime] NULL,
	[APP_PAT_ID] [bigint] NULL,
	[APP_ComName] [nvarchar](50) NULL,
	[APP_ComNatID] [char](14) NULL,
	[APP_ComPhone] [nvarchar](11) NULL,
	[APP_COT_ID] [tinyint] NULL,
	[APP_HOS_ID] [int] NULL,
	[APP_Code] [char](12) NULL,
	[APP_IsOpen] [bit] NULL,
 CONSTRAINT [PK_Application] PRIMARY KEY CLUSTERED 
(
	[APP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Companion_Type]    Script Date: 6/1/2023 4:17:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Companion_Type](
	[COT_ID] [tinyint] IDENTITY(1,1) NOT NULL,
	[COT_Type] [nvarchar](20) NULL,
 CONSTRAINT [PK_Companion_Type] PRIMARY KEY CLUSTERED 
(
	[COT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deleted_Tokens]    Script Date: 6/1/2023 4:17:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deleted_Tokens](
	[DTKN_ID] [int] IDENTITY(1,1) NOT NULL,
	[DTKN_Token] [nvarchar](max) NULL,
 CONSTRAINT [PK_Deleted_Tokens] PRIMARY KEY CLUSTERED 
(
	[DTKN_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 6/1/2023 4:17:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[DEP_ID] [int] IDENTITY(1,1) NOT NULL,
	[DEP_Name] [nvarchar](25) NULL,
	[DEP_HOS_ID] [int] NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[DEP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hospital]    Script Date: 6/1/2023 4:17:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hospital](
	[HOS_ID] [int] IDENTITY(1,1) NOT NULL,
	[HOS_Name] [nvarchar](50) NULL,
	[HOS_Address] [nvarchar](50) NULL,
	[HOS_Email] [nvarchar](50) NULL,
 CONSTRAINT [PK_Hospital] PRIMARY KEY CLUSTERED 
(
	[HOS_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hospital_Phone]    Script Date: 6/1/2023 4:17:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hospital_Phone](
	[PHO_ID] [int] IDENTITY(1,1) NOT NULL,
	[PHO_Number] [nvarchar](11) NULL,
	[PHO_HOS_ID] [int] NULL,
 CONSTRAINT [PK_Phone] PRIMARY KEY CLUSTERED 
(
	[PHO_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Message_Type]    Script Date: 6/1/2023 4:17:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Message_Type](
	[MSG_ID] [tinyint] IDENTITY(1,1) NOT NULL,
	[MSG_Type] [nvarchar](10) NULL,
 CONSTRAINT [PK_Message_Type] PRIMARY KEY CLUSTERED 
(
	[MSG_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NoteBlock]    Script Date: 6/1/2023 4:17:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NoteBlock](
	[NOTB_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[NOTB_DateTime] [datetime] NULL,
	[NOTB_APP_ID] [bigint] NULL,
	[NOTB_STF_ID] [int] NULL,
 CONSTRAINT [PK_NoteBlock] PRIMARY KEY CLUSTERED 
(
	[NOTB_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notes]    Script Date: 6/1/2023 4:17:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notes](
	[NOT_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[NOT_Message] [nvarchar](max) NULL,
	[NOT_MSG_ID] [tinyint] NULL,
	[NOT_NOTB_ID] [bigint] NULL,
 CONSTRAINT [PK_Notes] PRIMARY KEY CLUSTERED 
(
	[NOT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Patient]    Script Date: 6/1/2023 4:17:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patient](
	[PAT_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[PAT_Name] [nvarchar](50) NULL,
	[PAT_NatID] [char](14) NULL,
	[PAT_BirthDate] [date] NULL,
	[PAT_Gender] [bit] NULL,
	[PAT_IsMarrid] [bit] NULL,
	[PAT_PNT_ID] [tinyint] NULL,
 CONSTRAINT [PK_Patient] PRIMARY KEY CLUSTERED 
(
	[PAT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Patient_NID_Type]    Script Date: 6/1/2023 4:17:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patient_NID_Type](
	[PNT_ID] [tinyint] IDENTITY(1,1) NOT NULL,
	[PNT_Type] [nvarchar](30) NULL,
 CONSTRAINT [PK_Patient_NID_Type] PRIMARY KEY CLUSTERED 
(
	[PNT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReqB_Status]    Script Date: 6/1/2023 4:17:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReqB_Status](
	[STAT_ID] [tinyint] IDENTITY(1,1) NOT NULL,
	[STAT_Name] [nchar](10) NULL,
 CONSTRAINT [PK_ReqB_Status] PRIMARY KEY CLUSTERED 
(
	[STAT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Requst]    Script Date: 6/1/2023 4:17:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Requst](
	[REQ_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[REQ_Message] [nvarchar](max) NULL,
	[REQ_MSG_ID] [tinyint] NULL,
	[REQ_REQB_ID] [bigint] NULL,
 CONSTRAINT [PK_Requst] PRIMARY KEY CLUSTERED 
(
	[REQ_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RequstBlock]    Script Date: 6/1/2023 4:17:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RequstBlock](
	[REQB_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[REQB_DateTime] [datetime] NULL,
	[REQB_STF_ID] [int] NULL,
	[REQB_DEP_ID] [int] NULL,
	[REQB_APP_ID] [bigint] NULL,
	[REQB_STAT_ID] [tinyint] NULL,
 CONSTRAINT [PK_RequstBlock] PRIMARY KEY CLUSTERED 
(
	[REQB_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Response]    Script Date: 6/1/2023 4:17:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Response](
	[RSP_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[RSP_Message] [nvarchar](max) NULL,
	[RSP_MSG_ID] [tinyint] NULL,
	[RSP_RSPB_ID] [bigint] NULL,
 CONSTRAINT [PK_Response_1] PRIMARY KEY CLUSTERED 
(
	[RSP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ResponseBlock]    Script Date: 6/1/2023 4:17:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResponseBlock](
	[RSPB_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[RSPB_Datetime] [datetime] NULL,
	[RSPB_STF_ID] [int] NULL,
	[RSPB_REQB_ID] [bigint] NULL,
	[RSPB_Result] [bit] NULL,
 CONSTRAINT [PK_Response] PRIMARY KEY CLUSTERED 
(
	[RSPB_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 6/1/2023 4:17:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[STF_ID] [int] IDENTITY(1,1) NOT NULL,
	[STF_Name] [nvarchar](50) NULL,
	[STF_Address] [nvarchar](50) NULL,
	[STF_NatID] [nvarchar](14) NULL,
	[STF_BirthDate] [date] NULL,
	[STF_Gender] [bit] NULL,
	[STF_IsMarrid] [bit] NULL,
	[STF_STT_ID] [int] NULL,
 CONSTRAINT [PK_Staff] PRIMARY KEY CLUSTERED 
(
	[STF_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff_Department]    Script Date: 6/1/2023 4:17:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff_Department](
	[STF_ID] [int] NOT NULL,
	[DEP_ID] [int] NOT NULL,
 CONSTRAINT [PK_Staff_Department] PRIMARY KEY CLUSTERED 
(
	[STF_ID] ASC,
	[DEP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff_Login]    Script Date: 6/1/2023 4:17:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff_Login](
	[SLOG_ID] [int] IDENTITY(1,1) NOT NULL,
	[SLOG_Username] [nvarchar](50) NULL,
	[SLOG_Password] [nvarchar](20) NULL,
	[SLOG_STF_ID] [int] NULL,
 CONSTRAINT [PK_Staff_Login] PRIMARY KEY CLUSTERED 
(
	[SLOG_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff_Type]    Script Date: 6/1/2023 4:17:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff_Type](
	[STT_ID] [int] IDENTITY(1,1) NOT NULL,
	[STT_Type] [nvarchar](20) NULL,
	[STT_HOS_ID] [int] NULL,
 CONSTRAINT [PK_Staff_Type] PRIMARY KEY CLUSTERED 
(
	[STT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tokens]    Script Date: 6/1/2023 4:17:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tokens](
	[TKN_ID] [int] IDENTITY(1,1) NOT NULL,
	[TKN_Token] [nvarchar](max) NULL,
	[TKN_SLOG_ID] [int] NULL,
 CONSTRAINT [PK_Tokens] PRIMARY KEY CLUSTERED 
(
	[TKN_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Address_Info] ON 

INSERT [dbo].[Address_Info] ([ADI_ID], [ADI_Country], [ADI_City], [ADI_Region], [ADI_PAT_ID]) VALUES (21116, NULL, NULL, NULL, NULL)
INSERT [dbo].[Address_Info] ([ADI_ID], [ADI_Country], [ADI_City], [ADI_Region], [ADI_PAT_ID]) VALUES (21122, N'Eqyept', N'BNS', N'BNS', 73)
INSERT [dbo].[Address_Info] ([ADI_ID], [ADI_Country], [ADI_City], [ADI_Region], [ADI_PAT_ID]) VALUES (21124, NULL, NULL, NULL, 75)
INSERT [dbo].[Address_Info] ([ADI_ID], [ADI_Country], [ADI_City], [ADI_Region], [ADI_PAT_ID]) VALUES (21125, NULL, NULL, NULL, 76)
INSERT [dbo].[Address_Info] ([ADI_ID], [ADI_Country], [ADI_City], [ADI_Region], [ADI_PAT_ID]) VALUES (21127, NULL, NULL, NULL, 78)
INSERT [dbo].[Address_Info] ([ADI_ID], [ADI_Country], [ADI_City], [ADI_Region], [ADI_PAT_ID]) VALUES (21132, NULL, NULL, NULL, 83)
INSERT [dbo].[Address_Info] ([ADI_ID], [ADI_Country], [ADI_City], [ADI_Region], [ADI_PAT_ID]) VALUES (21134, N'Eqyept', N'BNS', N'BNS', 85)
INSERT [dbo].[Address_Info] ([ADI_ID], [ADI_Country], [ADI_City], [ADI_Region], [ADI_PAT_ID]) VALUES (21136, N'Eqyept', N'BNS', N'BNS', 87)
INSERT [dbo].[Address_Info] ([ADI_ID], [ADI_Country], [ADI_City], [ADI_Region], [ADI_PAT_ID]) VALUES (21139, NULL, NULL, NULL, 90)
INSERT [dbo].[Address_Info] ([ADI_ID], [ADI_Country], [ADI_City], [ADI_Region], [ADI_PAT_ID]) VALUES (21140, NULL, NULL, NULL, 91)
INSERT [dbo].[Address_Info] ([ADI_ID], [ADI_Country], [ADI_City], [ADI_Region], [ADI_PAT_ID]) VALUES (21141, N'Eqyept', N'BNS', N'Beba', 92)
INSERT [dbo].[Address_Info] ([ADI_ID], [ADI_Country], [ADI_City], [ADI_Region], [ADI_PAT_ID]) VALUES (21142, NULL, NULL, NULL, 93)
INSERT [dbo].[Address_Info] ([ADI_ID], [ADI_Country], [ADI_City], [ADI_Region], [ADI_PAT_ID]) VALUES (21144, N'Eqyept', N'BNS', N'Beba', 95)
INSERT [dbo].[Address_Info] ([ADI_ID], [ADI_Country], [ADI_City], [ADI_Region], [ADI_PAT_ID]) VALUES (21145, NULL, NULL, NULL, 96)
INSERT [dbo].[Address_Info] ([ADI_ID], [ADI_Country], [ADI_City], [ADI_Region], [ADI_PAT_ID]) VALUES (21146, NULL, NULL, NULL, 97)
INSERT [dbo].[Address_Info] ([ADI_ID], [ADI_Country], [ADI_City], [ADI_Region], [ADI_PAT_ID]) VALUES (21147, NULL, NULL, NULL, 98)
INSERT [dbo].[Address_Info] ([ADI_ID], [ADI_Country], [ADI_City], [ADI_Region], [ADI_PAT_ID]) VALUES (21148, NULL, NULL, NULL, 99)
INSERT [dbo].[Address_Info] ([ADI_ID], [ADI_Country], [ADI_City], [ADI_Region], [ADI_PAT_ID]) VALUES (21150, NULL, NULL, NULL, 101)
INSERT [dbo].[Address_Info] ([ADI_ID], [ADI_Country], [ADI_City], [ADI_Region], [ADI_PAT_ID]) VALUES (21151, NULL, NULL, NULL, 102)
INSERT [dbo].[Address_Info] ([ADI_ID], [ADI_Country], [ADI_City], [ADI_Region], [ADI_PAT_ID]) VALUES (21152, NULL, NULL, NULL, 103)
INSERT [dbo].[Address_Info] ([ADI_ID], [ADI_Country], [ADI_City], [ADI_Region], [ADI_PAT_ID]) VALUES (21153, NULL, NULL, NULL, 104)
INSERT [dbo].[Address_Info] ([ADI_ID], [ADI_Country], [ADI_City], [ADI_Region], [ADI_PAT_ID]) VALUES (21154, N'Eqyept', N'BNS', N'Beba', 105)
INSERT [dbo].[Address_Info] ([ADI_ID], [ADI_Country], [ADI_City], [ADI_Region], [ADI_PAT_ID]) VALUES (21155, NULL, NULL, NULL, 106)
INSERT [dbo].[Address_Info] ([ADI_ID], [ADI_Country], [ADI_City], [ADI_Region], [ADI_PAT_ID]) VALUES (21156, NULL, NULL, NULL, 107)
INSERT [dbo].[Address_Info] ([ADI_ID], [ADI_Country], [ADI_City], [ADI_Region], [ADI_PAT_ID]) VALUES (21157, N'Eqyept', N'BNS', N'Beba', 108)
INSERT [dbo].[Address_Info] ([ADI_ID], [ADI_Country], [ADI_City], [ADI_Region], [ADI_PAT_ID]) VALUES (21158, N'مصر', N'بني سويف', N'بني سويف', 109)
INSERT [dbo].[Address_Info] ([ADI_ID], [ADI_Country], [ADI_City], [ADI_Region], [ADI_PAT_ID]) VALUES (21159, N'مصر', N'بني سويف', N'بني سويف', 110)
INSERT [dbo].[Address_Info] ([ADI_ID], [ADI_Country], [ADI_City], [ADI_Region], [ADI_PAT_ID]) VALUES (21161, N'مصر', N'الواسطى', N'الواسطى', 112)
INSERT [dbo].[Address_Info] ([ADI_ID], [ADI_Country], [ADI_City], [ADI_Region], [ADI_PAT_ID]) VALUES (21163, N'مصر', N'سمسطا', N'الواسطى', 114)
INSERT [dbo].[Address_Info] ([ADI_ID], [ADI_Country], [ADI_City], [ADI_Region], [ADI_PAT_ID]) VALUES (21164, N'مصر', N'بني سويف', N'بني سويف', 115)
INSERT [dbo].[Address_Info] ([ADI_ID], [ADI_Country], [ADI_City], [ADI_Region], [ADI_PAT_ID]) VALUES (21166, N'مصر', N'الفيوم', N'وادي الريان', 117)
INSERT [dbo].[Address_Info] ([ADI_ID], [ADI_Country], [ADI_City], [ADI_Region], [ADI_PAT_ID]) VALUES (21167, N'مصر', N'المنيا', N'المنيا', 118)
INSERT [dbo].[Address_Info] ([ADI_ID], [ADI_Country], [ADI_City], [ADI_Region], [ADI_PAT_ID]) VALUES (21168, N'مصر', N'سمسطا', N'بني سويف', 119)
INSERT [dbo].[Address_Info] ([ADI_ID], [ADI_Country], [ADI_City], [ADI_Region], [ADI_PAT_ID]) VALUES (21169, N'مصر', N'بنى سويف', N'ممم', 120)
INSERT [dbo].[Address_Info] ([ADI_ID], [ADI_Country], [ADI_City], [ADI_Region], [ADI_PAT_ID]) VALUES (21170, N'lwv', N'smx', N'zxmc z', 121)
SET IDENTITY_INSERT [dbo].[Address_Info] OFF
GO
SET IDENTITY_INSERT [dbo].[Application] ON 

INSERT [dbo].[Application] ([APP_ID], [APP_DateTime], [APP_PAT_ID], [APP_ComName], [APP_ComNatID], [APP_ComPhone], [APP_COT_ID], [APP_HOS_ID], [APP_Code], [APP_IsOpen]) VALUES (100, CAST(N'2023-04-27T16:17:18.407' AS DateTime), 102, N'محمد', N'14725836910   ', N'01223654789', 1, 2, N'022304270000', 1)
INSERT [dbo].[Application] ([APP_ID], [APP_DateTime], [APP_PAT_ID], [APP_ComName], [APP_ComNatID], [APP_ComPhone], [APP_COT_ID], [APP_HOS_ID], [APP_Code], [APP_IsOpen]) VALUES (101, CAST(N'2023-04-27T16:34:42.323' AS DateTime), 102, N'Mayar test', N'123456        ', N'01223654789', 1, 2, N'022304270001', 1)
INSERT [dbo].[Application] ([APP_ID], [APP_DateTime], [APP_PAT_ID], [APP_ComName], [APP_ComNatID], [APP_ComPhone], [APP_COT_ID], [APP_HOS_ID], [APP_Code], [APP_IsOpen]) VALUES (102, CAST(N'2023-04-27T17:36:28.437' AS DateTime), 102, N'Mayar test', N'123456        ', N'01223654789', 1, 2, N'022304270002', 1)
INSERT [dbo].[Application] ([APP_ID], [APP_DateTime], [APP_PAT_ID], [APP_ComName], [APP_ComNatID], [APP_ComPhone], [APP_COT_ID], [APP_HOS_ID], [APP_Code], [APP_IsOpen]) VALUES (104, CAST(N'2023-04-27T18:53:49.620' AS DateTime), 105, N'Mostafa', N'2             ', N'01206731899', 2, 2, N'022304270003', 1)
INSERT [dbo].[Application] ([APP_ID], [APP_DateTime], [APP_PAT_ID], [APP_ComName], [APP_ComNatID], [APP_ComPhone], [APP_COT_ID], [APP_HOS_ID], [APP_Code], [APP_IsOpen]) VALUES (105, CAST(N'2023-04-27T19:09:12.470' AS DateTime), 106, N'امجد', N'3010254477896 ', N'01223654789', 1, 2, N'022304270004', 1)
INSERT [dbo].[Application] ([APP_ID], [APP_DateTime], [APP_PAT_ID], [APP_ComName], [APP_ComNatID], [APP_ComPhone], [APP_COT_ID], [APP_HOS_ID], [APP_Code], [APP_IsOpen]) VALUES (106, CAST(N'2023-04-27T19:15:11.747' AS DateTime), 107, N'محمد', N'3010254477896 ', N'01223654789', 2, 2, N'022304270005', 1)
INSERT [dbo].[Application] ([APP_ID], [APP_DateTime], [APP_PAT_ID], [APP_ComName], [APP_ComNatID], [APP_ComPhone], [APP_COT_ID], [APP_HOS_ID], [APP_Code], [APP_IsOpen]) VALUES (107, CAST(N'2023-04-27T19:34:23.693' AS DateTime), 109, N'محمد', N'3010254477896 ', N'01223654789', 1, 2, N'022304270006', 1)
INSERT [dbo].[Application] ([APP_ID], [APP_DateTime], [APP_PAT_ID], [APP_ComName], [APP_ComNatID], [APP_ComPhone], [APP_COT_ID], [APP_HOS_ID], [APP_Code], [APP_IsOpen]) VALUES (109, CAST(N'2023-04-29T16:47:54.417' AS DateTime), 112, N'محمد', N'3010254477896 ', N'01223654789', 1, 2, N'022304290000', 1)
INSERT [dbo].[Application] ([APP_ID], [APP_DateTime], [APP_PAT_ID], [APP_ComName], [APP_ComNatID], [APP_ComPhone], [APP_COT_ID], [APP_HOS_ID], [APP_Code], [APP_IsOpen]) VALUES (110, CAST(N'2023-04-29T16:49:55.823' AS DateTime), 110, N'امجد', N'3010254477896 ', N'01223654789', 2, 2, N'022304290001', 1)
INSERT [dbo].[Application] ([APP_ID], [APP_DateTime], [APP_PAT_ID], [APP_ComName], [APP_ComNatID], [APP_ComPhone], [APP_COT_ID], [APP_HOS_ID], [APP_Code], [APP_IsOpen]) VALUES (112, CAST(N'2023-05-03T17:59:05.760' AS DateTime), 114, N'محمد', N'3010254477896 ', N'01223654789', 1, 2, N'022305030000', 1)
INSERT [dbo].[Application] ([APP_ID], [APP_DateTime], [APP_PAT_ID], [APP_ComName], [APP_ComNatID], [APP_ComPhone], [APP_COT_ID], [APP_HOS_ID], [APP_Code], [APP_IsOpen]) VALUES (115, CAST(N'2023-05-06T09:50:02.357' AS DateTime), 117, N'محمد', N'3010254477896 ', N'01223654789', 1, 3, N'032305060000', 1)
INSERT [dbo].[Application] ([APP_ID], [APP_DateTime], [APP_PAT_ID], [APP_ComName], [APP_ComNatID], [APP_ComPhone], [APP_COT_ID], [APP_HOS_ID], [APP_Code], [APP_IsOpen]) VALUES (117, CAST(N'2023-05-06T10:42:19.210' AS DateTime), 118, N'امجد', N'3010254477896 ', N'01223654789', 1, 3, N'032305060001', 1)
INSERT [dbo].[Application] ([APP_ID], [APP_DateTime], [APP_PAT_ID], [APP_ComName], [APP_ComNatID], [APP_ComPhone], [APP_COT_ID], [APP_HOS_ID], [APP_Code], [APP_IsOpen]) VALUES (118, CAST(N'2023-05-06T12:51:44.817' AS DateTime), 119, N'محمد', N'3010254477896 ', N'01223654789', 1, 2, N'022305060000', 1)
INSERT [dbo].[Application] ([APP_ID], [APP_DateTime], [APP_PAT_ID], [APP_ComName], [APP_ComNatID], [APP_ComPhone], [APP_COT_ID], [APP_HOS_ID], [APP_Code], [APP_IsOpen]) VALUES (121, CAST(N'2023-05-13T13:49:42.747' AS DateTime), 121, N'ميار', N'281089204719  ', N'01206731899', 2, 2, N'022305130000', 1)
INSERT [dbo].[Application] ([APP_ID], [APP_DateTime], [APP_PAT_ID], [APP_ComName], [APP_ComNatID], [APP_ComPhone], [APP_COT_ID], [APP_HOS_ID], [APP_Code], [APP_IsOpen]) VALUES (122, CAST(N'2023-05-13T13:51:23.560' AS DateTime), 121, N'ميار', N'896785764563  ', N'01206731899', 2, 2, N'022305130001', 1)
INSERT [dbo].[Application] ([APP_ID], [APP_DateTime], [APP_PAT_ID], [APP_ComName], [APP_ComNatID], [APP_ComPhone], [APP_COT_ID], [APP_HOS_ID], [APP_Code], [APP_IsOpen]) VALUES (123, CAST(N'2023-05-13T13:53:50.933' AS DateTime), 121, N'lki', N'896785764563  ', N'01206731899', 2, 2, N'022305130002', 1)
SET IDENTITY_INSERT [dbo].[Application] OFF
GO
SET IDENTITY_INSERT [dbo].[Companion_Type] ON 

INSERT [dbo].[Companion_Type] ([COT_ID], [COT_Type]) VALUES (1, N'قرابة درجة أولى')
INSERT [dbo].[Companion_Type] ([COT_ID], [COT_Type]) VALUES (2, N'قرابة درجة ثانية')
INSERT [dbo].[Companion_Type] ([COT_ID], [COT_Type]) VALUES (3, N'غير ذلك')
SET IDENTITY_INSERT [dbo].[Companion_Type] OFF
GO
SET IDENTITY_INSERT [dbo].[Deleted_Tokens] ON 

INSERT [dbo].[Deleted_Tokens] ([DTKN_ID], [DTKN_Token]) VALUES (1, N'3ZxdWunStlJ1X0uxVlwIkmoy_VHNMlbXv2khCVIpMYZv8SRtg9XBL_Qzs-2NIg-eznlIiKGWJPGMiESgVvtuHkUsNoWS3IZDzi0Cyr4dmPmdpl8KVRbkWJh1Fs0Ffe_36M9IEk5I2s1kG3FWZ84cYB-kOwP_ysM-ubZJevscQyeGJauM7NJ72b0kUJ6HKLfo91dZve6v3NMgHSvVFSleted5hEk4koel7juXsP_M6hywogEh7_avbsz-DRRdSjTj')
INSERT [dbo].[Deleted_Tokens] ([DTKN_ID], [DTKN_Token]) VALUES (2, N'hxoLoxHvKbiNakXuldRBJvcjJM1VUQWoO8BpJzWXLaN_tgI9MGOGNfTQn7Ed85VKyuwzR6f8aoFXzBtQLAT24EvxNLErUiqmwMEG2eseDdS0kOQyXuI8MfgrApn8BOBWWABn2jSyXNBKfhyDn7X3vDfGU81-nlQ4ppZSFGIHoWo_LD6r4MwVLj1TUAeB0Ww3eKjGDgW9FqTphQDMyiH1eSErQ9u0uAWEQxtywGLP72maLePohHQQ07C0FgIugGEi')
INSERT [dbo].[Deleted_Tokens] ([DTKN_ID], [DTKN_Token]) VALUES (3, N'j3i0dZS7nZG_NbPQq-O_99z4zSHPneGU8qiK5g4cH3FkbwyIiHCL9mjSEjbZLW7d0oyuzsXpk271d2fKY7pGcwPEHD7-HNc2IatFP3yFPR7UKaEK__-_0jZ9_QTP2KGm7pJMoackzgq21uCA7dtG7kJA_FjV_yB6JH3kb1o8l1N7mPml4b6lADOa-8L5lGD3f9cbnZ9jOwvJ0q9v3ArDvfl8_92IF354K6JkXqvAPIXCub0UzM2oNrrGRxMLrTap')
INSERT [dbo].[Deleted_Tokens] ([DTKN_ID], [DTKN_Token]) VALUES (4, N'ZCXQ0ZRJ3Hpftdsz0STRDrOrp9j-kpigofivNU29RKghqHsPn41gJTVrZF6D1tAzXMIlnleCCol0FqxaV6s949V4a-spvdUZ1v-LjyQX5zUaDkQb2BrHC1GTVBjak-TeMsA2MlHwnekJeUjSQwdNVna510AIBDDEspyX-BUK6qNpEErS9_trwCc0EyiiI52OAQdDm93McWT2AcTONzn5NOzrKiUvdUgIelpD0oo2lwZlPnI4QGmv-6zXKrNHVrUe')
INSERT [dbo].[Deleted_Tokens] ([DTKN_ID], [DTKN_Token]) VALUES (5, N'U5_Lt61yzguxUCAgVTko2En-M4Q0cV0d6eXveErlm2v_-YdNbWdzWBnnlfs8Fpuwi4GtoM3_r4ZRVIXJQh6LplbDqvMd8rvu7O-hUJInjbJqUwgToQk59jnh0SFVSId8fKpXrDFoggOs0onFCRfk9-I2TV338NTllylHn7Edv6_ZsiWknQEDMK4D6wsPOkf6OU5cqh5JVFAXf7d_Hdckx0M-g5p2HranxfQXpX1Q6yXt5YyOuduOaM2iqnbN_ZqU')
INSERT [dbo].[Deleted_Tokens] ([DTKN_ID], [DTKN_Token]) VALUES (6, N'csvuGLtdK23iFMT3pS1ebnc_zZPWES__ZI_DqLClHe82CaAK0ynkF4vSHU4p4zal7cS9VvMZ_m8KnrAX-SqfWGsNXZPqrVRHa1FDGabL7781FRqAxnS_MFCoig00RvOiPmpVntTZeOWTLhOVDvOAU5yetgx47cxZIemDW-e8TvvMsyPKbHnSH6ZxWpcMMmNF25KuBU-at11l3kakp4Xk6K90u3LYo84fpzV9OAXkW77I1DDMx3ml8QaH8ybvoi3v')
INSERT [dbo].[Deleted_Tokens] ([DTKN_ID], [DTKN_Token]) VALUES (7, N'hKX-iVp0P32DjUVViQMq5Soczv1vyt7FSzi2oF66lYv0nECifAlb4oeUcb3Gi7-BhRrLIXUDAXDGGGSIFy9XFl3ura6ukfiN5RTeBzYmdQ_E563DWPYdJGT8lwMuqw5bh7fGncHdfiYJVUm2Ujjaepq9Ny9UJGUEC1cBwYhNSPZe6jfCsGnsZ9wDurPn4JGGPvxONWBEI3d6ut8h96Rlt9QvGeVK4rtgy2r6J0FhZfWfvrSW0zGvVAGxPZP9VmYv')
INSERT [dbo].[Deleted_Tokens] ([DTKN_ID], [DTKN_Token]) VALUES (8, N'aTgDNy4mpSQjpMoQZKnOMIK64UgcHJAmVEBtau3hP5o8-HyIrhyOqeDcPRvyMc0yRroQckgVCch-LGXdQiYW1y2o2KSd3c3gyVyR8MeSrwUIlbNxc93DoYouzxu5LFVNAaRvp6mCkfFHdbHxLktSsxTCRaVh_SAfLW8XhyFwhCHKs6xiEDX7Nrj2LV1XtQAzzq3LlfVGzudBAvre6UhzB8jdZibbz-Uz1LY361boe_Qsft9GnrmrYT8sPydDVz7c')
INSERT [dbo].[Deleted_Tokens] ([DTKN_ID], [DTKN_Token]) VALUES (9, N'ptt9UIBTDTY-D_-yk29BmXOnimercfjH7EQmNizAmFbV_JQ8WPj0CZHgwV-ybrUX6l6QdiCN953LnZ55ImMq9qRrpR4SiyYJCBkw-wUwhOZpoBIP1BotfE0palkFiuLzkwxIEus8M4hdrq6JP452urqoh8NEjOfJuPzLlEDL8jOaVzgHaGWYugVxXvWg5J8eKkJiyb7Q9lNAEqmckJ0U3Xx5E_2Yf4gZ-y084tFjeiR5zeB-_a-2C6lLymq7p0Xt')
INSERT [dbo].[Deleted_Tokens] ([DTKN_ID], [DTKN_Token]) VALUES (10, N'Z1sH3z5oskcwauGBBYhgIWQ6Xe82WDGUQXZ15qUPn1CfxKuimNENZ2V1siPLahBgaxBAkTGUtaS0x-65jJHswcLvTLMfTQOyxgpuTSUQw7A4ba7CQc-_o_weCCLBzSg9lZ708iNBqQk_HswZMVEL6y9kfOL1viiLreOp0-PKYmuUNQoWZydUwHFgjojRD_3twgH1aIwsoUYp6bcCj37_2Juj265ZyFAAGpeY7vhfm4TMVkGtE41Uas1wVLqM8jX4')
INSERT [dbo].[Deleted_Tokens] ([DTKN_ID], [DTKN_Token]) VALUES (11, N'3ZVnWPwIAmE3FrYF0Y5YrbT2D5LwHeGnWbZHAfZgeiS4zIIXNcCd_3DKZXytlMHrWujQSjvoBHNZR-LyTNryEwuGACdD4u7M9c2yKsm1F_rtnoSUdIlCfvRYLlhmkgZ2p8Xs1NGzwBhle48sEuaY3NsMbsJadlJe8BDCz7eWHXdTrRp-AVKsS19-xNtFP3coK85T1nMiCpJU8H4iZ5vdRWZmBnTiSbXTMhipvKSDnJLnsqNz4jgtsdEGSNOqQ6wn')
INSERT [dbo].[Deleted_Tokens] ([DTKN_ID], [DTKN_Token]) VALUES (12, N'BK_k-iry6XI3HNhtt6DcJcRawtxMTzXlGzcHFmmYzHgh_rKLPlwbv-dUbTvyge83jAYh7OpPk2iDlDwZrSH3Wnxwkn33ON3z7zUQqr7d5sCnpzB4xboMNeUgOCYp64sFDUJbwnGHUW4ATULEertodWPfAv1WERW28IQtBdGXzhGsOw6-5v9HmhU6ZLgju1ZfnnZc-SiTm6MxeOyuMZAVf0E5FHR0z6xfVNjr2YJCUa4KFiUHhzMDihcp0D-x-KTP')
INSERT [dbo].[Deleted_Tokens] ([DTKN_ID], [DTKN_Token]) VALUES (13, N'ingAf7pIRKyAJufZWwj6Y6gstKOq4VC2_8YR2tNm3-ERVprxocJALN6zG-4wPPsC71YBDEMs3c6t5rPd3lm84zHTQga25T15cLotsTNQujghtQDl1Dvaly5yuybbfq28yl-84zLbmwY1mUBQI1USyAzhmzPvXPZwgB5F1edecoO3ktGsu8hx76QwmdwaBdYH90-bsXOiPcTwnLMu5xuLkowHBP_9DlAf9tmXw_-p41m35WdHxM7GIcIjTsoT6VWx')
INSERT [dbo].[Deleted_Tokens] ([DTKN_ID], [DTKN_Token]) VALUES (14, N'GQToDVv-z1ETjz3udr16eiXQHkFcHEPfzP4VnFLwatNUY5Cetmdr1sBjcZltq90VPbjKP8FitpEEs6DIfOJpWbE6ZdDYYgpULnD--ZunqklNxlPZ-wNEoOXy7dC0ZqD3nokZ7GY0Vo858COldt2T-hI_QFalagQHBcv87EM2feXlgRsWv61K6jlJ0fQs6gDRsi8G_E8JW9fVhz6c7J3gYP2zRGR5ERAuQ8oU0ax9o-sAN7TpOe_KUef_pGLR-PB_')
INSERT [dbo].[Deleted_Tokens] ([DTKN_ID], [DTKN_Token]) VALUES (15, N'Mb5PkOLfCf55ff7pV42AhzClopJlDyfUY84G--0IDBnbPzQRBPDhyV4FoC6Ar45k9gaM2dxqBKxrvLgbjIBbxiRP-jOel9I0PnBZamnXVG8uPzxz8tGhWxH276VhdHERWGcWo05mjFZ0diaXdhmlwfkDjYdUusVldkyx3n8sseu7fxTYLWDCZy-lcQ-ZUnbjhrOdna0AqysRyxNiIGffn-5_p6_FPHj0jG-FBPTKGtMYp6WfZhFGbeThF_dUH4hI')
INSERT [dbo].[Deleted_Tokens] ([DTKN_ID], [DTKN_Token]) VALUES (16, N'5NNORZCGOpjfhG07QLhp0u5mkHm-shH6WZTF1gNEuN74PLO0C8UM-NC7ArxkiZJXYna_8jdnlOWWouHBYkHcNsp_lJcmmsdibVPbq8p_6IbVlv6XgO0PLSmiGrCnnHeH9tLLGjV7AlMzxlLadqjK1fulYvmf_jH6rGU62gaYWyBE2hmMCKojAc4f1uBWD5vmPprPXKW1_olO6EXiFJ1L8bz1My5LOj75CZNuKNGEYC89-yF5hmk0ToOedZOLClaNxghr1JYBT11udNYpnxRJN1r9m5EeqkTEGv8dzTQOqIs')
INSERT [dbo].[Deleted_Tokens] ([DTKN_ID], [DTKN_Token]) VALUES (17, N'FoXmGA-It5BVGOHMMmt_uRc2KR7rmBPgFkWAzVbw2c3sy3rvZincvX-_ll-X3uyTORsMQRHpkqa1hQPU95n9ZmAopcGWo3YY6QoQ05jj1Gqiv_3kCbGhC-Dvnls0DcocQDnjE-3qWIbrabPQ9ffEEE8QQps3No0U8FukZTYwJ6jHz1HLDvW7h42N0bcjRdpCPO33rrZUq7HQsjfaxWK56xc3yxzjQVcL8KDpikIn9V2tjYS6_lkDzg9lVxexAHDwU9BhCd9E_E4dHf6pqW9kixa1jkj7aN7xyGbq30JE5Zs')
INSERT [dbo].[Deleted_Tokens] ([DTKN_ID], [DTKN_Token]) VALUES (18, N'8DwSRq-bJPrX4fRUZ1DYx0eYLYXNttUexpxN2QzSHxaL4oU_mNRBN76U22yRUMpMNvg8xYU1Ljbm-s9gWQ3G0IKIeZsZrqNjKoSUlx1Wg6jk4PAvPUHYB_Rpnk0vBPd6zG1LpkLvickRmXN1iSas74dsaFDDbkoz87RP1to_maOzICaYTLusl_7Mt0wAWKUFZKgtQX_FFzy7YNmYAIln2occ0bKf--rYpMO16_pS_3LF1gYr_2oip7Oxm63eD2uldqOi3tBKr9Tiubs7DIFu9rm19_J1p5eSMZdmhr7pask')
INSERT [dbo].[Deleted_Tokens] ([DTKN_ID], [DTKN_Token]) VALUES (19, N'ox7q97_ZXmqVgJro0Q9E47om2HbUujEk1-nBP3uQixSUn2AXjuF9ogNZzqCE_BIFZuAulZYa5C83s1aDo8asoxJsrGrarwDoYlpJSYkRPe7P2-jHh5MQHM18ubkVXgf2M7DUTAhqZzD6l77bP9L-aIJI14WpBDCzvl6KoYrhpQ2JA_2MgzstW89lkStCFLMUuOPHq8zAA_KSJjHZzgdKbNU_uZqt8_-X_hi68q1kcjiK0MIbqcdkM9dFxeUuPpF-aOSAmg0Tcf8IaIgiqGlGWIgpsrcCg_nUT71SBMyixUSmavNd3NmZOEWNONdu4jUn')
INSERT [dbo].[Deleted_Tokens] ([DTKN_ID], [DTKN_Token]) VALUES (20, N'PSV_LD_GizIDeZgvJWWXKdGyamXzsI5I2YT46vsVwI6tEyl4t2y7C158dZb3dfdv-BGBey5FaK7jqX0ImXXotfizp5L2DQmVmkc1Xh68O5elVJY5NkIs-E3zruuKRw9d3ScgvHs3_eubwEvRCyF_lphF-HUcTbq3xEsutZEzHvSWXOnzkwOp6i7XZ3DaJdlkGrMAO5Rf7xve9TajSv-RFUo3X0BR3Y9HmKGsKgCpJokvDBYd4io0d-nqY741sPY6-mxLRmfcwoaOlNiIN5PiGLS9oOAbTIYjZoR0pcbVDzo')
INSERT [dbo].[Deleted_Tokens] ([DTKN_ID], [DTKN_Token]) VALUES (21, N'pukfnSEM-3iAlM0I0QL7lmIwxBxbZRr7iFDRckEl2kgcp6xLjn00LOzY3QrQOQwxOs-kFPMMdrrzT3wmF7U4zvV5PFtvv5-CA0b7VP-IvbZRZWrr5BCVjFMOU_CfGpOieg9kJCeAh66qBEtCr5Ec-QFNK9ftI9l4sgXv2QgGPwobQNo23qm25bD-_HjAQQeg0eNUTbe9NU73g8GQGWu_Cxn0_iY71fnFj2TAH9d4gKhx9FkAkdua9X-8faZAg-SpCuOu-MZD43rDRpiutDS1Ox5IfEKIKOlmJJZ2_aEi9S8')
INSERT [dbo].[Deleted_Tokens] ([DTKN_ID], [DTKN_Token]) VALUES (22, N'NGlSmS5QqYOPEnx_HDrrjR1MnS99GmvoIdlOu_GP_qomouOCP3wsa1u7iC9K3HK6jd7WFFDdbcJ2H9R_pSCytUy8pH2iDbnVDNRrZotUvikJHEkth3Gv_hm6gtK5FZ1M88FFXpMgMzrtydBh9JkalCHUCvddQeMNJFZgXjnLqu2xlN4HTcQgXlqwgmYFo5Yfp0Mm2wtQ8nFNrPMhzH101laq2W7otpyk3SH2TxiLsP-AfsAQv1CYYHVBB_oOvynkwGBPv_Ac6RHV0KE64NFiRLGP6L8mbSkwaRpOYpsCfZo')
INSERT [dbo].[Deleted_Tokens] ([DTKN_ID], [DTKN_Token]) VALUES (23, N'_N9o1ZjMCF_dLWdt54cGqsUYPIr25Ob77Mln39Kp-3dLxBC7QhEHLCCG6knjIkTTsuv0fVsuN2F3suV28xHYUKeZGdQ8FS6oYJ0bSoO7wle58vIkcK3GSCDOaT4Oa34efYvggvVsKD085VDdJLxA-8knEa50MhZA-1i_k61oC-LlCuKrwj69AkkfZPv8Y_Y6HewSZppUqyb6uSwbqCZKX1XS-O_kUoYPD6_OndRQK-pkqkhF0zXdzeijEJUQ6DpVO3jeJS8vDf8pbji3kj4T0TANNE3esMs6OVF4EmO1c0w')
INSERT [dbo].[Deleted_Tokens] ([DTKN_ID], [DTKN_Token]) VALUES (24, N'XybIVxj2XqxIMPO4oqF7zd8A3_X5ejihcs45C3uWYsGz8f5VAXmV1D1S4tqFv95QUGZX_-z5v5W17CtYiMptU-olp3oGXCwECrZlYr6jMl5l1QWIKG8zBB4AqJBKUD1EGCgQhFBNh1DuOUuQ08VFDlXw-CiA-eGJ_jnNe7_dWDCGkC6kzFy9VoJAvH3As3vK5q4u-xduyhnJWJuC-QnDJ_3lbq0YRRsKpwFeGMjQx5KA8-YCZdglpn5L535dpY1xyhzQpl2uCtUuu9X3-2TNxdfwpW3YbeJa5YRXn8sC9Uo')
INSERT [dbo].[Deleted_Tokens] ([DTKN_ID], [DTKN_Token]) VALUES (25, N'6i9yze0R9Cb8LjsKvT3fvHJEj9vXxNY9SlNt-_d0CI7UXVaCkjpHtcGauyK7RPhLTYLdV1FzuuPHOgaMVEJM9E_HhNJhzfh1Hi3UmepceSc7sf3qPNocN2E3V-b4SCuP38x5bxRGWt_n8zo5qmZM9Q6JhULFyyCqCXXczxf4oQ-jpPC3EeQcnPMCR97UIKIPb8vyUkgfL-D1tOXdFTJETXHgU38GE4w7i4JaK4J01bFU9GRe4qRJ3PFOW8hzLx_Vqe3Be409h8PpSNCISxxRHPwJ7LNAABzMg784akV2urQ')
INSERT [dbo].[Deleted_Tokens] ([DTKN_ID], [DTKN_Token]) VALUES (26, N'vUxoCNHkHsovmLXrnd6NYyRrI1DQVvejwhEa2ugYffJacUxP3CaBMLeISJM9EcHYlqgr7vXXhFwfulIvM4ng0B8nPYwpHloOmFAqJzrMLngSmdMpdCYqJCkzhzIq9hox5-cGUTqa258weuoTM2nxm2EDMeG6WLoe0Qj1CV0MQHlKzVdMTwy7ikEo_0p_VyPnUJj8g4ausil3adeku2ZHozsWGlk1dpZ55kyYqpR_RRDd222GpVHiEZHNqNp-626XZiXc077rJ1TOHfP3QKG6No0U_D8pEvAA7B3iKc9iyUQ')
INSERT [dbo].[Deleted_Tokens] ([DTKN_ID], [DTKN_Token]) VALUES (27, N'YE9NBMrkWmqAn_4m-fWnOCRmoywhRkYpujJwrkS9IxIXDlu8GZqGnlDrR3eQ7daW9ETRjcyi3pQYMEoWER4HNa9iTY8W8KXakveec3qL5vMh6iYdHRTy8LDXkg__NAs47X7PfnnltZ1vH8ffapwxIhJfs68kFQFmwoeuAQQWEycmtXNFRGM_3fnA24ypUG1PxSlnGAVyrDCNZmbzbDKnk31hnRPuibGiusQ-yDlbVaSgZagDzEUwWtxF_2IZVoZJzllWjRaP7j3LQWBkVbiPXjLLpU1ACzCtB0_A3nGBnB0')
INSERT [dbo].[Deleted_Tokens] ([DTKN_ID], [DTKN_Token]) VALUES (28, N'RfXxdcw__cftbnZpreCJUF85QRlAgLpUNbO12r8PsB4k7Yo7YV05oovVesQwbf50YEQ-osEQe2xm0_ppDgnBq8cAaguIl7i5bx2bPqFgDquymi2WS9nSpmjhj0BAVwhod1WizJnUo2CUVlyx_JgJr0AkxNtptTDP4pH2FvlBi__55PLnvrHZpEPdF2TAnxMUX5UgBTgCHKjkAhWU4lQfGxbCaQehU59Ep_nltQKhIKYtRnRRz9YE8JJmB5lukML_3yrgp9GQ-qMcEAbVfL4QZlaFI_Joooxj0Un3jZ8ireI')
INSERT [dbo].[Deleted_Tokens] ([DTKN_ID], [DTKN_Token]) VALUES (29, N'QqZNolCyjPuC99vAidM6Ec4HAb5k0J_FHat0dYxbmQyhjo4sJ9_l3xJiMYGhDOdbLkA6-E8CpPmZZVV9RzWZ7Dy6jroNwSmj2jZsjgC-CcZofFkCWvDeI6mFXrqd1g0PkXlbzwIobLpOEFiY4-lRxC-uY2D8RIYQeMCTSIX0czBVEIa6IjtdVOMXTgN_rpQk1GZCLlExwV7DvsxHK_msL21RTT4eEL4Lr0Z8kDQi9wP3qZ8bJYVSKsxBkGVJkQwEKTrBv-6QoqmYPuVGal4Z_vKav-6SKAunNqfqtpVWnkI')
INSERT [dbo].[Deleted_Tokens] ([DTKN_ID], [DTKN_Token]) VALUES (30, N'-FslP-OWMa9GHetCvz-4hj9UkoDfDh9D8mL3aFLbACon1PJ2SMLY02D36YkZ_ht6Z9QXMPxZG8G3I0QH1a5m211xhx3Vc6QjePGPJ1QekGBNnSuyJ8j2jD-kp1XSZlEfC68ENYZMVH7h_-riu4Ut66-Xpkuips4L7M-bEJS8Rsk4u93O8VuYu0atqkXmqwFREULZNtB0EkqCBRFjfUImZdTRfjCnSnQt067OdAQ1qCJMbEekkWpQI4Z6VJxd986fKo7sMECVcTRmYhMVzyXmI7YrumDdqdPGTFuK1OJe-gg')
INSERT [dbo].[Deleted_Tokens] ([DTKN_ID], [DTKN_Token]) VALUES (31, N'kb8DYq0QqQsXvc50uM3wDMjW0296ZCTWJB1qJN_YzGqqKI7dkYwOyclH99yElrClFNTJIw2uJ0ov8jZ4MJRc75pgH147PRY8c387uGCEPQ-iLFJCClIuSTq1VcbYAOxVgODL5ObmHgNf3hhGf7R81WzdYLD6Gwy1BiRoyipKP0h6oIFsElPip6--UDd4CF0S16cW6eXTptxX3CRcwgX0a3ZZOAw3r4s_lSfKAr4h8QBu2Y-gJGkSArS7hI_sGcnrdnT5Yd48jsECT_s3wh6Yz6MYxUtvQ2ZLOdmOPmiFAoc')
INSERT [dbo].[Deleted_Tokens] ([DTKN_ID], [DTKN_Token]) VALUES (32, N'3fMriOLfUwLhq-X3RZFbuCyd2I160ywQJEFs87k3T9hUzIpoj548f5wRI7bq6OrGXqqhAyWzwRUY-IBqGR2eS5Jpvehl3YehepwGEvJ2_VrxZKlWZDXb9UrQqUtdRUmbDaFM869mzZ32AeNDOdqotOch7Oxa_-371VjJrIph4nscsZTv9tLTcRTLTjquEAeM07bQfRjRfLjBQjTJGvlrgjzBURkvubhN48ORBocHS1rid9FJQSfUQyD2aFhw6mpEKA9-ElwApqdVsHgcoRBcq3VtQkx_A9KkPda4YV-48HwhZRrYvGtkuthB9SIEoRKA')
INSERT [dbo].[Deleted_Tokens] ([DTKN_ID], [DTKN_Token]) VALUES (33, N'f3QxLM2soGuywdzjxaCua5n-GUEEwWSk6L-wlEfmYoM45hUW2eNBQk2rPkmYfpFS3zBBHbUcSWWZrHUrrUCF4nia8rM1IoAWsItogikFvc_G_qbybrW-FkqAzolH0rOKZWZQjIlKtJsyaDHGt6729E5AKqw7lwOO10yzeGp1V_1LAuUcMgHy3t_x2v5OKUv_J8ueSq7ia-KT6VQwKLrRv_2wUD6wWoRG_e4Zl_PNRnOv9rz2fpxOOSCztpSYc_IKR1s6HigSTsIyCMlaTioSfG00EuKtz9fmyJm4Pa18we8')
SET IDENTITY_INSERT [dbo].[Deleted_Tokens] OFF
GO
SET IDENTITY_INSERT [dbo].[Department] ON 

INSERT [dbo].[Department] ([DEP_ID], [DEP_Name], [DEP_HOS_ID]) VALUES (1, N'جراحة', 2)
INSERT [dbo].[Department] ([DEP_ID], [DEP_Name], [DEP_HOS_ID]) VALUES (2, N'باطنة', 2)
INSERT [dbo].[Department] ([DEP_ID], [DEP_Name], [DEP_HOS_ID]) VALUES (3, N'..عظام', 2)
INSERT [dbo].[Department] ([DEP_ID], [DEP_Name], [DEP_HOS_ID]) VALUES (4, N'حوادث', 2)
INSERT [dbo].[Department] ([DEP_ID], [DEP_Name], [DEP_HOS_ID]) VALUES (5, N'اسنان', 2)
INSERT [dbo].[Department] ([DEP_ID], [DEP_Name], [DEP_HOS_ID]) VALUES (6, N'العمليات', 2)
INSERT [dbo].[Department] ([DEP_ID], [DEP_Name], [DEP_HOS_ID]) VALUES (7, N'مخ واعصاب', 2)
INSERT [dbo].[Department] ([DEP_ID], [DEP_Name], [DEP_HOS_ID]) VALUES (8, N'نسا وتوليد', 2)
INSERT [dbo].[Department] ([DEP_ID], [DEP_Name], [DEP_HOS_ID]) VALUES (9, N'عناية مركزة', 2)
INSERT [dbo].[Department] ([DEP_ID], [DEP_Name], [DEP_HOS_ID]) VALUES (10, N'اطفال', 2)
INSERT [dbo].[Department] ([DEP_ID], [DEP_Name], [DEP_HOS_ID]) VALUES (11, N'تحاليل', 2)
INSERT [dbo].[Department] ([DEP_ID], [DEP_Name], [DEP_HOS_ID]) VALUES (12, N'أشعة', 2)
INSERT [dbo].[Department] ([DEP_ID], [DEP_Name], [DEP_HOS_ID]) VALUES (13, N'باطنة', 4)
INSERT [dbo].[Department] ([DEP_ID], [DEP_Name], [DEP_HOS_ID]) VALUES (14, N'جراحة عامة', 4)
INSERT [dbo].[Department] ([DEP_ID], [DEP_Name], [DEP_HOS_ID]) VALUES (15, N'أطفال', 4)
INSERT [dbo].[Department] ([DEP_ID], [DEP_Name], [DEP_HOS_ID]) VALUES (16, N'مخ وأعصاب', 4)
INSERT [dbo].[Department] ([DEP_ID], [DEP_Name], [DEP_HOS_ID]) VALUES (17, N'أشعة', 4)
INSERT [dbo].[Department] ([DEP_ID], [DEP_Name], [DEP_HOS_ID]) VALUES (18, N'تحاليل', 4)
INSERT [dbo].[Department] ([DEP_ID], [DEP_Name], [DEP_HOS_ID]) VALUES (19, N'قلبية', 4)
INSERT [dbo].[Department] ([DEP_ID], [DEP_Name], [DEP_HOS_ID]) VALUES (20, N'عيادات', 4)
INSERT [dbo].[Department] ([DEP_ID], [DEP_Name], [DEP_HOS_ID]) VALUES (21, N'نسا وتوليد', 4)
INSERT [dbo].[Department] ([DEP_ID], [DEP_Name], [DEP_HOS_ID]) VALUES (22, N'حضانات', 4)
INSERT [dbo].[Department] ([DEP_ID], [DEP_Name], [DEP_HOS_ID]) VALUES (23, N'عظام', 4)
INSERT [dbo].[Department] ([DEP_ID], [DEP_Name], [DEP_HOS_ID]) VALUES (24, N'الرعاية المركزة', 4)
INSERT [dbo].[Department] ([DEP_ID], [DEP_Name], [DEP_HOS_ID]) VALUES (25, N'عمليات', 4)
INSERT [dbo].[Department] ([DEP_ID], [DEP_Name], [DEP_HOS_ID]) VALUES (26, N'قسم الباطنة العامة', 5)
INSERT [dbo].[Department] ([DEP_ID], [DEP_Name], [DEP_HOS_ID]) VALUES (27, N'اقسم الجراحة العامة', 5)
INSERT [dbo].[Department] ([DEP_ID], [DEP_Name], [DEP_HOS_ID]) VALUES (28, N'قسم جراحة العظام', 5)
INSERT [dbo].[Department] ([DEP_ID], [DEP_Name], [DEP_HOS_ID]) VALUES (29, N'قسم أمراض النساء والتوليد', 5)
INSERT [dbo].[Department] ([DEP_ID], [DEP_Name], [DEP_HOS_ID]) VALUES (30, N'قسم المخ والأعصاب', 5)
INSERT [dbo].[Department] ([DEP_ID], [DEP_Name], [DEP_HOS_ID]) VALUES (31, N'قسم الأشعة', 5)
INSERT [dbo].[Department] ([DEP_ID], [DEP_Name], [DEP_HOS_ID]) VALUES (32, N'قسم الطوارئ', 3)
INSERT [dbo].[Department] ([DEP_ID], [DEP_Name], [DEP_HOS_ID]) VALUES (33, N'قسم الباطنه', 3)
INSERT [dbo].[Department] ([DEP_ID], [DEP_Name], [DEP_HOS_ID]) VALUES (34, N'قسم الاطفال', 3)
INSERT [dbo].[Department] ([DEP_ID], [DEP_Name], [DEP_HOS_ID]) VALUES (35, N'قسم الجراحه', 3)
INSERT [dbo].[Department] ([DEP_ID], [DEP_Name], [DEP_HOS_ID]) VALUES (36, N'قسم مخ واعصاب', 3)
INSERT [dbo].[Department] ([DEP_ID], [DEP_Name], [DEP_HOS_ID]) VALUES (37, N'قسم عمليات الطوارئ', 3)
INSERT [dbo].[Department] ([DEP_ID], [DEP_Name], [DEP_HOS_ID]) VALUES (38, N'قسم طوارئ القلبيه', 3)
INSERT [dbo].[Department] ([DEP_ID], [DEP_Name], [DEP_HOS_ID]) VALUES (39, N'قسم الحروق ', 3)
INSERT [dbo].[Department] ([DEP_ID], [DEP_Name], [DEP_HOS_ID]) VALUES (40, N'قسم طوارئ نسائيه', 3)
INSERT [dbo].[Department] ([DEP_ID], [DEP_Name], [DEP_HOS_ID]) VALUES (41, N'قسم طوارئ العظام', 3)
INSERT [dbo].[Department] ([DEP_ID], [DEP_Name], [DEP_HOS_ID]) VALUES (42, N'قسم الاشعه', 3)
INSERT [dbo].[Department] ([DEP_ID], [DEP_Name], [DEP_HOS_ID]) VALUES (43, N'قسم التحاليل', 3)
INSERT [dbo].[Department] ([DEP_ID], [DEP_Name], [DEP_HOS_ID]) VALUES (44, N'باطنة', 3)
INSERT [dbo].[Department] ([DEP_ID], [DEP_Name], [DEP_HOS_ID]) VALUES (47, N'قسم الجراحة', 2)
INSERT [dbo].[Department] ([DEP_ID], [DEP_Name], [DEP_HOS_ID]) VALUES (48, N'قسم الباطنة', 2)
INSERT [dbo].[Department] ([DEP_ID], [DEP_Name], [DEP_HOS_ID]) VALUES (49, N'قسم جرحة التجميل', 2)
INSERT [dbo].[Department] ([DEP_ID], [DEP_Name], [DEP_HOS_ID]) VALUES (50, N'قسم جرحة التجميل', 2)
INSERT [dbo].[Department] ([DEP_ID], [DEP_Name], [DEP_HOS_ID]) VALUES (52, N'قسم الباطنة', 2)
INSERT [dbo].[Department] ([DEP_ID], [DEP_Name], [DEP_HOS_ID]) VALUES (53, N'قسم الجراحة', 2)
INSERT [dbo].[Department] ([DEP_ID], [DEP_Name], [DEP_HOS_ID]) VALUES (55, N'الطوارئ للاطفال', 3)
INSERT [dbo].[Department] ([DEP_ID], [DEP_Name], [DEP_HOS_ID]) VALUES (56, N'طوارئ الحروق', 3)
INSERT [dbo].[Department] ([DEP_ID], [DEP_Name], [DEP_HOS_ID]) VALUES (57, N'الطوارئ للاطفال', 4)
INSERT [dbo].[Department] ([DEP_ID], [DEP_Name], [DEP_HOS_ID]) VALUES (66, N'قسم جراحة التجميل', 2)
INSERT [dbo].[Department] ([DEP_ID], [DEP_Name], [DEP_HOS_ID]) VALUES (67, N'عظام ', 2)
INSERT [dbo].[Department] ([DEP_ID], [DEP_Name], [DEP_HOS_ID]) VALUES (68, N'مخ واعصاب ', 2)
INSERT [dbo].[Department] ([DEP_ID], [DEP_Name], [DEP_HOS_ID]) VALUES (69, N' قسم الحروق', 2)
INSERT [dbo].[Department] ([DEP_ID], [DEP_Name], [DEP_HOS_ID]) VALUES (70, N'الطوارئ', 2)
INSERT [dbo].[Department] ([DEP_ID], [DEP_Name], [DEP_HOS_ID]) VALUES (71, N'الطوارئ', 2)
INSERT [dbo].[Department] ([DEP_ID], [DEP_Name], [DEP_HOS_ID]) VALUES (78, N' الحروق', 2)
INSERT [dbo].[Department] ([DEP_ID], [DEP_Name], [DEP_HOS_ID]) VALUES (83, N'قسم جراحة التجميل', 3)
INSERT [dbo].[Department] ([DEP_ID], [DEP_Name], [DEP_HOS_ID]) VALUES (84, N'قسم جراحة التجميل', 2)
INSERT [dbo].[Department] ([DEP_ID], [DEP_Name], [DEP_HOS_ID]) VALUES (85, N'الاشراف', 2)
SET IDENTITY_INSERT [dbo].[Department] OFF
GO
SET IDENTITY_INSERT [dbo].[Hospital] ON 

INSERT [dbo].[Hospital] ([HOS_ID], [HOS_Name], [HOS_Address], [HOS_Email]) VALUES (2, N'TEST ', N'ADDRESS TEST', N'EMAIL TEST')
INSERT [dbo].[Hospital] ([HOS_ID], [HOS_Name], [HOS_Address], [HOS_Email]) VALUES (3, N'المستشفى العام ببنى سويف', N'بنى سويف', N'El3am_Hospital33@gmail.com')
INSERT [dbo].[Hospital] ([HOS_ID], [HOS_Name], [HOS_Address], [HOS_Email]) VALUES (4, N'مستشفى اهناسيا التخصصي', N'بني سويف - مركز اهناسيا', N'Mohamedmaher@gmail.com')
INSERT [dbo].[Hospital] ([HOS_ID], [HOS_Name], [HOS_Address], [HOS_Email]) VALUES (5, N'مستشفى بني سويف الجامعي', N'بني سويف', N'bnisuef@gmail.com')
INSERT [dbo].[Hospital] ([HOS_ID], [HOS_Name], [HOS_Address], [HOS_Email]) VALUES (9, N'مستشفى نصر الاسلام', N'القاهره', N'HOS_Address')
INSERT [dbo].[Hospital] ([HOS_ID], [HOS_Name], [HOS_Address], [HOS_Email]) VALUES (10, N'Mohamed', N'Cairo', N'hospital@gmail.com')
INSERT [dbo].[Hospital] ([HOS_ID], [HOS_Name], [HOS_Address], [HOS_Email]) VALUES (11, N'Test', N'القاهره', N'hospital@gmail.com')
INSERT [dbo].[Hospital] ([HOS_ID], [HOS_Name], [HOS_Address], [HOS_Email]) VALUES (12, N'Test', N'Test', N'TEst')
INSERT [dbo].[Hospital] ([HOS_ID], [HOS_Name], [HOS_Address], [HOS_Email]) VALUES (17, N'مستشفى نصرا الاسلام التخصصى', N'شبرا مصر-القاهره-مصر', N'hospital@gmail.com')
INSERT [dbo].[Hospital] ([HOS_ID], [HOS_Name], [HOS_Address], [HOS_Email]) VALUES (18, N'Mohmad Maher', N'Cairo', N'm@gmail.cpom')
INSERT [dbo].[Hospital] ([HOS_ID], [HOS_Name], [HOS_Address], [HOS_Email]) VALUES (19, N'مستشفى نصر الاسلام التخصصى', N'شبرا مصر-القاهره-مصر', N'Naser@gmail.com')
INSERT [dbo].[Hospital] ([HOS_ID], [HOS_Name], [HOS_Address], [HOS_Email]) VALUES (20, N'HOS TEST', N'ADDRESS TEST', N'EMAIL TEST')
INSERT [dbo].[Hospital] ([HOS_ID], [HOS_Name], [HOS_Address], [HOS_Email]) VALUES (22, N'Test', N'Test', N'Test')
INSERT [dbo].[Hospital] ([HOS_ID], [HOS_Name], [HOS_Address], [HOS_Email]) VALUES (23, N'Test', N'Test', N'Test')
INSERT [dbo].[Hospital] ([HOS_ID], [HOS_Name], [HOS_Address], [HOS_Email]) VALUES (24, N'HOS TEST', N'ADDRESS TEST', N'EMAIL TEST')
INSERT [dbo].[Hospital] ([HOS_ID], [HOS_Name], [HOS_Address], [HOS_Email]) VALUES (25, N'لإثسف', N'Test', N'dgdgd')
INSERT [dbo].[Hospital] ([HOS_ID], [HOS_Name], [HOS_Address], [HOS_Email]) VALUES (26, N'HOS TEST', N'ADDRESS TEST', N'EMAIL TEST')
SET IDENTITY_INSERT [dbo].[Hospital] OFF
GO
SET IDENTITY_INSERT [dbo].[Hospital_Phone] ON 

INSERT [dbo].[Hospital_Phone] ([PHO_ID], [PHO_Number], [PHO_HOS_ID]) VALUES (3, N'01120602028', 3)
INSERT [dbo].[Hospital_Phone] ([PHO_ID], [PHO_Number], [PHO_HOS_ID]) VALUES (4, N'0822351564', 5)
INSERT [dbo].[Hospital_Phone] ([PHO_ID], [PHO_Number], [PHO_HOS_ID]) VALUES (7, N'01113050566', 2)
INSERT [dbo].[Hospital_Phone] ([PHO_ID], [PHO_Number], [PHO_HOS_ID]) VALUES (9, N'01206731899', 2)
INSERT [dbo].[Hospital_Phone] ([PHO_ID], [PHO_Number], [PHO_HOS_ID]) VALUES (10, N'01623541500', 2)
INSERT [dbo].[Hospital_Phone] ([PHO_ID], [PHO_Number], [PHO_HOS_ID]) VALUES (11, N'0000000000 ', 2)
INSERT [dbo].[Hospital_Phone] ([PHO_ID], [PHO_Number], [PHO_HOS_ID]) VALUES (12, N'01145341512', 3)
INSERT [dbo].[Hospital_Phone] ([PHO_ID], [PHO_Number], [PHO_HOS_ID]) VALUES (13, N'01113050566', 3)
INSERT [dbo].[Hospital_Phone] ([PHO_ID], [PHO_Number], [PHO_HOS_ID]) VALUES (17, N'01263521497', 20)
INSERT [dbo].[Hospital_Phone] ([PHO_ID], [PHO_Number], [PHO_HOS_ID]) VALUES (18, N'01523698475', 20)
INSERT [dbo].[Hospital_Phone] ([PHO_ID], [PHO_Number], [PHO_HOS_ID]) VALUES (19, N'01623541201', 20)
INSERT [dbo].[Hospital_Phone] ([PHO_ID], [PHO_Number], [PHO_HOS_ID]) VALUES (20, N'01113050566', 22)
INSERT [dbo].[Hospital_Phone] ([PHO_ID], [PHO_Number], [PHO_HOS_ID]) VALUES (21, N'01501031614', 22)
INSERT [dbo].[Hospital_Phone] ([PHO_ID], [PHO_Number], [PHO_HOS_ID]) VALUES (22, N'01113050566', 23)
INSERT [dbo].[Hospital_Phone] ([PHO_ID], [PHO_Number], [PHO_HOS_ID]) VALUES (23, N'01501031614', 23)
INSERT [dbo].[Hospital_Phone] ([PHO_ID], [PHO_Number], [PHO_HOS_ID]) VALUES (24, N'11111111111', 24)
INSERT [dbo].[Hospital_Phone] ([PHO_ID], [PHO_Number], [PHO_HOS_ID]) VALUES (25, N'01113050566', 25)
INSERT [dbo].[Hospital_Phone] ([PHO_ID], [PHO_Number], [PHO_HOS_ID]) VALUES (26, N'01263521497', 26)
INSERT [dbo].[Hospital_Phone] ([PHO_ID], [PHO_Number], [PHO_HOS_ID]) VALUES (27, N'01523698475', 26)
INSERT [dbo].[Hospital_Phone] ([PHO_ID], [PHO_Number], [PHO_HOS_ID]) VALUES (28, N'01623541201', 26)
SET IDENTITY_INSERT [dbo].[Hospital_Phone] OFF
GO
SET IDENTITY_INSERT [dbo].[Message_Type] ON 

INSERT [dbo].[Message_Type] ([MSG_ID], [MSG_Type]) VALUES (1, N'Text')
INSERT [dbo].[Message_Type] ([MSG_ID], [MSG_Type]) VALUES (2, N'Image')
INSERT [dbo].[Message_Type] ([MSG_ID], [MSG_Type]) VALUES (3, N'Audio')
SET IDENTITY_INSERT [dbo].[Message_Type] OFF
GO
SET IDENTITY_INSERT [dbo].[NoteBlock] ON 

INSERT [dbo].[NoteBlock] ([NOTB_ID], [NOTB_DateTime], [NOTB_APP_ID], [NOTB_STF_ID]) VALUES (8, CAST(N'2023-03-26T16:36:41.523' AS DateTime), 100, 4)
INSERT [dbo].[NoteBlock] ([NOTB_ID], [NOTB_DateTime], [NOTB_APP_ID], [NOTB_STF_ID]) VALUES (10, CAST(N'2023-03-26T16:36:41.523' AS DateTime), 100, 4)
INSERT [dbo].[NoteBlock] ([NOTB_ID], [NOTB_DateTime], [NOTB_APP_ID], [NOTB_STF_ID]) VALUES (11, CAST(N'2023-03-26T16:36:41.523' AS DateTime), 100, 5)
INSERT [dbo].[NoteBlock] ([NOTB_ID], [NOTB_DateTime], [NOTB_APP_ID], [NOTB_STF_ID]) VALUES (12, CAST(N'2023-05-22T06:25:02.740' AS DateTime), 100, 5)
SET IDENTITY_INSERT [dbo].[NoteBlock] OFF
GO
SET IDENTITY_INSERT [dbo].[Notes] ON 

INSERT [dbo].[Notes] ([NOT_ID], [NOT_Message], [NOT_MSG_ID], [NOT_NOTB_ID]) VALUES (2, N'Welcome', 1, 8)
INSERT [dbo].[Notes] ([NOT_ID], [NOT_Message], [NOT_MSG_ID], [NOT_NOTB_ID]) VALUES (3, N'Hello', 1, 10)
INSERT [dbo].[Notes] ([NOT_ID], [NOT_Message], [NOT_MSG_ID], [NOT_NOTB_ID]) VALUES (4, N'Elle2', 1, 8)
INSERT [dbo].[Notes] ([NOT_ID], [NOT_Message], [NOT_MSG_ID], [NOT_NOTB_ID]) VALUES (5, N'حمزاوي', 1, 10)
INSERT [dbo].[Notes] ([NOT_ID], [NOT_Message], [NOT_MSG_ID], [NOT_NOTB_ID]) VALUES (6, N'Osama', 1, 11)
INSERT [dbo].[Notes] ([NOT_ID], [NOT_Message], [NOT_MSG_ID], [NOT_NOTB_ID]) VALUES (7, N'Aya', 1, 11)
INSERT [dbo].[Notes] ([NOT_ID], [NOT_Message], [NOT_MSG_ID], [NOT_NOTB_ID]) VALUES (8, N'note', 1, NULL)
INSERT [dbo].[Notes] ([NOT_ID], [NOT_Message], [NOT_MSG_ID], [NOT_NOTB_ID]) VALUES (9, N'note', 1, NULL)
INSERT [dbo].[Notes] ([NOT_ID], [NOT_Message], [NOT_MSG_ID], [NOT_NOTB_ID]) VALUES (10, N'note', 1, NULL)
INSERT [dbo].[Notes] ([NOT_ID], [NOT_Message], [NOT_MSG_ID], [NOT_NOTB_ID]) VALUES (11, N'Welcome2', 2, 8)
INSERT [dbo].[Notes] ([NOT_ID], [NOT_Message], [NOT_MSG_ID], [NOT_NOTB_ID]) VALUES (12, N'Welcome2', 2, 8)
SET IDENTITY_INSERT [dbo].[Notes] OFF
GO
SET IDENTITY_INSERT [dbo].[Patient] ON 

INSERT [dbo].[Patient] ([PAT_ID], [PAT_Name], [PAT_NatID], [PAT_BirthDate], [PAT_Gender], [PAT_IsMarrid], [PAT_PNT_ID]) VALUES (47, N'Ahmed Ali', N'30104042200521', CAST(N'2001-04-05' AS Date), 0, 0, 1)
INSERT [dbo].[Patient] ([PAT_ID], [PAT_Name], [PAT_NatID], [PAT_BirthDate], [PAT_Gender], [PAT_IsMarrid], [PAT_PNT_ID]) VALUES (48, N'Aya Mohamed', N'30104042200528', CAST(N'2001-04-04' AS Date), 1, 0, 1)
INSERT [dbo].[Patient] ([PAT_ID], [PAT_Name], [PAT_NatID], [PAT_BirthDate], [PAT_Gender], [PAT_IsMarrid], [PAT_PNT_ID]) VALUES (73, N'maher', N'123456        ', CAST(N'2001-04-04' AS Date), 1, 0, 2)
INSERT [dbo].[Patient] ([PAT_ID], [PAT_Name], [PAT_NatID], [PAT_BirthDate], [PAT_Gender], [PAT_IsMarrid], [PAT_PNT_ID]) VALUES (75, N'Ali', N'30104042200522', CAST(N'2001-04-05' AS Date), 0, 0, 1)
INSERT [dbo].[Patient] ([PAT_ID], [PAT_Name], [PAT_NatID], [PAT_BirthDate], [PAT_Gender], [PAT_IsMarrid], [PAT_PNT_ID]) VALUES (76, N'Google1', N'30109010107497', CAST(N'2001-08-08' AS Date), 1, 0, 1)
INSERT [dbo].[Patient] ([PAT_ID], [PAT_Name], [PAT_NatID], [PAT_BirthDate], [PAT_Gender], [PAT_IsMarrid], [PAT_PNT_ID]) VALUES (78, N'Google2', N'30109010107498', CAST(N'2001-08-08' AS Date), 1, 0, 1)
INSERT [dbo].[Patient] ([PAT_ID], [PAT_Name], [PAT_NatID], [PAT_BirthDate], [PAT_Gender], [PAT_IsMarrid], [PAT_PNT_ID]) VALUES (83, N'google', N'30109010107499', CAST(N'2000-07-11' AS Date), 1, 1, 2)
INSERT [dbo].[Patient] ([PAT_ID], [PAT_Name], [PAT_NatID], [PAT_BirthDate], [PAT_Gender], [PAT_IsMarrid], [PAT_PNT_ID]) VALUES (85, N'gamal', N'166545        ', CAST(N'2001-12-14' AS Date), 1, 0, 1)
INSERT [dbo].[Patient] ([PAT_ID], [PAT_Name], [PAT_NatID], [PAT_BirthDate], [PAT_Gender], [PAT_IsMarrid], [PAT_PNT_ID]) VALUES (87, N'MAYAR', N'1665405       ', CAST(N'2001-12-14' AS Date), 1, 0, 1)
INSERT [dbo].[Patient] ([PAT_ID], [PAT_Name], [PAT_NatID], [PAT_BirthDate], [PAT_Gender], [PAT_IsMarrid], [PAT_PNT_ID]) VALUES (90, N'Google3', N'30109010107490', CAST(N'2001-08-08' AS Date), 1, 0, 1)
INSERT [dbo].[Patient] ([PAT_ID], [PAT_Name], [PAT_NatID], [PAT_BirthDate], [PAT_Gender], [PAT_IsMarrid], [PAT_PNT_ID]) VALUES (91, N'Google3', N'30109010107491', CAST(N'2001-08-08' AS Date), 1, 0, 1)
INSERT [dbo].[Patient] ([PAT_ID], [PAT_Name], [PAT_NatID], [PAT_BirthDate], [PAT_Gender], [PAT_IsMarrid], [PAT_PNT_ID]) VALUES (92, N'test test test', N'12503215698452', CAST(N'2000-07-11' AS Date), 1, 0, 2)
INSERT [dbo].[Patient] ([PAT_ID], [PAT_Name], [PAT_NatID], [PAT_BirthDate], [PAT_Gender], [PAT_IsMarrid], [PAT_PNT_ID]) VALUES (93, N'خالد', N'3010564400361 ', CAST(N'2001-05-05' AS Date), 1, 1, 2)
INSERT [dbo].[Patient] ([PAT_ID], [PAT_Name], [PAT_NatID], [PAT_BirthDate], [PAT_Gender], [PAT_IsMarrid], [PAT_PNT_ID]) VALUES (95, N'test test test', N'12503215698453', CAST(N'2000-07-11' AS Date), 1, 0, 2)
INSERT [dbo].[Patient] ([PAT_ID], [PAT_Name], [PAT_NatID], [PAT_BirthDate], [PAT_Gender], [PAT_IsMarrid], [PAT_PNT_ID]) VALUES (96, N'مها', N'3010564400123 ', CAST(N'2001-05-05' AS Date), 1, 1, 2)
INSERT [dbo].[Patient] ([PAT_ID], [PAT_Name], [PAT_NatID], [PAT_BirthDate], [PAT_Gender], [PAT_IsMarrid], [PAT_PNT_ID]) VALUES (97, N'خالد', N'30101452136321', CAST(N'2001-05-05' AS Date), 1, 1, 2)
INSERT [dbo].[Patient] ([PAT_ID], [PAT_Name], [PAT_NatID], [PAT_BirthDate], [PAT_Gender], [PAT_IsMarrid], [PAT_PNT_ID]) VALUES (98, N'google2', N'12345678912345', CAST(N'2000-07-11' AS Date), 1, 1, 2)
INSERT [dbo].[Patient] ([PAT_ID], [PAT_Name], [PAT_NatID], [PAT_BirthDate], [PAT_Gender], [PAT_IsMarrid], [PAT_PNT_ID]) VALUES (99, N'محمد ماهر محمد', N'12345678912354', CAST(N'2000-07-11' AS Date), 1, 0, 2)
INSERT [dbo].[Patient] ([PAT_ID], [PAT_Name], [PAT_NatID], [PAT_BirthDate], [PAT_Gender], [PAT_IsMarrid], [PAT_PNT_ID]) VALUES (101, N'mayar mohamed', N'12345678954321', CAST(N'2001-05-05' AS Date), 1, 1, 2)
INSERT [dbo].[Patient] ([PAT_ID], [PAT_Name], [PAT_NatID], [PAT_BirthDate], [PAT_Gender], [PAT_IsMarrid], [PAT_PNT_ID]) VALUES (102, N'mayar', N'30117142200361', CAST(N'2001-05-05' AS Date), 1, 1, 2)
INSERT [dbo].[Patient] ([PAT_ID], [PAT_Name], [PAT_NatID], [PAT_BirthDate], [PAT_Gender], [PAT_IsMarrid], [PAT_PNT_ID]) VALUES (103, N' سلمى محمد', N'20105152200361', CAST(N'2001-05-05' AS Date), 1, 1, 2)
INSERT [dbo].[Patient] ([PAT_ID], [PAT_Name], [PAT_NatID], [PAT_BirthDate], [PAT_Gender], [PAT_IsMarrid], [PAT_PNT_ID]) VALUES (104, N'mayaradel', N'30117199200398', CAST(N'2001-05-05' AS Date), 1, 1, 2)
INSERT [dbo].[Patient] ([PAT_ID], [PAT_Name], [PAT_NatID], [PAT_BirthDate], [PAT_Gender], [PAT_IsMarrid], [PAT_PNT_ID]) VALUES (105, N'Jana', N'77117100200390', CAST(N'2001-05-05' AS Date), 1, 1, 2)
INSERT [dbo].[Patient] ([PAT_ID], [PAT_Name], [PAT_NatID], [PAT_BirthDate], [PAT_Gender], [PAT_IsMarrid], [PAT_PNT_ID]) VALUES (106, N'يمنى', N'30127142200361', CAST(N'2001-05-05' AS Date), 0, 1, 2)
INSERT [dbo].[Patient] ([PAT_ID], [PAT_Name], [PAT_NatID], [PAT_BirthDate], [PAT_Gender], [PAT_IsMarrid], [PAT_PNT_ID]) VALUES (107, N'سارة ', N'30137142200361', CAST(N'2001-05-05' AS Date), 0, 1, 2)
INSERT [dbo].[Patient] ([PAT_ID], [PAT_Name], [PAT_NatID], [PAT_BirthDate], [PAT_Gender], [PAT_IsMarrid], [PAT_PNT_ID]) VALUES (108, N'Youssef', N'987645132078  ', CAST(N'2001-05-05' AS Date), 1, 1, 2)
INSERT [dbo].[Patient] ([PAT_ID], [PAT_Name], [PAT_NatID], [PAT_BirthDate], [PAT_Gender], [PAT_IsMarrid], [PAT_PNT_ID]) VALUES (109, N'محمود حمدي', N'30187142200361', CAST(N'2001-05-05' AS Date), 1, 1, 2)
INSERT [dbo].[Patient] ([PAT_ID], [PAT_Name], [PAT_NatID], [PAT_BirthDate], [PAT_Gender], [PAT_IsMarrid], [PAT_PNT_ID]) VALUES (110, N'ماجد', N'12503215698469', CAST(N'2000-07-11' AS Date), 1, 1, 2)
INSERT [dbo].[Patient] ([PAT_ID], [PAT_Name], [PAT_NatID], [PAT_BirthDate], [PAT_Gender], [PAT_IsMarrid], [PAT_PNT_ID]) VALUES (112, N'سما', N'30201142200361', CAST(N'2001-05-05' AS Date), 1, 1, 2)
INSERT [dbo].[Patient] ([PAT_ID], [PAT_Name], [PAT_NatID], [PAT_BirthDate], [PAT_Gender], [PAT_IsMarrid], [PAT_PNT_ID]) VALUES (114, N'ماجد', N'3018511220361 ', CAST(N'2001-05-05' AS Date), 1, 1, 2)
INSERT [dbo].[Patient] ([PAT_ID], [PAT_Name], [PAT_NatID], [PAT_BirthDate], [PAT_Gender], [PAT_IsMarrid], [PAT_PNT_ID]) VALUES (115, N'عادل', N'30301472200361', CAST(N'2001-05-05' AS Date), 1, 1, 2)
INSERT [dbo].[Patient] ([PAT_ID], [PAT_Name], [PAT_NatID], [PAT_BirthDate], [PAT_Gender], [PAT_IsMarrid], [PAT_PNT_ID]) VALUES (117, N'مي', N'30601572200361', CAST(N'2001-05-05' AS Date), 1, 0, 2)
INSERT [dbo].[Patient] ([PAT_ID], [PAT_Name], [PAT_NatID], [PAT_BirthDate], [PAT_Gender], [PAT_IsMarrid], [PAT_PNT_ID]) VALUES (118, N'سلمى', N'1020147220361 ', CAST(N'2001-05-05' AS Date), 1, 1, 2)
INSERT [dbo].[Patient] ([PAT_ID], [PAT_Name], [PAT_NatID], [PAT_BirthDate], [PAT_Gender], [PAT_IsMarrid], [PAT_PNT_ID]) VALUES (119, N'سلمى', N'3090147220316 ', CAST(N'2001-05-05' AS Date), 1, 1, 2)
INSERT [dbo].[Patient] ([PAT_ID], [PAT_Name], [PAT_NatID], [PAT_BirthDate], [PAT_Gender], [PAT_IsMarrid], [PAT_PNT_ID]) VALUES (120, N'ميار', N'897645308976  ', CAST(N'2002-01-03' AS Date), 1, 1, 1)
INSERT [dbo].[Patient] ([PAT_ID], [PAT_Name], [PAT_NatID], [PAT_BirthDate], [PAT_Gender], [PAT_IsMarrid], [PAT_PNT_ID]) VALUES (121, N'jana mwtwaaly', N'372810582910  ', CAST(N'2002-01-03' AS Date), 1, 1, 2)
SET IDENTITY_INSERT [dbo].[Patient] OFF
GO
SET IDENTITY_INSERT [dbo].[Patient_NID_Type] ON 

INSERT [dbo].[Patient_NID_Type] ([PNT_ID], [PNT_Type]) VALUES (1, N'الرقم القومي الخاص بالمريض')
INSERT [dbo].[Patient_NID_Type] ([PNT_ID], [PNT_Type]) VALUES (2, N'الرقم القومي الخاص بالمرافق')
INSERT [dbo].[Patient_NID_Type] ([PNT_ID], [PNT_Type]) VALUES (3, N'مجهول')
SET IDENTITY_INSERT [dbo].[Patient_NID_Type] OFF
GO
SET IDENTITY_INSERT [dbo].[ReqB_Status] ON 

INSERT [dbo].[ReqB_Status] ([STAT_ID], [STAT_Name]) VALUES (1, N'حاله عاديه')
INSERT [dbo].[ReqB_Status] ([STAT_ID], [STAT_Name]) VALUES (2, N'حاله عاجله')
INSERT [dbo].[ReqB_Status] ([STAT_ID], [STAT_Name]) VALUES (3, N'حاله حرجة ')
SET IDENTITY_INSERT [dbo].[ReqB_Status] OFF
GO
SET IDENTITY_INSERT [dbo].[Requst] ON 

INSERT [dbo].[Requst] ([REQ_ID], [REQ_Message], [REQ_MSG_ID], [REQ_REQB_ID]) VALUES (18, N'request_1', 1, 8)
INSERT [dbo].[Requst] ([REQ_ID], [REQ_Message], [REQ_MSG_ID], [REQ_REQB_ID]) VALUES (19, N'request_2', 2, 8)
INSERT [dbo].[Requst] ([REQ_ID], [REQ_Message], [REQ_MSG_ID], [REQ_REQB_ID]) VALUES (20, N'request_3', 1, 9)
INSERT [dbo].[Requst] ([REQ_ID], [REQ_Message], [REQ_MSG_ID], [REQ_REQB_ID]) VALUES (21, N'request', 1, 8)
INSERT [dbo].[Requst] ([REQ_ID], [REQ_Message], [REQ_MSG_ID], [REQ_REQB_ID]) VALUES (23, N'request_8', 1, 8)
SET IDENTITY_INSERT [dbo].[Requst] OFF
GO
SET IDENTITY_INSERT [dbo].[RequstBlock] ON 

INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (8, CAST(N'2023-05-16T08:41:45.930' AS DateTime), 5, 1, 100, 2)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (9, CAST(N'2023-05-16T09:21:56.240' AS DateTime), 5, 1, 100, 3)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (10, CAST(N'2023-05-02T13:08:50.710' AS DateTime), 9, 2, 101, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (11, CAST(N'2023-05-07T00:33:10.580' AS DateTime), 5, 1, 112, 2)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (12, CAST(N'2023-05-07T00:33:29.727' AS DateTime), 10, 2, 101, 3)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (13, CAST(N'2023-05-07T00:33:42.917' AS DateTime), 100, 1, 101, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (14, CAST(N'2023-05-16T08:39:33.163' AS DateTime), 4, 1, 100, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (15, CAST(N'2023-05-16T09:22:31.973' AS DateTime), 4, 1, 100, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (16, CAST(N'2023-05-22T05:52:36.990' AS DateTime), 5, 2, 101, 2)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (17, CAST(N'2023-05-22T06:18:25.533' AS DateTime), 5, 2, 100, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (18, CAST(N'2023-05-22T06:19:23.523' AS DateTime), 5, 2, 100, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (19, CAST(N'2023-05-22T06:26:11.830' AS DateTime), 5, 2, 100, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (20, CAST(N'2023-05-22T07:11:47.217' AS DateTime), 4, 1, 100, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (21, CAST(N'2023-05-22T07:11:47.220' AS DateTime), 4, 1, 100, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (22, CAST(N'2023-05-22T07:11:47.220' AS DateTime), 4, 1, 100, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (23, CAST(N'2023-05-22T07:11:47.220' AS DateTime), 4, 1, 100, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (24, CAST(N'2023-05-22T07:11:47.220' AS DateTime), 4, 1, 100, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (25, CAST(N'2023-05-22T07:11:47.220' AS DateTime), 4, 1, 100, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (26, CAST(N'2023-05-22T07:11:47.220' AS DateTime), 4, 1, 100, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (27, CAST(N'2023-05-22T07:11:47.223' AS DateTime), 4, 1, 100, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (28, CAST(N'2023-05-22T07:11:47.223' AS DateTime), 4, 1, 100, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (29, CAST(N'2023-05-22T07:11:47.223' AS DateTime), 4, 1, 100, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (30, CAST(N'2023-05-22T07:12:39.320' AS DateTime), 4, 1, 101, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (31, CAST(N'2023-05-22T07:12:39.320' AS DateTime), 4, 1, 101, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (32, CAST(N'2023-05-22T07:12:39.320' AS DateTime), 4, 1, 101, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (33, CAST(N'2023-05-22T07:12:39.320' AS DateTime), 4, 1, 101, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (34, CAST(N'2023-05-22T07:12:39.323' AS DateTime), 4, 1, 101, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (35, CAST(N'2023-05-22T07:12:39.323' AS DateTime), 4, 1, 101, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (36, CAST(N'2023-05-22T07:12:39.327' AS DateTime), 4, 1, 101, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (37, CAST(N'2023-05-22T07:12:39.327' AS DateTime), 4, 1, 101, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (38, CAST(N'2023-05-22T07:12:39.327' AS DateTime), 4, 1, 101, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (39, CAST(N'2023-05-22T07:12:39.330' AS DateTime), 4, 1, 101, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (40, CAST(N'2023-05-22T07:13:37.893' AS DateTime), 4, 1, 102, 2)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (41, CAST(N'2023-05-22T07:13:37.893' AS DateTime), 4, 1, 102, 2)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (42, CAST(N'2023-05-22T07:13:37.897' AS DateTime), 4, 1, 102, 2)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (43, CAST(N'2023-05-22T07:13:37.897' AS DateTime), 4, 1, 102, 2)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (44, CAST(N'2023-05-22T07:13:37.897' AS DateTime), 4, 1, 102, 2)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (45, CAST(N'2023-05-22T07:13:37.897' AS DateTime), 4, 1, 102, 2)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (46, CAST(N'2023-05-22T07:13:37.897' AS DateTime), 4, 1, 102, 2)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (47, CAST(N'2023-05-22T07:13:37.900' AS DateTime), 4, 1, 102, 2)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (48, CAST(N'2023-05-22T07:13:37.900' AS DateTime), 4, 1, 102, 2)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (49, CAST(N'2023-05-22T07:13:37.900' AS DateTime), 4, 1, 102, 2)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (55, CAST(N'2023-05-22T07:15:04.453' AS DateTime), 4, 1, 104, 3)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (56, CAST(N'2023-05-22T07:15:04.457' AS DateTime), 4, 1, 104, 3)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (57, CAST(N'2023-05-22T07:15:04.457' AS DateTime), 4, 1, 104, 3)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (58, CAST(N'2023-05-22T07:15:04.457' AS DateTime), 4, 1, 104, 3)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (59, CAST(N'2023-05-22T07:15:04.457' AS DateTime), 4, 1, 104, 3)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (60, CAST(N'2023-05-22T07:16:15.667' AS DateTime), 4, 1, 105, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (61, CAST(N'2023-05-22T07:16:15.670' AS DateTime), 4, 1, 105, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (62, CAST(N'2023-05-22T07:16:15.670' AS DateTime), 4, 1, 105, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (63, CAST(N'2023-05-22T07:16:15.670' AS DateTime), 4, 1, 105, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (64, CAST(N'2023-05-22T07:16:15.670' AS DateTime), 4, 1, 105, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (65, CAST(N'2023-05-22T07:16:15.670' AS DateTime), 4, 1, 105, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (66, CAST(N'2023-05-22T07:16:15.670' AS DateTime), 4, 1, 105, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (67, CAST(N'2023-05-22T07:16:15.670' AS DateTime), 4, 1, 105, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (68, CAST(N'2023-05-22T07:16:15.673' AS DateTime), 4, 1, 105, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (69, CAST(N'2023-05-22T07:16:15.673' AS DateTime), 4, 1, 105, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (70, CAST(N'2023-05-22T07:16:15.673' AS DateTime), 4, 1, 105, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (71, CAST(N'2023-05-22T07:16:15.673' AS DateTime), 4, 1, 105, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (72, CAST(N'2023-05-22T07:16:15.677' AS DateTime), 4, 1, 105, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (73, CAST(N'2023-05-22T07:16:15.677' AS DateTime), 4, 1, 105, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (74, CAST(N'2023-05-22T07:16:15.677' AS DateTime), 4, 1, 105, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (75, CAST(N'2023-05-22T07:16:15.680' AS DateTime), 4, 1, 105, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (76, CAST(N'2023-05-22T07:16:15.680' AS DateTime), 4, 1, 105, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (77, CAST(N'2023-05-22T07:16:15.680' AS DateTime), 4, 1, 105, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (78, CAST(N'2023-05-22T07:16:15.683' AS DateTime), 4, 1, 105, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (79, CAST(N'2023-05-22T07:16:15.683' AS DateTime), 4, 1, 105, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (80, CAST(N'2023-05-22T07:16:15.683' AS DateTime), 4, 1, 105, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (81, CAST(N'2023-05-22T07:16:15.683' AS DateTime), 4, 1, 105, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (82, CAST(N'2023-05-22T07:16:15.683' AS DateTime), 4, 1, 105, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (83, CAST(N'2023-05-22T07:16:15.687' AS DateTime), 4, 1, 105, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (84, CAST(N'2023-05-22T07:16:15.687' AS DateTime), 4, 1, 105, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (85, CAST(N'2023-05-22T07:16:15.687' AS DateTime), 4, 1, 105, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (86, CAST(N'2023-05-22T07:16:15.687' AS DateTime), 4, 1, 105, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (87, CAST(N'2023-05-22T07:16:15.690' AS DateTime), 4, 1, 105, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (88, CAST(N'2023-05-22T07:16:15.693' AS DateTime), 4, 1, 105, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (89, CAST(N'2023-05-22T07:16:15.693' AS DateTime), 4, 1, 105, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (90, CAST(N'2023-05-22T07:16:15.693' AS DateTime), 4, 1, 105, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (91, CAST(N'2023-05-22T07:16:15.693' AS DateTime), 4, 1, 105, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (92, CAST(N'2023-05-22T07:16:15.697' AS DateTime), 4, 1, 105, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (93, CAST(N'2023-05-22T07:16:15.697' AS DateTime), 4, 1, 105, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (94, CAST(N'2023-05-22T07:16:15.700' AS DateTime), 4, 1, 105, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (95, CAST(N'2023-05-22T07:21:25.113' AS DateTime), 4, 2, 107, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (96, CAST(N'2023-05-22T07:21:25.113' AS DateTime), 4, 2, 107, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (97, CAST(N'2023-05-22T07:21:25.117' AS DateTime), 4, 2, 107, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (98, CAST(N'2023-05-22T07:21:25.117' AS DateTime), 4, 2, 107, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (99, CAST(N'2023-05-22T07:21:25.117' AS DateTime), 4, 2, 107, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (110, CAST(N'2023-05-22T07:22:07.333' AS DateTime), 4, 1, 109, 2)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (111, CAST(N'2023-05-22T07:22:07.333' AS DateTime), 4, 1, 109, 2)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (112, CAST(N'2023-05-22T07:22:07.333' AS DateTime), 4, 1, 109, 2)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (113, CAST(N'2023-05-22T07:22:07.337' AS DateTime), 4, 1, 109, 2)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (114, CAST(N'2023-05-22T07:22:07.337' AS DateTime), 4, 1, 109, 2)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (115, CAST(N'2023-05-22T07:22:07.337' AS DateTime), 4, 1, 109, 2)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (116, CAST(N'2023-05-22T07:22:07.337' AS DateTime), 4, 1, 109, 2)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (117, CAST(N'2023-05-22T07:22:07.340' AS DateTime), 4, 1, 109, 2)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (118, CAST(N'2023-05-22T07:22:07.340' AS DateTime), 4, 1, 109, 2)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (119, CAST(N'2023-05-22T07:22:07.340' AS DateTime), 4, 1, 109, 2)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (120, CAST(N'2023-05-22T07:27:08.917' AS DateTime), 4, 1, 110, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (121, CAST(N'2023-05-22T07:27:08.917' AS DateTime), 4, 1, 110, 1)
GO
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (122, CAST(N'2023-05-22T07:27:08.917' AS DateTime), 4, 1, 110, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (123, CAST(N'2023-05-22T07:27:08.920' AS DateTime), 4, 1, 110, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (124, CAST(N'2023-05-22T07:27:08.920' AS DateTime), 4, 1, 110, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (125, CAST(N'2023-05-22T07:27:08.920' AS DateTime), 4, 1, 110, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (126, CAST(N'2023-05-22T07:27:08.920' AS DateTime), 4, 1, 110, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (127, CAST(N'2023-05-22T07:27:08.920' AS DateTime), 4, 1, 110, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (128, CAST(N'2023-05-22T07:27:08.920' AS DateTime), 4, 1, 110, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (129, CAST(N'2023-05-22T07:27:08.920' AS DateTime), 4, 1, 110, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (130, CAST(N'2023-05-22T07:27:08.923' AS DateTime), 4, 1, 110, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (131, CAST(N'2023-05-22T07:27:08.923' AS DateTime), 4, 1, 110, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (132, CAST(N'2023-05-22T07:27:08.923' AS DateTime), 4, 1, 110, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (133, CAST(N'2023-05-22T07:27:08.923' AS DateTime), 4, 1, 110, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (134, CAST(N'2023-05-22T07:27:08.923' AS DateTime), 4, 1, 110, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (135, CAST(N'2023-05-22T07:27:08.923' AS DateTime), 4, 1, 110, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (136, CAST(N'2023-05-22T07:27:08.927' AS DateTime), 4, 1, 110, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (137, CAST(N'2023-05-22T07:27:08.927' AS DateTime), 4, 1, 110, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (138, CAST(N'2023-05-22T07:27:08.927' AS DateTime), 4, 1, 110, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (139, CAST(N'2023-05-22T07:27:08.927' AS DateTime), 4, 1, 110, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (140, CAST(N'2023-05-22T07:27:08.927' AS DateTime), 4, 1, 110, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (141, CAST(N'2023-05-22T07:27:08.930' AS DateTime), 4, 1, 110, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (142, CAST(N'2023-05-22T07:27:08.930' AS DateTime), 4, 1, 110, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (143, CAST(N'2023-05-22T07:27:08.930' AS DateTime), 4, 1, 110, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (144, CAST(N'2023-05-22T07:27:08.930' AS DateTime), 4, 1, 110, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (145, CAST(N'2023-05-22T07:27:08.930' AS DateTime), 4, 1, 110, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (146, CAST(N'2023-05-22T07:27:08.930' AS DateTime), 4, 1, 110, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (147, CAST(N'2023-05-22T07:27:08.930' AS DateTime), 4, 1, 110, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (148, CAST(N'2023-05-22T07:27:08.933' AS DateTime), 4, 1, 110, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (149, CAST(N'2023-05-22T07:27:08.933' AS DateTime), 4, 1, 110, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (150, CAST(N'2023-05-22T07:27:08.933' AS DateTime), 4, 1, 110, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (151, CAST(N'2023-05-22T07:27:08.933' AS DateTime), 4, 1, 110, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (152, CAST(N'2023-05-22T07:27:08.933' AS DateTime), 4, 1, 110, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (153, CAST(N'2023-05-22T07:27:08.933' AS DateTime), 4, 1, 110, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (154, CAST(N'2023-05-22T07:27:08.937' AS DateTime), 4, 1, 110, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (155, CAST(N'2023-05-22T07:27:08.937' AS DateTime), 4, 1, 110, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (156, CAST(N'2023-05-22T07:27:08.937' AS DateTime), 4, 1, 110, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (157, CAST(N'2023-05-22T07:27:08.937' AS DateTime), 4, 1, 110, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (158, CAST(N'2023-05-22T07:27:08.937' AS DateTime), 4, 1, 110, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (159, CAST(N'2023-05-22T07:27:08.940' AS DateTime), 4, 1, 110, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (160, CAST(N'2023-05-22T07:27:08.940' AS DateTime), 4, 1, 110, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (161, CAST(N'2023-05-22T07:27:08.940' AS DateTime), 4, 1, 110, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (162, CAST(N'2023-05-22T07:27:08.940' AS DateTime), 4, 1, 110, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (163, CAST(N'2023-05-22T07:27:08.940' AS DateTime), 4, 1, 110, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (164, CAST(N'2023-05-22T07:27:08.940' AS DateTime), 4, 1, 110, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (165, CAST(N'2023-05-22T07:27:08.940' AS DateTime), 4, 1, 110, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (166, CAST(N'2023-05-22T07:27:08.943' AS DateTime), 4, 1, 110, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (167, CAST(N'2023-05-22T07:27:08.943' AS DateTime), 4, 1, 110, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (168, CAST(N'2023-05-22T07:27:08.943' AS DateTime), 4, 1, 110, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (169, CAST(N'2023-05-22T07:27:08.943' AS DateTime), 4, 1, 110, 1)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (170, CAST(N'2023-05-22T07:29:47.393' AS DateTime), 4, 1, 112, 2)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (171, CAST(N'2023-05-22T07:29:47.393' AS DateTime), 4, 1, 112, 2)
INSERT [dbo].[RequstBlock] ([REQB_ID], [REQB_DateTime], [REQB_STF_ID], [REQB_DEP_ID], [REQB_APP_ID], [REQB_STAT_ID]) VALUES (172, CAST(N'2023-05-22T07:29:47.393' AS DateTime), 4, 1, 112, 2)
SET IDENTITY_INSERT [dbo].[RequstBlock] OFF
GO
SET IDENTITY_INSERT [dbo].[Response] ON 

INSERT [dbo].[Response] ([RSP_ID], [RSP_Message], [RSP_MSG_ID], [RSP_RSPB_ID]) VALUES (4, N'response_1', 1, 2)
INSERT [dbo].[Response] ([RSP_ID], [RSP_Message], [RSP_MSG_ID], [RSP_RSPB_ID]) VALUES (5, N'response_2', 2, 3)
SET IDENTITY_INSERT [dbo].[Response] OFF
GO
SET IDENTITY_INSERT [dbo].[ResponseBlock] ON 

INSERT [dbo].[ResponseBlock] ([RSPB_ID], [RSPB_Datetime], [RSPB_STF_ID], [RSPB_REQB_ID], [RSPB_Result]) VALUES (2, CAST(N'2023-05-02T13:12:20.220' AS DateTime), 4, 8, 0)
INSERT [dbo].[ResponseBlock] ([RSPB_ID], [RSPB_Datetime], [RSPB_STF_ID], [RSPB_REQB_ID], [RSPB_Result]) VALUES (3, CAST(N'2023-05-02T13:13:00.600' AS DateTime), 4, 8, 0)
SET IDENTITY_INSERT [dbo].[ResponseBlock] OFF
GO
SET IDENTITY_INSERT [dbo].[Staff] ON 

INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (4, N'سهيلة ', N'بني سويف - ببا', N'27937667667884', CAST(N'1957-05-06' AS Date), 1, 0, 1)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (5, N'طارق ', N'بني سويف - بني سويف', N'25743628203113', CAST(N'1957-11-16' AS Date), 0, 1, 1)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (7, N'نها محمد عبدالعظيم', N'بني سويف - ببا - المنشيه', N'20257714005725', CAST(N'1957-12-15' AS Date), 1, 1, 1)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (8, N'عبدالله احمد مبروك', N'بني سويف - ببا - طحا', N'20581482717712', CAST(N'1963-04-28' AS Date), 0, 1, 1)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (9, N'مهدى السيد', N'بني سويف - ببا - عزبة خلف', N'23307602088143', CAST(N'1963-06-30' AS Date), 0, 1, 1)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (10, N'معاوية احمد عبدالحميد', N'بني سويف - ببا', N'20253827289689', CAST(N'1964-12-05' AS Date), 0, 0, 1)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (11, N'محمد احمد الزواوي', N'بني سويف - ببا', N'24988074739855', CAST(N'1963-06-09' AS Date), 0, 1, 1)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (12, N'شريف محمد زيدان', N'بني سويف - ببا', N'25289981371949', CAST(N'1972-02-04' AS Date), 0, 1, 1)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (13, N'اسماء احمد على', N'بني سويف - ببا - هليه', N'29803673159787', CAST(N'1973-03-29' AS Date), 1, 1, 1)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (14, N'مايكل ذهني', N'بني سويف - ببا - الطحاوية', N'23496358760785', CAST(N'1975-04-06' AS Date), 0, 0, 1)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (15, N'حمزة محمد السيد', N'بني سويف - ببا', N'27113678727084', CAST(N'1977-09-18' AS Date), 0, 1, 1)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (16, N'أية الله محمد عبدالعظيم', N'بني سويف - ببا', N'23549879080039', CAST(N'1979-10-24' AS Date), 1, 1, 3)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (17, N'هشام فتحى الطائي', N'بني سويف - ببا - المنشية', N'25179908188892', CAST(N'1981-06-04' AS Date), 0, 1, 1)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (18, N'أسامة زايد العشيري', N'بني سويف - ببا', N'27905484270022', CAST(N'1981-08-24' AS Date), 0, 1, 1)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (19, N'شيري ماهر', N'بني سويف - ببا - طحا', N'29560715009943', CAST(N'1983-10-10' AS Date), 1, 1, 1)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (20, N'ضحي صهيب', N'بني سويف - ببا - البرانقة', N'25270771986024', CAST(N'1984-07-20' AS Date), 1, 1, 4)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (21, N'اكرم محمد عبدالرحمن', N'بني سويف - ببا - غياضه', N'20932334568222', CAST(N'1986-04-01' AS Date), 0, 1, 4)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (22, N'احمد السيد عبداللطيف', N'بني سويف - ببا - شرق البحر', N'24681715249687', CAST(N'1985-09-13' AS Date), 0, 0, 2)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (23, N'محمد عادل', N'بني سويف - ببا - البركة', N'23747230979955', CAST(N'1990-01-07' AS Date), 0, 1, 2)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (24, N'محمد جمال', N'بني سويف - ببا', N'27368086868048', CAST(N'1992-05-24' AS Date), 0, 0, 1)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (25, N'فؤاد محمد احمد', N'بني سويف - ببا -', N'24591426148564', CAST(N'1993-09-09' AS Date), 0, 1, 1)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (26, N'حازم عمار ', N'بني سويف - ببا -  طنسا', N'20490179158784', CAST(N'1993-10-30' AS Date), 0, 1, 1)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (27, N'مريم خالد', N'بني سويف - ببا - طنسا', N'29620532954911', CAST(N'1956-05-14' AS Date), 1, 1, 5)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (28, N'محمود حسين', N'بني سويف - ببا - الزاوية', N'20121136016721', CAST(N'1945-10-07' AS Date), 0, 0, 5)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (29, N'هبه محمد', N'بني سويف - ببا - هليه', N'27376921912803', CAST(N'1953-10-23' AS Date), 1, 0, 5)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (30, N'اميرة ربيع', N'بني سويف - ببا - غياضه', N'29961275107627', CAST(N'1959-07-06' AS Date), 1, 0, 5)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (31, N'هند محمد', N'بني سويف - ببا', N'20364518524455', CAST(N'1995-05-02' AS Date), 1, 1, 5)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (32, N'سيد احمد', N'بني سويف - ببا - هليه', N'23813361577684', CAST(N'1960-03-24' AS Date), 0, 1, 2)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (33, N'بسام سرحان', N'بني سويف - ببا - طحا', N'27106484472928', CAST(N'1962-04-11' AS Date), 0, 1, 2)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (34, N'ميار محمد فكرى', N'بني سويف - ببا - السلطانى', N'28231795782134', CAST(N'1963-04-17' AS Date), 1, 1, 1)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (35, N'محمد عاقولة', N'بني سويف - ببا - طنسا', N'21895936650935', CAST(N'1961-03-16' AS Date), 0, 1, 1)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (36, N'اسلام خلف السيوي', N'بني سويف - ببا - الوقف', N'29316506160114', CAST(N'1964-09-04' AS Date), 0, 1, 1)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (37, N'شاهيناز سيد متولى', N'بني سويف - ببا - ', N'27223518228489', CAST(N'1966-04-07' AS Date), 1, 1, 4)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (38, N'رضوان بدر صفوان', N'بني سويف - بني سويف', N'26955274553803', CAST(N'1968-09-05' AS Date), 0, 1, 4)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (39, N'محمود عاطف جاب الله', N'بني سويف - ببا', N'21430710755973', CAST(N'1972-10-08' AS Date), 0, 1, 4)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (40, N'عمر خالد عزالدين', N'بني سويف - ببا', N'20420074250749', CAST(N'1975-01-30' AS Date), 0, 0, 4)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (41, N'سندس سند سعد', N'بني سويف - ببا - غياضه', N'27561539429614', CAST(N'1975-07-05' AS Date), 1, 1, 4)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (42, N'منه حسين عبدالهادى', N'بني سويف - ببا - بني قاسم', N'28784458089967', CAST(N'1978-04-06' AS Date), 1, 1, 1)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (43, N'الياس عيسي صبري', N'بني سويف - ببا - بني ماضى', N'27318344046992', CAST(N'1978-08-17' AS Date), 0, 1, 2)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (44, N'حمزة محمود أرسلان', N'بني سويف - ببا - بني ماضى', N'21765146537917', CAST(N'1980-02-01' AS Date), 0, 1, 4)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (45, N'رويدا رضوان على', N'بني سويف - ببا - طنسا', N'23916592003669', CAST(N'1981-03-08' AS Date), 1, 1, 1)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (46, N'احمد محمد يحيي', N'بني سويف - بني سويف', N'29544678391235', CAST(N'1981-09-05' AS Date), 0, 0, 1)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (47, N'كيرلس ميلاد', N'بني سويف - ببا', N'29328863988642', CAST(N'1981-09-27' AS Date), 0, 1, 1)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (48, N'بيان أسامة احمد', N'بني سويف - ببا - الطحاوية', N'24749900484982', CAST(N'1982-09-06' AS Date), 1, 1, 1)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (49, N'مريم محمد شاكر', N'بني سويف - ببا - المنشيه', N'24218471917021', CAST(N'1983-03-23' AS Date), 1, 1, 2)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (50, N'تلا عماد ابراهيم', N'بني سويف - ببا - شارع الجسر', N'27968145806670', CAST(N'1983-04-09' AS Date), 1, 1, 3)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (51, N'اميرة دياب', N'بني سويف - ببا - سدس', N'24112188500132', CAST(N'1985-09-28' AS Date), 1, 1, 2)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (52, N'فاطمة أمجد مكاوى', N'بني سويف - ببا - الفقاعى', N'28395392295653', CAST(N'1987-10-05' AS Date), 1, 0, 1)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (53, N'تميم محمد جمال ', N'بني سويف - ببا - علي كيلانى', N'28555785199983', CAST(N'1990-12-12' AS Date), 0, 1, 5)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (54, N'دانيال رشدى داني', N'بني سويف - ببا - طحا', N'28884295441570', CAST(N'1953-12-14' AS Date), 0, 1, 1)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (55, N'نور الدين جمال ', N'بني سويف - بني سويف', N'20317224520530', CAST(N'1954-03-19' AS Date), 0, 1, 3)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (56, N'ادهم سيد عبدالعال', N'بني سويف - ببا', N'22747323001170', CAST(N'1955-03-08' AS Date), 0, 1, 1)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (57, N'احمد محمد طلب', N'بني سويف - ببا - بني ماضى', N'24694724044480', CAST(N'1956-05-01' AS Date), 0, 1, 2)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (58, N'فرح رضا علاء', N'بني سويف - ببا - الطحاوية', N'24310504077620', CAST(N'1956-10-25' AS Date), 1, 1, 2)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (59, N'هبه علاء', N'بني سويف - ببا - هيله', N'21690934206362', CAST(N'1957-05-13' AS Date), 1, 1, 2)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (60, N'منة حاتم ', N'بني سويف - ببا', N'23802282676381', CAST(N'1960-06-16' AS Date), 1, 0, 2)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (61, N'أمجد عبدالرحمن مكاوى', N'بني سويف - ببا - بني قاسم', N'21842197249703', CAST(N'1964-01-03' AS Date), 0, 1, 3)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (62, N'سارة حسين', N'بني سويف - ببا - شرق البحر', N'26287193596641', CAST(N'1968-02-14' AS Date), 1, 1, 4)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (63, N'زين احمد اسلام', N'بني سويف - ببا - شارع المستشفى', N'24512357883367', CAST(N'1968-10-22' AS Date), 0, 0, 5)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (64, N'اسلام عباس', N'بني سويف - ببا - شارع البوسته', N'20202751270050', CAST(N'1969-04-15' AS Date), 0, 0, 5)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (65, N'عبدالرحمن محمد محمود', N'بني سويف - ببا', N'28638691076116', CAST(N'1969-05-09' AS Date), 0, 1, 5)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (66, N'عدي مرجان ', N'بني سويف - ببا - شارع البركة', N'26377266628054', CAST(N'1969-07-17' AS Date), 0, 1, 5)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (67, N'كريستينا عبدالمسيح', N'بني سويف - ببا - شارع المعهد الديني', N'28301422239420', CAST(N'1971-01-28' AS Date), 1, 1, 5)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (68, N'شهد احمد نعمان', N'بني سويف - ببا - الطحاوية', N'25771179906844', CAST(N'1972-12-29' AS Date), 1, 1, 1)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (69, N'لؤي هشام', N'بني سويف - ببا', N'24933324890427', CAST(N'1976-08-04' AS Date), 0, 1, 1)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (70, N'رفيدة محمد ', N'بني سويف - ببا', N'24532818659891', CAST(N'1977-02-08' AS Date), 1, 1, 2)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (71, N'غادة عادل', N'بني سويف - ببا - شارع البوستة', N'22388499901830', CAST(N'1979-10-30' AS Date), 1, 0, 2)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (72, N'شعيب احمد ', N'بني سويف - ببا - شارع الجامعة', N'23884999018308', CAST(N'1980-06-18' AS Date), 0, 1, 2)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (73, N'هاجر ناجى', N'بني سويف - بني سويف', N'20548708003304', CAST(N'1982-10-07' AS Date), 1, 0, 2)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (74, N'ميار عبدالراضي', N'بني سويف - ببا', N'20800751033248', CAST(N'1988-01-22' AS Date), 1, 1, 2)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (75, N'احمد رجب سنوسي', N'بني سويف - ببا', N'21776340580854', CAST(N'1989-06-13' AS Date), 0, 0, 2)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (76, N'يوسف نصر', N' بني سويف - ببا - شارع الرى', N'20435204139906', CAST(N'1990-02-27' AS Date), 0, 1, 5)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (77, N'نصر منير كمال', N'بني سويف - ببا', N'20900602270351', CAST(N'1990-03-13' AS Date), 0, 0, 5)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (78, N'احمد نبيل', N'بني سويف - ببا', N'27296185985877', CAST(N'1990-07-19' AS Date), 0, 1, 5)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (79, N'محمد ربيع الفقاعى', N'بني سويف - ببا', N'21013719187714', CAST(N'1951-12-04' AS Date), 0, 1, 5)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (80, N'ميار عادل راضى', N'بني سويف - ببا - شارع الاسعاف', N'24470758852339', CAST(N'1952-05-26' AS Date), 1, 1, 5)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (81, N'احمد خالد توفيق', N'بني سويف - ببا', N'23964947875401', CAST(N'1953-12-08' AS Date), 0, 1, 5)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (82, N'اسلام نور', N'بني سويف - ببا - شارع الجنينة', N'28876662540437', CAST(N'1956-10-08' AS Date), 0, 1, 5)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (83, N'شهد عادل', N'بني سويف - ببا - فابريقة ببا', N'25360208638422', CAST(N'1957-03-14' AS Date), 1, 1, 4)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (84, N'رهف نادى', N'بني سويف - ببا - طنسا', N'26635495743493', CAST(N'1957-05-15' AS Date), 1, 0, 4)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (85, N'فيروز احمد ', N'بني سويف - ببا - كوم الصعايدة', N'25397632557469', CAST(N'1958-09-24' AS Date), 1, 1, 4)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (86, N'اية ذكى محمد', N'بني سويف - ببا - شارع الامان', N'23355422384953', CAST(N'1963-01-10' AS Date), 1, 1, 4)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (87, N'فادى جرجس', N'بني سويف - ببا - البركة', N'27173908461491', CAST(N'1966-06-28' AS Date), 0, 1, 4)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (88, N'احمد رضوان', N'بني سويف - ببا - شارع المستشفى', N'25988805148667', CAST(N'1966-12-08' AS Date), 0, 1, 4)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (89, N'عمار السوري', N'بني سويف - ببا - شارع الري', N'27595670546461', CAST(N'1967-06-01' AS Date), 0, 1, 4)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (90, N'حسام محمد', N'بني سويف - ببا - فابريقة ببا', N'21153809105002', CAST(N'1969-03-03' AS Date), 0, 1, 4)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (91, N'سارة جمال', N'بني سويف - بني سويف', N'25326166199680', CAST(N'1970-07-28' AS Date), 1, 1, 4)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (92, N'محمد هشام السمان', N'بني سويف - ببا - شارع خالد بن الوليد', N'21974233866571', CAST(N'1971-08-17' AS Date), 0, 1, 4)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (93, N'عبدالله صابر', N'بني سويف - ببا - الطحاوية', N'28781756115858', CAST(N'1973-05-11' AS Date), 0, 0, 4)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (94, N'محمود نجم', N'بني سويف - ببا - شارع الاسعاف', N'29161941707689', CAST(N'1976-07-16' AS Date), 0, 1, 4)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (95, N'يوسف الخولي', N'بني سويف - ببا', N'24646493610997', CAST(N'1978-06-01' AS Date), 0, 0, 4)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (96, N'شهاب خليدي', N'بني سويف - بني سويف', N'26412040579272', CAST(N'1978-06-29' AS Date), 0, 1, 4)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (97, N'امنيه محمد', N'بني سويف - ببا', N'24251551980391', CAST(N'1978-08-29' AS Date), 1, 1, 4)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (98, N'حمزة عشرى حمزة', N'بني سويف - ببا - الجنينة', N'21142741584288', CAST(N'1978-12-20' AS Date), 0, 1, 4)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (99, N'محمد ماهر', N'بني سويف - بني سويف', N'22306658974530', CAST(N'1979-01-10' AS Date), 0, 1, 4)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (100, N'حازم محمد', N'بني سويف - ببا - شارع الاسعاف', N'26654516688350', CAST(N'1979-03-02' AS Date), 0, 1, 1)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (113, N'علي جابر محمود', N'بني سويف - اهناسيا', N'30104042200429', CAST(N'1997-10-10' AS Date), 0, 0, 7)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (131, N'عبدالرحمن عادل احمد', N'بني سويف -اهناسيا', N'30104422000320', CAST(N'1974-12-23' AS Date), 0, 1, 11)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (137, N'ندى جمال عبدالقادر', N'بني سويف -اهناسيا', N'30104422000326', CAST(N'1976-12-12' AS Date), 1, 1, 11)
GO
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (147, N'شادية محمود', N'بني سويف -اهناسيا', N'30104422000336', CAST(N'1998-12-11' AS Date), 1, 0, 7)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (163, N'اسلام طه', N'بني سويف -اهناسيا', N'30104422000352', CAST(N'1994-12-16' AS Date), 0, 1, 7)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (166, N'اسلام سعد', N'بني سويف -اهناسيا', N'30104422000355', CAST(N'1977-11-19' AS Date), 0, 1, 9)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (167, N'محمد رضوان ', N'بني سويف -اهناسيا', N'30104422000356', CAST(N'1993-10-13' AS Date), 0, 1, 8)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (168, N'ازهار حمدي', N'بني سويف -اهناسيا', N'30104422000357', CAST(N'1992-10-10' AS Date), 1, 1, 10)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (171, N'ندى يحي', N'بني سويف -اهناسيا', N'30104422000360', CAST(N'1999-11-11' AS Date), 1, 0, 7)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (198, N'سيف محمود', N'بني سويف -اهناسيا', N'30104422000387', CAST(N'2000-12-20' AS Date), 0, 0, 7)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (207, N'خالد عبدالله عزيز', N'جنوب الوادي', N'30004987521454', CAST(N'1989-12-10' AS Date), 0, 1, 16)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (208, N'علي كامل عبدالرحمن', N'بني سويف-الواسطى', N'30001452369548', CAST(N'1998-10-15' AS Date), 0, 1, 16)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (211, N'شعيب عبدالله خضر', N'سوهاج-رمسيس-غياضة الغربية', N'10351373558875', CAST(N'1989-10-17' AS Date), 0, 1, 13)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (212, N'سليمان خالد حسن', N'الجيزة-مركز ناصر-الدرب الاحمر', N'33794397962369', CAST(N'1995-12-13' AS Date), 0, 0, 16)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (218, N'شعيب علي بكر', N'بني سويف-الشيخ زايد-بني ماضي', N'36067186404661', CAST(N'1982-10-28' AS Date), 0, 0, 17)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (219, N'سليمان عبدالرحمن عبدالحميد', N'الفيوم-المنيب-الشرابية', N'19392814044279', CAST(N'1976-11-27' AS Date), 0, 0, 14)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (221, N'الاء ماهر قطب', N'المنصورة-مدينة نصر-بني ماضي', N'10737182363849', CAST(N'1992-12-18' AS Date), 1, 0, 15)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (225, N'سارة علاء اسحق', N'اسيوط-بني سليمان-الشرابية', N'11818888738461', CAST(N'1982-11-27' AS Date), 1, 0, 14)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (227, N'الاء علاء خضر', N'اسيوط-اكتوبر-بني ماضي', N'13241569255973', CAST(N'1991-11-21' AS Date), 1, 0, 13)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (233, N'علياء محمود قطب', N'الاسكندرية-الشيخ زايد-البرانقة', N'25631711400014', CAST(N'1996-11-13' AS Date), 1, 1, 13)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (235, N'يوسف هشام يعقوب', N'طنطا-شبرا-العتبة', N'25389537359114', CAST(N'1978-10-27' AS Date), 0, 0, 13)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (238, N'منة عبدالرحمن عبدالحميد', N'شرم الشيخ-مركز ناصر-حارة اليهود', N'28498770246106', CAST(N'1997-12-29' AS Date), 1, 0, 17)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (239, N'علياء علي خضر', N'قنا-الطالبية-تزمنت', N'28134189392148', CAST(N'1995-10-17' AS Date), 1, 0, 16)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (242, N'ابراهيم هشام رضا', N'الفيوم-الواسطى-بني ماضي', N'21242735486072', CAST(N'1985-12-22' AS Date), 0, 1, 13)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (251, N'يوسف عمر النشار', N'اسيوط-ببا-العتبة', N'24190480696786', CAST(N'1976-11-17' AS Date), 0, 1, 17)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (254, N'سارة خالد نشأت', N'الاسكندرية-عين شمس-حارة السقايين', N'27298127680600', CAST(N'1989-12-23' AS Date), 1, 0, 14)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (263, N'أدم ياسر نشأت', N'قنا-عين شمس-الشرابية', N'21134285098256', CAST(N'1996-11-21' AS Date), 0, 1, 15)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (274, N'ابراهيم عمر بكر', N'القاهرة-بني سليمان-ابو قراميط', N'38065683687678', CAST(N'1987-10-29' AS Date), 0, 1, 17)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (286, N'سليمان محمود عز', N'طنطا-الطالبية-بني قاسم', N'12222729250301', CAST(N'1986-10-12' AS Date), 0, 1, 14)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (290, N'مريم أحمد يعقوب', N'قنا-الفشن-غياضة الغربية', N'35847603934693', CAST(N'1992-10-11' AS Date), 1, 0, 14)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (293, N'سارة هشام فاروق', N'شرم الشيخ-الواسطى-الدرب الاحمر', N'19275624741871', CAST(N'1984-10-16' AS Date), 0, 1, 13)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (298, N'طه سيد خضر', N'طنطا-الواسطى-ميدوم', N'14899135420997', CAST(N'1979-11-21' AS Date), 0, 0, 15)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (310, N'منار على ', N'بنى سويف ', N'30102013394442', CAST(N'1978-12-12' AS Date), 1, 0, 22)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (324, N'Marwan', N'Cairo', N'95788965742360', CAST(N'2002-01-03' AS Date), 0, 0, 14)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (325, N'Mai', N'Cairo', NULL, NULL, NULL, NULL, 17)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (326, N'lara', N'somosta', N'567700908976  ', CAST(N'2002-01-03' AS Date), 1, 1, 1)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (327, N'Marwan', N'Cairo', N'95700965788360', CAST(N'2002-01-03' AS Date), 0, 0, 14)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (328, N'nadia', N'banisuef', N'0999777888222 ', CAST(N'2002-01-03' AS Date), 1, 1, 1)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (329, N'jana', N'somosta', N'778899540098  ', CAST(N'2002-01-03' AS Date), 1, 1, 1)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (330, N'TEST', N'API', N'46218966742369', CAST(N'1988-03-08' AS Date), 0, 0, 14)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (331, N'nermen', N'somosta', N'90675524319087', CAST(N'2002-01-03' AS Date), 1, 1, 47)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (332, N'mena', N'somosta', N'558800706654  ', CAST(N'2002-01-03' AS Date), 1, 0, 4)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (333, N'manar', N'banisuef', N'291078201867  ', CAST(N'2002-01-02' AS Date), 1, 0, 4)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (334, N'ميار عادل ', N'بنى سويف', N'301040887654  ', CAST(N'1999-01-02' AS Date), 0, 0, 4)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (335, N'سما ايهاب', N'بنى سويف', N'781036291088  ', CAST(N'2003-01-02' AS Date), 0, 0, 4)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (336, N'منه', N'سمسطا', N'879056433323  ', CAST(N'2002-01-03' AS Date), 0, 0, 43)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (337, N'DINA', N'somosta', N'783545663719  ', CAST(N'2002-01-03' AS Date), 1, 1, 43)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (338, N'DINA', N'somosta', N'7835456637897 ', CAST(N'2002-01-03' AS Date), 1, 0, 2)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (339, N'jana mohamed', N'banisuef', N'581056287746  ', CAST(N'2002-01-03' AS Date), 0, 1, 43)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (340, N'nadia', N'banisuef', N'798765783420  ', CAST(N'2002-01-03' AS Date), 0, 1, 43)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (341, N'محمد', N'ينى سويف', N'10203040506734', CAST(N'2003-01-02' AS Date), 1, 1, 4)
INSERT [dbo].[Staff] ([STF_ID], [STF_Name], [STF_Address], [STF_NatID], [STF_BirthDate], [STF_Gender], [STF_IsMarrid], [STF_STT_ID]) VALUES (342, N'mena', N'ينى سويف', N'392010382947  ', CAST(N'2003-01-02' AS Date), 0, 1, 5)
SET IDENTITY_INSERT [dbo].[Staff] OFF
GO
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (4, 1)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (5, 5)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (7, 5)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (8, 2)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (9, 2)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (10, 12)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (11, 5)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (12, 5)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (13, 8)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (14, 1)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (15, 6)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (16, 5)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (17, 12)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (18, 11)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (19, 5)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (20, 5)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (21, 8)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (22, 5)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (23, 6)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (24, 9)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (25, 6)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (26, 8)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (27, 7)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (28, 11)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (29, 12)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (30, 5)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (31, 12)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (32, 2)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (33, 11)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (34, 9)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (35, 6)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (36, 8)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (37, 11)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (38, 6)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (39, 10)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (40, 6)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (41, 8)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (42, 6)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (43, 12)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (44, 8)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (45, 8)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (46, 9)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (47, 2)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (48, 1)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (49, 8)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (50, 3)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (51, 8)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (52, 3)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (53, 9)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (54, 10)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (55, 11)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (56, 2)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (57, 9)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (58, 6)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (59, 12)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (60, 1)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (61, 1)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (62, 1)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (63, 1)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (64, 1)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (65, 1)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (66, 9)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (67, 9)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (68, 10)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (69, 8)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (70, 3)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (71, 6)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (72, 10)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (73, 6)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (74, 9)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (75, 9)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (76, 6)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (77, 9)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (78, 1)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (79, 5)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (80, 5)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (81, 4)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (82, 6)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (83, 6)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (84, 6)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (85, 9)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (86, 9)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (87, 7)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (88, 10)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (89, 11)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (90, 8)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (91, 5)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (92, 11)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (93, 6)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (94, 7)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (95, 8)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (96, 10)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (97, 4)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (98, 6)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (99, 12)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (100, 1)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (113, 13)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (131, 21)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (137, 23)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (147, 25)
GO
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (163, 18)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (166, 23)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (167, 14)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (168, 16)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (171, 20)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (198, 13)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (207, 26)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (208, 29)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (211, 28)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (212, 27)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (218, 30)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (219, 31)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (221, 30)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (225, 26)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (227, 28)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (233, 27)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (235, 29)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (238, 30)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (239, 31)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (242, 26)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (251, 28)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (254, 30)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (263, 30)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (274, 27)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (286, 26)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (290, 27)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (293, 30)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (298, 28)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (310, 41)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (324, 3)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (326, 2)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (326, 3)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (327, 2)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (327, 3)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (328, 2)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (328, 3)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (329, 2)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (329, 3)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (330, 3)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (330, 4)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (331, 2)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (331, 3)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (332, 2)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (332, 3)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (333, 2)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (333, 3)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (334, 1)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (335, 10)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (336, 68)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (337, 2)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (338, 2)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (339, 1)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (339, 2)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (339, 4)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (340, 1)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (340, 2)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (340, 4)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (341, 2)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (341, 3)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (341, 4)
INSERT [dbo].[Staff_Department] ([STF_ID], [DEP_ID]) VALUES (342, 85)
GO
SET IDENTITY_INSERT [dbo].[Staff_Login] ON 

INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (2, N'mayar', N'555', 4)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (7, N'mayar', N'30202012203255', NULL)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (59, N'طارق عبالهادى الشريف', N'2574362820', 5)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (61, N'نها محمد عبدالعظيم', N'20257714005725', 7)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (62, N'عبدالله احمد مبروك', N'20581482717712', 8)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (63, N'مهدى السيد', N'23307602088143', 9)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (64, N'معاوية احمد عبدالحميد', N'20253827289689', 10)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (65, N'محمد احمد الزواوي', N'24988074739855', 11)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (66, N'شريف محمد زيدان', N'25289981371949', 12)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (67, N'اسماء احمد على', N'29803673159787', 13)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (68, N'مايكل ذهني', N'23496358760785', 14)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (69, N'حمزة محمد السيد', N'27113678727084', 15)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (70, N'أية الله محمد عبدالعظيم', N'23549879080039', 16)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (71, N'هشام فتحى الطائي', N'25179908188892', 17)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (72, N'أسامة زايد العشيري', N'27905484270022', 18)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (73, N'شيري ماهر', N'29560715009943', 19)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (74, N'ضحي صهيب', N'25270771986024', 20)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (75, N'اكرم محمد عبدالرحمن', N'20932334568222', 21)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (76, N'احمد السيد عبداللطيف', N'24681715249687', 22)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (77, N'محمد عادل', N'23747230979955', 23)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (78, N'محمد جمال', N'27368086868048', 24)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (79, N'فؤاد محمد احمد', N'24591426148564', 25)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (80, N'حازم عمار ', N'20490179158784', 26)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (81, N'مريم خالد', N'29620532954911', 27)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (82, N'محمود حسين', N'20121136016721', 28)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (83, N'هبه محمد', N'27376921912803', 29)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (84, N'اميرة ربيع', N'29961275107627', 30)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (85, N'هند محمد', N'20364518524455', 31)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (86, N'سيد احمد', N'23813361577684', 32)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (87, N'بسام سرحان', N'27106484472928', 33)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (88, N'ميار محمد فكرى', N'28231795782134', 34)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (89, N'محمد عاقولة', N'21895936650935', 35)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (90, N'اسلام خلف السيوي', N'29316506160114', 36)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (91, N'شاهيناز سيد متولى', N'27223518228489', 37)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (92, N'رضوان بدر صفوان', N'26955274553803', 38)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (93, N'محمود عاطف جاب الله', N'21430710755973', 39)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (94, N'عمر خالد عزالدين', N'20420074250749', 40)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (95, N'سندس سند سعد', N'27561539429614', 41)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (96, N'منه حسين عبدالهادى', N'28784458089967', 42)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (97, N'الياس عيسي صبري', N'27318344046992', 43)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (98, N'حمزة محمود أرسلان', N'hager909', 44)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (99, N'رويدا رضوان على', N'23916592003669', 45)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (100, N'احمد محمد يحيي', N'29544678391235', 46)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (101, N'كيرلس ميلاد', N'29328863988642', 47)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (102, N'بيان أسامة احمد', N'24749900484982', 48)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (103, N'مريم محمد شاكر', N'24218471917021', 49)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (104, N'تلا عماد ابراهيم', N'27968145806670', 50)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (105, N'اميرة دياب', N'24112188500132', 51)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (106, N'فاطمة أمجد مكاوى', N'28395392295653', 52)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (107, N'تميم محمد جمال ', N'28555785199983', 53)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (108, N'دانيال رشدى داني', N'28884295441570', 54)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (109, N'نور الدين جمال ', N'20317224520530', 55)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (110, N'ادهم سيد عبدالعال', N'22747323001170', 56)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (111, N'احمد محمد طلب', N'24694724044480', 57)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (112, N'فرح رضا علاء', N'24310504077620', 58)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (113, N'هبه علاء', N'21690934206362', 59)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (114, N'منة حاتم ', N'23802282676381', 60)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (115, N'أمجد عبدالرحمن مكاوى', N'21842197249703', 61)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (116, N'سارة حسين', N'26287193596641', 62)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (117, N'زين احمد اسلام', N'24512357883367', 63)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (118, N'اسلام عباس', N'20202751270050', 64)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (119, N'عبدالرحمن محمد محمود', N'28638691076116', 65)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (120, N'عدي مرجان ', N'26377266628054', 66)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (121, N'كريستينا عبدالمسيح', N'28301422239420', 67)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (122, N'شهد احمد نعمان', N'25771179906844', 68)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (123, N'لؤي هشام', N'24933324890427', 69)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (124, N'رفيدة محمد ', N'24532818659891', 70)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (125, N'غادة عادل', N'22388499901830', 71)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (126, N'شعيب احمد ', N'23884999018308', 72)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (127, N'هاجر ناجى', N'20548708003304', 73)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (128, N'ميار عبدالراضي', N'20800751033248', 74)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (129, N'احمد رجب سنوسي', N'21776340580854', 75)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (130, N'يوسف نصر', N'20435204139906', 76)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (131, N'نصر منير كمال', N'20900602270351', 77)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (132, N'احمد نبيل', N'27296185985877', 78)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (133, N'محمد ربيع الفقاعى', N'21013719187714', 79)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (134, N'ميار عادل راضى', N'24470758852339', 80)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (135, N'احمد خالد توفيق', N'23964947875401', 81)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (136, N'اسلام نور', N'28876662540437', 82)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (137, N'شهد عادل', N'25360208638422', 83)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (138, N'رهف نادى', N'26635495743493', 84)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (139, N'فيروز احمد ', N'25397632557469', 85)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (140, N'اية ذكى محمد', N'23355422384953', 86)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (141, N'فادى جرجس', N'27173908461491', 87)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (142, N'احمد رضوان', N'25988805148667', 88)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (143, N'عمار السوري', N'27595670546461', 89)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (144, N'حسام محمد', N'21153809105002', 90)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (145, N'سارة جمال', N'25326166199680', 91)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (146, N'محمد هشام السمان', N'21974233866571', 92)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (147, N'عبدالله صابر', N'28781756115858', 93)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (148, N'محمود نجم', N'29161941707689', 94)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (149, N'يوسف الخولي', N'24646493610997', 95)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (150, N'شهاب خليدي', N'26412040579272', 96)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (151, N'امنيه محمد', N'24251551980391', 97)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (152, N'حمزة عشرى حمزة', N'21142741584288', 98)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (153, N'محمد ماهر', N'22306658974530', 99)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (154, N'حازم محمد', N'26654516688350', 100)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (155, N'علي جابر محمود', N'30104042200429', 113)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (156, N'عبدالرحمن عادل احمد', N'30104422000320', 131)
GO
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (157, N'ندى جمال عبدالقادر', N'30104422000326', 137)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (158, N'شادية محمود', N'30104422000336', 147)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (159, N'اسلام طه', N'30104422000352', 163)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (160, N'اسلام سعد', N'30104422000355', 166)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (161, N'محمد رضوان ', N'30104422000356', 167)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (162, N'ازهار حمدي', N'30104422000357', 168)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (163, N'ندى يحي', N'30104422000360', 171)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (164, N'سيف محمود', N'30104422000387', 198)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (165, N'خالد عبدالله عزيز', N'30004987521454', 207)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (166, N'علي كامل عبدالرحمن', N'30001452369548', 208)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (167, N'شعيب عبدالله خضر', N'10351373558875', 211)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (168, N'سليمان خالد حسن', N'33794397962369', 212)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (169, N'شعيب علي بكر', N'36067186404661', 218)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (170, N'سليمان عبدالرحمن عبدالحميد', N'19392814044279', 219)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (171, N'الاء ماهر قطب', N'10737182363849', 221)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (172, N'سارة علاء اسحق', N'11818888738461', 225)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (173, N'الاء علاء خضر', N'13241569255973', 227)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (174, N'علياء محمود قطب', N'25631711400014', 233)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (175, N'يوسف هشام يعقوب', N'25389537359114', 235)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (176, N'منة عبدالرحمن عبدالحميد', N'28498770246106', 238)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (177, N'علياء علي خضر', N'28134189392148', 239)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (178, N'ابراهيم هشام رضا', N'21242735486072', 242)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (179, N'يوسف عمر النشار', N'24190480696786', 251)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (180, N'سارة خالد نشأت', N'27298127680600', 254)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (181, N'أدم ياسر نشأت', N'21134285098256', 263)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (182, N'ابراهيم عمر بكر', N'38065683687678', 274)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (183, N'سليمان محمود عز', N'12222729250301', 286)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (184, N'مريم أحمد يعقوب', N'35847603934693', 290)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (185, N'سارة هشام فاروق', N'19275624741871', 293)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (186, N'طه سيد خضر', N'14899135420997', 298)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (187, N'منار على ', N'30102013394442', 310)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (190, N'Marwan', N'95788965742360', 324)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (191, N'lara', N'567700908976  ', 326)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (192, N'Marwan', N'95700965788360', 327)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (193, N'nadia', N'0999777888222 ', 328)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (194, N'jana', N'778899540098  ', 329)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (195, N'TEST', N'46218966742369', 330)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (196, N'nermen', N'90675524319087', 331)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (197, N'mena', N'558800706654  ', 332)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (198, N'manar', N'291078201867  ', 333)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (199, N'ميار عادل ', N'301040887654  ', 334)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (200, N'سما ايهاب', N'781036291088  ', 335)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (201, N'منه', N'879056433323  ', 336)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (202, N'DINA', N'783545663719  ', 337)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (203, N'DINA', N'7835456637897 ', 338)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (204, N'jana mohamed', N'581056287746  ', 339)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (205, N'nadia', N'798765783424', 340)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (206, N'محمد', N'10203040506734', 341)
INSERT [dbo].[Staff_Login] ([SLOG_ID], [SLOG_Username], [SLOG_Password], [SLOG_STF_ID]) VALUES (207, N'mena', N'392010382947  ', 342)
SET IDENTITY_INSERT [dbo].[Staff_Login] OFF
GO
SET IDENTITY_INSERT [dbo].[Staff_Type] ON 

INSERT [dbo].[Staff_Type] ([STT_ID], [STT_Type], [STT_HOS_ID]) VALUES (1, N'دكتور ', 2)
INSERT [dbo].[Staff_Type] ([STT_ID], [STT_Type], [STT_HOS_ID]) VALUES (2, N'نائب', 2)
INSERT [dbo].[Staff_Type] ([STT_ID], [STT_Type], [STT_HOS_ID]) VALUES (3, N'اخصائي', 2)
INSERT [dbo].[Staff_Type] ([STT_ID], [STT_Type], [STT_HOS_ID]) VALUES (4, N'ممرض', 2)
INSERT [dbo].[Staff_Type] ([STT_ID], [STT_Type], [STT_HOS_ID]) VALUES (5, N'عامل', 2)
INSERT [dbo].[Staff_Type] ([STT_ID], [STT_Type], [STT_HOS_ID]) VALUES (43, N'مدير المستشفى', 2)
INSERT [dbo].[Staff_Type] ([STT_ID], [STT_Type], [STT_HOS_ID]) VALUES (47, N'دكتور باطنه', 2)
INSERT [dbo].[Staff_Type] ([STT_ID], [STT_Type], [STT_HOS_ID]) VALUES (48, N'دكتور جراحه', 2)
INSERT [dbo].[Staff_Type] ([STT_ID], [STT_Type], [STT_HOS_ID]) VALUES (18, N'دكتور اشعه ', 3)
INSERT [dbo].[Staff_Type] ([STT_ID], [STT_Type], [STT_HOS_ID]) VALUES (19, N'دكتور تحاليل ', 3)
INSERT [dbo].[Staff_Type] ([STT_ID], [STT_Type], [STT_HOS_ID]) VALUES (20, N'دكتور باطنه ', 3)
INSERT [dbo].[Staff_Type] ([STT_ID], [STT_Type], [STT_HOS_ID]) VALUES (21, N'دكتور قلب ', 3)
INSERT [dbo].[Staff_Type] ([STT_ID], [STT_Type], [STT_HOS_ID]) VALUES (22, N'دكتور نساء وتوليد ', 3)
INSERT [dbo].[Staff_Type] ([STT_ID], [STT_Type], [STT_HOS_ID]) VALUES (23, N'دكتور عظام ', 3)
INSERT [dbo].[Staff_Type] ([STT_ID], [STT_Type], [STT_HOS_ID]) VALUES (24, N'دكتور تجميل ', 3)
INSERT [dbo].[Staff_Type] ([STT_ID], [STT_Type], [STT_HOS_ID]) VALUES (25, N'دكتور تخدير ', 3)
INSERT [dbo].[Staff_Type] ([STT_ID], [STT_Type], [STT_HOS_ID]) VALUES (26, N'دكتور مخ واعصاب ', 3)
INSERT [dbo].[Staff_Type] ([STT_ID], [STT_Type], [STT_HOS_ID]) VALUES (27, N'دكتور جراحه عامه ', 3)
INSERT [dbo].[Staff_Type] ([STT_ID], [STT_Type], [STT_HOS_ID]) VALUES (28, N'دكتور اطفال ', 3)
INSERT [dbo].[Staff_Type] ([STT_ID], [STT_Type], [STT_HOS_ID]) VALUES (29, N'ممرض اشعه ', 3)
INSERT [dbo].[Staff_Type] ([STT_ID], [STT_Type], [STT_HOS_ID]) VALUES (30, N'ممرض تحاليل', 3)
INSERT [dbo].[Staff_Type] ([STT_ID], [STT_Type], [STT_HOS_ID]) VALUES (31, N'ممرض باطنه', 3)
INSERT [dbo].[Staff_Type] ([STT_ID], [STT_Type], [STT_HOS_ID]) VALUES (32, N'ممرض قلب ', 3)
INSERT [dbo].[Staff_Type] ([STT_ID], [STT_Type], [STT_HOS_ID]) VALUES (33, N'ممرض نساء وتوليد ', 3)
INSERT [dbo].[Staff_Type] ([STT_ID], [STT_Type], [STT_HOS_ID]) VALUES (34, N'ممرض عظام', 3)
INSERT [dbo].[Staff_Type] ([STT_ID], [STT_Type], [STT_HOS_ID]) VALUES (35, N'ممرض تجميل', 3)
INSERT [dbo].[Staff_Type] ([STT_ID], [STT_Type], [STT_HOS_ID]) VALUES (36, N'ممرض تخدير ', 3)
INSERT [dbo].[Staff_Type] ([STT_ID], [STT_Type], [STT_HOS_ID]) VALUES (37, N'ممرض مخ واعصاب ', 3)
INSERT [dbo].[Staff_Type] ([STT_ID], [STT_Type], [STT_HOS_ID]) VALUES (38, N'ممرض جراحه عامه', 3)
INSERT [dbo].[Staff_Type] ([STT_ID], [STT_Type], [STT_HOS_ID]) VALUES (39, N'ممرض اطفال', 3)
INSERT [dbo].[Staff_Type] ([STT_ID], [STT_Type], [STT_HOS_ID]) VALUES (40, N'دكتور طوارئ', 3)
INSERT [dbo].[Staff_Type] ([STT_ID], [STT_Type], [STT_HOS_ID]) VALUES (41, N'موظف استقبال', 3)
INSERT [dbo].[Staff_Type] ([STT_ID], [STT_Type], [STT_HOS_ID]) VALUES (6, N'دكتور', 4)
INSERT [dbo].[Staff_Type] ([STT_ID], [STT_Type], [STT_HOS_ID]) VALUES (7, N'ممرض', 4)
INSERT [dbo].[Staff_Type] ([STT_ID], [STT_Type], [STT_HOS_ID]) VALUES (8, N'دكتور اشعة', 4)
INSERT [dbo].[Staff_Type] ([STT_ID], [STT_Type], [STT_HOS_ID]) VALUES (9, N'دكتور تحاليل', 4)
INSERT [dbo].[Staff_Type] ([STT_ID], [STT_Type], [STT_HOS_ID]) VALUES (10, N'صيدلاني', 4)
INSERT [dbo].[Staff_Type] ([STT_ID], [STT_Type], [STT_HOS_ID]) VALUES (11, N'دكتور اسنان', 4)
INSERT [dbo].[Staff_Type] ([STT_ID], [STT_Type], [STT_HOS_ID]) VALUES (13, N'مجلس إدارة المستشفى', 5)
INSERT [dbo].[Staff_Type] ([STT_ID], [STT_Type], [STT_HOS_ID]) VALUES (14, N'طالب الطب', 5)
INSERT [dbo].[Staff_Type] ([STT_ID], [STT_Type], [STT_HOS_ID]) VALUES (15, N'الطبيب المتخصص', 5)
INSERT [dbo].[Staff_Type] ([STT_ID], [STT_Type], [STT_HOS_ID]) VALUES (16, N'الطبيب المقيم', 5)
INSERT [dbo].[Staff_Type] ([STT_ID], [STT_Type], [STT_HOS_ID]) VALUES (17, N'الممرض', 5)
SET IDENTITY_INSERT [dbo].[Staff_Type] OFF
GO
SET IDENTITY_INSERT [dbo].[Tokens] ON 

INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (3, N'9bO4cB9RMm1jy7GAA2LFJFW7zXeeHlNE6VlisOpuF5LQ-nAh7hmK9nLgEZzUqXwUTt8fxZDXe7PD1Y3zjXQpNzi1PN7D-h6xhR-s9qzlNH62vwjQ9JLHp6ZD4riBRADmt_qymKPqVSgEHNAqRlI62GHSjImiIdU0PdMuQs3ig-f9KiUdk94EE2YFNymmlPlPEbKPQ_T16m-NNRP300j__zNP5aZk1DV0CRzLxqAhjUEl96jRlOlHhoQeqx5my74h', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (5, N'5UaCQ9Cgz4CJuzzG88fG9BBI3xshjTaJ217AwtQeYbgj-eGFYd63ptZUc9bJls0uAcy_FmOhtD1gP1uEYSW2GraDOOuHgCWLr4n-hH06T2r2ILNvyYtDMjl6g3Wd_nPIxDcBd8o76QJiSikigBNZl77RvLmx3AZxmePrzVIEFmjC37mkaV6ssFr_JY0-4FBYdaPLq8DzOPHjYYCuo2GbjN3GSdJCBICqDhJRzybmA8oNTcgr4LhH6DjwkpIZicSI', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (6, N'3HrejR9xY2YIWUguE1H0P5EHbTIpaM4WU4v7IpkAZCxNGvU7bfrCe78enjlEKG3Anf_74ERtuNB4WDz7iJOzfxptY6U53MGLL8eYTPxFqM_LTlmMXJFaR8LWhBx9RDW94s8oU7yb9Zvj2iRJaYnbs5lauo8T0FCQyp7daH_ssHlAQed_PCTflxTK0NAgtdWybngZvjzBIZik69CtWhite5cIcBdmGVZ6dGmfjbpaCh-BY18MQ3PWu-qubK4ljawi', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (7, N'NREOQGggQYbe9ifpsyOwPZoNR43_tsHtqjzZpgwi0ih804r9pfFJ0j72Q4000pfFOWQ0e5aDu8RAjOdrUbSJxBTdNSQVwhEp30JXFYyzyteRLbI6FOy_FUPE86gwCcjKxkFh-hB3M8ctg8_s6RGIRoyMSYu5_Cz9ZbqUPosHHL10HcDVO57ob-48eALeCqHT1DGq0XhnY8zylKRdZCd6hQRKGCZzvqWL0YuO4-BXU5SGYREae_z3u47joyOh6ZNX', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (8, N'JpMa1a6igkZcQOmfff_jGP0Smv3gM-b4RXk3Zcn9Rj45FDGYjNw1Blj6wNOgCqkveWOn5JMDukfUXRISqxIeH3-Be_uMsUltTZvFSO9gBbXhdFhnrmQNj1xX9t3890_BPsVTPB-8hxJfkXOM3tum_qLnLeG8CQoO1rFo0gHqNLVWHdOnjRJRX-K_o3ynKHmFM13RfcWHupoW-dPLXPJL9eU3s1ALDZcEkbNrX0Ug-2f9jY9rTNgT5dQ1reMCI51b', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (9, N'2KuROs21PSZLP5TGs6JTsCnrBhMMemrTuI2SU8wgDtrczTZiPAS1ZmItuA82CcC0x1Y1OPNxG43gh6mE6Jap5pXfP4YP99loi28Zh7uJM7Sv4fa9wWi4bV7bX1_UoUZds36br5WrP8GU8yQp2z3Lhqd4a07cnJPlGold1QEwEcKilQ_7RUcbr3Zipu9rv4wh868BmFiPaxoSBuLPq1tcwV5cF43J9fD7JB1BAt9vql7I8LL5cgKu9xcRDfpbEtbi', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (10, N'hYuBRBmYHXs4_FJMgwGOb9fCJYHhwn0r92dMFXBtWh0fOAE3t2OcnAYPqnj-L1BBkCGVYqVHA_rfJ7naeQvUPZRdsA7fkaArbm2RKM8ALkui3EGQ0sZGXz4-oggy-Y3v3DiOAxeS8ZC1p-rhMLnfUyEaBMJxJ06522vi93OY3BbbNHuR5T5MM5PfuZrM4sFySNt7KnLLuBf6GiG4oTzyIZcj79JxoONoR9f7zesrrypg4lJwTbTRMLvz23Jmz_dh', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (11, N'fjB252ZEF-EA2661epLXcHHPAANwU44NydqTZhZBWiAtfMjqbkyDPrUfoczGzFnk4jAN9mOklttpHxvHgIem-fn3k4LoeKLc-6Aw3JYWgWcLMGcp_7XDYquxY-mRZT5Pnhu1gTKQK91jtpga2e3G8OJGYM7pWp3qR2_zJCmeUTM31cB-Yc3nVEurloz3JagI-LVUYUOXQe9mdPanlb1ee6Z6bRaOfQdE-LOOHAx10_MwOvu3EtZ6d9wVilKti5Mz', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (12, N'9M5RNXUtksFm7ournaOiWO0gsAp3uN3IzoRqQ8J1ASkBKlO_lUDxk10C6OOCPkHC5UJCcO2X0pFmU5ONRJbUCP6UXJXABCG57PSdX0eiHseq0ZblCRF6cHNK-DnmJAzxgI-CE5jTJgdTttXpg3A2ByGgZVeJmHvrmWO2StSjo5du0R9dQItr4RBVdre_5UMzF6CdvL8qq77Vbc5lz1jEl4hY4uMIgoyVVEpwK6H1Nv4THL7LbLG4nhHat5NdzTRM', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (13, N'0gg5aFxCb2A2jyAQ25vI5OKQPltck0oOyANnrszlRRUFpqekUqe4C5jsJcQYoRAtQk8Dwp2WZPTtydArJFXgUE3bLNk0y3In6KYRICPQdBce5URZai-NDqlgTeVRVLY15BZbMccoCh_Yym0FiXIc-c6kF8hY_2M9iLT_Orwd2hwkmrIUC9k0n5mkKkIzhJwDpCzEZfcR3PXZb4pnaej3eAOEQJLWWSdXeNJa217zgn7GZGacB3QUlWxD7jY0t2hw', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (14, N'iNIffnZfostKTTo-KdQuqS5e1MmhX82ZDcv8Ki6Gwb7HwJJfiti5GuIJT5ByWLqV3RzD4JCxjQrOv3hgcJK9380wr-PW8k31_cBjACC3fpoU4p-wYI14dL-0IAWaMVSLqc_lkZD3y4CwsAVMs0ylhGt5GO_73-9T2nH0vyErQEIlfzQQ-4stQaiGzTtQus6F-Vxcv9PTnqHcKE-5WiOlLaXOop6J_09PO2AzS4FdGE2nppe99CI8A9svzwmHe4Gw', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (15, N'1RfvcB3JD_t6l6gkVuh5hoqg2fwCR2E80RjV4w8cHoRPhzDm9ZYrwmK4OocN81hrXTstcFYgtcd_gQylqPuW9uOv9iQn16mmRhVWEGXk02M7X8RsnzrtNXnPn9rngzGp5uD9sw87ZwNCn_JYQC1x9e0Ht1KOK0WlY1PjzRvx63KAJOeAwEk6LuQE3ns0-DoN-GxAg2xzlkeM6Vw_cxBgIu2nS6ImHb03qBmeaxac3OES374-dWKL56hyxCP08xQv', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (16, N'SxGJdhC5UcqbETDE3pV2BYCu__pUOVKYA4idUFfV92ecvGUJd1C9DOh9jq493P2HAcnx9_AsrOkEyHB2b3enw73W1C4rfb-Ebbv-xsIlFuJGjbDAg86TVR4Yg2Eti_iH0DD04JH9wzlVsnyvrwaFpzh24TGNtvzJkc96ZQAdUrhnt_7EQ_Q_GFETyRblopTIBzl083DMoCgpF0LFYsEOFKRVI-fYa9FaCcSvcw-ifbrJ8uLnpHAUEh1xUTR2N_Cb', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (17, N'rlxoEatbdc9313-6NfQz3ap4OJO13ZJEO31wKKeY2urub7dPnDAuCnjg1LyYP9eXVF5J1BF6JcAT-nlfKKZ9hGN_1n3eWeoWQLSqra9ZWgmwmD_rCruSHy0o-5PWT_RO_i456kJXE2ctPk_8c4WE5gVHr89VlSYn_oVV_vVEc1KCaFUI5Q9KKv_92S-1yTyLhGidKO-UEUaiWWuYo5AcIqE5zxtD0rmhysx6LK8OXE9M3lAagqzGNfnUqUZuTqZu', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (18, N'Yj9Fkf7A-zg4_hmfQBabYfgPZLytlxKf9ylkGu2dUDa2_4YW-kFAvaW8F4bEIRlsLSHjDMs-EGGJM4ClbEcJC7yxk5Br0d4Ujm8rogsSBpKB85ElkoVSTtzvZZ72aHTjL5oM0Q58XwjNAP9VWCj5t6i6bBvipdOMq2zMq-SAnlSmZ0Tz67P_Is2uF_T6JpyDEXScAa72q6PFjW6EbXqKyHIa4YlRkmmZrib7JahU8kGLVPlGlemGydHhSrjL_Xzs', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (19, N'ehgKWdqwLsCT6KsHLImsP_Xg_yTcS2pgBYx5HvVplO2s0a7-Wiy3fX8BlakLyU-rCK3zw0voAdVEo5gciFGMYHgPsXyhwtesVqaKJPBNoLKtM4Eaian0MoSPQHjTvTSqCLFWVUH7lOywonVnvQRPTLn0_yk94oCP3B76b4qmDawiJVo-XtIXPEWliTHGRdYmT4MZP1uyw2mTG5G-BzNqmr90RH9thN-zefE3AM-lKQfYuLrD6hf9SRFDjp5x97RN', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (20, N'nnVOPCBp-LI0h-LvselJQqPkF1obbi9KxfxFdUgj-tPT2o9YpVVRDKD7JyIYlceN6srztQ62XtzsfG2MeZpzq05a_p2w2L8d94wVZJrMnH7euzvJz5IJHUksxxN12w5AgjATjxcZ-zyCSw2qGZQgNqRvK8BanIRDKqu_czf_j7LkThPeyBt4Pf7sgmund60y7EapPq8Oef9ZGqrL2TCtcLJFb-Mj_TSCTUXtg047lOdo3xLFwJk_6fi-sYby3X5b', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (21, N'z4TjAQCQik-nhnnKs4L1QcuSjJdj_amy18hYPjmhoqwaNScSHmKBCIQYn9OhOgmEbftv018EybyY7qhAVNt5T8gKwLfubWj8gcBcaF_9LAKvDn7ajt-9_5DyfpXU_4ySdHH6Aiakt5d5D_q_k_T2L3T0DT47zNWEb2Q1OG9jEhf6NQvDEq42pPYuLajzjzOstLmyT3JS0X5zuMVrIastntEV2e00EWy8YNU7IYymk3220fchVUvVYm-2uhkAcm_4', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (22, N'wt66HMBh9V2Ez8MUyTFc0f2yfrmZqrY7O2Be7IoBStGIQl4-a9yeDb3yy-zKq69lW03Je1xEA_WpXGEk1Ygjo0l8joj7dD2Ji329dXrAF9qnD408tFoxHrsxK8GabgEcr08rro0EpMMA6jZCTpCvAR1mMbF9sWriUR9aVgPNc7gaGegc3Cipfc_YPaNiNNx4FRmA09B5V2X8H1yhIZ-QAC1zAZG9afvxfUiMjL6n2P52EhQ_j_tb-GwEOtuF7Pid', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (23, N'4JNBBkAp1yHIDPZ_SWzxyp85l2F38AkYFV5trdkyFN-5EQ2Bc3ALPT0Ssd4A7sRtt8BtHmZdqVPztQoANe07mdNW9Z6OXQP88lk3Bj2ux4j5iN2gLGLS_793IMA-ngSSq_Y2ME7mu4_8vG4DfzFoqek_plTaUo0WGc6ZH-gqodkREIhb3Z7_f_g2slUe5V9jOo5CuUngpyhT84SbjbvzXL1z-pw5_JgqlcbyM6ok_xWJC5w33Dl2-VP1x1Do1ESL', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (24, N'CPFu2az8GK-w4fA1ahgbKNzWXK7IHVcV7ZlyS8bHM3m2uqDD-2obtyIewc3OPnQIq8kddn9_hDK1H9O9MvnNOQBUbPHSHhedXcNMvoe8GQc3-GMPJ_uN9mHQEfXR7NuzQ6Vrl0pliaMA5ShJQ06Zg9oOJYIMHffSYQJEU_QoB2tDC51pZm0JX0xeaSNt_WptPmM5gaFAVztbdZjbeGn4t_xyFLpmHd5nx4XrFy2FjcAeeDI9-lJ7WmHP73PqlZ9m', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (25, N'9EM4f9XTV0TKWA5GE4FznuFFWg2ZvPH9jdu1FJPs-BNe7p3PIyLd_3XNVO5xmWB6Fqu9uh_doOPktoyCnWPDGDWeW3h21CsrtweX6Gx3u5VJGm3s5p2kPzcMpMxx7dJApWjPZ0JKxUHM-aFG9uC6RUzDaIHfVzETiwWzlBFo4LrtB5FVfs9Klvw2sulYAfWRgvdYYZ-8JBS9l1OKH_bzs2LHD9KDa4m-4B7rTft6QxiVfzg5mqdJLx80wS0nu_aT', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (26, N'P-LafgSQSt3bJTYIWnpPzjkCvOGiNmCnyMJlJGm99HQBcyTw56scXNGBJnqyzU7eyizZL6fWQl8a36Bvz74yvOukjZeCLP7iuG5zZvqgQkMwTbf2PiJGYKkD2_cMAhoo4I23UtRpJCKgkUFu5XvjVVPko2zqpiwbBqKM8i8uFY6PRLPmPbz_Y2n9VGOFWd8cqyRMr4cbRMey6MYwdw-MO66jwYiYOw1yZNH_qcP10mC81aySlsepapLdZsTdIdDz', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (27, N'QjS4Szb7gE0HW5yCz6nJC0nnsdeqa0o9T_m93nsBailPiTl2mfJxYvUGzv8Q-zI9M09mwWuWoRhBP-V8cNiHeXlL5eEd_G6oW9P8-FhtwBZCA75vwEOZoRKcqWkxa-sbauw0yf4QpsgoTvM4r2bDC7y_ros1LShI-0nQ2NIxjEZY-X8JRh0y0zK0uAjabfRkbI8siGFBGN5drmdM3_vFWbE9DlKlreIn6M9aOHDqcxkWh1e2h0lb4Wsg2gmI2SD4', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (28, N'jR4_ttZYBIBohw2uetvYeu5CT9_EddQ6siW6g6lUTGK5jWisiF8SX8a4xuOQabsejOwbLGEnrf_KKixIuW4Bty7Dbd6D-PBwM8wPv2c29Eefyqzl6Ylv03Grndd65C0WAwGtKPNAWKu1iCd8a2O1YVMSuQe-nFQPyjyourmLNkuNpwC9rfASLlgFUpAzCSCPaaW-7x80j8r1Kpa1A7YnaU3Y1ZbaIx9pWHo8F-w7y7XdUg-LD8Yj9n0OeoX_o1K4', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (29, N'CZ61PUtrx6qK8L_n4vPf4_ChfDMgP4cln6HKm-RKnFv0bWtFlpOQG9yqHh-78_D2pI2dcGL1BnnuPZN0vZygoVTV3YT-Vu-57VvQKB1G3fEl4IIfW_vQHAqfk2_e25quc8PlmzKPpQ5_yqX5DbXaVwqnnrWjpsdEaUwXTTjFojV88azByOPtccnLrwfO1Rz57lE9v40bSsajxasHRFx1teriHjeu5pLReGOCG3pQL25vyqarTX3HVFtUTDU9KNdV', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (30, N'rg4xR9x9601SsEofcbnWqS9PZIrShHmlXgCYrJAu0VAsKj1O3KDC3lgCAXtu77H-BuI525gaCZsujOANOFPHEQsp38ijIAYeQMYqSh5aCs8RO3ofWf2TQAbVuJZFKAGMzeo0o9OlHF9BzLMUkzVQ3nCHnruui8-b7TvSsz7RZ3lYG-HEht_q8idkp_Q0WuXnHR-vtNqH-WjG6U0-qcmkIPL0aRoqEdv0erc2kVIzYMIeJ0xeHARb5fd-PuPO_TiG', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (31, N'cOOHO4o349EX9F2Zb1kmcs9zFiE5lHyJFMxLKF3wnFF67qt8UMQwkbJNb4zYmZRty1-JurUulLa_O6Fi5D3XaShuKpAhxu24JZfPUnlamnNYwAe0xyp-1oxnkGHYWDv1hpOYc6gP_jQAYFfRZ8ks2RBBosMu9dT4xV1m31Q6nyHjzcY6jXUBFphqTDtVA1wRJ3z5L5z2LAhQRNM63OtDrtP--AEA2nJLF6ZrVkpaGakOPcnak3LTxvqVrm9-8BXm', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (32, N'N_SN1GezJYRVCRf7349Z489IqFKUf7cBTJOvB6Xp4e31emCgjUcwarz-TGMhJDRl357pZZYM7JOXU7bdfcnq03hIyBdv3ej5K5hiIxBhQAXfnD49391WBtLDIVM7g2x2GuQOLcsH2wNWweiFmgmGYV_98VqLo_jxTUn85y9WJ8I2M29F2vMp_yLx81Ii292Qr1a1Gu8Q5LUs5c6ttehWoPuAbnuLZvlawJjhLzxVlwP9QsTGnan5M6mQvL6ROH7H', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (33, N'tyTAC3IUuKaE_Zq6xkqGMNj5X11p4ieXzyG3aEd173bKQ7r1Ed5afi7cCWSo0QTQavkIa2aupMqARP3D6qGYaLTjjd3skOwzyMqaG0a4crxw_O6vowLLtPDEhVqpnhJYFNEe_555LVBCM6voSntm_iaHYmErBrUy5h7jBK-vj2vRBM4BnEWeVnCFH2BZ19gBoKTyG3bkBlxZU2pTDGFu_WrQcAWO0YMugf906i_50EaR_u6w03rR_OvCbVG3iYdh', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (34, N'rPTURYUkL6_npHAVodbBlnlhe9FfK8Mwu0Wgaix9HhoyTgiPSytyMRWeQZeZJxe1uIA8aBcqR1wA8z-gOsk5IIX_uAqGo8N4Kuh4-Y_Ap2Yl_p3YOK1bPuScGtZzQhl_L2Sc8iEleay8m2tuHgvE_Ok_NYkCaUJqihCntxUtRuFjCO65Jg8dO4XSqS5sUzpgzyAMgaTuEoDoGLb2tNVPO8OAF9nWyNwoPXzkKObSz39jFq6w2eDv7S1DxUPxQkMT', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (35, N'niMFVvdYtHaNV2e3sFRPm2eQSM2WZL6OwcRFbyq3dS3e3jDcynJCLD2jGXAy1PRMyVVMqmB7UAPpsuztFwb5wkt1uRVnONldlJpqfbtHF5Qlg_RBppnF-sLZddpvponO1cNPR-qbPw2ag2pz8oawNAtx_OBqnIxdF0ZBbBYC3EkAg2yb-g5hn8BGlANxNhjRR1QPCJt5b4XNTsRxIWZEmFHrEEhIPy1DZ897N0AjKnm_nQCH0f5yWMj4xRZNMqb-', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (36, N'tH0y9Br-4KruEnEzDBnsXri6UP-VwkcoxOlINpMhJk7jbDgTdmRNd2NrKmzRCBssgdJd7sB5jhEmhuPGJ_TBnT5J3VfrjvT4ARoSCkyd0LQ6a32HA5hO_G8qCpDWUdrhhjXkjpQWWw7kQMYPoe39p1pQtBDlWwrI0Cf_j9Yhw30SsLU2nnkkvgar1ONESrPgKaEJd_6JjgKszl6VxMIL067oH0RVTY1GQTSP70FQy5ufVlIWkDrjo1XBlKRHRUB2', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (37, N'c8e1_ZEXPJxh3xfocRX_DUyXWKRRHJK-vC0y6ylT_LvejBHtidWHp_5f9Xoi65n358pjqt7joBn6qfLtOmWYqaOaiParHhZVWP7UYtx7f7F0hU5kt9uhrQgKx-Hb-CAyuFZp8sO-znbD7_tTArLpuu90Qjr9U-PZzMf_eGlwUWi-fvdVI0SndTzJy2r34pPHNlUv-BaVbIL9ddkUnR3npAX6eQCoKSJNHuez99RpcM-VK5v8qp9jNL9pZCJnl6r6', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (38, N'SWi5yVZeg8W_lcAjcYa5S5UByOu9voFaNcsJu0wDoYgtmW7bRgr4ODyK4PT_kfq1jyRXzm0X6RDivDnKPy343ppVYtF7Dqxj-mm7cya61xpAW-b47zksQQcXDC8adGNAqro8krr6rYQzlkgh8aLGKdzUf5pOmkUbPAMfrQrikyGlpQwjCAX5mafcQ7IATA_b2FsulByz6InH570Vkw_CPAlZ4Rco5diuIZxb0yMfr8QhJZVC336VLF_5DoKtttLX', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (39, N'ef7FycBFKT6ri-0i7DW3X5M68SmUTO0aScwB-wY4-bovOtAQDcdTbtwmH7l147Jf_JwpQV4jhrvr1KgPM38YZ4jKMk4QKqJOonL7TEr2XVyqR4N6ONeoY2hCo2GBsbbNEZ-LtU6SDIqttZulcKEUmVvW_G3hxN2QSx_DDm3lZws89GnhekMO3uc7WjjN5BXZ2oJ7ipFCW42KJwVCi9P65XfFrzvTV0QUmixakwMs8DBIMl_9lzB6ksFdKg5v-DJe', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (40, N'ZcannL7Pfs_oVWXBmGC3oL24clffSTGDBvGY5LD9JNIkO_QbdOtF7nD5Cxo9KhRUAsOwBzYbsYkxGEDXtJMXTI7KPc9A8VMht160nn23ezEvFxQoNk7vpAW3udQ9ji7q5o3J4b6gUnvyKhM_Ho-mR5AuEfeNM-zctOOIDt3gKe-PVG67pJZ67UYGAYdYFLXzErN1kGG_CWGrrkUL2U38bC9tW9ogIyvgXITeKpqVygw6pZCMGAgV2VhqHx8rwdvm', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (41, N'6fQ8Ds6Ht_0D6qnoFgEebNQcTkqvZOmptsIOf_xUULLtEPHLJBrqb-aoKyHu5kdsz_mHFSl17H8YpInFBS7-gd5tu9JwvoL3fMSxsgFGxUvrtj1XwGYKwiw9OpdPbrvxodwLMcZEisMNBFOz2j2V-BPDmj8eG9K632NeUcoHMC_bPCeY6dHY7e3HquJMx2PQWP_-SCaOqTMXO_N5VIl_81n_s7NYpEsqYpq2GXTo73inFXRzEnRhYorYZeLzx7Yn', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (42, N'Eh7w0nY5ID39RJr-BOSm9ebaouFubku23EeigS2iIqWCAudunz9DvzGvbJoWoLM_sqLtWlOhpfo-9fTYcs0Vz_HNYL6BpLLZJqA48h6pG3QJ1En91r51VunG9yGrXKUeWpCxQ1U9xAnqyPtdbA42nptv0ybgS4a604HhgsnPbfGr92RfOiLKOoU35NpHZ1z7-DMMU5coOj195eKLa2-DXi5PK87hE8loDzox42CgM8I1NRHDnFN7YKoN7vZBV38k', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (43, N'jHA8Ad1tgAvbRlwwO_DKkhHCYv1nwKi1dON45J_1kADM1V-mBmClPXWSjDrQKhxFKJuUZZj9ttyOEyRHSyvvbbk38iHUlBNOVfSu5Y3SLM81o8i9yIcQKbcjrLsVXy3Eor8rHIZUM8-KnfOLovEVTkAALzoPM1mMwGDhtPAXE-C6b0UIwodFZQyDvJ0tynb5ARUXNMyp3ObkFiR8Cjj2GlrLfUXMUWzqywxJL-u8dqvi9pzy2rnqthMV-rM9ZMeo', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (44, N'g-WKzIZO36RdJVe0wezmRlp8UTRo1I9FT2ebntSBpI6Qrprr-qiyxlmvATH2HFtOq1wnWdiVO1nU6MVIN6vQpqlkGMzbhrHfy3fuGfVbpUnyau4M3z_byh2la3VbCc3So29ZmytZXCgjDtrSn5lK5PGd1YvFUxrPgyFuFBJeobym-YzXdlPS-4cswd3YWc8_aD8T_nQHDjqUr-JpBtaaRYzuQuAPQl8IVe2blEGfYCrSIJ9w0smlVPaBReHxiyN_', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (45, N'HHuAKr5pJTvWbXL60ZYiFeBVy9FIM4xYw-CIHKQ6arr2-yTJO0HEgB6H-EQHuK7xKSwOXJ6TQ3tAO_Hmez6hLx75l_uWcAWo18hx9CPsHZti-7yqYg4hpTKRkdRpXaQyU1hCTRH99Tc_1TkzWHrxd_IfWrdQtXedpUDIHA_PI7_-bY-oamYrFNgfbr8izfkznOgYznyr4qlz74sverNecYen-l5eUCDxrpjQ7x5VLvoBaMo3g4TffCAJ9WxI98le', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (47, N'x6ysr_83OjJi4BC8Sr5tS1qnnM8QMtxQbbe72tt15p76WTH71SQnWK_1GgrrZs-DAX4WeKe3s0-_zbOog94uae82fghNDXzjXiJ2Aog1R6pI-m0J1nZv9g6j-UMEQKOm0vvDj3UveGwI8pXu-VnD6aTV9p3VQ__2wm-JHIGdBcjyHU_lrQXMOmkWJu4O_0a6yC-qvER1XGXqxKbre0_CbblXUQxONL0K-g4QY_nTjOQ', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (48, N'emJbXl6GLaLhV4Z8XiHnHOTCXPsi-BARKh6gEys_AOonSJfgk1SX7tb7otP6tVT1kMWEivlS8Pux792sqWVbV_k0HbFay8Fce5zWkDj4yaH-z2A3EabG31j1KjXYwXN4KIcJO8gKsm59KyG2xGF0c5yRh-Us6fz2mdAU20odHwDFwtqj2hxhhgw5jNeuZcbnYgnoyYJgciKPXM1eVEHE5frfwv1Lptd6iY8l0xoRnFYZJhTiIRTbQRsB2zlzV3_J', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (49, N'DQh_1BGnmgBL0as1PObcx3sXodvuwFQ_3TeXFJASr1PrMEXjL13T3eOBPGcJmPOwDWp6FCDx1cb9zP7RUKTM5w_7-kC58ZC-0_uasRTwOI8gPBYmB4AXlW8e2wat2ulywUFFjAabrYoTsXJV9QXVkQcW1kd8MXodTqIQvh7TLdoJXkymWXP7NCOWQLAxxm-VSow2UQECSj1T5YGjNWI7qr5MMtQW97UpHdmVHNFF_3XmTCMhv0Mfg7HlEZFlpz0I', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (50, N'541jTUFy-AiCwoJrdRNr42fpXoNUh8ESNgmqLbu0UMmflWa69ZPwv-58V2YXDhr1WDWhtNhaXxQMVtFOk9CFOwIxfxvGz_tnofoYtbvmX7Uaj0dV2KRp1dpcqv_XKWKTTGm4WsBgtNqLnTp3S35NF3xm_dwfd5CvVBs2lRn-6cZyxOjrQ83ioHzqtqJkcAxtdrcAOh6Rs04x3_GYRG5WFAvz0_u-xcX-65OTlWEH1Qh4_0p2TyHDszQ2eDF1418o', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (51, N'LtGlUf3IlitHvb4vcKB6k4o1MfppHgApyzT-32FT-3gERpPTVDzP4xALeMf7mV0s3SARt-gHLerGxe7mMds62udddLJm22VaHLJUzVoR9a0nm5lzAio6bBMMq9xql1qXFzc5NxkWRNHzWaBgRndTT4yrAbK5ytmdcIpdelmWU_qzCMQPj7ENz5Mj58gHQ1xp5nReFFWU4cAiYbjOt4GcnANDg-BDoKgjwOAgdPU7FkXLWEm13RehmtqO0-WXiezC', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (69, N'U5PniDpqAanSEQwnjgyzEVmljYI9xCnvQ42Obyz72SzM5ZtkUcy9ClddOGqf_NEPQPycM0WAYYNrxX-51zsdG4atLNsDNM2Bzn1DWjmLPGTHv0EiQ2WAWf3qp02yISrLIqjvEbmT0YQiBIqbzu4DLzhoibffi0bgH-Lf78vpUJbtn7Pj9TxcCL6ruu07ATRM2yMoQ8O0PetNWAtNaQS1aXUi4_Uf-IdGeL-TMndv-p0-Pd5D-UO4JdG0l6lF1i3q', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (76, N'N1dk3nLAS54_MkaOe6_DF9zdjWG5hGSsmOKQ_nm5WFwHFHcY1ZILJWKPbHKElY_Y1vEErkIAsPmhdBmRlYDdfkOdUWZbQPHNEgD7-iUHaad2DMciVNq4ywmH86QzBSqUUrJwmjDC3fO2BCdB39tmV39UYO8l70J4SbhJef8gWLAyPF9nywJQBHBqbBAkKIqEwkalS76QGh3tZIYpNNcPOIrh0VfTvgsBriXTQzqgpA4MeWKRg869vhJNuJSAmOPC', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (77, N'UAl_UlyF_AI8txss16NnoWD1nUYGt6nHuSFKbCjnl5ztGxBYvFsKeXAO5GPtlorr72vXffAce8cTTNpfrJSPo6PJ1tOx0D5pqaxl0baKgD_azyRN4EnMeUPD05NjnfyRFZIMpX--l4JEZWgxoGbPcca_NrazaYmDnmgBXkheStT895LpBB7pU0nayS-4fWwwJCJ5uZP2e967-fhVt7KKP0jnDG4IXyLXgkT5JB8QxSojR_8xKhvJ1rbS24eXtjlI', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (78, N'ulRK8YjdzQLNGBwzsIS62aLglIVvJeGmh-3fFLJru4qWFtZ0XpfhqX_1KQjOmZ_XWmt0SUwnOeWXxxKJi7-NTKL_rNIkGLiL0gwYwWXt5pBrRqp7Ip4lSObV7Wp2wTNhGLicdhYBQCuYoTYI3V47Y5orROldsJ8uXuuE5U3PZquwF56g2D1THanRBz47xr1jllbiD2fT7h5huXvhp01L3casMRZb0d8wl1jbFR8AxUOvVsRShH5QY555g-zKkW33', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (79, N'VvZQ0lKn6cKCGaLYuIcMfeCTGQTzH3G48370kshff6sS2ThGboTQ8jq4wTJisqU-QiXGwi11C45Pvw9kxeIdMqzwqihP8txN0ibSzoOOAEferO4R9qov8LAloqXrYUVKe-HdhkpBFFla84azMpdaqO8v6Jw68GXH2SRjDWcO-tckwua91gBX4bR4G_kORrnfwIxrMETcK0Adg--nFkP_0ywbb8p1cw13wlxII7NmKEoBJD9CxRSKqeEuS6eWfQao', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (80, N'Fme9THXnJFcv59aQiOSiF2drufmqQS3FYoBZ9ek7QHUgFdPYAa5Vnk-3br-R2CYR57VvQZ7yM_gCKEZex17L9xExM7DUjH2GDOKmn4_eP-HqAJDUjg4SZA0sBOYdZ2wFnTn2I1IC_133vKOOUjMg_7QB57ePJ6lspk-J6NpqyblyYDscYVV5x2XvGRrcSfZgdlL9JZdAIyTVVBeOwptzSwUkVRX3MDfH2Iwslml6Mj28l7VLUyOthejlvfdUvHz9', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (81, N'vbRj0-ho2fkSV3eFsJDKJe1UIug-FLoOe0NMHUUNkV1p5qOl3lWBoMW2VGWLtuvf0VwWkw23a5UuSlsyQV8uGPSRq6YGc-QOAuXgTBez-2XHb_aukz472loZRrliEI8JsUPlxbDcKQ7cMo0mIjJ_8jolgG8u35qlursLdxQUkt-4xY6_A-CYgZsswD4zUnu3M-1XGjZU6ITdlp3XEknnZ884q9aotwGpsTIFy85g_DFBJl8Sml5b_1XiZyYRWy3r', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (82, N'tCLABxB4IYuhXEURxqeNHEJCI3_mEYBrd4B9Bx9BQ61uYxnWeU4fc5naWRGQT2WuUM-9UKcjhicidw3h41TurDW9RIsrgtDRTCLIFJY5sH7J6Tfk8Ry4cmKu3c5ZxJnIsu_Pb50A1xj0Bl-vjeo41c0Qz0AfvweCSKdHwbZ064qb6SN9fSWHSAGFXWL3z4xhV59FE6gkyQ4CgrI37oK4IGUzOYriXFI1-wmzDZzoOtEP2Y873qTn-tdQRgqmJDUy', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (83, N'iU70h3jCSKh3KWmke1-jY0A1mGqPSiLklwSqsyAx8yGBai0a4O409YnRognhkptNTgFwbw-Ht67XJmE3wMFZ-CVR_YiJe4WhkYnJP8Z9pAWq57uvi2FREDPjrPyJy3BbpgY8YzZOwqaYdK4U-53fOQ_pQxjuVvkIi8PI3fZXwZmRO3Y8nQ3TSOzLzn2xsu_YMgEMaw5UWYob77OPiaag-FjEHMKa-dgHrTXmh_0QNyodrFz0UCypNBeSvmDREY3Z', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (84, N'XpKKWQ2ysBBeBzfJkA-A_w3mMXtLwasdG3fJhuxLLRIiQKtz0TBKzQ-GN24WYjF3bhcieD6SVTuYT-nSLFhRn_7OuoyoO2FpPBPKLZp6xckKL0YeclUwyq7b2Kr7L4gKyKtHx-yh_c9AXQAmYjcDJPHGAKpNVWaHx91l8zWLlh3YQWArW6gjaMlMx1egXGg-YxmpCEx0qMqpssXqXz17uPokwhXP0Mvadaq3z_jn6yulbXaD8R9OTIQfX50GNuex', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (85, N'luuBqcAfqht0nS99O3sBOZIs91Ay13Fsj1EaVtGGxI2j5e-0IP9-zPWsHtm1xHMrmVg6qdieAk4n4kv-zNJznQCUwe1wwdMzP9F0xBntuQjSvLiL5V2vWJhD7yWxf7ih6gd9WuMRyO3SWAraZ8BQM2_U_MNvja2jUbKECwSniELNZnnXSn6wc4q-MSdtfxzSS8tRtyfe7RmLq-zknJlycRgjP_GVESqE1vcdUfKHF7gSgqONqu1K-xKKVH-Lnank', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (86, N'DLNvinf-8nSKF8H1NjHZowoPyZNf0SDEk4lIe7STpPR6lBMn0N4PhBHAmYqn0oL-eTMTi6wCoiWtCwENzDgZTSxda9ZWOakw99vyGneNzzAT7YBWg39aNz4DZd-V7Ygj9MGNiLqZCXny8a4PRyGVeMGXsWyIx2qBsUPYDukt70yca29MEdm5HMQgSk_gc3qYP3bpdn67LS49yalLt0hcwBB4oN1jrHqJeG-Q6TtU27quchAAUzQjPgZeJwWTCXrY', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (87, N'YceZoBbNPZw9WAE1mmaBzrQS9uBiBrFvEMg7crRs3wQPP6Qh18HI6ZjIYM0sWZeH2qqsBfVUPBamYxEx325hznTnIylJWfM2JOaHucrT8nRjdREvDRv0pa5TFMKVLUvF5ikzP2TNcIogauXEWDAgvVcVXHYfOcfgzkGuwMMpsf0e6Z1MNtx_uJ7vrGewOhNqbBRsW6VSBEDWrp3QGbt8AOw6O6Wc9bWl6mebAvAZE4etjTrwH9UXGkbUFJIX1LBP', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (88, N'ccyFrTMAhimi-gUncCko9tg4sF8R6_FPk78Ydj_MxGgY1IN_puLr81ZGi46lEzVsph6z7Nl6Inh7z3auqnbcYP0FFFQuSpsF_8vaeV_OeKVmCAkEiwEg9hqGyg53qLXN9DWu6AtNPlecYkaCmCpPixMHlQ7ig35VtdspjnP9x8aqksSlOcoCcZATKNZV2yJNalQ2LmHldSEigxxj3NsUeDkH8K2zR-_dmCBHpArEGXth4Af8vNFigpWOVJab2JFv', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (89, N'Zx9vvylkNpaCFy5cjeeuN8El0NI7XKpSA0hc4qCjfsxv3P_dP_De3gCufzZr7ggSnipzxhGqqkZvzSrluV-m3H1cWDZ-vtM9Q8zZ9GiaeXRmCohYcCbKISo3DG82AqRwb-_iWHxBg07ncxTrCglSOJJ3zooHQwU7J4Rkp_5WRk3LBgIHZXoTwtxJWASXdKLdd-Lr91SQFWrImxO2f10olDTdFqFBKfGygtACDWDuKb5maZcUWGKxzzEeYjf0eMdO', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (90, N'X72LM7-ux1j9At-eQEZx2BrtKoR4cy6-DtVThuDN7BjpG_ahAXokIwgRWN-cKYqKRoIfoOrvQpbyitja_8tVrKIVs0rXFLj__x2OP91Kn0uSAS2CKw9pmByUs0MDr5evExaD8EvohJgN2Gv3c6_87m2a5KeppObiAvK7rJ0OFsKTQOZKI8XOYiZ1Jtdx848HRrWzdVe4CacjZ4iLGZZvl_ES18PFjXSCE7MhcW-sIeqh4a7mZzgH6EmPNgemJvKt', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (91, N'BfVX2xOWwaTnO_tfMpJtYYPPUJE0iBgDxafnLOiXgX7KQfUMTnj_YvqiMzvkhyw6TLQd4DgJvrdeC78okRxqSdS5Yz0uqjTwtVzZ_vDcm8tbeOZSklhdaZRDqdmOf0f3w1uvaEu8atJF4nvSANF2cetO9ACjQXfzqDWC1s7bgqXc3VbKE_ugjBowaD-dS-usvfiAxjFtzZnx3ge9MuWo_SJwBPUIzBsp4TwpUOftAJ_GbUXjrJ0hSW8eNWRf1goD', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (92, N'HcgjaOC0VnjXwYgim2krinTTds_2tIfH76iVSHDhWYKeWGy3XO0_1kXi8d55o4lqBZ1ZTp84SAsIDMbTOMJGt-RbSQtKf2HJXoImBpHyMjkF0QIAFMakHv2O6qg7PmVH_sb66BQREhLp1tkLY4ZohL7EpYwyrkOFk_lkL9uMs-xjw60pyqxcFFbUaIK5o5rxLoW3JJSzwtPXXtHIvgTLduGMYqhCpPZllj6XWKds1rsWEJtF369VXy9G2zp9GM1F', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (93, N'HcMfnIrJaWZZxBWzF7TPjy47TAMQbwtY2pDkp6nKWCtfjKITDXLXx6siRd7INzHpjATjwWWJdwkys-1r73zhkHEvCExTaCoyVwH7sIl00kBM8uKiUvaHN71IYkQnpu-BnXAXbsXwsT3Q0gz65wLq6aae7eSCNEJEilCPYIBO2aM7S7r4m5pB9qOMXG4hcAyZ8C82Rs7qfANCdaZmmO1J0vfH9QPBKPEU_y04sTiCrshh7WI6cb193PacopMhzT0d', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (94, N'dSQ6nPoe6NxtaAsKWthya-iQ_yhfSNOkUiBVWFl-QIid7RfI-K5NfCbrTBtC9apd-fJozQZAKHxDJbPySvbIqcXjW2jnBuElUMmth4feYdVJo0HHzPi-lUZ1hbA08QXLMnYp1rXiLuZ70OWtOJycLD2Q_BQR6QXMkloiHRuvchfsQ80Ttq7vGlsUiygne7d1vNQR7x0UWPUyHcw6D-pqoazlwYT3rnkZNZVl1J6byWFqeUfMGvXGsoWsKUT-5B2b', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (95, N'eSXGLfnJYZn_y1qW0yiZbdA_dKMfbMFE08aeURz1KGSdTYJk6Alyo9BYI-f7xHu9vuwQFZY2Zc6-0NvnbtvacOyX1VtMI_4CKjEnhu_hKtJYNLm_r90ZOlFSNMEQOla0G-vGG-Ov_gsGd4hFjjLIGsEbG6fjnUpH20loxrgGszEQDP-tUkRAykn_JfFL8OKCaCtstwi8UsCMR-rfgW_zykWDwO_F-NXkBWYcTNxS9wrLNvXEHgUjzs_tWq653bhh', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (96, N'zwl4To0s3hRFEPJbejPTJN2neb-F5FO44k_TIFAqABONUI_C5jp_qmDVkea3AQ8RmtLx3Wsir27dJRXXqlZQCDy0gtVnpL4vQEstAykFCUGnT0ZoNik_MwrBvKY46CLtwsPsyf1aLgRktuy4gKiyR5YgJIoFNyMKq5r2Oi9KGlFbGWI8Ai_T--LDYe7nnZ1HGNk9xy9XKX4vRmL1N7I1GurapdzQpyenbNM9J87Kyh85DbPQSI7F7da_WcudvjXq', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (97, N'MfYqeJRqUIBXewVI766u1Vj5QlGyZRq5dr_osrXb2ccUkVti83QLbB3di5FUAQInt8Is9SOc6Jf5JBsdak7hrjI4U_3GnxWfpgrZveabmXDf4Z_pcZ7KyyOwTvWwf79G-GOXugbvZuGq0ekAdFEka3Fa4epmXGj2JkFtRQs22xary15sufYN06e4ZTgiOT_rP7j9r2yJuAdDToVohSYR790kSghO4pV_y0xAsikvMq795i5TmZomcRouRpqtS582', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (99, N'39rLOnpO9bL2jX_FyHto1ItSzdd4XPoVZvwbIsinz_uPnpulHFq1dkrcL3ZaOyF4harKk_ctJYYJwRiiDcTE-JPOLqcA_cH1u6hNkY2_c0fFe2CZKKmD_KThpIWEppXYERFlm2VI430aRYiPvvaHvBj1ktoh5sBuo9gYLmEo7H2rw7gypACHVbJkEJSb5w4NCt8P7OebGUjs-hykjUFaktJXjA4tSYiKN8KAnETphQ0Psag-Pp491vX88vjY2Zve', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (100, N'HQrJFOimVsRFFzKu4n6C1TzNaQvkrRP-5OvwqJccCOTiV2l1Qn7kW-_pmqutcwTgOfluzokxjfdQqonYW_hJxRKfNeHcILiFoDe1MMyaxgFBUHDE2cXY_Ujmsygdz1PdXeTyTGMm7DdHwjI2chxzTpfTGW031Djgarc4vO2YPmZitYVCl87Z3LRJW7tT7XTAw6ajnZ39q1S1mpfwaG_qoGhhLu7S2dtULsWeGzHiB07cwrl2CwJQveMyYAMGsUpa', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (101, N'u3OY4WG-qUjvxTxzfmP2_WGZPAKQ0ELe63VYqLoS8s2AeqXFQM1wTmih0wR6T-wz4Hz8t_tijGXUmsMA13YHBN1TNYYpJ3Oe2BBdN5AA5G4p6Nn-LYNJKR6xeKy1Y5Oz0riZZvzNEguPpTFyHZechKTzum42fRIfkCHkyql0inyip5dYwDAI20kg9HwWHyHQxsHaPfTii-Jf0gwAUzF1U5Fu-mV1pZ9H9o8deeMPmfC7RzwhlfhW3oqssRTbgumY', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (102, N'f7k2Ccn5j5gxsfg1RHXveJzEmMn2-1UyN7BFZxNAG86P7ttVhSnKaXc-Aw3bnM1dUKj7rmRBj_qH51_M4wLtUvayhoP4pOe7rv5m9pRHS7GBVuEFI4NLxrhL7wSlNlJ5NyZiay9nJ_fmIMYNXg6tOjkX7VwCreU7O0qqg8pTKknfmo2riGpEJ9C1GHuTZgmIBpm4wAkvROCrGuy2ti4xd84LkPo57uWluGrHklNFHHsIEjp7RqaGejpnaK71Bhxs', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (103, N'hEskYI-_rNycN6IBXSHsLKs_7lTYueZlOVjsm9IW6SWeUMlTe3zi6g-ieWn5P6EGs3zTeZNM_ohD3irEMocOGKMW-bZMe8Q87t4avyYvA2flIFSTORm2p9rlCfWdpAbxF_Dr_SZgR2nWtawzTsPvfwgbqEiKzcVgQUs_FhiUVg58vwhNz79hayJW-RVkwzJkUxhdc5RJrI_YB89cn205ww1iSPbc7IwdEtX026MHphEucDqXMOD5IUeAG7veBpOf', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (104, N'TbedMdNFAaGfPvTJ7_x6qnGz4tzXdxb31Sx9hxXzC4DwBW122ZdX8i29FCHf6KTAvxwuLwmqz7VyfKnWSVe4GBZpn9ZUCPzCK6zc7iditYPbVD65xz3xmFQ1u0Yltys0ro08k8CSTzsoTqsjenGmbVCQTmiTUO-GFQIF0WbZEXlWYJZ8yvTVKQ5uOcILuw9oAzutpo8RD8hF0gT4INHQVe5yBlZTLW8GQzOTH9klPwzvfeRuwnYvmwAINP5_oGJJ', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (105, N'tVNoh4_5-PhsnrNg-4iUOmfewjTRYg0F0NjfE1wWIEuFjJx96JoTOZ6e6D97-CNEBVuOk2GhgX0IKzr8mRtN2YSHMuOxlzLVT3yXuQxM5F_t4hyqLTZSdGTPqy9O0tfhps_pSHPl-Y97b2AXKMXLbcqVtGx8RBbFwT6f5oTNd1FZzK7oKn_FVnVA4knEHYSOhmCNC7JeNTJJDjLxR7zwuSRdBenr52iVg2aOCSVh8MXSyrTAuT_HzXkATKxGg0Zj', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (106, N'U1CWhF92y3Zhc7RI60Q2YBi25Wox3IpC9cKoD_S5ayfl_x3WnXh0gW22vCZaVmpoazX5rmQeGUkEvgkJpJX-RUu15eapw1jWX6u1VQjt1dnuwtrnwQSjbGCmC53U8Gz5eXaPCttxRbXR9zG9JcyyIAlZh0gT237Zd_0QhN-MW77_8wFVj0wOys0ZLR9bIywN0uKDu7zKjqiUria5lmOeV3q1vVN5EjvNNU1mdccCwqQ6ZCsik-Y6Tca5bXQIxcha', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (107, N'dKJv8h__-H0-d898mm8S8avH4Zl_y9l0YvXLnW6093KuTs661KuuF_vQgfB8rA9sXb6yiDzQ-hG-7XRs7mVQm1qh1G3LQpaP1V7RZ1MeFx49f4953r5Pl1f3-BMSVxDmi1Yps0rZX5fkG6XjCm0Ew_V7b2FzOBSztAngYADOkRKwWi6CNGtAHie2dnasqFFrp0fdN6Qv-Et4b0WmTHHQbeD9w9fAxBTe8-VfuzvbX0wkAl6pa6CWrHyq4K342kFt', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (108, N'fyaWetf4EZSiB7WtNeyiqDsfKrUEnRc1JOFWhDL-RdR1ZGkScJUfsu90ZT0sm4q7Y8t8uu4KJ7RiOVdIbsUzQQDizRzYmIKVLjCLfQxTZcN8czxULwobrkR9myExWvSvfjcAiMW82j1SNgcOkZDDlA993WO3ZdjSGMSoFK6LEVz2duZOa2H6lFs0sIKnFwjrnBPxvY2UGwa7kwgjIc5gI64zoE0D2-rY9ba7cWnJ65m3Aoh7_vdMUHbSwDIpz0rC', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (109, N'SEDyVdwQT8oJSyMTyxzSbXs7rJVL7f2b5ieoPYEVfIvndQ7DUpxyr8iU0QyG9JEsQgSz8w4CgrM27rklWlo7CjYKJRI-i0yrbllp8rBv4zvAUW23I6OqGdylvI5mv4Op3DKhgGPoj2U079r43nB6W0zr9GXCJFeli3TuQ6TRML7Sc10sfUmnSK_6-DDGHY5wIc1jclEJv2Sgw8vqV2kiLu1A_koKelsvyQacbUaV-AARu5zZqC9R-UHft5O57t72', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (110, N'qD3fWCxLbng1d9z-uKChCjsul-2Qgkc7mCPjuI7BGhTYvXvdI7jidK7ipqLxjHeRSmEpcQma1OZL9gXr2HkWOOWpTH2FxZJDOJGletO7xMwpxx2snRlj-Yof6gVhjdN4rIvnZPfbfcUyYj70MYjinh8I3Bjf3UiTfbTQAEqGccgWfyua2jqMndF0Ok_kVIOMb7zlYd_lAe5EwZGz3FamGGcMp0yp1pgZuUHzyw9j3FpoChLwuB4nR8qsE3nIkGMC', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (111, N'gGC1AB5US9vBeBH322nPTsAk5XYEPVIFpuotkHBKNTNSOn7m-X6T468XW-CpY_0eTVBygl6QoXYlHeasA_1wh1QK9cXS5dBBPd-BniyuM15x9cdM4o7z2IH-3EOVuj2DT5wB7wlaKLX_Dp6f3pROvRP8a2bihLf1aKSaybglUDHahRvjsmZ5R_1A7bx4XMNetSeI6anH7-yoLUDeMkqz1u1UuU6ySim4juiKcTUNAbUbB0nxamDYTKyBGq2fx6Yx', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (112, N'tPqqxQe_RkeMVAMCgu1C9cmWSaWl1V7pbTCvHrz8ZXnnssJBHPleHlrLp_ITVoos0h0qPFbzd68QK-mhs3SKxZDdXfq3vp1dm1v-ucPpbYBPMsgn0NLjTVfboZhws1VLIjer9HO8LXzN7IfWpQsjUlaDmKuPpqynRONo5CWycnfIt5qQaQ5VKMczQPRT5SAQdT1vq_66VnTajbyDhtcJ_GdE-CgYAb4H6IF-jpPRdP-RdjYzH_ab6MJFD_M_ZW2X', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (113, N'3sN2FfGZo_OmrfMwSkAnm_hEIGqZDmh042mOj-bJj-hoTmAP55ci2sJsYoXpThO3cj6OyrjcTO37Zid-0G-Nd4SHpJtVNW6XcVORbNIefiX3e5XyKmoOZgEZGDHaWlmtPDdpUtCnEcyn_8ru7LQWhZfU3cls29FRrh6-3oh8ZnDv3EcQ7TCTep9nKG5S4ikQFCJkjXSe5UMDDicZSVd4B4GVge3oqVvPVV9yxb_e7N_ZJot5gex-YyeFtzux-utc', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (114, N'Lbh6UDxZWhyNCvmdLbJfkOJ7KFa9CHp7tVhEXiTyrlcX71rd-FPsl7DI2cqWX_0w-ETKzvFj0EGb0x4V_hxIra-v9pk_IJ3BwTt1rvCszVrpWl9Isb7dd3fNoVcd-iz994YSLixKxQQ5FjywTlCK79X4Y-5y2qkZMZuFmlyFyCnkPPKr8IDuiJpnGhG3XXZucu6GNLJjZuvfUPMmbCD56G5XtgXVHcT8QUyvkuvJfaBwKcWtZ6VWlGc2itotIPh7', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (115, N'yYjovfjVuysypJ4w4K_KaGc83fIxjis-Rb_VX9AXxHY1SuZJ3AF-JnkFCrhz5LqC3oaQcHgitG4mudTQY68DoQIp7B-Ryi7WJpORbs8SqW0q-M6SoiuGs74UqYcX-wT6SJ_JQVFJ6zBKOeKs89ejni2kn_1M3dV59oO80MHM4iyuh0qdS_DAq4DoKDuk44CO4FGKCYqj9ybP-H5IEJd27HD3DY7qbBo2rnHzADiDK_dm9dJZ-skTCrNxF_sOo7kx', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (116, N'e4f-Y15nY4dqnooTwlSxqwxAXdnvl2drcv77xQypwIXF5yIeXY_rMzGKmGhTf07inHhlNtrPjbQZIcGlFLp62IRqBPNyJewicFsinwo0Hjn-9ZY9yucmFykRYMz5cJ7KlTQG6CsACcDLS67tUIXafGcwH_x29H27doyaL3OQKwWS-c7d3GsZITuXFxIRzc6l_lPBt77rfhPO3sCUwObrU5aLOKa3XEARDQ_y7H3eftR7VKwjFbmLYLa5qFPf15-w', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (117, N'2D-ERMp7VLFfi_pkUWd46Y84nVu-52FCBb092ecQR3vibZ0Jr_vlkjeE9jCSNMmEGjy0-FJBeh-ER0Cn5l9xLrSQWSayp3pmYbaRJJIv029lUxWKtFh9xkSAr_qRJSYs3qSbkblkKncEfJG6qAtVhLSMtkoJj3jC8B2qKHR_cDkWAAO2aF1z6LqvyydDNHLY_CTwUuN_-Y1TZ0cwoaTk1lxcysUjje82uVD8lME7X2EmqOZtuV-m8PuQ7UleNhte', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (118, N'WHFGy_oJ8j5d_CXHA33FmCw1liqqDz-phtUH2xnfxeqpgrlMtjFP_C54f4Rytoui3ZgJXutrxoKwSH-6u9u5MHIUUZc1alt7dRKtJrhmmtBikcKy9ug884bBf9FKFcE8f3x3oON4szlATzJ_AD0ZSJcwRYHL7vDM-JiroIR7OV_V61BYzpENWeaOug7O5qkPr5itHJixQyVOA4gnBASwBE-GrewHJAmhmCrGJtfXTs4bWJRkpRGTaQjx3gCDZjmk', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (119, N'xp-cmDqDarce9-p7Qzq4-7dT__svZRF-f9Ye_AgSokwTf5SO51_AO1BvZXmPqnRV3El8SGGlEluryRV3nf-x4GW_lnMq5CZVfJJxzNeQ6zvFrM1Dsn3nOSpZtSo5q_igtm55AtSwm5aYFior2Svsu-otrjtZUFE8NYFDNIkmpoj5aOx9AtJSH4JG9QodZ15lSk5EU9wAN2caWZpwe4LHdrjV5w3o2udEnhi8lGlEAx6qXy0GVJReE9ybnaXdnlWg', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (120, N'AoD2z4tyJSWacUebvrqX3EvZP2Iz07kbEMSjxC3TIjYUr1hjLeWw7sqznwi1i9T6L4TnJWlWMmX2ZmDwVLMTKLDbUmFguQpZGlcfhbE0HMaagi1I-EThqiBrNYD04N2-542mhpLNhFROHSMhz4osjtYAcda7HCyL6RKNXXWCdsOm46UOXCaFm2Og_l7a-aF3fZ-nonQ48uvt2jKkXF3Bqe3rPb-Hsi7w-SX2vYHCQ3WSEuTCwC-czWggDGBb-iQc', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (123, N'vULZkRpd3bnjw71Zq8sJptYzQogx9c7mct09f0bHUM3J-njYXarR7_FiYm7JMZKGnHKPixteFVcBos6b58ApYClUom7nptGQSQ3lFV6L2EualguGqXj_NcrdK5iNGr-77A2YpTgDtIu7WNKiTbiZmsekAmeJIlTHTKcz1nSGz_vWWOHaCbbukSC-2uJvIK7TTADzSH3SoHWMiB0lLBMiuOu8g8Zxj4OHRTiHrSOOLTym1rc5qjLOKplLtMHEZpX5', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (124, N'Ipv7K9jEEYicnuq8OzaStG3f4U2ePseohh95IHYy5s5AYrAzb9_3wQxIlda5ilE9sjzWo_dhAshqUD2VfvIllUrN64EraF_8DnvoARXTjz2IkLr3xQSyu9Y0dwIPY-3mt0L22ONOk_oa2-rG3UKJFdRzLz1BW4Z6Pf-1kIqgofmcleYdOigLFbwmOM6kOT9QG6KtQCptCFGhiT_A1mCKT9E_pXG66PbE9iD_rVwDI2VGAvWtKLAV9UquVfSK3kH1', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (128, N'SFpCJyHIlSBB-R354NgSkyUSX4szw4K9_xHAzNTuSLz7gi62h6j0kv7m8yA6e6AlPnst6oxcH4fHEeBZgNsg4migZO4n7Z9uof7uWuD6ohNEoSXGmISacr0uED9pOBbWGknaGz1TI0FCMecXDT1-hecJJ0v4_R28aydPJ3hePG8z9JlyMfdHfODPfFRNbgvb3IBXHv6pO8zW9xeL25_aH88JcKreYmZVL9ePe-a7z95kV0fOVV91MvautCeaczpR', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (129, N'NmL1RZJs4TcfygizyID6iLDkNMKT379R5jcKExGHcOKCW4K_znffrCHk6DWZnXFfdB9o6bv2qHvfshgkoyl8qkzhWBnJQffY4vr0z3CyMsuFZDOz0BFE8ZeMWPuyqoNPSmBV3MU0Yw4bRx28ONWE62Ij1a9oVebBQPMGPobnpf3jiHHU7tFWbofchErDFQFa7v6ZGZVq8N2n-_qhpmsJ4YGXDFW_pre1w80YTXvqpwKR9LN3MLR3c7hDiR13KV1L', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (130, N'87XM-DTKwcXPr4Qpe578zIesEnmqyXgqNPRS2HmJ3sJDgEXQK4n6VMK-3t8SmLJShPK1biUutGmgyorFSLTeABTG-Ancr90kwTPtWhb31cczsJmC7whEyTFRWca-OT1iurMZmi0koWji1mkW1pY4i9uoktgf_gjyhJx7LU65-pEUxmR53YwsWAGjj6c8ImhZS6avMpbJT5snCguKrDJyYA70Km2UoxfJ8C7SyG0dNhrYQKo_PTQ7OmVBp3X8KmDo', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (131, N'baQe4KKFRtLSYeZCimeUMI03Dr1Yk38vUG4St8-5s3SX6bJGvfeU11UF6hi-cqV_fy-CrbLy7C-lGAlF5PHf-7Sk5Ts4Tk0XlIiBveEvV1SBohTXr6jsu91Gs-9nuLlUHDaqtOl0AgitSN-udV_zTZ-6HNYqdz52R10ybDhJ2rzTcFfzUW0RUXWL6QdOe9woa1_j6G9ReIeBJiL3bSPMsRh_IN6ma5rtzHDhypTEgaOJv0VakzlZz6YT5cAfhVww', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (132, N'OiyuTMfdWOqSPsertkY1D1mb82Ot6uwzX9_lfueAGhzkpX7c_KWLvTjvze2zceYJHA_3qmeXNuFE1cuDQ9meFIAT0dfg7-R5xskVbujgwCF88W0J91QpdOdPTmKDNQsF6t6OUQaN1xqzyn7-7chguWj1UiaUXy5Ct085RQlGoZ5-mUgbbwU2q4PxkW5rZEqW169jH3j7PW7GlbD6on9-VwOuZmznmNMhIL39bqREP2Bgb26mmLrF5guooZJorszZ', 2)
GO
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (133, N'l47FKrZCi5aAaQa0jOOo9rDZx-ysJQYDeuqTcjGgdTzqx4uZtTv1AtCEllMvZG22_UmdmpTnVkEapcDaNeIxTrMaReCQECmjOdx6blF-pFFRGVTME_-w9rOgtHPw8BgSsaOGUyoLzpBiKkjUzhfdVqv-LWJgACn9r2pMOJJTg2NRzjP7QLfNrPKO7Kf1rvqg9WHa9Zpa07jMIZITtybFp0ktx3dUhnMpVVAZ-20ZF7_SQhsqtMoabNxUDATbZILn', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (134, N'iOws3RPRlFHqGNJDLyukIxeAN4yMOribqEYDWkH-EXqXUXmEQ7Y59oDZJix2d3yS_jutFf3Y1Y6ddoZg9SyXCFLdHCaQ4a1bBEzpKP_5xswkX9G0X_QbqtkZszI777-bGRQjEqmIPxKqSOcN3sEswYSlVEozZ6Rt9hSEBK4lGIoZHiGItiTfMG5V6fU0ebIELxAnzB7qcFf5YTknXy6CJ7fAAUK_hyOX3buzNjcXwj1tgXxo6pRgj_cCRbykC7y_', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (135, N'w6wtxTkoCPsKlFsRBD03YeFWeJq_SCXOnkdWtKt72jAmpW-UpfFd2LOvg2yrtbcF0LgJaWZV_cs4alOEtRebHlRUIp7pV3qww4HrPxZP-DE8iBudtmn7eYKAheFv11c3UNBGltDMb1qi62lc-ThJzqnCz6cpN2hFofZO6OduP_fnt5Oz_oEj4cbA9vySsXMbR0RsIoBMuu-Hi8ZJHpcPfs0Dz2rl2e3O27PwMEP6o3ISS2itF38oDjVV2Fqc9XRc', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (136, N'R1SXitqP5sHdM-fFaaixyGXlpWhapzn_0vzpt1EHz3FqGxokp9yPqOrqDj7THF5H_fLn4IeLtMoeF9c_j12WfKOU8HnCmc_-FzRoxR6_cSLpXCOKuvQujl4NRJIusgnBFYTgQLk9ryiosfWj4GHO2ShixAGl-RBse2wj1syj1gjQjj19mYW-CUEkkcMEXtDD4EvmzfLDWB7GYjvnfIZdPBNMnGhVKeY52MWYZ3mslqYAC5fHBasnhfcWaB02zTNf', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (137, N'-9CDHlnAnuVuNSLFgEJc_zmBJCF7bP5uglZ_lDcY9fE4JSKUz_TI2-5g9Szza0kg7ECMvwxS-KL03L_DbgO3Do5NcHK7gViSXFqjKN-EP-MPL1LwpNzXqEjlVophqyV4r7wxR3mY7rBeUDhlWmkRXAI7ow9_9Z2v0Omfuski9DloR-qOA1CByVLUsaFTHnvkX6roxgjyu2bYwuh9C9-x3kU33KBEjpDSUll0Bg6djp5eAOdZyVyrIaOs1oxlCooK', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (138, N'a6vrMP76l7KDTs3F7v5CLxFDk44wt4s-zFqNlSryq6M1hJ3yEx4RZnPhH7KohsoPOvaYS9sgjcBlmGq-YQHLMtHjqdol6zEYLqFdQ4rIJFLCDrUYTmaw61MXeM2JoTj6u0xqwkUqGZa1wcSfGpCUir-2D8B1xj1spBjqjU7_jcMu4nCI8V_xmw3XFk7A1HPEb3VqNV2n0yOg4wYUt1xhHEIrayjRQ662ddzlD7FGnTt5nu-L8EVzsFYDUfo4cafG', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (139, N'iWIfydy8I0ZaQ6Sz6ek8Zp7VZ9hXDDOyQ965oD7Gr08HAiiJEbNLnjpjBzT7ncVzaKI55nd7fCtb0wfq5qy1m-QL7SD5rNDJ-YHtxYfgSgrzY6NEdb4zoCUgBUgBJmCoJyGaaI72GNlWGdS8_4eizeKQEnB0L1B50xqB8zBYch61sdo1QFKTdIJl8wdDybx2L_RuWQhqtdkDFozsACyp0Igoxr-ZSjZrc6rBJ-ZpqA9-GgzqUQMOml3fPPybP8Vg', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (140, N'FRjHRgVors71JQKQOYDzHpR6oqnw349Zm6X3MWQLccro6sUgKOwAr31-5uH0mbt-esxpy5kAnMs9-vwJNEMsay6ACb7Qg7DnhVOXlWk3HpsgqUA6F3feqZ-Gw3gk0P3bzahOO8QIR0NVVW5uoYX97SnkX-4NnakWbGn-_j2DKSLhlIto7KZkCZ_BHLOT9c4q6wfKzpawIvNMDXDz4hkkApES52DVi72VGOqFwTYhY6K36srQrjkbIOLevx1LmcNV', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (141, N'IsX8diLIpxdHoJrBm3bHCAlOXnt0in9LTElURYxBN_WCnYILut-uQTlrOZUEsjwBagnKKC9TGA3k6_XccFoZG7F5FZC5jYtligH2XyIL_YErYGiiYCrqTLFVoTI8nNMMkeb5GMb-SZSs9r8OEgf2LhojAmurdiHKqE6IUGysS0xmOq1o0qjyF3E7diLHCLPs-SvOJje0Ika3zMLPD6npBxtC03xQggTd68IYke_9hmwgP6C62okjBzeRn4wcuU7K', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (142, N'EymvoresUetNWoNg50OlYN-2JBUAG6fdwfXsHTqwuguniOjSTt1iRYMXkf5qnX_GWjITQSL3xCo0OentR6nG_OeHL9yDh-d9VOe7Fa5RrHTsRDAnhlnWXAJ3SxbGb0-w2jbqOwUIupsDyuylrBI9ohKtTAYt4CMW3AvNglvv9c6U3B27F1jqUzqAuZALpSkMn5NQQCcEL0p8vRmDlaUntop-Lc7N7tt-8q20uvbZkZstENrS3YkfkFSciVVydAVW', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (143, N'hWWt9xO7Oilxjc6_Vlp40SO5z7WNEuaAsW_ocutci6h-x1GxSKKJ8YSJ-l3XIvkWICLU0he21Rk5RkxA0uve62hfUoUc0oDdVVyUn_CFjuPAtXWf8oLSY6uEu6vHX-DqhHmMKZ1LLPYkdH4HO4waRiKDEqhLnAkkBeKt3EJk6i9wEwPkT-XKwuxCyHBujNsTR5rwQ-ORvShcnLXzW_mEGjYpOdWR3PsY3B3AZk_4iK5FTRiMb11VRs4aU3w7gDdS', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (144, N'MH4HYtjhvMMsZ9aZnIW3JiGUHLo_rTYtsvjm4ZJbsUZgwxuTuOyyoiWofmf406DI6lF9GnIOIEEd3o1uNbldjnO0C9DoqbS3i15Q3DEY05_zgkbQ2z8ThZibWMRF1wEZ7sz8FS2LpMOyw29O4eSf05MY1fzHcteYS_JuKF5-_mUNY4h7XULgYZvOpb2f733d8EYC6SblD6hxbQXdYV5qwL2j35jHcDJ3cz_XEybh5OzbuYdHHvnit59Xr3IExZ_a', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (145, N'0kkgYWssk4ton5BbzEo5_TBFE-iy7A9Dcq1gjf5KA2wYyqJIr8JaiKWhCAxDcTCyQr2w_DkChIZXbjmGD8lSQfJbKcj9fF57tmoWNTkSzJ9yp16QnntCYT2NNbHbGMkfyL287yYEj4dplpxQN6yj1Oa95nZRdJREM7koLDo0xpEXMG8Mtpss4vKiSG7oaVs-jCNDkwfw5_tzSaSH54Ajgsn0TGSq-lsBxyyU81yNOHHEC13Y_klebftPuQFLXida', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (146, N'IjTRvNbRkeY1PWDFWxYqgmN7JmA4cpSJ3ePn1FGHuc2Yj1WMr1TkasDWmYAm-p25TVcJx9UvOWsUItLM7ONRQKO_boyncnmpzy3JhOP9XlpVJdmyUqR3GqUHMm3Zd2MGC0Mv9Gx4EFyToejKbTGpNJOVkN-rIrlHFLO395sXR5DZF8dCdie4F0MZBnqje7IXu7y8VAaEd2Qlu-oj2M7hIC1HVr5fptGNZkHcRovV5ASI4yg79OJDZfNsY8nqdq-A', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (147, N'nYRssi8Jk400NDIqmmwOXHaQn8_J3ufjlnHVSyQrO56qp7VAFPoOR0aJZhYdp_h91qp0LrHyQAWP1r-bpkTxts66l-wDIxCWPXSVBSEozcmdBsEU4K5ioA-jp7wC8YmIoED6axVRGNM0o7c6k-TMHoHfZNetz7f_XSpW0IPvOt3eA_lKtxRVt8cPmLJNxUVU3nkzL7J9Dxya9aeU5D87Rdc5MjEz30ku_aN030hCQt4TCkv6LPIgo4YcBoTAhh4l', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (150, N'63kaKUm1vG5mQ88_wAuOBXCcoMwpyzyajJ9-2_hqRkOGqMJzedJpKz2hkHKWWMyZXZa5XXjZYjofxKyQH_VzW84M2IZzJ_DslZvhpI7H2s6Ze31cPzVKhiPlq32SNuaWenQllIN_nBICP1_KMCZi8f9-2VL0foOMSOuYCb4F4LhNPEojgTNelqT29li_lBBuU14B6nndVVqU_zsa2VpOPBihnZosyAKFgp6pGqaVuB8xuDoBmLdQLMJh5ZORamzw', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (151, N'qtaz8K0QsTfHrPRwuqeRABpDL2SjlReN2wbEdPc_A9HGNn4aG_6_EhlrFf-o4KnE7Gp40wJU7W8k4Setz2xLksPNPaqhbwlSTxqUcrSsxYokZh_UoY_Z8q_U8-TgsV2SjXx9M_X-PN8XvPnnr2EN2XEoOZT0AV8A8k2KeAS8AuoL6NLBbN98SgDyISn3D0AAXaZKH81o7Y_Pb5xbFF4UbJHucqi0Los9xf2YhRb91w1NYieyCR4_PS0pDCcnSoyz', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (152, N'bV2nPlH2kj9jskf9fqq3F6DE70VXF6A5TSWh92eG2zD-75MHkqk-BgTihprPRwO3qtK6KN8FBvXlZsVIW6acXTn4gSn9ul1VHfNNGZodWkBr4ZQSzYIqIIUiAR0MInmI6GgafxSZuE6O7gksaCU-xIUILgpe6Pa10oxN3os7FGaJy4IBUGTIoH-LI5datx_Mt28RqiTvLe14-IVL5_ZGWP0-Gf7gzDGWDVtoKabp3nn0X9xjFmAoULhAGrI6nxq4', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (153, N'YUfI62fWGOR1BWTsdP-PatZIf6HNCit3lvspZG0VQnJ7gBJe1I6PLP4IbIXwDskJLH7pHajJiT2skFTG2wFXbWawr7bx-SpYu2VE9zvmVShxTS1iVIGIJFLwM1o7IftqyFJfMkAwrW4JMa-piPd0GmCFve05eCLcIf7FVrH6gE9QPk75l4B6Ziqk7PK-70ugR_c53DyzAk3zgqlxC3FoEcETBYIySUNgNLsPTooJ2uC-hmAlwMxWmlrxqJxhsnf7', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (154, N'NvlUfER-h3ja95a5l-Rj42C6ejfJ1417Wnhz-OcZ-f--zST38cRRrgWMcFvrz81tStFMZqOt-ZUBuOrt1shHh8d4XgFfXJsULz7mwVOj2inFU0OsZo5XqmMARXU1yYIq7x4A62A_JN8vPB76XBvS3NfZOcqCItLNxmUOa6AsxUNSdMIQScDMUYnG7vSBvB2AZxCXA5YhUaGT7-xknbLCjfORc_qFFCbtZSDAOyj_XC9vWBaPa3qZx9_-ifDAqUfA', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (155, N'H3ZUdKWMLIik3yFXKqi_jEMIPkEK7wy23tWFDnKJTXcjfYPl8lIgzI4vzd68MXmDJCfM4-Otm3q7J7d-P6KbOiywiwwOCRZHWQXe08i07fVfAleqsSaldF6Lh63pQaIcTxO1GDnoKUTgm3cbVR1-OqZROThRWljQ34P_pZTkZrhM0Mr7cPCJaC7Q9locb1fZ9iaoOzGPPhd5sdj7a2hpBmWAUWzWt5SdSA8CsGA2BrVBhvONswVu_LfpnEJR8zZj', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (161, N'Is3iLjB-hMfQDbhHNB0Dj3Kb31LoRe-b8vFV1osybfPME-jyBcQiogV0CFuwK2jnT7zNAvGvkffbdtLhfqHddDWZg6smckTEI0-yG9wTkrsZLIWHgnr146Ff04awXs23CGSYr8UiTgfOuPwDD18zNJ_18gfFrmAXhsgXXEJCVYcxdeQW18MxM0Xnb_R35lidD6hTxokkTxM5jNTrBucWic_Vf8aDUel65viUf4frkEHi03sPLupdYbj1DlPse6D8', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (164, N'U-Y25UArWDIivgRN3cqlmCvcQyYPRs-dRY6AaU9S3uqxx7IQC6QOiP7XssGXuR4mKFwQ49WfXx0KAui8s-3OrKFQOYDBrfPvkYnvLCCCraCEXb-OY8StsUxkMLX4WBvPfMO4NCvTpFnIpVrQZ66AGpECrevWn8XSAbX8UqfbJhmXxw9aw7Q2JgEHvMSwnMabi-AybTwbsh6mrWr41OE2bCnAAMjKiwn1a0bkpMClvd4SHF6DFqn1psA26NaITWj0', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (165, N'GjZuUogknRgMZrPH4qiHflPgUGWqJV6nc0-qDe2fEaBhXHXr634aREDPgvG_HJaJfqzGjr-p2UeyhzPMsvvNKTU9j1ETIZ-2JIz3YdNVuYi0W2pkRcTg_9yyyzSw8zvCQVXhmPdAkiZ5z82q2YKtziO5-ycIDEp9hm24TzMEck3LU7_KrufQw8cZmKa6MYy7023Q0Tmc5WvEnzAzqRfeioC3i5xvV55VH9zVhsI9ht4PItbld9AAS1k4n4BtQr5k', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (166, N'0DvF6CBFw-uHVAVLjZbY_3feWQy8cQGXyt12T42P56eiBMAKwxUDq2ByE1Ozp42A47AvKzg_sY2KFRXdCSzzqd9pGT9zJ1hMSjHkCgTws7fs5tqDbUxQxEAKlEqNTkrrcLXdaY9mUPcGujTLuO2HBiaXz-YatJuZTXh1Lp02yXKM2mrusJNkVnN_qRdMwfkdhQUMUH2FeevQGDiD2QP_Gf78wUefbw9iG2S4kiV9KQho-pPBn7LMzpyx9YQC5XV_', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (167, N'm4h5ha8vX8fmSIrOcf-lLJz3ALMPKbQJdnvV4tLeJTkN4oYSnUSjhSkgx09QK7JBTKMMn4bkoBuEBbI3IejLB12lxro7KmoR50wA-AqNHk6UTw3umnJlYfNrBhTlB6qxiAGNjIA3jnWoco-QCf7yJidiMwvnj-lXLmYfeJIzscAklEMOk7Lx-4phoQtsGlIt8d2Vc4Ve8ihBOHSSvV73abBBjlynWyfrCifMOEl7iou979NJQnUS1qpU0HWE_-O3', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (168, N'wWoqXujtXUUb-HXqqArtDfDJipj-JvJoOW6kTCglDP5WL46SFLGJNyqCyKbf3v-h4w_7wSrPDZD6qc53NS9bmErFiDthNZUsaV2h0r8InEd2lhDCq9YEf3aryHulAd6ptqB91m7mU_oDi7kO2GS6UEpEoffl0UjtpeZwT74ZtchYzBMVVsbkc4Kal-CTnPISEgxERcb1oihy5Fjbp6QgPB0oZ_Qe6VlFGT2zB4jrKJRU6ui08_Fe1zr6Q41b_acX', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (169, N'vk973u7AbYON51VBGGQsyYegfR3qiT1JEmVT74sWnomLSiZXJewC1v_3a5CQi6eDL4vQwk1LA56TNCP4OgliO2f94ohtiBhxlKl8BQcwiTK06eIzbPHmGFy9--1NLhCqpMQWB13y2_c8nfpTID9iqavo8l4m0AuS-3ppbHqa74h4qc8XupuAbg-R6aFrf6AmoOaQVVe9X49-SPqL9-QpJ9zx1g0zM9iTvTm8NdKo15FtjpKmwZ2cXNBhb10FKCdD', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (170, N'0h-MPpCOxLsuR3ub_kraYeJAJsv5MdnkBWllKsbp21VmZPLQMANjGZIOciO1IHIONaof3oSRKHc6pJgaf909GjchiqZwJmPLLAs2TGdDjR0jRD2gM5zRhm2Ix6T9qJaJJR2d8JxvEctx52Usg7yXDbWk0eiNE3EukyqJR9FQ6CqMrl_x4ZLBNpNAmF40GSIvmODPdCXYdvcn8fNXuQxOaaHz-MW0C_J1enRgUAu3KaBgdvFUi5Bsb5TzZJPAU-z-', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (171, N'7_0uWMW3VNOFFUv2HsvcSFeM5XrpnAYUlF8R8SmlnUyO0Emu4dvl8z2AvSsqMEEUynt3QaO4CI8NUaVu9hfX9UOvnwVCoXKuOl-Id_ukJPLGX7DLrIbvrHdphOLVDlhzELeaH3Ie6E5J7dkZeSr0KgD60OKSbsi0ynifhONShx3WgXSHuGKN9xGirBGAFye3kh35Iyrx3XBT2ExpwtZjb-32tftvroRpmW_EfWh8HdCD2MFapBkJzQH8_7AaY7Mj', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (172, N'AUqcprZR2PgsUz11d2UQ2_Cj3SyMdH3YozG1e_sV8UHVfEQU1y2fwPkpOCTTmHgiCgxvw1QGWhp-xxfgSfBR7pBleGpAKomrUWXhvEkewdc8XILYmBuc29VFasa93JVhwc5ehKu2wZffTHX9HuBTexVsgi163CLcEFSIOJyS2DNksBnGRvr9BsgPmFR5mFNfGkYWZUMkNCdRzO2NxuvGi6vpk22Eoy4ie1jv-gxBA6lYXyBi3LZEF14-4CnfiWlj', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (173, N'WxGjQahyEIC1oNTBZsEfhvl4tyKJ7BPpcmdiDGnbLtAP4Mdn6oGiuVrH8RkCGfgd20dWquiVa4AuvKf7Tw3ZMELUadEBpzm1PFJ0q_BudJusi2UfpbzpZzi5-fTjX-1439N_1tktzV8tb441cnYD_9dNkxjvvnXZwx8wSbKK2n2mdyoxSodqfyZ7358DTIG9Rvl4wOIcDCKBib32X1hA2ZrNdEzeLH4-c9hbjaTJKEonBuH9XFJSDrEfMoUDjm-L', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (174, N'L9bVQ_8Dw8oU6s4aV9PIXitnQmWq4umGnEGP1MkLbGzbEV7DGm264vzG8-d86di86B5H1I3kt2ERYhwx4PKIagT-Qu18C59oUTiBonMfg261vAlIjl-rtyGo4N2LPW68okOnyEylPMP4pifvMytWdGvmVFjBdMgthx-IGZU36fQrzcoSfodsATiC9GJjkJZlwVkhiTyBSoci864hKcrpO99PnRpKG6YAVQvSh87QDYvif5wvcKvYoVWtTusNe_ka', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (175, N'K9IGIlAj3rVIshCrSq3YKryXvK11XdZfxKq_5VOINBjrCljIOxOmRJ1mWqz2K0l3q0Bvhu52MBWEHpDPq5eoBJP486CnyaOmJ-pC0FlfTYRvI2h3GRz4UWysyps0Jp8DwMOuAIZf97WHZ2-6nFL811tX8WYvMLMxA_lDWxlVu39gkom4RaApTrOPaCvyCQrRfN3RFgcztnwWeQ151N3ScBQCcK63nEyBASr9zzqhGRghOnCxTsdNZncwxZo8F58b', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (176, N'zxAdiz2KmXttuqFcowBLeRew_FlwAkfQweIg4pZiEyngz8st2f92-QDaPUZ0Qn-XCUCM5binkeMYb40McV2Xf55l0yeTAEP8Jfz85sgiA53zaQwFPfDTc7Hve4GU-U4tJJ772JHZgdLR-oiiMry8REQlph_dI_sdiRo3nA5KLUcT7oJ6GH0x2HMnjrO36beo_M3U1A2tHrGYfDB5J2z4WrgDqNYfor6NX5JacoWT1VaWB2Z4YvSpF2kblsdeXWlS', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (177, N'cHOaL6BLhYJZJVsRKha2pXOZEf2WWsCRagwjL2q5TKoLFh-6d0Uo8h5dXFAKmibUPlYavq48ZPdW-IjJojQJZalogGbYb2l1KcEAqZ5mV75J-5IR9mJUF7yOjbaPfGnFYRIol1iL8tg7DzFsmIJpFkgajqEntA9twLx7I4SfnKwplPsIHVUWefJZvb_TVKWbzhnKiWnXRBGkpZVUBAjIuKDZFwm-6typofl83jJm93bhv642OAHUamIXw7g3gJyz', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (178, N'ff_vAuCXoWKE2Q4GTjNQEKG9NR4sr6gS_O6-9bVgrRvX5CaIrw-dNOR9Kl9BYhADYbquOeV-vTiPOBc6WxFYki-_tUho9ienEtXcrQZCZPfn2-j-s4-VCHewtsHuOLm4dmiV1R6mFCCoOqPpROv7zrOoZBk9h06sF2UPNDayHwBr2S7ctPSN1pr-GG-sTW4OTMP2ISjjMWu8xSC-mZ5VryNxnZ1Dvy-viQSRCPnwfttqfHfwxIdZW2TWnMvh-7b-', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (179, N'11FsPSYalwQCogTZQEXVJPCmE6X99mgc5jcI8jWnUUOUcbFOc15zrcfK-PIC6heknno5926glV_otoYdZ1aZGZfjUPja4eoZaSOagMr8BwPoc7IVQeMKbe-sHR9mm6SW2hFxq1TpTaTPj3yejwj30ql1CYHlal6MVqikR5a1VJ0XvIpS7B7F2IZQSzDvc02QEXYu9PT5QDYl0h5nRlI6vgRLGfAWf1gTzeQNN_CqNTPhbVXIB4xklvLtMS6xlxti', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (180, N'_TN3ataHKbfdIGgfWvLTkP5vb-yLZxWuQfQ1m3vgqJo_HB70C-aXHNfa6p_EqVLlH1heFxX8HVmyxVOdqaxiSEYnU56y4_QXwjR88dOh1Lwny0rL9uFsMudU22NCokCRMleMU4ooOVTEfUUQ0vO2L4bVhzYuDtl3TfASHvPAbSSVAzbCVpASwF8a5egVJ41axjxKCpMdhijpr2QEXF5izgzLccdDLUcGDIQzv-9hyXYhEkUM6jeWh4kehYIAfrXC', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (181, N'VdbOEjdLQDX7x9mAG1JO1Or9efJhlXKfdX0KWb0CNOj-Rpc7JKduHu_fOdMaUN6t57VWO83-V4LSkCA5hoa-pQ7cQpkU2E3wOtzdInvvqiJUL8R9AY72qBDoY0DPM0VnRNt55rqJzXps7PsZAr8dUKWp7nVJhHhyLAAJzd2hRT5lqilmEvk3KSKKRpdy3tqcFd-IMYhhd2cRDtMN6dzDZ5moylkP4G9s5b_IigrMpDnYKaC_nUBw_BcknLrNVTcV', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (182, N'_J5hkOXJozTgzonQWwr82Te_bvTlWoD_OmhUPvY9FHvBy_uWLUAxRuOxX3hEBppJ8KOwdNa_R4Ucle05bp6ejPT3l5mud-133NoafsjkwkqrgUilHh8PSYyyjF8JOIko8FHuZmaND_pR78per9dEGZiXPYVTBG4vIYcg3GHYOzsQOffO_wl5YiU7s9kZYlYZ7LB6a6TPpkYNNqhgPNjb32zLvbqnxdzMddhX9Q_CtQESt0HRupvDw5TOJIqCq3gm', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (183, N'F_zb3vQzob0p_vBv5FLI4gYizsuZcdG7M8fXkq09Yox2gsx0djwFxXs7yWwzpeSNEw5vEYzx7F42ygTrYqx-puIpiUZUV6vb8iJPSgRejSCeZHhjv9Ct5IFiNlkF4FvDNo2fLN_EvOeRaQNuSo8orP02gKVU1E6T35ZwDXohkgRPaNWKywtMvH-9Rq8zF41Me3kPKaK0kj0RaGi4fVEIO5mP6ufnbkMe5Tk8CP4iQpy1VLeaSf4ecBk2gledj-w-', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (186, N'Z55MXJevAjKbTyR0OydTNFHwFXEFnqXO95fp0fM79qsVmKju81pfOEhHtqKfAcxdlWTDUc0iW9e0WDrDAJ8-tXPbFjb-AnAus3PSsVR9F6Bfa7cE7lXsKf0DY7XUPmr2ISO2Z5iWiWkGSVxwmN9eqCx3qEU3jAXviODyO2uoIaJDpEb18a8agpThgACO38VAUtqoiORqJu-ukHiBK9KTC_w-B1liEnzrvwTzi7JOHQRYZ7Ol8mnfiCG7cPpDD_uq', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (187, N'qBFMrsbIwkfuDDAKztN3azB3gLoouOtBk6SsPTkp9mIouMfQ8Fps5kgbd007htLQLO_EC_T5fFwfuTc51TytghESq_3k2HcDD_Gx_E0TidRCJ25l_IveiNX1jPwNqIGNxyR3LOG0R1xAeH5NSIB7Azhkqg_npUptAy99RW1Za8HwB1-A3xrrv0XofcXz3PSmj8ZVKSgJxVyotRzJ6-6fY3WZFfIOvxFGgZS-9qS0R9ofb7fTCZ0pQFAw-APTiXts', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (188, N'8901rpaCNRVWOQnKdOZ2l18sIwMrvccgx2wlnMr1nWkhYeZel0-m4txVhnAcSQXiCkOg5MXnWDK2zs5hIEZHeBRxZUzdcR889n6JZt4tlROEZA7VFkkqvEaNMZJw1vNOMW7jhFwLqJT3A6TF-F94qgj-DMNqhzaWprXipn6mI7ONOgIY4UoJesppc6-5f5xb33hYz1_X0g29mRPFd-4v199G41nNd2iMdHMlNl6MGeJaJDloHk43zDhTfTuZWsMJ', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (189, N'ZP839FkM1aN0T9tTWNOWbTOR2cRQjA8s8EIZWq25gzqZhSLIOtRwnJeVbkn1SKntQUZV2f_ULyNJKrjTMSp8FlyOkBfs8JuWOzd4rKizsq9Ug2mxQAz6ZJ3TIxkdPaBEXXWEEDuRIuqut-VYHopuyRH7C_cJum5gMb9Gw5QGi-3MXitTq7Ne0HjiJ3I6xjLYeXM5lSudn3_cyG0vCSUPa_1CqxQVoDGlxquKddsiGDe8PonIs9e60sC1DKpV7Yvm', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (190, N'P5aMmF_ie-Wmv_J4eDYtBIZw1HGLQHdmkhqyibrKC2XYUx4KFQF8Dn0QcP0NazMRJb9gqOP0zAJCHh_eYteG5pE9KBaax_ZZn9ykdnTqF2OxNso82QJ0l51QGBLf5jBVvjk0SqPKColRpmExQZnYSee_NaWcy84mm-wM1HrH3q5N8HX620G7Z00ezM0jWweZLjB16y16FwhITcwjgJaDsefeznKSnqOXbzaF08PqGecYkBT_xtfp1lknVldfIhqS', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (191, N'xpRDZ3aCrPoYcVKZt4vnqOCLRg_utF4qIuS7ywaQPYWFMT0v1CgRJvC0Pqgb-N41yFt0uUs17fwkgsXAV6s4tQE1kL1Mg9vrqfx4jvcdxibzY_3m0o5gpoKnXwAHJX9oWroG9SZuDS7gIBCK-ysJweM5To75JiLZNxxLtyFhbN-hiC5O-QeBVif_pi51myulr1QwiwWGWH_o3hoG4WazDXY2uhvA9plBSUAoIUqn56cECJAHxbru_waAhfY7a0FD', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (192, N'lZJJQ_ZUGPcmW521sdDJLTi0XjZh3ommz006xW8hQGEDHQvpxWuuxlN-bjXkyTqbheRttE4ayOeA7WDrSUmSvUWRcJVRyrWv9MIxHfjB3CYNn3r5uVGyKriScS3chxs5pdXj2GMEAt5fhtKEoIRtXJyaWQoHsFq4X7KBUxHxCSxB619CUz97YWXoVLiG9h4Ybt7ZGpKepFHFS4O1rweFS1KZ-OXCETtQmtClI9-f9893XSMcP18h6-UYaGgVtLsU', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (193, N'1j7WKGgPlsv4u8bzQYEhLrO9Tbmxl4ufSSbIoocFUpdo8Nx6bgQhccxuUtYJ546sZZpU0PgZosg4HTuIJTrnWElmgByXmGOzs33FGE3UI7onRuXmJb1TVOs4XL1TYVeacXHQdl_am8ccME2p3JWsHHzhFlKbOF_-RK8FqMaWYl0ldn2fjlMy_Oh3nLsYOIBwJXKMzNha3dre097vVo_G-MqRLJSCsuniPKlTX8G8cXm953CFZBubC4Yu-4R9umqO', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (194, N'ySPGd5f-HzMfPPkLx19Q06S_EaeTu68dxVFXPbMVzFm1MW420R4TmU3q5GPQAGrPtBX3Rt6KGQDwmrRctlleoSqFNOIZcNFNysVmJkxt6BFGL6gM5I-2wEu37QlqnPHp-ZLxqPAdh6jRW5kbQ8qMHytIuybCJKGdgC56ItD8_QvWEeJh1-4r9HbQsVMmQXUpV927t-ubh1WYeaREUB-4xxhSaMoTCVQC_Jt_FpSebMCb81JAMF8g_34v7j1VyMZT', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (195, N'BMgUklf5qrymsqk8fnu_B85sSLCmS6S8lzeOmptCJYJ94InljSdgmYAA5c3JZe3mtiMMYvmfmI0h_4UTwixjPpwUuShWHwu9feosJfQhRl6UwS3nZSfig5KM50cUi9p7t0lCIcYvJu6B8XQOI2LWTvYPgQpjx2oGpF8hCqjUZz5-tFhDeUZj6ErPWRlwGG9ew2w8bW1YOFlIr8Q-oPyYHXx4KpOHXUtxS-IrZv0xZnDTbGOj2t7iSgssImT5iOCj', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (196, N'Em2PlZJerrnwsSnVjfeIUMoBpF44t2ozTbIjb2g11J5XaS3olvGcRJpNj3put3nqxbjEc8iVH_qGR-0jlywGzvQJmIEvxMxa8mm03_KUmKZ65B6iUhNRHdYu1q32hZk9KEJT2QY0WTIvbulXEmABH28nUT2WodV7EWqIz9ISUoSlOWN46VstzLWrHIPmMptIXtzZEcbUfYc132pSGeud6kU7T-PIJ_QoMFIE2gBjGc17ChtI5QtfdQQ8Nh4eL99e', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (198, N'SUv8FhnCA1tiurkO0QOUIffHBI3u3TwO6VimrE6OL3S7SxpvJjeMHyOhweT1HKDAVk33tZmzc0gPTo-seYjlPhbjqaSRUhovPbDZYjVRHCWcCDWvULNklCSURa4WJs4f1HzhVP22yJK6LiNYjzoMLiR_otWiWXT6G9lUIUHYAfB1xvCWPVL3zs3OIahiQ1pmZjCwHiki11yT97tdmnpmj4-53ezVKjGgJ_nC76dVTu3XhU_YtKD0RoyRNF52Y6zR', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (199, N'jyALh8mF_vh5PhMFJcC1RDJzrDfzIVtoEsPx_Ms1y5S64cujgKUY79VXbx3nA_oJx8UZEJRIRBQZEupyWyhwtn1SyV7-knrML6QYBnId2v-tpYIYi2Q7_l-ElhKvZkeWeUNkm2i5CGOsJl_ovlKyO7WMi7KX_EouGxeZZ6_hLvgjVgYEilpoUVbe7U-41p_WlTb_Z78E40EQPZxS6P5or9a6MzGZQJRVVdJl8vpAgkSe67Qwor4W0qh2n8Ys1s_-', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (200, N'HklFGl1WqHboUFH0HFkcgfMolbQ5-R6SgH8sUnlK-0I9K6nn4yxUlcQdvR0JFTik6RX1DmVlDjgx8O_gTQvIixawweuf4Ofodo7BpJIz2OkMWv7Maub4V7nAjKgv2yRBLv5JBhrghK4EJtHrnJ3nNHI8Jo9VgLjOk5VOcGArafMZKOrtJcbNKc0Q3pCgRFyKFWoFX7LlIEt7mX7AIvNgh0Vk8r4kD1FSIOAP9ztQi13ASSCipWe3FiggySEGRAxU', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (201, N'UJORojOOMxOESV_VP9hOjtxaRgJJIZ-SwBzcReGX3vnLftKIizCZfGfwiUTEe7chsbE74f7fInCN3lkRHHnAf6Mx9y7gKI2R_2oR6aHOkJ97AYU5ZusKPbCtFhAht-oyudIQu_eWJjnu3cICyXfHRvRoRPVn6dnz5_vXdcN4BIrj-ohwlf5EsKo6v742fhC-TGk_9TOXu5fERgDTBtUWGSymGgO4lbx7moSaSGIzjMRyLAi28FeMUReKi99cZNCY', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (202, N'ndqvOwpdLgCb2rxAMicldyfq7f8FcxROHj4YsZCSZ1zR3t_57es_7UVIWwfuMbZTUguIqAizs8q4AGN02hNspoHuptJrh_zBNiVk7hu8nc6oOegzmRWTqQiYHHEfk7ERoXr8QajVoEkj8uS_4KxQuLD5mxxRosjIKLFARluxgojKRk0mu1meg3AV3wqG5XeZR2g35aC0-DWSji2Kjr8KMx_3vf1X8F5hzciyATxbgFPMaOlWgc8L1u7T9eSX_ZzW', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (222, N'EiZOdVehSchLUErvsrNr5-6eNJQxekPUmCktfqO52P1NnURqIMruCUQamFunhY2x-3lvk6i7yRSLYlpkpN_O3xOi-RIxmwJUSS-EyKhMlcKSxXU3IO8aQ95ogedKEjHrBkAf5YhCBU--JzHas5AJF7VDh9Atx2MBdgq_aIanVPrSUQrZD-yr0ofDAOoKzVcM5aMjG5VObOQt5XQjetshRIGVdFzatnCpO1pjU55UC57LOl25HcxaofLAel7hB1FH', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (224, N'CkOb8VdqaZS7COFiwExdTt4XuvG6jrirZGvffgyGFAV5JaBzBQ1_3BNybj0CA8mTbsk2wdGbwMfiYWiPKUXN3os2lK3kr-OML82lGr1KbOhxkRhXRZ4n-pycv2gHGikb7OWnuGFxwINkuokMKxgI0eIk5fp2YYLomW9SisECmkz8BhwdJFC3deUOuuHe8GE6JjDX5PlPI7o_5JwElcfRDuMBFHZ-_Fm1qFwF8JOZDSwcsBnDfbYVfvrrMlFa1tPg', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (225, N'j46Yn74HWD2ahFH4ZeYih1KmlWfZbGQEFYtFiWE7gvDlszB3H2pqUdu0gwU5TTWmFz6AibGB0-4RrC8hyyXaq0M9fb0iCSwqcp2Q16x_ZHlKPNpBE8lgF1ZPwBAyAS1AlYXUfgyqzjEWfCHgjAgMNuAQqA_woYHNnGsrm82NjzSrOH6jDVoW_3qJOoGWAzyQNV9BkCNj0vbvTJrYkSwL6MQHFW8CgPDPmN_yfGoKJnAWxrwtuXWD7rUJq-XLuxfs', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (227, N'Z9c16tevyRUhGopZgxqCiNF5WiM5BExp1zppAHxYYM0c8EnAlSVl3wRhSE6GxCGYnI65B5Zgb8DTfw3-IryMKIpsSLGTB-w6sHPLIvXi01LdLwngQgz3n4_XTKi3MaA6RuXMxUCvrazoh7EgkUm4rMb8hxD-k7-L5aQSPa8M-1EtPEck-3tO1LoYhdOf7D8_gjxhPIGrw6prZI3VdUXGFAF3ayVi-SYmZlY-TNHjl8-Bp5PPUWNvMI4HMgka15hH', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (239, N'0vLPcgeLfm7WubQxrCbGk3L1hPkGvhRHN6ALzzxBtp4qTzTj3DyVatZfygHARTfD2be2lSlX6ONVIuJYckDGOAF3MNv4q2LOUwnapuLnQfQor87I8pzz_NGaPpp8o2rAM0joKHhXuHbFztxg2CycXXto4NafMghgFsqhbclqBpIFyVWL3Ij_Uz1Ptyk7FszIbocDZ987hWYYUIesjCqEh5X_VkgdoCsVfiXyckgMg_XpJ0AtBPQGanKUgw1Ohui4', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (240, N'XAfpwdVQApkS5Rg8MHYf3ws_lP2X_rm5FHP2bZ5tnbwsuodOW_I9be9X-dnwKfrgMn4hLd2540aAgpDJgbU5kfLQqHfRZ6RcxnqOKRH27_-pI_9Fsueg4vg5l1iJ-wfF-A3UD4PO_xOvGkDClZLxCAQwoalehrJCheC_ndvcjHeXbp6AH7z8N3C2y-fULV7DN44k7MDco1vLy0NCv6N5yJJwMSs6GEyOHKc2GMZt9KGrFS0VkGibic9mHmTFOpre', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (245, N'MTY8p-koVhhNWf7PoYaHoMfUC_dLUhSq-Fr_GhVEG1HhodPbfpTbF3fXotOMZ07ipRJ-PBV0mKCKBnlKp433tsoKH1fWIJjSigAzv3K0udEjCxcndlPmjlELgSYVLg4qMyAz5yA0zMNFKltund9uGhAVUej6logBEdUTe2ui2aPb9xs61BfRe9yyyd4eMjxKge1wA8TZKanKMS7DgNgxT7oqmwKR8LO1yUTqIzEn8W5dHyS95uK6Mm1XQzmMZjIO', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (250, N'7WQ4Jhoy_dQ-iKkZpjKE3T4Igs1_f_vDDnkcLxBM81u8MIN74g_wUOWjrASjaXR-YQwshv47msZSLuCnQVVu8Od4I5o5XFgVwsRWKcEsaUf3LflNgEGxKosyAuyRseh2SXVUSwav3yL_nNeh7496teXiNo6fkTEPjR6iK4WW1RhW1216CGP46HNZAebqFNGM5w8jJIk4N0DEOojWlusHyX5Eiadi7pOEBWKd3U6ujxynLOP78WjKaKG0S5k2PCHh', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (253, N'eAXUslMx7fWK-oQQMtaGPW9xEHDsuJYOavVJ6n0OVZ4yiZ8wYwY-2tnBlvjqAhnXQf9KWP-hJe5mPuTa5_waaEdo1AucdqoVlfRij7wPAEy2iL5FUNFFG2LYxmxvRr9YRFqcgsNLI4hI8lvCgk5lRQL6pD73ivjSEPa4Ia4SfKWtt4ISfRKXmBz5mMmo0cnu99W5SzPntoKdJ3w-_jhnK1-tCNqgr7CGaoHXQ-YQmiDJmgjL2hMiZEly7NBahLPq', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (254, N'eGrySnK1VDyG0Kk_EM3RsR9wVFIIzSYP59NXp4fHVpdu-mctyBFkh2BUoE93l93OtndnCoR2oHfICUVkbITn0wcoyLUziVgj-xtLd9cfX2rE56kXE7vkFjmR7i8wfxQC25lFo3zIJsxm0F-Msbm34v98ScydI1WPfOxAbXOzd0T2LP-o2gmmf0jy16vllW6X0-9fl2OReAaitnrvQmm__46ie9IBH8p03yX21WOiaLVE2UxmhzjiE2Cd-d-hov2w', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (255, N'WCSvidvthQda1z6U4vNotkXFYhpj1B-Dc6J2OO5Wyg4fjF1BImOAx2jbHvDP_f9ZEoDO9lkFcsua-9pzHbLkjF3BIImNjkc1ugYXJBFiROLqqadmEaygPZzV5ol1vSroVElt9i99M84ZqFDVLokGvppRtNNcDLrd7ZVGPnm72oUE75yNrwfBQMZM28xNZQcxBh3q3R7y9WJak23tAiP2KoZ5_9mLZwLG65qrYux5OxMb_es9LhzoRgSUakb3usXq', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (257, N'zI71vdsPcdIS6yDUg2B3-x92Uq_hMxvpBvB30BthHfrnjc8rqy6R7TzxS065qIU5oHoMGIxMqakppsVAdUGvPVekbKS30_bCCVdjV5HLNtdSHOkDZVPL5P2CEFsJq_1xHX9ke2pqF7lRHB2kOAdeGqL6Z3X7ee2lAnVtQIYjBe3Ps0lN9aHXSCd3oB-qb1Wa1GAqYdFEv2K19rN04VOg58EYFWZDPS1CY4iqgr3Oe6hJGkMyxA4cW_47nYdyJ89R', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (258, N'Wq8FY9Ekfy0xhkMHacL8vb71SlTan6-J7NCtK4RMnF1bLf8F_XpEkuhLTOjlg9GQeY-9bgpAf7ezZYewYa2JZbzHzoNMD5Ahpr7q00RF-F39tW-voYmaKgZ-P6XxW3xQDLYm0vXvL2TEmMMejXyFjO57f75ShsIlQHJYKlbP8eeiSPKE9lnbnMTnpilWqoidvwRi4NBPeUqwX06yHoIFdsgC_C6Dcgk_lrQzKpPli4EWSiDjc09upt7GzQh9jW09', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (305, N'0-P7bs3SrRTneuY7jbzi86YaPaLHl54CVJ1oVKSu_vsGEXJuG6LA52PgEICcErYZnBU6NKU_NrMrZpXcEPUvUm28RzgMN5yy7bVPdi3ky2Iry2L7Kb5qvUbjL43fsCox1QQJMbP8dtNah3PbVSyL0d9yu71d_g6HORE9_FGsa57Weau8MEO6icc4gAuVkGXxmoL0j4W4IlA_FcxlMAyYikGAvLfIZCCWhiakZCml-P2LXV8h691YOKyMhvLR6sj5', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (306, N'1lx-EbByEoGmZBPD81_lMK6T3V6OJSFXI6ptKuE-bAmfpbHACesxvQvwDfPjlCa6TstLezRHF4Hj_9FwXaQq_FzYBvR2NfTJk03_vnYmfz2MW_QDQJncYHB7lGUpCTKV9mgLyM4XczA9jWiaqSLViHp3BGEjxBVGhlghsZ9nFmPccd3YOuUQg1kUce3NZ00U874wahCRK_-izW5yLR-ur3XsYKj73JDWb9ZbLx5_LmfzyR-HBR6kwu8-lV6zK45P', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (307, N'sj7if9bFneCg9JEGYN0zynHYZxZxEOog8suWx6z1d15AK29yILXvAAGa7wSyZ-sAEA3EKU4vr7pIINA4U-wlQm9ZGV4skT6KBfdc8ruVX7Hom_U3fkjDdI9fMjGTVbxIt2YRCrHEIpPeUFh2TRwqrSZJU4qJhWIP5bXxS1Ow3lmf7u7mnsyYDmQhdV9H-ZbgvZe8fUz9J26gJqnU84_a1nSk2UUYYMV5Bo3l-1vVjFkNPvvi4FC33cbQBf2MvFZF', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (308, N'KBAOTv1cJne5n7Ah2BNd0wqBpZ8NJHBY0FuxXfVj3ygi4Ywp3DBSNXYT3u_G52iYnp1kizmj4sRy0voWuWrH9v7NJ8gvKtHHJvVvxgziIavKexK5pTV-Sh7Rd8YIqMbRHVFZzv88Jr_zRPXTjQp-J6C_L8wFQDUVC-aYlP9OMFeVsKUWsBm3b6KDU4yL-my0wq5ccyPUIImvMGbIC3NzDMIAcqF8r50XlBD7CJh97EJhGpzbjUSx6YhNjDUDlgot', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (312, N'YgSQt5bqHgKmBBJEd5StVnd9uV3NfJ1d5jz6U1IAhgtAdOBXClEjsTr3s2F8n9Q9PxZgkvBqjmrmSYYf-xZDBzTcLubaXPi9CmXZT8i1RqsdRJbgvvGGuX5-mTuQMvaHoYxD4oi6DmSsP-6XWDoheQccaksohy5V1c_JT7itW0o07Z8FF35gyRtxQzgsWG4BfQLhrRaJS2F-ime6JC-KKSCX_DUwQ63PNGb20Xhz517uwFFMZq2B_SjTXFhWcgGg', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (313, N'wEQw_8i6A6Yn4yhQlVsTwsNC8y1iTRMXXneAcg3O96RObP0u0XFG9bFza_lEv1ILlTCErlj-AAbLXse96IivARoyQWeA0rVmwTyKIdUfuWkrLkxjZKogXueeOw113kLvoqbYMzSdzqkdty0TEWoGC3YK1YVkxATgLsazEIBiZBqRk3x44qtNUHsunuO22EZplT1mdp3AB7WEVxHFk1EfyUu8vEAvksAlAU4htS66aOlPFCDxiIKwmn8rJuFN4K6M', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (314, N'4LQY5U-KrKsbiAZoeWwOh5aKl0gZaGseZ22s6JVs9grhmVToBHG6G7SYP4oHrwjpuuLOzO7xoEyl66UfSXA2Mu0FsJj6-jmFXNu4wX50cjBHmYdDQVh2H3gz3J4Fg4UwkugeUfedjEIE2XNrn3_pvkB0TC-gpRLkwulVFvUxa3UEMigJxXz1UA7_BP6e4ybwioTfv89CRZP3VZynEeMDWvTCOgMYKFjsfRi-GM6e4NzCGvy_dgNG6OqMS4b4AaCR', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (315, N'o2jfPGaw9soCyeGxv8f6hVeFOQAHT9oFhk-dGSRXY-0is3WTwbsVu7pUHXP_0hC5Cv8VxOISBaP9s5vkdHiCloSVLxGc_fmlyGbXiTwb4PCe-aWxDoxxhNg11d2TklPmoZgKjRQ1nWAfIvC1X5Z_sJXzzI4YVD3LTwgHVUOkG3h5ggtTec8Eidd8T2ggevpx-PtzOryWxydZeED2IK1CXVvZSn5MABnNqySz_0hTyb3MKdnMn-oIRaX3tJ_4xoKg', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (316, N'wF4yTdkzvnw52NZYSAJYnaQ9tfgDD12R_qJCeKf2zrUcN1_ulPmSLEHycD9qI8Ez0yFCELY7zm9l8wt5hW_hcoIlUR797U42xGeMEIBgWjAJzKzAINouL0z17xTSIkjYIu9TtXi5hJMa9a1NipHG5BwjkVNLafeFSSEUwTDPMZnX_MxoqCtsM3x-VPAGZJ-pFcXE1QBO2zgoKlDqRnd0gOi7HnDDxuyvEfBRR9wfZSioi7vEplN3llrFb3oypRSX', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (317, N'HV-iA2TVlyYtU6s36Pfg1i_vEJwgGdAu0-qILicUw97NGGbJuEFyoE2hXwyT4A7AYszc3MKLWpIzZ6YDyKPIT9oIBcodQ21m_CW5s0txNbS5j5ryk8XrM-sOxu64qgG2DGS9vOBlemuEumrRUHJcYsCbVIc_ydKTmEt30wmvcTeGs6wDyZqbZ5eASOCGCs1hzoNG7NX5aG5UDIa_dN1zTVzNj4tLqIv071w3ECKROXIQ1ZNhbco1kJ12OUHKa3MB', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (318, N'Vfiict-cK-Qng-ea3pq14eEIBH9XvIwXJBrx_P9db3Zt-FX1QTEYCNhgueYrHARjFGbZa2_AtROhE9JoM-ExHxdymfYgA5Lmk6CRox7U18FUDCu5it80Ry2vWX7D7K_DO51biUhmHEUAy5JL0DQw79KsCLQxSHcprzKc7NtDaGmBDaKWM1gMQXMUf1njPu4dQ0Yuq2B-RsGNviancPVQVlNnEl6658UDSKlT7ab3n4eM3QuVKTIh-HiDGXq2t0ME', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (319, N'hjg7NvBJbbvsiKvv8yOsiXHsVoFU3IjedLsMhiRP5yMLVaMfQYbOnrkEuObsoLPar_3tLu3FpK7u78QcoOAgbmzNmrPdqFgd16ovwaTIdPITTXQbGRLiPkGcAhAI2zRHmxxsHvEJDOYGP14VisLNBgWZpyTryEY61WBdwmck_3Sqz8pT6Na6vDauHmcZhIjiRpJsTLLPeFetKVC43yOQphlgpomY8xDhgPmjaaZJVtccIXclO_izjDo5ju5NtqCb', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (320, N'qTQfi52zK2336PSMUrklgk6BTB4GHP9D9RvI1BVjwnlXIIEn-gvHjc2iMN_geqqcB2do-AkgnXUD2STvn6VNRtQkmjgIsEaM8nC4U4FXtr_5iPlq-e5A2xnItifOmOBdxqZfTF7P-VPkQCzKJ0YnbtPciMYL4hnno2n0tqJ0Jw6-Ybhq4mZNX8SHSru0LEaakfIML7vmlI4yz7eDCDMPNfFF0CmyBLuS9Jr3ZwxgQO2w16rQL_hAuUPRXW-55-zb', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (321, N'K2d86NImhx9wAk3Oy37AHlp1K2m9yl1svp_1C2Ef2m1cTf63RSeSZv04-w2Dfbu_SsHVUL3oyNgg8fgUoRNs5KJ-jx3NYp-fGlGW6ZTCsI3tSQxC2KYA96r_NrMnY_XPdjPcPtkzGQA-88elPCo76mT2GAnmfF2hHQ-HUTUgx9ehG-SZEJ2wAGMRErS6Kg31ntDDmV3OmIF2--IwKOraOvEbm7mN-BqA-n0jR-OIRqbV54ZZlyKnQZlqGZWH3PCD', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (322, N'c64Mt9ZbDsA-sWvL-FT4hx7sPbGb2X24kSAM_tjPyal3QDz-mTba-S9CssLL0LF0eNBK6U8ECt6V9YPoulOw6IfVewHvzFgcuGAmsN0dFJo97OtYSQFN1JvRsbWAp2Po5I0pu8h7GYWfBT-x6L9RSPf4Z6J7PnsJ6hWWIP_AmH7gFEo1RY2R-3jDAAYtlIc5EDi9iiNdQjrC4XlzBm8Z7hXxw0WYQrfqDh7pdHdGTs6FlUILa9Xa6a_6L6xPp5iy', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (323, N'PCZMSOMAU8wz-eV-z2GgQlxOkERqVdaeiNFJA8QeXTVpOtPGcikABwJAAgTtMhMeRqxEvpXN6Oga5aaUZhHFTJpVx6q8KTgjCqUJeiE4bsObQ9cgfzyJ5WT3EjfENrydlEx_aEDU5Q70OSutwXOux1ZsALGZjJ6DjS-_KA-LMREDrwfpC3FaqcPBdoeLc87vX5jNKht-qH1GQ02HIeO8QBq4fwdl6Dej5JEygeO4djB6OaNNo0HySyrxDrT1Y2Su', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (324, N'XkRIczcY1XV2MXwITB-xUXji_XXZ7i7iHfEqruGIyhgCQisLi1ZHlPfDQUCHHOPmYMtmKNraulLL_MSvEHFL4yuP4iulC96JUMv6ckq4ztdmtIfDRRx93MYFRrUpuPfmDSvKpZWj6SpWPlN1V-txBeIHSUsvAjdh9TCocFQfyIp1jjo-u2YA3HQyrdcO6iXSsOxnWoCYQZxVBDdP2e0Z1U6SDpiCKnYI3S4muhCSTxOFYlO7nCH79eJRP_LNBgK8', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (325, N'CMXNo8_p8AJmD0bhhk5b_3c4dQM0oCVzUQE9VCdxqZ6y1yMe4Rt2sUHBDMB5AywjZPyOd6_SVvPsoaIKwUc4fuGUcqbrUsVmmk5RzJ3m_rvdHb2RDfpfrknFjfAnYveBgd9j4KKnJ1MTjxlrJ_GWouVRKFD3xK1lIO1LNgApkP43eEj-dzsHaAD9lk9PHjQBgzLB37NBpvLuLmJi7Ac2oY9I6ynnNh1lbtdxonfaVpa5NSRfyPxrFbrxYYbUavFG', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (326, N'E0QT2qvg6cX8YyDXUAW3OZcx2gJVCZ_-po45uMUW07eL3DZI50bdZpCjsvY11FvRy21VZNyy4WCo0PF2xQIyGGpm0ftNk3A1fh94PfeX5TICcEiBxePlt2p1iXXGrTskZhMNDGoJ6suoVppt9iZUlfSLFgdiRmso_tHsh3JcBJ587wLj4Eq6134BEL16DkOmqBPraDSak0ydxsKVVcLnCjsxVdEtFd5921Xdj5FVoEGH_gQhqLrwqKWT97Yg9WAR', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (327, N'O0eOqUoGhxS-iHbjiOxATnR7aCOXjnI_5hfBg-itVc45dYm8zo3lH54y5GGiRu0GgXlofk4LNN996iyQvFR20hLkN9MrrnDEs1qmzb3XLIWibsLLzti0qmAOS1SrYDM36Pr96bizUhzc--HSLHJs3DGgeg4TwmYIoaPuDJBV8_9R403rqXSrxSKSguZ2CWVe_3Mo90G9O6q8bQu2WHrbOw1v8SAuARoSvXnXQ8eumvObyXkYb4x7O9PYoLn91ffE', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (328, N'Ny_1Pk6ci_LmTchJsliDKcMaEFPeaY3llayvjymN_3P_yi0174-9w0smUtzvZ644OkQgzYlpl6LCGsMRixxxTGb_mFKyesGPOV0cKneBvqoIDVAFh3YVEzE-piKkZwrFk7yPhvauqvlMn2RYzbJ_5gdQziNcnXvlIVvBK-kCIZLEqutJrtKql1Ytp8Joz8JCNCGTuWKtcQLMjq_csBv6_qLl3WNXXepLnbZIQkA1-3dfSFCPPq58Bczx1LWF91cT', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1312, N'ndZmtu1zN2sOYAh-R6g7WjBFY4GE-c3Zmst0vWCeuoWgotgvNAhoMzfLDU8QrAfTjF9jm1EGAY0qdiOweZ1It85ZJiKlsEI5FJ9z1TYUqCmHA6Ug40DTFvah3WkudTr-g4VwUFeq9U_DOX7-Uy-9UVczEBu2cFGj1SJTggZ2Xx0f7kV6AKpdQ-RopYBt6R5YwZJOel7uZ7_A233TqzEkzA4tE4CmKyOd3ELTYPjYL-VHeFejQqda9TdpB7eY0lv0', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1313, N'oD2VHs5YpSNZydbeEQZSv6h-jV_w0Z1-zr_Ac8jtNr8N5X0NWAVLRJ7qCsgj6JLRgMfGskJD0k_3hyESPybwZOIj7THHjhNXC27y3b-AjLoIjGwtmgmbRSQoe7-06GVXdOoJFHMnGVQBYl5Mf4mff09dznR54JVvh-07tbB94_FZyf0W9wQqxg_1_3iOPKQmCz8mbjLXwo7z6wWCDyUjj5OhTcJg_zJg9g7z81KmrLWRYSRyVFn-6wnp7TekU0FW', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1314, N'HB6lYBqVGG6GPInr5ICUEhjQ22kgjyLEzFiQWi-Rfp7Yy1ofERngf3rUz6asH1r_pFcshYLJyFRHVL53AoKXLUpZvhQMt7UWb0vSdm1KOtda8dtEo7nyxm092J4WyQcaPdl7IRp1QT4DxH63DwClMyS2tPxfNoWHR_1t7_8QjFWa9c-JGJuUXAHDt9l-HsDHsrLLn-Y_QHaTXCLGtNPfMxvWHYsQzyfe94Rk-hD1lJa3evGYY8Q3iks14d4lxdbG', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1315, N'1pOeMb-qw3wOofQttl73kHmFSQ-YacAzSk8pHffFx3VXVwHeouRQGALy7EFOHEVJDpZ9uTtbsA9K0AvKIjB8-D-wXOU9GD5NCmwossyxLKi95Vj0r3xKt_WGpSX0C1DRfqTcveHqy_CiuWxx5_3KSYJhe2lAs5wOmCHdVXXSu9BqCZ6erwUq5p8lKyzXr4vYWZEpqhJ7g8uXFAtBVg-WXwRkspgf4XZ7Mi2EUGtwo59LHQxanjWnwAeu75BfCSSo', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1316, N'IK3a-LuHuYQahjbeCLQliCtNgT5inI4Ct96U9Y-TkRMTkNv1NPNsfl8y15QKY9vK0KHplY8I7iSKhmFnlaF0jwKc0q6dfe0oeb-drMJFyirxllvs9nxgCM28YrtEAWF9n40BdcwrWaVhn_TrF740z7SB0Orf_kRjUmncdflZUkiWMyp2sNt5RetlUsBmz9PolHRfCabIGCh3f7N7WD96YBCBHna2wP_cIaHEZEz8fdWfNrL8563s8DG3MVbjNNQ5', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1317, N'V2YLenVD7_RbzoT-yr7noDX2UTVuPVj8a0QWQHmUoCLqFR_5souVnliIkntJ34UwWoGtYYL-_WcP9PqmSa5tVvjM4K4vQsa73isA8QgCKd73PJQhAQ7ktUKgGDcjDJZIvvTpusKcGpmXdAXJAE-gWuerKuQuoTAPYJnxnVxNI1GG28krDbTLD7K65cwNe84pb3q1YQT-ed84Khc_sz1rmNA3l6DnNKQzxumsVFCC1ZcOhdY7lpD-dMVLa-zAVru_', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1318, N'1L13ZlDfBMihoTdhepdK2pM7hzPljHhtZbpBdD8Tu5xSY4Y1LcRYnLW29LsZuTFQyrNzAhx_D86FthZdy4pjaVdHmCpqJChtpMjwdltzjvhF26KDXaENxff42kKTleDKI7QNN5I8t3MLxE65VDmyVfDOwFZCzcWMJbtDYcBRIJ5dQHTTTHDCPpVEb_l0rIRdCrCxSjo3609ZcYL6KUdf9dNypl0JgUNYzL-ymQfvJXk6CNoUmrf8RRQSEy8eNegu', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1319, N'Vd-saoCesTt_6iD8xQPh_D4lP0OydFOArbxC4i9_RJF4BpHF5asVHe0c1zcfEod1UYtGNGXe3g72IDHXyqUmCDDqrxduiHhjNm7JNFgl29flZgYc5-iNElR9i9-PNMQz9VOUikSc0hFWwZuJ9Qz-Ujf_NdQdzIpe0Q1PEwJDt2auS04mkzK3iJDO9ae_MLK6_BZB1-3PYYytFtlxNZ5qzTf9FPrlY6_jjKePwmbvYzLZ2ezvuYHZC1Qaa-eiDEGP', 2)
GO
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1320, N'dfiGXRQ2x9moq_ElpDEubCKFwHiayFaIbv9AkEu71EYiqi0z7mIuaLtCtAKiWV75cRcpFsmMD2X5e2ZukoDdqyIsVg_VhHtaUYxpbAOX2APW7sRxu_v6RRNvUO3mjPFpZpITPOEdGcuGWuzHudDtPOuZaMLcW0K3cl60I55XtrctwAQMNquHmF5-0Nv1sWa4FY23pb4T6BPiKREGRH_MxXmhObOj4r6eFcF4V9O-Nzky7YGhmADIMU2cLqysb-g3', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1321, N'JlpsAI5vwXB6yQbLmj6Fmw7MDHYQ-L_NDz2neaNQLQtLm0nIgkIO4kTcy_xBuprsUhLvRVyPQtPLmGriwrjXW9iCIAgcLbSspFkqpMGR_cZK-rZV0d0d8OOi3mngTLnZ5bV00eqBObN0gTUyh-69xN0fQMY2FoHfg8z1onsTBLxT7lbhXLU9-tqKUE_KgEeCidtsNJXeJjDt8clP_-SfcjYD0ywzoYqlSjWXwBeQj2-Ei1AwZYMg8RHYoxx5aPgn', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1322, N'l3i8We0P-7QpRZlEs5lY45FBsLMMHyaDeidMyCx2W43CObH6t5r3d5S12xiv5vMHlOC7DMCb615ijisPWGNxktL0FGcDbj-U4j97kf2BLtX0nLUbPXuU5bsAO7_8svopkjAghvDS3QHeZpfeyuUVKIWhjbdrYnrDirwiyvnHjFz2qVHf5IjfmwfDLsKx7XkS1sQbLLF9O9BCrd0ubcBtHIXxxngS-QwZthMRw72xhXj6vpE0Wa7LFFK-77qRbQsU', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1323, N'L0grFK-rmV0FNxuirOgwenxE6_uND7r9ievcpsPV4VwdeISPFc94G1VOIqCsoXdlM1RCfgA9Z9PjLFrl9a7gIlxao4MThgbvTKOCSXCc3XvuQ8J2AuU0tzwniyFm4TDa5_3OXLfsxO7xR0N-Nq6QJgErX_qZzLl0Ty2owGiSTdJ6kJn60ACD0CGcNBp3YTS2ISdtypezOO8d-2dFQyozQ_9Fbb6SfFKS4GMVsmJjk8HeeYI8cKhpAR2cns1t8MV7', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1324, N'7uF-lUJjEetDOHIwhFBD7IxY1MBrnBtxWIvIFCUagbIUxi0xC8spAjaXPswgsviy1x4gO5wqgGqNh2Kyxu0oImPSTTe8Jyd4iSrLdB1JjgT0laWxA87P_rAUZ7GGEDS4vwNTUdeE_t7J9C3t_vbDQPBhVNqQfcyTq7A3MUskoQ8q9hHRbXXKGRC85Ku1ZswAWIZ_W7UrUEwSKJqSldwWUkkn40L6J0ltONFIO3Gr_qZ7ZLHRM6CGB-foFFcb-w1T', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1325, N'mBuY3eiYoPno85U43yIVdyQ9nW_DQHAyjg1CDGs4jEG9dF2NqbzjR647ANsJrR4LZmzf_EaOr96G6BsV0AV2WW6gXB73hzXAQD2XWFAK9JXHFKLYOAMvjoQLTKRbBJY0Z-0Z6Sv8o6KhwCVnG1injJg54fAgBoRTuV6_DDEMN5YRjXEbmHJovDtpiwKiITKuEIyLS-27qK2kLsFLpP9Gr6u7xlEajGppNBz5UD6cBsaGzVZ_jOL4yP2QHY3FeUg4', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1326, N'8KOf3DtFwG8zEhwQkNtXQzKrm-IYoF_jkzhMWLLrjJwj7toCOWXvGFO-x-zMQ5USYA79zPTI49z1s3aOOIDE9iWQBpTLqsgfqGE_dC3mVKie5HD79bPhpG6Fi4bVXFvev51zzty_61UEs7OmnXxGNbn9MIRN7of0Rs1L9ustXnK9hkl3eAfcPEE8lomBJmYuplmHwo4CQFnwovJlZuQhZsu8-MMTWfXI_jewa3eNxWoLoaaer5aP69j6fO9FP4iD', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1327, N'ZzCd4qTkCu4N3t41kf7Jx767OU8u4TH8hE3X5bif16-td6MlfaEM2w29c9s7AlXuq_w06dKoua9F97mNLfXsYgQX21A0TF8qRC5tC6fhOCfY-3fBtXfvtyn3O7gINHHCtNqHK5MRPIvKRPQ9YRz5TBljY0fvcd0pZ9hK6nK3Hih3OBjoimQv9jOsXs1b_ujgaDyeGuOr0HW-8DZNGJplSZavqHoHE8hhYYRt2Gqkd17XVp5C9mN9OCLn-TzxFQgJ', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1328, N'GGg5ueCfn_eQcA5E1TAFRGP6pGkKWSSyHIpMcHawkUU_CgPAIG92_sKqz05j7M6ogrE3FxlhpLBL5st2KHcLGoiJGj-H1TlZXaihJU0cl8_mVLdDaZMJMjUkQ5RBTsjms2gHnS5qLR5zyqmKNuBkddKCNHkVqa-vCE0ibyphBTlKtrHK2ErK0urB606ob6yJZfHGNoOlLO53hkKdzPtooka-OLzc4-QPnG8Vp_xnbL730GJWEh1uc4TsvJz01Rj5', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1329, N'ziLl_c7vYUoxHGsZI-dfIOrVsbmhJpKanN06yPttDUjVbyCTYGrDZ-3asn70eO2NaOJ4SE9RSk8Y592XzvGBs1NANCIwFBwQkdctXq6p2BFihAXMQ2NZAye4GUfGkGBxdygqlFulbBDMN1-BTlf4PngogOyWwjis-jxAgU4e4GkMenNIsqrZWpeMSd8MLKAgi27weVW1ntJNt-C7WriQonyH7nLmWczvviM2RXLDLpqJmQNTj9qEEKce5ebUqSdI', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1330, N'tz-Frp83Yyunpj1k_sSCszXN3q784jHdkjkEHUfPK3XWJs6Mja2-UbcyZ1hUlfcYj_rFV12eqyDXHF0oohK06zq8d55JG6JFKs_Xcl9jyIeRWLDvSCfRSjUPrQ5DHjXHSmGommmU_aD0immmE-TAH04pOlrxRV-pOCYuQAFTvHOdl2KZ9gXS_wZwaQ5HcYTFs7tq923uFPBHRhVZrNScIlya0aGAuOBQ_UxBQlyQQWw9KqAyluoBtNrDe22Vucka', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1331, N'SkTWTS30oKTo7R8RCIhoxcC6sU9LnNm1-QBTDj5GhxhDkpecxjn4a-Cv5C-DsFhnAwcs-OICm6jtCDmQDVghFNlKbxSB-I9U1vWfXhPwjpn9KTZpxrrzckG0yDMMG_ARGv0AemQ7neICMGyGCTnd9SPyBpbWrR-DCcQlZmtm2HfKfkH-WpSeEf16Xt62lU-YwDp6bNOTYwkGOTIJO57egWI8hJLrqqSy76DiPg_K9-IPr3mFkYQJD9mYAr9nz0RB', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1332, N'-PoXp3UBGLjgBNE1kewrYbT4pFjyei4Om2YU2n_tsn9B_xlc45MxxqpgTDlW1c69s7EgLhK0N6_5XVYQ759G3ohc4aFirll6Hu9PsCLg8NOgvlmmJ-xmK6KWKB4v4I1TOhORLJ5NW78pEklwLH0fSk8dvla4CGGufGmIMjv0N2ov8F2fO-_peq9w0c5vXjKnMOWq5x-FPotFLh3bTpnwRESsVBAVPvvyVYq79MnKkKKDxNKoiDcTiZpsqgNQ48W7', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1343, N'q6N7IZJwdYyXhWXoexIIQP7XkUFfJcc6ETga4Jqdr0Rjxi8ktdP4JIWLW3x-DIH5no83krhK1MAMJn84hFvRWw-r4zeqBFLTM7Wf0Bo9yAntTCzMH7y7wpoXxN9efkv7mZmZke5S56yYRggC1u1tPfAb34wIsIlLjAjHU_dTZCNTMmFEg_VFJ7KBMMGCi6CvQGBbQJ0EaSKrcVynf8v3MY-DXPbyPZU33Rr-MyZZaq9k854w2hxkLokMR29QmxAf', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1344, N'NBxrTgYi5WlJ1tIGS8YpCLllgs7D3GZiwrBGfC0KN1PaPUH6N3vISbg2PatD_3vHHiV9YymOhJzBwOZGWxtHtokvCbAoZkJDYtCL7X3ut9QxZwHo7PrIQsPnXzOeB-ZdoBfaEg9BxoF9IfPX_ckQdboZnVQ6HY0QET81OEedGJsI2JpPlDajNcAVNNznKCOGbf6Zcs9xbzSwC700_WQl9fmJF8Ta7ugTWX0aj0E-BSmWQsvUHpV8OL1S2oeP6jWx', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1345, N'qHyC66zIiw5n0FDpDBy0F6-3D0-bn-NWEujISUKzqgAZgHI6wYwv5uKwI1l3owN2tb7XNDetq4FIW2X5QcFVg6rXJEhBguYV--DZ6gB7sKxL0VpVgUTfM7E6v6iKkmMPqCSIUXSYe28WNs3BYsj4TYA0uRlrtBFWydgA3hqVqof6Qu_Z69reST7Yl-z7l-gjSJ1Glowunar-iE6YYh10Tj9w_xWA-l1ezfNrb6MJilgpgeQAQSoic7IDfxSHsDy0', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1346, N'dq7s7FKznzcak8bVAP6aiaEqr2ZSbUmHwOE4kNGfwH42VIQUbIwhYghObY6u03_FrIKcYA_-GqTeie9j7TjLTO0Q_AMaLRaNECj8B51HKV_cwCwnVtByA6Xedxhp55NF1Sb0EERQYAyPJG5CeEaNOoCbgcvCZe72PaAEfbAMnycV9OgAfU_57tNQ1kbVO9KMGRTvdYHn3uwIONwxoCXqicwylfc8vDu90Dit3SSAqW23r_rJIUhrnjezMTukbRK3', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1354, N'44a6bZO3fJr3FkLq63FBhGjntNJv7EyQsENjMN6tevj9mOZIEqH_FRYEwBjjTF1zsabB2psi0peEADJG11szGFK8QkVQU_2SDfhzI27PLDs8FxAvbJucuHsAm38M6LA9IeCf2zBKZoXl86ZTaMqoh20qNWPef9GXxMm--Eekarcr6RIA6AErzABA_whz8PhsW7wziuUG2E2aIVx86SIFco_4YtQqVycrGm5Ru1PlbEw6M6ee4nHWkWFmfmqPebTQ', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1360, N'V0gM3ZEZSgP-ArtAQ75YtEPYOMseaZeL8oBXRyglf6qYjbwyRL3BVmJPCsb1UuDVtcXjI6MxHyusVEI0EUsyK0QIO4McjbRYIDpV5obEXU8VENUxtflX1sQtVJPDGH199Q5fGafs_Fj7F58BDX7Okfyv-Ioyg6CWc4yvoz6J0y6mEJ5jPljmoLrvM0x_tB9gL3hPIMQm6P6DOT0ne9gSaWPL5gWjy1ZX2z3iTf0UXC20Nc_lHtzrHjMeGH9eVs-f', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1385, N'01HE0p45hs-y36VVFlYVNnAi8vyDFa8Z5CQKsu1O72vrUezax0zDFxbhTLHkJZztf43texJcp6L8rYvw0z4WKFYtgtn0UzdHSOnX1rfNkPZK6w3fdTpb2OQkOfUZwn9Mbl-hQ8YST1S0hkfkKvZ_YP78DefWp8bII2C5Wt1JMuEE-VbgNo6WXox9Z4oSwwfEqq3Bo_yDutEz3DNCEr26a1et3nzxyZOb91-4WGWw7rlNIFUyCc70pGwDH_2f-lbS', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1409, N'p9MYN8f35XMIceUuzRe1IIXcqPateQ4hxwhouWWp866Hp1zK5XgSOLRi9A8j1v-9zO3EODBP8JSvoU1Z8KbbKmu_QWfnDOdZNIZLgn6Vfe_sn_KiIzTpBRCJIrfI7FX9GGGO4bxzUt1-0zRzjlqMxqVnjDeXsWqk84pzc5ahXYzmy69Z2aOlTFmVegtT20I3CSwqfEt3F_TIjWGdV6rRKyXupU53vPTsykn-W_7IWmT5r_TueIZBKicAQSYU0fYM', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1412, N'6-iDWxFXm5cFzbTllGPr7shOO0GT8jscozzafBPxePXHKuYkz0T1gM1vMttKGxqhRH6pJT401TOnO8rdxOJY7JP4jcj7f1QHmdp2Z8hU6XzQmBXIkBlFAoFpBGmpTBwHXRsV0fNZzbN1fSDOnrNnvyayAFOHAY7-qczFufFI28xhBRFBTE90M8WTxEAosarop7Em45NoKcAovuabon9VHtE_4hlTsuhHtymuPHtp2Kt9fdE_xtikBjX01GN5NJW_', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1413, N'lUUxDNRnGcJxOURzFr3593hSvTYEr9oxM5z5S4LfapctZ8sRQrqB5Nb53PhbLZlV7Cz0-ZqibjaSZnhsSeQHCBES1nsM7FZOZXFMvH48oLQuxVnJB8d1XRotUh3GQZXK9oqJn0BszfMX3GFT5MCN5iUgfhhQ-HHXJfUv1D424vHsEdpFJd5gOwKthicB08Usm_C-iX951IW_fv8OgpPx4Do2TiPvof6ChANDsvASjKlwCS4-p1_IU9moVFLYfxwf', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1414, N'32o17Yu-Yi0NVId4AvF744oAL09sV3qTHNFl6s2rASgQc9tk3dceeI9xTDm-f8hjhrX8UOZbKPh2S7gvu1FxCtbebbRutPZKsjpTK3z4rMZhTS8fRhDSNS1RrO5LQ5D0ASm52mw9oDq-W0ad3vZXWcm2OW3Z351rcj_d3aZMW-UFn_6TwxvjW8GrlfKDcWOzMVnDeSe_MUZhrRcXjpg2U9KvGYxFhsWBjUI6vIRAkf4X_eJ15wR7t3tkpIeQZOos', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1415, N'OZ4kxkmzikXHjWm6mk0DlMdlJwV962kxMSlI8pWAzoAXaoZX3GlVZ9u13w1nXKAhQcSfm98zyHvDdgVTqkNZDePqArgiKBTHaxSrIuTQ4PVnXgG8zarSDrEmzd-0sEwq2oagHY_vWPKbMX2HsqzHKZOYTscVB_cTU2_a-lmzlYda0WUSzfYFhCpGVhZxpaR48esfaMgE-zjEx1V6xM2M3P5M_cnFv--Wo6I34EZvBFzDp51xTNawsH-L24yGX5wQ', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1416, N'SQ8HGTgZIapQlD38m0vWzlGq1pg8ndgwE74jHenHIFUwGvCbezG55mxraO1u5agmLA4ELLToQtfr7DXXKsXU7RUmAj8qJ-wlEOdZ3YwnpX-42S3Qd0elacGxk7pBGC7XcqQpAugutBsDCKi4_EgfHIehp5b8v5GfUR-_XZA1g7Sm4h--DUd7V3yVaRlWM5hqrNPjwruyIrXubhl7eZCo6u920ilnY5Bj300UaumfCxkWqI98b2hcHy6nZUWyR7a_', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1417, N'Dx5oaeUJxWwyRC_G6vn6YcjbybXhfIKju3Ynr5w3KNhL2rmuZ_czPXL-Y-UxJVxKw7OaDz5dyagY5BVv2zq8z0DKm1djdITYUbwCi4r7QaZoFwJ6NRy5h4UG8tnvjTdZC98dzoqcuZ8tS3K2qPbW4Lj5ZgcM5LSBq8v5__PSDqu7Z8nOpgRgbBKMcn5IkmyO5GZoMOfElucis9ZGucEsheukE1YSIsu4ViWCkOOBFRx8VctrNc2xWkwP6Uas8YRR', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1418, N'PyFAMw5iEZ7sZ-i_u_6fEy0lT7P_iIYwDUfcB6uk8sSJl1OaAu8_P_x3rE4rGp2gWkvifZ4JuqmgTp_j8MPc1WYMSPEZgl_HuuyO_exLOfALPNRGB0eYbRJnKMYJIqwgkzkmgSeY7P7Es7xilgkvtI25GXmFNwpDExV4Xo0ymO_fjPpvrcenTfd3LgmmdjuTY10GrA9mYRu5PYvSPKXqUFLIvUP0T26H-OJ07a5e3VbdQqdOLOvFzrcfpyhvqSsS', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1419, N'tUdFhVWbcu6AkexNlupF5zKiH7dg0Oq_9TYQFAZdQP_ank51CzbQ1-s5I45g5z0Jt9eSL11K-kbFEQ3pMPi3NdCxuUH6kkecO_4K-bePPik1oefdHDEe1Hkdbcb_wm2PwgznhwzFISne9BFLrMdTH9gUpqrJE1HtmNSb2hMjNcVDuEr5IiRXD5YUe4CHgSA2FlOQZ3rgwc3V_RvDf6sVg8z4GBoDFnDw5nFZIVImjfVfQWfXFVzi-Vvs1BK_C5Yg', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1420, N'O9mHnqdIi37-efmuFTKaY2HiDpcdAEKyH2BxCmiJKLR1yrCyMS79Ml5FIlaBYy_JM0X99ibZ7ih3us5NTlT1TW2sYCbhDeTVDLKalc4fvJ4XOeJna22sW24kNxu-Le2B-K35lIGEvS5-e6QZMQvLGiSvTEgKjHL3saTLznCVt8PC1TVz84bF9_7dQ5t_HNUC_HYb68Y0jYe1TKvj1s4ON-Q0SE5riq1eKhQYX_rutZJbQFgW3Q2oPxTsG872FSc8', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1422, N'mVe9pnY1CLB2fzHaiwqhFrUVbHs6wXVxXzuS85uBBHwszDd5xREZSp5XfYXaSLRcB2a8ZY96K3Y_AMfbtDJBSfwBCAvhp8htLcVmeugUUdWez1ByO837Xtb4QYcSfYj-Mi00ALd90BxLGOFdtezBPq2BTVzL9nVbl5Kw_VZpeLpr72ru1skL4JcSpxR6twRt6BH0jYY2orySoX7ccctuFDiQJrmjT5nPmxsSbJgpsr_q8Re6LWAJnIyZ6Y-cITN9', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1423, N'dAhkGdlqqeqFbsRsKd3ptHQk0fSUk0_AIQyKxrflgJ97iO8UGN4y2d0hZnak6iX3ZdkXuwEpUAMoWR5E8SZg1ricYNfzmAW48XgMjet3aXw7NiD8C4FYK-zoLTz8xINIjFFMv7hIbaoz91kR9z6iei4vbDEfZLtkwnerRmEuwjift3OcSWIvYub2vVOyNzY0wYdoGPUxh2Om_j7vX9hB-Tinb-nM5k1VEBWdT75hSF8B99Hj8BPzRJxqYEz6MeA0', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1424, N'sJnVF7J2BGTQj_vbe-kkUAcWlybUtYAgEFrP_uMp81QnE10Rzal4ArDI7jUXJMr-pur0QguBaEa7MeiQQ6B75DYwzb_h_IGbzuuwnlbnbjUTbCdVDHj26ypD3EfkpIf664yVRN-6IhsxlSs13YtozIIRI5vyQoGmBc8F4s7tnsgARuSfeFr1QNjolgx1wEMpcz2qmcfhYN8fgEihWi8MQAeeOnWCm0K3V27vp63leYJ6hWbZWP0mh25DM_YJ9xk6', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1425, N'r6ZvOlDZE35p_Hc53AeVufjgmKAnTP77u0VwDqnwsv5qpDXVHeuOmcAPE03OILsWZ3Uo9ECY9zrtFfCc8du9mzWtbJT3zb36uQWTYA7sf6MTocDxftEF9dozxailn4U1hJEQ8o33NJHpKXnSkwEhCi5hC96l8R_OqM9NHF21vRZC79YeGqxu5uXPTdTasZfoJcFQu8DqukanBZ28y5sX20NW5BIH2L0cd-ZVKhRV1Ju1jo-PFc9JgcDdFIRBMlZ1', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1426, N'eoNxzJbadPRUVvA7xkR9BG9pFVmcAxrrkX2TQ3TGF9OALWb6aVkFRjXQPbwgEs_QcQlxJzrp8BXVqJ_UhwbhpjyDeyA0ilu-2BpAa4nyWBO-gQcQKOgiBwR5NAqJDRhL3VuH1T5ozzS4-Pcuw-7uQleQ8nfhKWnbaUYYplaxPJ_gkFIWeZ1fvsZW7aFw47It-7aLuEIniKAEq89BkblFEtlbXEH8NEWk5RR7ausHeO3HaX7YvxpJYFfxKN3hdu-v', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1433, N'KuSKgL7f_xJolP75tUfvZeR3C_NnFWYy2EAhh9SKzor395_ZhuJId8XmJ4Bq9montaQc9CrxCFc9YELIkyuSP6DUVeLkB72vkP2Z9AxDkMcXaUyFe_GlTZ8moda0pNea0FjdQMSlIaInPPUYsDD1EC72vrbixMVAZbwiYrFvnUIa_6c_Q6eHo_tONN1JCELtW9ebyI8Ac8yWrkig7QVuqZke8-m6YK47-Rb856WTDs4PZpc4CienhnveYvtW1J0z', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1434, N'11WYH57wxCTmukgCiXDagE7wHktpZ1xSSEYzc6kv5q9NBDcGFAOi3n-KV0YD_Z30NCxpn19tG-yFyME3u08d5Lgt7Zj5sChGLLhl6bPlAuaFvfeyLV3HGg9aaSx7ZsV-h3m7U-lRlTfXWQoLb1EM2eHV5rSKvAmRejOPcQcezATOFui66IK5TW4lU8D-3vO0E8QCzJRwaUm16cpiT8bVsWLDQ83fhPSM8uQ3bmHVSwBc8ivP96iM1vP9Yi3q_ZqE', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1435, N'bTjuVS0pp7mXnksqMnW2qA990mYfRK0fNFfiGOhIRtI07R5qR2UFTxS894ANO1bwzz3-VctynR1d5RZesl_j1G1mQfBF6OW-SnlWZ3AbHdX6KqMOewl8iYAJ5aZbc16KukJ1CBDxYjE-UBSQlisLvt6dVYcrt3J8KqrT9SUV4YAdtIA2EX6Ay2ehdgNUlhPyTDveTke54X9MsU3zMWJGH7AGD5Mo6NFv9ElaLk0KUry7Wv6KkZj0DT_2rlop25Uj', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1436, N'jrEke5MV5mkKkAcb2Jji7_Tv5Eoz9WXKEGaRwqhQVoJIsx461O_mpNjvOFCWJVP6I7B6osv9AHroPHRvF9HANUCdSFAiFrlTsQwIUHLuYBmeBrwz2_ajK6EvkAF3qNkU7p20JOkyVo68nVFEzme2gQ6xP1Y-I75xkS-tOWgxEtB2YD0aO4dmS_87MzD2Dfd-XAcra_bLe2NxwNSHnQSe1HQR5Ll4jjc6U4Ldem2EAMrPF94zGkybKaVn8LPkjJ9N', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1437, N'Jhsn9Ls_3M5fsCDnxrdzHoYGWBGWMO7UBz1SsDHFHpyCw3v13UJvpYLYGBFLDMzjiq3U6eg5NbNgHWfDtgi2l7IsnXrDOUqRDNwBUCblDxVvjePfhJOzVfEsNL_vlKYkEUx8QwE7BaHzwlQ_mA_6n7j72my2DXIsVemq4YNG_f92QrtkUtDmoUSCLhO7wgLAAZ_7gWlyH377Jtl-N4MlnLemw0jJbOKYKH1d0dpIMErA-anGqY-BlaCRcoyCTebL', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1438, N'ajbrIctPGXsER2U7RNl-Gluzz2wX6mhGKykSS9VXGDr2lcXXhmKcZ_vXb0nhrpEs1up_BazYx1h5M9jodhyu2zP7Q7FLekKhwvfTTX0sr98yIGZrGTKM64OGRtFouC3JnsKq2fjdYr9e5gZPQHkK9EDJuLnf_Qo5SzzHmCYwwtBaL9vEiTwO9WKN8kwzS5nxu_wMOrAntBHT2Pd-F0_Cr60DceZiQL7geOAvouZwjWeSDMgRmh9_uEdziZjKnVyC', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1439, N'_WPeS3KwHqB9s3P_eQmGhOIazymszolUwS1ZpefQggHMuuzyptif60IirETiThkGwYt-DXa6EG1B6tEc--EqdykJaO0Uc_-4Vl0apLbs0SLyp3_WSTT2c0yk2dEzj5ppxg3hprUy6QiN50lP_-vijkMcuEX1uo6KljhUMTbqbcXsrU9hjdQgSt2U97HUpv33SMexazlARpDL5z3wRN8cvjXY7m093DoJOA3eqlFdSd_aYpDKo-hdO4YnVgUwgMYU', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1440, N'v9X_ikuQoO9UYbwQMeMjlbGFsOWcMs88Zb6OdkQaxxME8U2vifFPycy38wNeGzBY3qTX_Jon9cRk4KkQNNHYPX6xBz_Tz3VOqYlJ9rq9QIEHevD1MM_cHETU00Rp-QnQVsNs3fRegoHo7c3I3tJ1ok9R5NUYMhedbyNrbpxXoeIbxw_3eby7yLNwJOzaYO9uQ1KIqjcGU2WC0g5ZwJuyYoyPnIGIZ3vlPY9fEJ0CqCZKRqnnGSi1oKsbC0EfqvDO', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1441, N'X4T96qDirv66iWQ26-75i9A1PdPZH1xsxk5io6nMJDai4pcMEfencW_f4iZJAfp_4zhqRZ4o5xrnbY88p1bh7yOXMVVkJqJSkPyU8-447P12MDO34fJ0rYiFtYjPk4tui9_8LjYzXbgZgW5qyNyHmX7LZuNnsZ603mUIUASqNvqbzeZYnLAnyuISzKyAvafsyAsOBCiHy6mBh8ODsgDVa8edWXGy5rWPxHT0gseNKVpmOXSw8EN5yjNc1CrSi1k3', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1442, N'PfwTXJdHIPKrlUxXEdmhVYAhn0-yKpIGlCkTUGy0UjasXT_3FvmfA3PVIzkIp7zWPuae6iMzyRjXTwPLciane_y1NabylwvpODonrP2byvE5Hu6W_gSeFZwUxM0s-tmODBdVcxH6vOWwtx3bAJxYLSsgfCERu_Y2qpaYkIpmE50GSIDKN7Q8wtTT08lgAIV8Uk7eMSW3yy1KJlcs1HPcgsWqCqYqm4o5-jje0HqytGJVRboee01kBl7zmECQUTzA', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1443, N'swDO9yzLiO5hO6M2emuGQRKr5ZtnDoO9ucfEjKF21nNwk7ZPytTjTKHzCvYlhDUkcfHvYS2S_jxvFTQ2XZK8wvyCia1hKiw8-NiRWRlJBo0dVHj4Xt77uAgrDVXHvLuD6MF2Y6uPI85m1DIXRXD-qnxiJapR9EnOFsXzXYFzJrywhXeLPpYuRBqvl2IUgyUJ5KFMoiZaupjU2vPSsnjAjmetduTOHUtqUEUiGtAwmngzqPk4swWDYETT2m_5Fhww', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1444, N'xmsiZDSASrL2Ks6vHyNh5oXlYh4vT3YGA8UBCXVPzos7qTmHHmsaALL2QSzi6w3CO-x2JTK_hqPIOcNON5Ihi_fNkCYfpvHed7zIq7UzNKdT5rn--n6ZcgYS_rCFHu4iNzC5HumbSwnTQwPDSeSeuqngGkvQBE8X29mgEykl0TMtSWoIL0bZP_XfBTtPntfJdIGNFJ1oXsdOYWDyTMlPPMhOK4AO6dq7BZ8pgVbW9iNPoxZ1lmNnoliSuqssF2z_', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1445, N'TimLw7z28_G2TyNorLwQoB8p6ueJqdv1nsCvBcC6EuifLifh32-8BZ-Ae8S6-BjuBvQrUpZEZyQgHx0hXJgshKcw5pHGUqRABFo9IxCqBHGg7xnFFaVA9YWFOZw-PjcszBZ6BowbLZr1Ky5cJdpgwLusnNU2g5UBobfj3k1vPUQ0iy98QTLiWbHhJ6flP8xnwSm8isoi2BetFAPwRlZqCYUI0qx058FcJwsfxLKJAWW2881gBUUI6-3drs7TcShx', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1446, N'juJCaZFjabOhPjSjWMSCwErYjTM7RiWlP9NmqF2I9tf-6Z-z_zlcQr7hH1Z-vQLt_A05ScAZd3Ue-3WhRAPzwjCzCfEWGeW3VZ_fmUfgubbutDWEes6p9uN5iEnMGUoLcpdfIJ4xecqs3jk9f_esCiMH8CKobKgY0vxeKyKG_iFGdbzTjymB7AnR8QKaO7Y7lzkdgSOSs-U-iGRBbz3W_FFEB3ER91cjOZqk3IzoFlkEJCOoJfQn58Y4H1Ov-QND', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1447, N'pK1nKt7wJ6vGPPd0gXe7k9IjN0AUr3Q1SbRgGFnCp2yBxMxCtNgOfdpcsj37RudVtZspU5tdLreJG4lyFyyu6i5S7c7QLrmtoYGITGFymoo6QfhIOylWN32RtXejyAw5SXDSGWGWLeXyRgIRtN-QblzQuBHA6ELf8y6p1ty8dnW2u3G0lN8wpSU2mFvgsJM6_1kLqfd7kmP8BBF_DgA1Lf8K2wnNKS2zGn2gkDxx7XUjXrri8p6gB5Kgu39dmM0g', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1448, N'4JfDhfZXTUirk9ZsGw-cvkyRZ9SEUPcbnNF1DJsg8HStJ68UOrplJFBrRve0lzU1Bahld09GiaCq4rk0EQiZgEx7LBfhqGD6OARUvweRDMvGeCe_x2hj0DwefguaNw49LdNwEcyeawMM1lVdnyQ2t67DFdZ-BaXs_ZC5eOvfpRHw6wq2t8gx6j4BlW2DIiiyWVPZsJN77mp73SHpQzXN7gYIZNm9ZkK-C8WQfHdMvxhzDvR-PTFKqTG7ptrBevTS', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1449, N'5s9Wxvz4zZVGOfa2B6H7sLlnCLtV4gCyURJWjq3PlB4S6wWa6q1rHptjcYgz6-LkhNxlJszUgan4BbOAkjALTyHcFHA-5ITFITo8NhfdgIImskiJFChD5Mjz3LFkBCIin_cDL3IFRHVE0Yf-5ppyqQZtSm0lAtIjecl7B42wL1Cm5CdQhGL-c7bAaqk3qdF4wVwKu1Vm2Lbn3juoD7UZz1F_U33nubKGwO6uKeYPnf1QYlbdF3sNbr22AKSQqoU5', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1450, N'ZI0HjMrAFinfp5IhKNbwWsqSlWTN6svNwf32179elG6B0iaybPqgkYVJ0HTGgEch-5FsPch2WnL9x5QbN0b9EkCYb7sanZIVWtLwrJLbXjCFiU1mgtO6Rjerco9HVjglfaexOKcAUte6Vjhdg5ieZg9HKqSD9Ys3Xfs0KIS4bi8JXe-ThLNocGQBYu78H4OB2gGqJzh9ZU3dABmRe0PNJoYG0_yFezMazLhtXYpLAvnGB5_NyCd1Jua11nCeGdBG', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1451, N'3aafmx-HUVIw8P5OoasMzvKt6cgOwGnaLj1RyVudfBi5GqQSVhDNGNRBZCS9P83p5kgFFRSr0XaetPc4Tbc3xTpfTU7gIA2O98Gwxe1WsFIaallNUfivOXBWwRtfcy62OzNFfOR4ltFOvkASz1gFS7ekuJYfKphrjt1fUo0RabMSU1ObscAa-QCPjRm1wfMHQMzr8MQEoaj_5cdvskMgoEzuK8SEljUuBUkJ1ogPPja9PY1cT4swAvsShTMaUsPI', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1452, N'fv0g8sqzD6Lvvr50LHvPH76ZV-SokOtosPiczvDCOakudNomMRSgJmJV1uQPqm7bEX0M-z-c2hmjZ6cJMLBDuMfbPlC-g98p2nbXk2U2ZWg7J7Qd3ThEFKrtPvDjpqR-sDgybcSG-lMxewoaubbymqztVlNGHoBnntugYbkpEpr6KmnV-WCp7TbxGwT7JUB8dIPH1xOHjKcscOIr3y2g2Q5XOYcG8LupBs2NxeBsQmedLMtcKEM_gAPISJ4tqr8t', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1453, N'fmU5Czbya8cyIql9aCrsxLtT-a2U65LAQFxdPF01Gq9tDUbQo-l9_Cyv5Ibih5PT1JA24nIlNaM3x4tKIoqBJAB7zKpZ3pTe3JYzC4pDo0WRWvPRznxD-DQRIi60wTG_SrbaNNZLExqminMBvFm9eUm-1C3sWbbNaGhoVJG-Hel9r6pVadYSWUKY_wuuBfBrSxe6x6eER1-vieuJfJgUk7xGti8fHnN2I5b22O_FbAdH-_dfPs76-GlWGZMn0vGS', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1454, N'7pn1LfwYwQtH7bLnBz3dTLSjdBbdrxsv3T-Z3rGYJtIudoJl7aFeQjX_oUD4FZ33y8FJ7r9kPrOGfHxVTEpPHPnK_BO0SwutwdaM0HGfHROtX3nUuf3rO4VoHHSUKTNBV1iVzWYYU8ptQ-QQXK0SNiFAjX1Qv5tiOoa1h3zT_6pBWM6C0htJwKyZHv17Oj6lUkjbJNF_ivNn5paBAsrbSELDK0ZNUqo8qv5evi7qubTrx4KPOd3exyHY3EO9T7WE', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1455, N'vAzfnDuZhm19naE6HxOjJvDlnzcW4t9WTGxawhNc902S7o959ZfFriapEeDHIIQOQnqMj-AggpntQ8moDqW2aR-pX8ITz9D3VkQNiERDJuvut5tO1sJy9LuotRh_Wvt-ah_4aF_8XUSejkeF9e8jWqnFFlETsrTafCaxtgKv0EucI4rL43S3hLbwADS6aPrvDOjO_ADPFs90ua8qQYh5dZrJRYUGfLtyQwIcDnHYFRY_l95KqxvCCMTZdyNhzf-m', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1456, N'V81alxDKklFUgXSc9dgh-KRNwrN1W43sSXg1wxPufUNLdY5Pcm_1Te_7FZjEhRHiDr-3c6F9JmDT4EPVmC4BBTadzby8K8X6bP1qitBwTVMvB6ImWBK1mgxJi4krRLq9D4PYBey_rdeLfoZo-aOqrWcJ053lcBKZJH5U2dj6u86s51rqapJ6tHZcNFdkvT56XaWBVZqENKiRWLNjeJQQ0qGGm4aZKIqEZhLiX0DshNOQpO8NcIslcWzhrcblLPfW', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1457, N'3Mw2TzRhz9dKt8cA7SYP3bv_x20Wdl6xHrueoZHGqaAhG3PMgTPYWCkNt8t6PGXNMNBKxfJtXBB7GyM_4sGSpNXcZB6AbNsYVGk8hzsGpxmAqIxJd1XNyTKdJTAmmbb2ZbspMkCHPG_N0MGkToDK9f-etWV4-mTxk1o2yZbqpftub6kPl0Jm9qQqXgD9ss7civZfoa2LJo7WfF_dZTVJp3w97ew1_Dv8TCJIUGh9kCMBlEMfoaGeubSv_JDSID5m', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1458, N'lMxisVjMtaEhOh0PIsmhB17aNrH2zdXgS-Sue2HS0ZVRqkwOisIvXesNyf8IYdI-x76RRSKBU5InkCb8dUqbVYwUtHC9x67_o-eXFMIvI_fE-a3GJ0lnLXW7ZzJt7ahBmpuKXQkNqce7yPME81a3Qf42padLBAf05b2LjtHnEKEF3dfGb7NMJ5nzT2kPLT89G11WZvfWY9KNrJ0thqD74P4SAzdnIR-tM4gfRixFEBlx6-T0-dOz6mKP83jsmyhy', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1459, N'lrN_kX52aX0aMIzV5gxt78cyW5gMptn9HvZ80zGop0UaygEf4hldl63Xq1B1X5voLQUSMsg4Gv8DGQzAtp-U6lETduBgZERMFjUyOqgPV3DATlmeMTHDRguXO6tAb68qxGM60JKNQqcslisw3-CsgUFhycxB6FpLl8Lr0uZt1T6im8uFOKRQvxT9bWYTqUjYQgvZP5KJhvLDa0J14o0t2av7aqY1pQCdDWZr-6rho4W3FIbqey5qY3wKX1TmzHog', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1460, N'o0RdS2aaoj03ri9zjw-Prvlx6uKaMWUUtlJdMFKz5g9BGI3ykDlJ6Illpk9V2K3JAihMLb9m-cM982qjRdOj8K7HVWc5XxwktUhjs_nCYnjb1vrA5unZZgQZR0SkxGgGqgT2rTfRlYX5dd9Awh0H0qw527n_djJFJYLXUr6Vtr-DGUNMHq2F2pKFo_MlsCpJkd2XBFKLbNXwkJKpY8OHE7dV58E3VpId8KG-z0I3wHf8em4IJ1Z8uxPVXH8s7ZLa', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1461, N'gNf7tcWCzdfDTUwEcwSzybUTmaBrlEBK_ktp2Vl4epSkfQiaRMxyK2Jyh7OCxgZldhF3acdxwtUy5sCjmBy0bs2XLSD9OREf17wMi6HIeg7kHTLr-wPnjKRGwYmKX-vu9epULENJzaAgkH2lSD6Usi058dautYFwPCbZ7XF0_69KGOUA3V8rwMjdyphBowFnEERP_PrOHdioGoURDkKycxBuOAP1OujSkjscJZzPBQt_uv9fWRirlfzWLTYgWhie', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1462, N'bLdMMKJHFmIkBrYA_BTERf62qjpysVf1waPUjZrosCs547vnw60hhxbTMUpfwbcnQkzabnrBxYLeXiWDR71rek0yajWcrFuZ-D_jVNBly5KNLoGSIeHxh9VePxJ2ZzwEdQaFfgcD3oLJ_140Qfdje8URBZPJ-aFV7sbpOWBCcjqKDXyyrkSZyqN6vfn8_JnCmfrcLSAGO_ZsrggB35-B3vnbn5GCgXbrNwi5TmDlJfKxzp0gP1DJNjCXO7EGJ1SO', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1463, N'k3BaEWmaODNnEmZKmkKnPX_U7Y8JjsOA36iih51hla8iPpEKX_N_86GuSmkqI2OBNmyZvKP6XMFR9rz6_r_yLLP8tLetAlMWBzNGWV-wGZK3ijuh1wxnp8ZhJKYA-3j1XpdvdU10VnyFgC4ydCW34jOkEq1BpOrRf1yKRCsNB93Py1n-bmrrNlyPxDT3Efm9qjDh35mGcL-FzOtG22z2-ToBV4NU5biBtNs4pZ0kuqwKBPQLN6dVCC-5bN2RDPPG', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1464, N'agNUEqbO5xG2l8UDEc2Gg2GFAKnfRhypFuk5jAhHnpPW02vil06dD6Q5czDeZDJKELI8ikSs_j4MgU0bGkiPuYRAyC24OXz-tCfv2H6zwmFHBiogFJSdUTK9LOWZW4lLRQYgAgQu_8eyHG0LEzcirHdDANI-g9gHowm1ZY9nABGPcr5Sc5MTLwvFJ__9rbDbpNlFOV_HPSgKR_Tydsx3qEXTYj-zcDt3tSxFXEKTpZPSscgvavlCea6HwwyisbHK', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1465, N'8Z09vCbd1iV1z6ElBRA2udMB_UUJYHYV8VAUof9eDKszV5yLLsYarNeXtj7_ZlrnmNwULlh4BRl0LCaV-dZGqule3_GltXDk8LVSx9zpAYYB9YULIvwkouoDusCXTZutTStSg0eI0xSH7VtlF1aPbBXdU70133G6fCi8fIfHcN2xBBQVTeIOcp7bjzvRtfCtmGD4BjfwJtsuR-Kg5eecH4gl7dteu7X1hUOpsmyKtkWivlPSWWohSLMAaKjKP3tm', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1466, N'Zdbs8_6vvCUVFwQnQ4PoR9Nb_y78qAolv9qvCZsZCOWDImXVEPuEyuK7EgClM3oFZlThZ_uuCOlWbROudtyHKdhRHRIG5yzlnGWmJ57T9JPERuFiH981_FWlrampdi71pukWmyAyk4lw2cVwX46NCsFDdMSHeq4PiQxJKsmPIHyNewHvkmuKfS6n-ndGEif66naEiz2ivXnLqefEh5fMyRWdvyrlVewv9LSIksMIQ8PmgvTqVqxfRydHWsKV16wW', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1467, N'WqgXF8JO6bGerNtKOqil9c2tAPNgYxNJnAVBJg818OkYFPEbo84N6BeaGCYOePzjn0WNUne16eXAXNtoMYAItION1uVoOWMa5YVYOFlYuEw1rv-wx7t40_JrzKT6_vYiRPAphN_4GENZNxlIX4j-Q9AAq1fXqEW0HAXO89_1UvGfzXgolM1lQQSPB_XMFhsU3ehHkJ-TOkfMCD4Wti2s9HMAFFeQx6aFVVYMruVrGQqxWI71WNnsS1M1HpDQK4YJ', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1468, N'rT0Krd6P_xAEkJgarMfvwS4sORkR6zw92ZB21TltbiK_QBB6nMf3DSdCc6Y2X00R_FArHsC3kLriUvqWivX2Z-O7zBJsopLkSqU87ICQrhBCubytUa6kJRwouJIVX5HicYoPW3vnXnvcdqNLrTIoGnyOncWxMOSwqMpHxuJ1JoH8hrZNNbl1pZYabPR3hggD6FkuAo_rPlwssr_C7jiZkZemehCuZySf12TQSP7PPgTfvOPrm2uQQ2lS3gXabbeI', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1469, N'uijkYQavVWrDlo-g_kc4HLAfgAlxlsjQysqe-orWB1K87VDHE7V9KFIZ7TjK_6tF1eK11hHPd-0NXSJzpoH1WqOim1gWydOwc9AI_fiQVZpaiuMArkhVk3TUyLZpJv86V0PB72nKg5ozY5IBEIV6-e3sU-Vqr_azs21-HhR8l8MNu_k22NAovmAozHtzLp-2zCHUiYRZWDomYQEdO3E9YKveGuYD1WABYMNvXT4rkENGnltTz8x_0e-Zdad5hS3r', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1470, N'r2vGZKyCATjYLab7JiIZV_EP5u45NNTZMaToUnyHy1Cpp_9lUKCE51F7czfABxBWMz-5UmH8IuhxalR9p8TxwtR2tOnG3KvKvG1rlPqHH-ujdI22LMe-gdycDjuuqFecYU9wYS-EMVywUrMDHAyQD9bir2K3O2Ng92vkBp4l2mizHwjlJlqR-wQZ7L7lA3aLCqcDpIaR9eL-y3W8jjhSPCGFRsXmnuMNEuN7LtHd4nI4rv7TiZ7-COYl1JQbbXug', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1471, N'TJTgvMzayjxcCqHlooBflgzxPodSalFZutghC7UySlF29BEMS-oRmuiD5a3j1ldiSal82er7jMG0FXx3EiHGaXfC19JEu1fQqrQVLr_0CPtDPqlEIOvTK5sjez-3QvYgwtm85Ov13BRxgqLqGHqwj6aCGQLmnXVNNVhO-vWG4-ZVBMW8A0WIyqSZVSxWJ-mLygPmuh3J4puB6hhDMpg83BCZMrqGirEaWDoiVev1sClurnzVVHvlFyH1O5DVrmBL', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1472, N'4F1i0bzb9a7C6K5DG9vpn6NKsedqiV6yaycsDlsNyiBkctMX-eAOAy7JjQ8xlyQm6QKYDbuMvZsZHnHYTsL3nGuTGylVQaw9tmyDkUTRNCOsA071H1-CnSEQVf6x4WJuJrIVnWeT9GiNLw-XvhJfl5pxY_6jblHlTnm3TYCIulsA3PuN3hIe6BgpM6Z8BZeXFujldoQQGUOUf6WVs7N5--nncTimHuKXb8_DXPnO0dOZiR6WvBGhunhlY50q1hR-', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1473, N'LNcQVt1hmNjkidqssE5LPXatCjgduZYAnmGxzM3oHPyL19Lf16k4Y-RcmeFlkg-TbdpN5uVXXCT6x-PUaxSV0BIFk-9ri-UFZSMBbKzS3P0uWqQwFVm0ozP2beUALHcyVVB3qbmSucKdj7Gm5xtZDSyyRpDt3IOt0NZ6cf_i8UoiLdqq8SvKeiM7jreZbPOKBifw9f1j2gRSVjp-glmIXeFPzK7rBM2B8Ry1ws6Oc1nDPOswgmegXhGYtUeO1MS_', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1474, N'Tt78NHpvAHndUTNJdCoMeuIf3FhBydYRWyl9jBXNQreLj-NwVes79oF7gdAdqWAtKz9lOoAauQj44vTbEimZ93P_8WhUBCkfZlJnXEEiH5uM8Q8vYvRfkPd_szetltKZbpElSRGlIjfSmw_V9EH_XLjmGhLswzkmNzAjeU9NC0TKueYl2p-Vg7tZf0JG5BmMxVVJZ7u7ci2rF6qbA68IbCcoKMon4XAwjWz0JyFGdlNTKindr7ldu1xmgzwPNAZp', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1475, N'LzXAvJnb3my28o4XqSh7xFe0d3V_omxR5qDojxi5aprCdy6knC5Zox7h4HVVVRgta3IHhthwwEuxjXgRSFQ6ONbzaHenV889ZJG2nYYDGQaMiBLi_wQIiUQafgfvWZZyWjnR1IZYky88EnUm1Zs-RX1fDufETXZo3o6Q9_jmfEWMO09NW3p3PpqjkkeAI5ey1dvF7aL_G__TS8BjvWPj8zBBlfYTdNIeq6Q-_rhw9NRLrO7oDMbW2AXxa99j09n4', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1476, N'BupnwJTtLATgQa7NpzMVkfTNQT1y30vZwuG2BSvclN2oTCkwj5VRlohhxYZdL5zMqdzeWW-GUOEEw1lpUcKu7GTpa0AvhvLA5cx5IvaBX4zCq5mJJ5-e_1mskWKZaoCks_3KvH_JsvCK4cHJZXsexXlGtK4_pQ7Somc9r7w-lvmsC-J2MyVgiXpOFeO6rTeBVkZUKk5RU8Qq-Zb8EkLzcObp5XR4LHiSvBEvlxtcmiqAq3C-5SOesSdmEsUdbHY_', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1477, N'WgOSQT97Tzdof_PUXyLOzViZSj0BmOUHRwtxW13r0VeMI-Rq3XqsschpZmnEdEAE_XVQzyKoiNDSXHcQKEIKnVFLzkLNM8jrbxXDvs4m-wo9aa80PPUHXSaKZKaogJsge0fn14Up5W1-w7Fs3WNXvAyIne_81oJ62KyA1hD9HDkh5mMQKKUc2F9Lry3Htu4XulAyZQJEoykZ4o7tJj9Z39Il6Qk3Qr5Kyl8oZdmkLF-Vv_5z4xH37g99JBsl1GEw', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1478, N'2YR5t0gn02-gI8w-2c9IQ5oR1ezuOfTCOi6sXVN45dbOEG0_XHDjTr21rwmjOPcpWHcV3BwXCI5ECaFAaxHc6Ql7xr-e7HfiWrI5qkl0uUgjewvtNUEhsKFZQ9trmsj7etqCLC8fjVVluGCOjo4bJPB2Hzi1MxCXtTCWkWxN1f5lqPizPlFPyKE8jpcttp-3YxyKdbzxsk-YhBcZKIYp_jjJFBdBMjXMJjbl6Il8qD5ZO2igDX4Vzxajgnkv-8Ro', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1479, N'm3FnAbCka2G3ww_UHuDkYf0tH979tvyxaek4JdpDnhCd1qx6Ai81gk6Q69wq8yml3vtPMe7s9ZIKQ_lOvvSwcfI7dt2epb63L5ekTDgsRom4FtRh9gz_dZHDX4MlZE-dkcsdWOC91wARdhOswkIyJ-dtTxB5J_u3sqGS8Wn60Pw2MYAkum-EfmYy-VzbQG5R3GE5UTDNY1At9ee1wE2CjiDhi0YurezWyuKVnuGbuwbuHt6cjZM3ip_V_cw2bN3K', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1480, N'5AeB5k1Qm5tZFwuF4LRg0vscGkwUG5SYTWB2WvDzHc4BWMiTpCVZSgqG_yjQ7zh4CXWitQ3w9Qakf5MVlWg7gCE9svG5NqTg-s7xRv5SH6dn_GYESWJWTUq_TrIEp-OU3rJdCagPaeTL72DD0c9EGx-UK89qRaCiGd_xSj3zX3LfOhzXqupcJBp6mB9naRSLaib-x48oovHvjYSHdVMqpciU0fUg9IhDggJVl1usYWgqQsZliut5DlAIrrNaMTwP', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1481, N'XiAKyI999ppPR0eBnXwTWPDUX26Dxspn8F8nRyxevIUEwtxZCx7nA5Ii4jzREqBXR1EWaVDtSsPlmdMEzKrEf7oT8gtpO2bLKTfiKlTlsa5xG2dUKywxkRkljeQ6c14OElmsdBZIYFLk94nGr5yN5aKRCyF6p5-AIzOFd5Q7DWuY1NNYFDVQBRQ8mkinYFhRq7fPtWMX5a9tE0cIW8k_wZHQv9TE9-NaE_rxwfLu5WZ6M2bFrsVsZJwerPsPrTVk', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1482, N'KGcA-L03Kk2KK48ZV5W_MZV8K7lk51h4myvO_lFfiiTIODbNLYswnAjc6tJnMav1VhbAs65KOeTfmavRZbG085VlsJvyAoUvWjttAXpzJNd2cp_5oqL1LQlNu5L7nwO4gckM7hAjc-K0k-bghMxcOJjQ0_RcdbIaMCbdfsEIoQDvO4la7kz8afiH7U6zwP7k2chPkMkqGhTPWSi5wx0yHjVxkCiPInqRx4FK71GrMZ_WYFlf8QhgS7U7O8kbAcWi', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1483, N'zsEZgi0U9s0s0eMh65kaZeaX0Kwbb-BbbVRjGA0KDX3Rog3JLF_-ZfcBigM__rtquCKDlXlQ1lV5MNAHnjyzW7ibl5GYxFMVBAL_GKs6NlnUCqKGKM9BFBpVZc5_RPzmFPvnPlsNyvABvoV0I4icVt8eA2xFOnWd0WeBWFfhrkQhdESbXUxbg5Hsh_JRAOtFMBghamUQRC2R770e2nwaaxwYdztOh5viPKBZKBMDAdRHEFPodwXHowa2Y006NGOx', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1484, N'ev2FOnC9xPlDWGkNRqGAn0U8oPMVc2E8xx1ayWLJJRV8uxJfFfyjQFQULkAFLVK4E0Nf0xIr3Iy8V0vRJ23qlOtlHbD0fBjChl9e-Zccd7d223U-NPWU28Ke95j82QAQe_CAypE2tm6E7BHUom9M94EP-2tbXh5uT_PL8Idf5TYOVT3uU27vDAF4IX0etzTS8jrz1OMUz80LO3Tad7ldAZ0hAB9tqxpO5eu0PmK6C1ooOPAjfjH_fFXuWwT-w6eY', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1485, N'Le42dHDxeKbPynroLew64a3hqazCrZ2KB42WowG6URyt7WZhnGFxNL8_RWNYeyRsuK_VdHWji3W2ab7X2k7UGye_kMQT39jItjFf3-88DgXHcNFQ-njV1u5XsPm5cLsC_S3O_SwOSO7udxTthSapywZ6rjek9--q4YbNb_ktLCuV9a1a5OSwMSqrJKP-lqVh_HviYy4jBrCGqJZ2FOsfx8Ul3hIw6RJWfrZuxCjfBdxTLmdvspUwJ896Kc6Fbo7a', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1486, N'JDuI3Lm68lEnZFyCF6GInJMyzizP6Ud7wHfg74mGQp_7YJjG2GpZiA1HeQKX0qGu_ats3TPKCWHkCVyEUxsJuTrPNu6DSCSDfK1NyfZK5T4sWuhhmrLMHpQFL6dzCVQB7-Dxb7CqMJPZ4npe0Z9kpLNADUL3liBvtlh1ztpggTs606HCcDpwr9WIc9Rf9RrEIsM4MgveRX__LbuBtmng966iNZrg6QmsdyeIejMQ2E9XtGtdExUOl6hTWDJ4AZaX', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1487, N'37klb34eYmL_cZq4D_sFTZaLXiMEgawES1-e3m7NLpq6QOGKi6kEcsiSh10VOruOU8P_wKliUInkeUfSu9NXxaylwICpcLwwD9_q74fV9bgc9SPlBeVySNxCnvuCbSwzG1d9aLG02OInGf5H9TlUjjnUIk2jYBGhBk-NTDP-bGrRMuGr24mu8xwNjJtBCLLnNLBnELdrD-Dn_ItyQ37cLDyAsYnf-huWC3dgqpk0syvhQCnL4DMARaTwYPaIyFrx', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1488, N'y51VENF0U_nZuiK7zkzKWZWoeKcMlySHcngRPuAqUXD1T9krt18pyIANtXnCN1qr8bGY7YCZu1gzR1kLDJySeU5-Vdx0q5sxVBM0q_2rvNXSTEqVn_J7mTzVqjzzv4H6BHNHA4zMIk-9Y_DWz2qZvMZ58slaQ8AKZ7b2ojnOWFrmjYk47RgKOt-EVtZG0AuKBUAig_3fHvTH8WBLWwSv4Qk5EadewPoeTwIVahP_SsN17mljgTwNEepdUsCDa4zH', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1489, N'Afz28t1BHLHi6pwIUqzKBTDaUSJh_K6PdX2X2v6mrjKu8oGsurJD8Hr1arzy2m09oSlKWZlvia8ofJOCbyZGCUj7ELD9QRcTYsMRgCiGXZCGxtfiAnQ5XoH4yBXxWayK2ofIV3OQ7uY4HAv83wSE7pD9qZgtIfxxwvPTuAqfQP-zIMmqPOIVhO_wRAPamAMd8u2iUPko4ed4An91AyLo2EXvMj2voTw07a0SRVcejocx8NCN1B1Qj4UhzdjYmtyR', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1503, N'aPFPkthXomQ5QlF5AdNDcf_rXQjU8pcVvm3iLuzUDfbQmHGsweYWGj9rMds2l3slg68CE2XxI55J5Dwmr71nWUo8W6g2En5roRMjRduL6ZFrDGZDzLGteKbUGxhx5I4DvAbM6gYUakbDw9wCIJONNdeqyjmOwupKuSFQ2lh_TCfXfaXrOrhB-e8lLiUyZriCuCEfNcRz8XNql6tF9t8Fb3q37xsLSKQeRRhg_xNCAmrx-4tN5kaB5VQ6OTY2oCh5', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1504, N'IGWAzhDKZt1qSTFl4oUaieEHGiVPjEH4CGGGxScLhasElFVp6ST_44eJ4QH2pr_0aZI8P4GLiY2U234L_Zj0fPX79SxDOKp8wTV7nfat4zOjqkTGhQ_1oy33LyCc3LLGNvigI2kLzJ8ySeH_rECIe5CMFwfiByquAg7WDnZ9SOiucbkx6fObtedqTY4mrF5u3ecwOq3pvWuuaRmLd_P54_dxIJGOjRCBaGZDHCOxF78UuCInEijuQZeiY_p9lyqs', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1505, N'eq7CzNrICdIoBDeC7HrNEXZDICesEPIJoJEzEGRDQYI-EaK3qjKzRrtIN0RqKWslb0QFSuY4mycHW6TK5vkvy7Lxu--FQaRbuy9TorB09Y5S6kB1coI4MG7frgALOwhmJFPFqgY4AwkbFFVFUNAo2QSE273tKfuIZI57dRgxm2ofg2-73jHmKv32U4ZBk8EG0X6N0KVhBV4PmklZGTCUfe_afcZYTMqcYS762PtXHw5OU9IyNFDxMIrRuHBHYSaI', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1506, N'3ukxARFe4Sry4Fm472l78c4wTbZ5ylIZ3_d193AkQ43EE4e6XlaSkPLQPjEnffFGcYYmVKw4plMezfRDPzzarhH6_nAlrvOZkHyOwn3786r6gUpvrAgVImUZsNxfZ8zPzuntsQpWN8kv1V94brj22hKaoyIksZr8yYBgh-5KCYgjFB17xI-GgkNLo-eVkOaGaUqVHaZlZavauzI952Xv6M7fPq9S-HDWKJCzIRAanEptYMfgTUILByJjluQClWEf', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1508, N'mbuBigz-EizMFmslqkv0ctBzMzp3YqDEvT78vdmNwGqyjiCNWFxLpAWH7ecqG1kP714RLI2GA0xkUSLanoUdHlD-AdaaAJtzLUgiDHSYcnok_eXkeUGuH7VarfounybDUcKSdqCJih5vHeLpw47KrojaEzteOyW151c1pxW94GoOKNdpNGC2Uj5XyYJkRwjM3QMHPXPAn2SidVbYZ7MKUCVyB49rPKVCPanYfdFJMVcudSdGYL9ivaAUAYzI5G3_', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1515, N'LwmaYUcilsHUnFHEp_oSrV84-BRDjxF99lSry__gWLo9AK2wBMJuy25nH3OJboC-YR-0bnmn4lUPmbQ4zXHHplOSdyisZMkFIf9ZCpJlwRW5RSFptnszZrOb0JtYVRwFpi2D5p672uWxOU4ZG55ImqFmpL2hTL7G3_nKNQjMZpvNt5s3P1T2VahVO7Ss7Xpus-cCaWXlh89Z2-tnP6yyPy8FIdPpG4HQ_WGUavuoPJU6y-ryt5GxP2H5l0EC3qEB', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1533, N'uY0wpXLUS8eyRyhyc5jTarIfL4NrxNiIOaoIWq4NpfVoDGr7wP1Muo2zvHunP01xPQIL6omGYlZcKell_sJ21okOV_uoU48XqzUONh6z6AA1jFtP07667Zxv5RJJjQN04UuDfHKk__syC7qDB13xUWZ2NHP4gA2yplGxp2w_YwaB3st7ILHxlk11FgwlHo25eLEuMhCiRjCGKVODDrgNE53TGUEDWlfi93NvZIEX3XPWuSTjXW2e5n_N6pNg-sf7', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1535, N'-njSRxctiDDKG0-cLKOOUihTSxEFv2PDUa0Rj9dZewenwg-dsVI4imN35RzyBKt7KB8yp95sFumbWT_kjuQLx9WF1qitDGchFX55oYET_RQokypRaN_bzHED6kVDS2D9a96igZuuaj-DleqjlmbKtozhmF4BeGeB5ztKFdQIvND4XdqJV_4UKRyoe1iekSfnivd0vXRrePaoefAbI_GbthacA2IEQ4PJGgfSY43BfRPX5Gb5wMzI11Xjo6w1O0bR', 2)
GO
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1536, N'_uhgBV09o6lmkSUPKppNLyCIV8MS7q3T-NF86ABxFZjUHyvMSeYYMXoQh8f8wi60Q9wF4WWlKM0mn4JPALfLjWSTVYMkx0U1ZvwsstbIjBH1EH3tCt_YWZQyaPbCzyhBxHYU2ZFVGua2kXu-Ren0u9j6b-MY0YDZdgj8hsBr4JQdZyB5keUuefToFGX4tT_ynoRqyjfwo3LmITEEebuptTL1nPsxI057N5TUInAs3qA8tQ4ZvK9hFzWP_qAi6Sf7', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1540, N'QzWeYD-05dvEvFeFTOYQMYnrUO1ft3-zH2p6pFnAKOwV9vL9m1mCkpL9DlBLDcFRD9M1kkfh1gpW7dB9gO5gWZQa7SFDnbT1tkp7I4yxpsrM7mivWrGpuHXFQ_877GtLYk2QTZRnAzOWRSY6oTMQBzEyDLyWr-FoRhk8FPDm7yoinehRaNi19jyYU2Pq5WQPMpuvBJ98OkZBFwp-pQ5ZTXvEgm-J4JDScD3k6nOnXoyiSlpfEdOWMJ2iPpaLxMO0', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1541, N'yoSUPTE461a2myodeUru-baM5-HiXVBAz4kBr5Gx79_qDNUcM_0p9H14cQT0g5vKAK-3B6gUpyOOt-8AgMfNaDHZOi9TpbRHuegLicwrWknbFwoU978a0GhtSO_Kl2Ojofkkqn4WAvH13pmernGWFQYj6wt2m_RJw2Z9bovuWol7bAPdaJVZTr-m3_YQy15aZTADcfw6Bfq1YQmjqg9wNzuG6r8BFpumArxrl9S4UtG3SRyxReIR-4ynsKdVPa1O', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1542, N'x7z-K-NCysfz7dV1Fw6SzAXvz3QIcRmOXDRVMZcit0YOdQKUBvKwm2zw4Was0M7FVRK267554K3omaRG29maGRdQTggefhtsc_MCpl1y9WE821mHVx1IfnX3z-z2YTQi8bOePa2kW1Qwz6HQKDLi1m-efddii0ORKnjjDWv4A66u6_2YHrdDGp6EqcwwVWGksLx2PyKI3P176Or_h8FWe2WLrZi4cUHD0Qk0qBE1KQQP3DEvBr3OSXBQmmNtC2d6', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1543, N'kox-WsotlvdB2MdfPI9XYLKOsWRDwofeYDLoHBt4kRVY0YUZToAH9kUt74NqZt8V6yEAfb4XRDC_UMnWvRWlWC-PgDtnyCc63iU5r9cR5A7Yt5a4iZg4-zwN94DdJfHAUelzEPXsQyksiQe89iOY7VV3xH5IGUYq8_9Zx5AEa9uV5kRTA7PzcuMFjr0nZFlrNI6XEwr-mLX1mkw0_R3nD63rRvjS5-4uxlaCyfJ8hlhUQ4TyJyD7C-aio91WZzwu', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1544, N'W7ZpbTiQQBQJsXKgSm9BfmGiYCwrojeeMfP0td8tcNAJ3wgkp11TPlR84xMViBgPGL3h0ZClMs5rF4uhP1B-uipYC_rgmepbt3OkBdnV39grtP95P7u-L3nAT-IIpWShiYva40b7MeTL8SC5VAJl6MYRIcoKkAW8b3d8Uxh_sKibFXvROThZIA75Kaa9o3eFzEEwzFmx_MkyWPD4w7ETLRG3APJkvLD483SF1j46lRvgX_m9Dua2hawJDu8TQkdS', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1545, N'KfohxvPdKgE4PzfX0Qs1GrTVJSyUAdYFtP6zukqqM_4ubGsS59RZuY1pjCz7upa4Jb9HsBAtZ5ogiYrN4_-94fZ_d_xhEByMn7BToYKj5M79fYWsnq1L_PsblN0k_FT6ww8ZHPHL7kEEj2NI8Cz2RGb62k-W2Ro5U5tIQDICzCAt_E3jm1Lf7qeslZJYs9E_kVLdAPQy_FgtottyFyVvOOT3wVNp7ZoDm1gjMRTqlS6aAyExVEzYsICyCJSMzGg5', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1546, N'ZK2DwzsJo4yd4FkTOHpa8xqiCeJSsoMdfU-wYYniE5_TOgdgiThkS0i_42917FgDlY5pLjIrUm3_BjZPMfXeyo5rzUdQR5eIU34GH-J82UVK0ADakQYEKxLjEsvFwbZgP0ebx-mL7TyJ8k_Or3ozHi3Ro2vxzY1KgoxaOJjNkS331Oey1Litnn5e9oSvqttdVVeJ_3wq53r6LWJT3knvrOwYL5RggvHIV2u8gNAJEqh-VvM0YH_4XwhxIioBwbFf', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1555, N'KliDeSxDLZmxHBWMBzhiZufQMTpEU54weNJRosFRmhM1OsM7D7zZ6h0jrznzYhncsp13_8dytMmInlpn4u_30xZ6fqv3PiF4481suYD6tmmUHlX_6SOH1O08YvROoGIAQ88jbczx8A-245YDmKbktv-zLF7EU_3oGmnlabyAWLNtpo1l3gnl9Y85YsdaQQG-mBYet21oKjbUbSQ3YWTdkyWalgHlHreO1JYioJ6YTBD3H_L_V9rUr8quhgbOpaFt', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1556, N'9S9e_ubG4YYIqmyWszsWGfQL-4_9-qz8ayN9K_r65csk--NGTZqfXd7qhNxBELMK2f0M126NvNMMIaHnyTyKhSsepAed2KkC-P2A-5AfGzAnXlXCDZqvxDLjpRzz0oHlPy0oMtk0QEQjGe4mAh5B89aeL5iEnvfiPleyV0b6pNdwokmO8G3M2Hqu6J6dD2a-SF01SgM_WB2WHmCrIojNZiwlMAdGw751msRmlojF_XdGjo2cWLuoxz8GB8nEX6Mw', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1557, N's__wFTYv4Lddt_yCjMblsBHpP0_NRhrWxP99zzpRR1QNG0x3Ne--56zuYC6w_-Fm9tWDWui6DXgjCjzuFZz96axgypd88mTuNOZ4ux_i5JjGnCUb9jWx3sCc2YPdbOaKJ2mlV_841atRJDSDHlefOBvCzvFS2fk6jlW65-njRorTEhPxvOxAFORARqd79tAjq42dyllOKSAQNfewFA-CmAr5QgifKNpIsU40ihFIBvQCM7Y3FhAuYN8tI1R4h1Oh', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1558, N'NRrK1n_-aPK7yf-YiJ0O7dTIb_f5j0tLKRQW1YCZYGSBOYMe5vNg5qR8EKAWRiGs3KIy6OOvZHrKzWMuogYsvCUENpHz6V4u1rfcsckPOAOjH6GpoYmk2QpAO_I1FdrjnKdv91qiebCpZ-S0mT6a4MiUyJXTPzpFQlvb5z4wthBK6QLTxjL4HHp1e58EgeEaoM1u_sL97yH5e5m80je9YFEstso9rc3lw25SClR7aMBjOt4fz8izArK_ASSkRzWF', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1559, N'GILLZNqpf060KcaDQxHeTPKozgbaPYU1j2s_Aj2ycE-3vkRtKi8wBDGccW1jiM_D50_AgECTLyt4iviNhnDFe9WMpkdqVv1mc_jLiZLOfSMofQ4v31xXQ1RSJsBisXxLGL5eNg67eacEGQbvISfDbP73_MClZk6JIaSDOnfcXFLuAK7l6h_S_l2OhksbaZCtpnMWE8vOrntrxcFQnlBSlA5PwQjzKlwJHBm4Hk0YDhC7PQjbGYOgFYqGupaQOcPV', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1560, N'YyKFe0ehvgMog8z5YCvUiKuYftmjr6udxZuMn3750sqpbwA_Lj1EndTF3WZKmMakJmWBGm9uW-orSBwreFgSCHTzp7LpQYF90-a5FA9GOUuYwRK3E1ADeZqx5eDI5adD2N7VUQjwNyccyFEul1Rqo9qJZ9Nl8_IOmoU1FAF9MVd3CcyfA3rI-B6-2m21lWBSIokFjIoipD1NqRapn1EXx1evvSOsvVgd4UYoy1VbGeD3CT7RJbR4ugoTEDn77Fno', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1561, N'BH4vS8hnbJP4VSUqdRPcI1O-Ubu-8ooNKndqWry6iI52wTW-VfaJYliTlC5WqvSdL8mTuMLfiJZ-UN3EMrdHi1KOxuf0bMDRPFHCx4m97ctPwXyrudjRuzVKge9v0qXEQF4HfKT-w4b7FoyiCgNkLji0SC98zziwlXz1Hjy3H64e78Mn2XLv1eGZfgGqCv20YD7TtXMAWCbj_wpzDvyXug-DXDzymYJHqW9rNwrV0jkeoau6VpJBdOdg_We4xglV', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1562, N'c8DnBu42w1RsNSJd04MtVKRInD0IRQKPTYU6fHsyJfjTkcsxDiKwOtbzJga5iccCZbOnzIe5dcPNVoyLwEXSKBSGpx2syHeBBuYxt2-JQ57jckyTer8lTz54lf1tNMkr49Ullb-OokAeIznhuxJFIMsifiqEYuiFKWIGTdCwZlL1MeCuJka7qmA9ebGnwSRFTBgPdjA_A_sd85IJrYoo9kFHl1eDByCNB2rUoA9W-I8Z2BfZoGONAWefMoMu0d0K', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1563, N'8OWIfy5wDpLBswBcq42yjZPm9XKdWvcpgO6QzvfUq5aTgHvABibejvPAidpBe7jXbQCNFs8aZxlOgpHEfD8On6UxjQVnZfpf4AK5R7AvwojDg454_yjy39mWSMhzAlOg5jo-xmOinJgaLHMK_b5y8K-eqTojQVgMJn-aEKhpCFNOzD6UBGCBii1dXmPWIeWMQB-rzFST4k8FqYuXJKeXFBYGxpD7EwCseXBptkoAfRZKhV87WULfPwJCXrIBN49-', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1564, N'PCNnY2abVrvu5AovDsvvZmi7U04yfC4D8KzsXoIDGX0aFmgIyxTfK5yJWpZvdGzAuatYOhXsShRn5S9_gBxEjPCJzl3u4W463DoXpv6534K9nyWjfUKdNOeL4VSNU2_fhKX8S7jOXRhPajtC2jRVBLXoAHX-TiCWvh6GHriKKknaTtNGDqkUOdtI2AyvclrKe4lt9Xk7Xb-M2N0eKRNlTs417wWAMOd-8zy5JXbCeUMbFXJ5XU5EDAqQfvoiIY5D', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1565, N'FFsaZwgC_ywHra4Maj8E7ZfFmzKVRfn4TypOu5HEE6kRxTxDK0rTtL-JcFc8oefZhRpK0adMeVvPHVy6L81fbYYr1oXohOGaZIlVz-6vqLlVnJB0ZxrqVpmqUqGndjcW75TI5AdHy2pA9zKg0zoTNH8Wqrya19fFP599vZq_CNREFXMrP_QY-pyzE7zfj2QvumlSZp1JzH_LMpWI6ICm8ND7hG-KTDLQJVkbSYf08Da0lERs-vKjEszAILGszHFH', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1566, N'1Kjh3yqDnCgKG6WXOg_kMuF5zlAW3sIaXF0JX-9fP7sl0-lmQftUYe4kechIz1fUBIyiM2VOyrVUW-46L1TqslLBAJQztBT4QNUMBRIoJ0BRvoxJbk3lTm_WOr0E8Mtgm2C4mQREaucgOsvV28Lhz9C5q7xzXXMVt6GdS3AdezF8u0oZTYl7n4yEiLLpgUO_kkDP3i23qh9yC2GdzjRbi9H-FhuesEXuRSv_1qzQbrUCz_2X92LwgrEEbNcPQW7r', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1567, N'w28XImn3BsmJj8_7q5mFvilue0QsEX0Ot51LHm5dg2frQzV4EbEUil6xXzTDPEi1BIq7DwKhcGNWyTt75jVZF2BSJhDvf3irZVI6FQkL9PHnZ-utyswPRByiscfMxYdPRawvYNF8rpuSbSAS3htqCTrPQPgS2-aqsMwp4QAwXpHiKeG9IVvSpOXugC9RsR2yQNzab8BFHOQngBFCco2Dut2aOxjzjigKJ3-dKcKzV6BMdycMPKSVEWKlyZ1jRKJH', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1570, N'RvLrSynuswdGQ2D2kLHy_LkOmh85oORAoZdiRB5OJPzx7PTmhP87W0yNMsvnjVw-wAXEQk8oxSEJ38T4HkmRcDB2J26XRGtajvbZLqWJM52zHqoXDzVxN20lUc4KenqqaPak5VsdhcQP_G-JFraWLlWrqqVjiZJatWenGdf2ngXjpC5wr4g6g7nCBv5ydYO_o23cFMVR9ynIPwHYbliR07EVQKPnrp8ligjiBj7uat8tufu48nZZJ8VAHbw0eX7T', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1571, N'N3H-tq0rfs1Ozq-PVfvuG4E8NgMyHSAtB_dDXpro6vY-s33WkQsqapL8vKtVnZ7Ya8hD_7e3y0Sl54WVA8k8E403S5tc1vuHWjxwP2eI6zod8h0e2Mo_Dqp_PyYPSJ72_HIb8X5B4Y_VxvX-b5a1uUS_jtL259aRScmuaYmfsmbOwPLKezuUuVtd3hGv-UbJt2KhpceW4zbW0C9faTFs2Kry_Tiv41my5nlOevTO7as_pj6sl4q14yycxpmpaC8T', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1572, N'8eE4RqL0F1QGKalh1A5QNyHSUKdvM-QlEnLKQdzyuIUoBy4moaz8vfCcNsoicly_U3zRWP-Y9_1ZpykxyA3eLy8oPDi_tjahrYuupJ6Wmi7HQw2O4dIQseJL4EE8CZEaOA2sbQrafOPucTwH9uSeIS6IRH1apGrggruSO4Ldg4oAIJjCGyjj8Yr3uUMSZpVMKi3OaGCoFmJdYJQic9HY-HT8jF4HrF5kRquF_qJMoQf5rFPyLjuP-vAhcwCRPOnu', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1575, N'tKfrV23nFIvqhm-mua8yb5X8HWdt2XIxO4T7gGyqAbisHC2sPNL7ly_0n09xGny7Kr15OFS33oAybC80U5q4UcprV4OMnmzZA_A10WxuhiTkEvq01S2RLkK3juEse-CanjOVF2y_Fd0Qd7NS1jVm1i6di2TVzgNAxjF4B6HkWZvk5CKmuWebqzNQhrZdE4PNdSgSibSh6qVBQ5zLzqCyoKizyp3uzeLKRwdZYNS2w3ovq2bz3mwC1jBsElewSe_y', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1576, N'ADbOLZcDAOD5PvFDbirssa8ien6zNAA0uGSQYuZyFPoNbtHVFSFmbBmDUgv6Kc2e0ADG96PbetEg45r3vS52U0FdfGfR_MdueAkucYDMSGTznsMo_y9423jfCHpki-u9FTeFRJDHFmJyQi79B1TKbJ11CCdJAeKrPP7gBvbeZrD5KJF_WIy2f43qOtOIvE6sjqHoQ7ifqir4MrkHk5bo9eJ7bKlvdlHonvd7PhTVKXtxV3L31m280nSl9q5waL8h', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1577, N'4X-ahV7GGfCfV3pxSY2EM7EMoW_jk_I3QRtaE7WMMyJxfFhbyiGQQHu5L36l2iyM24Im9d71NO01JPzDnx_9DwRaCTw83TVwQ6L13DdgArJNxG0cb-Luj5VFE7G1Nh0bylRqRLRhcjsdUVjMzzaXYcalOSz7M-4spWyOCiWMh5ZIUTIPXM6yCJ5riBl3ArgFZKtfixfmfdP_e7zOiDeFBO3UfygzTimDXWhoeHYrsLWGQ8ki-LzwnnTZN-zXQRku', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1578, N'9ScEcsfoXi4U33l4GkQu17-cbr8d8F75gb1gi2mxlma01RrdwsTTrl2xmB9NQ17akglanWQowa9ZA0eI8XHwkfEXsb6wWGxcIKPg_nuxMsB3M_fWvFwHTM5F-dJ50Ou27vhpePNJvIY1CniLvPcWYTJb2pxlNUu2C2jBfi4lkRT9EVBJOZZQfBIeaWN52bb355Qv27cHk-c65ZqgJtE-AAz_TWyrkY0aF6MXv-D5VBnPMJnviqF6uplXmmDWviCj', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1579, N'5jAPw022ecB3SZYO-CPWAvsSBQirZlwgHs7KQBdTQh4SnjmhyEe7dkuOu_5DofWHuwbgQAGSm_jOfF5uVoYCK0KeQXCmQdioUahrWVzi55sqhngc2lM9En2dqFenNi-z7TSvdSksXV5TEKGrZvvptWp9upYvplAnikW_-bHXWIS_9QKyRxftKCb5q4qlHmTECgzJPb1c1AsbWgk7Gwb3i62f4_0JvdzqbR4hhgzG4jiOS5QbiKxcS3f2CthTtCPz', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1584, N'7QRBYbHkA0STNT8sfEKvz70IBVwGLnHZ9Byd9P0Qh8waCPC2gDXfc5_WoSl-XdPN4JUxvNcLClzw-Bb3SiSPKght0_XLI9B4HbL9n8wA48WXWAylg5XaIRrTAvdCsiVMn0aOcgFzuZKp6T1l8h7zqq-VNCa_YkxHhSKuGEmwRKnE8gObKB4jy-1yWeK22kwOE--Rc_CBc-UHIIWKm6dbwpoZSKF5JWhq2c8DNyolumEUXSv3zrt3XW7uJwxDYF6d', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1585, N'T5-vc-QZ2CnI_7duCKRbmleseb6Vwqkm-iNRI1q_4Tx5176lt1UnaDF3cg5unryN7LtWjq9a7t6Ov60Mrdo_wsQOZErr7h82XPiPi0CW5Wua41BOGq_JfAJAGXPnzTJBfz4LpgKTPtyK0OYxeDYCl8Ds77aeD8APV1UIzADMeUzH8XTUIB2B8zq_hyQqXKewc--asZJD2PAn89YQU1W6qBB5MnxwqNpgVvsM6-J1QdYcKiqGkpuykF_Nd4xhDu-v', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1586, N'nz1T8XjcsbsKduABXxvKsajgGj5JkNjFuk8ENVC84ICJaT8Cw_pDahjmjUAJ7PEgx2ySdTzM_TXMLBSUcRYRdgR7njJO4_d_h_6ezfc0YzyA_8d2fZmig4wrX7MfyEwe3oUmq_q-o5puUzR_84E1ZhFdH3DdN3HvAiVvIb2IH_VFWWh2HP5liTLTytbIhKbMuRh_GkA1frCdBoEsQs6ap2cEKjl5ouFZt3pZwGxFhGv8K5PYhCNR85KKmhz4tqSO', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1588, N'Rhb65Glmlmv-LGBTMeaygs-le3RZYh8i9A5QZ0uP_I4xel6XdKj2yeHA1HP5yP8ypuWTrzpbk1X3mPwxvdSWBLtuRETq_LLkbLFeIn-YYSSe3CuBb89c7tPuOxdpo02iJoWUH2LfSAArWUM0mIsB2gLJ6Ew7SRwPlv3PLaL15iPYbbELwlmewlhwP_ZNJqyfzD2nP83JyckyvQbjTa_130iNe3QkX41ssvVR7L_5O9e-KI5GUGBGRJDzvI3ialtA', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1589, N'JyPa-kypYCSpi-am6-DDSpI18idL_6jIaxVOEesbkuAx4LFrenYA5oOCuShPuD_2_J8jBM63YlEMOZfUBMDNU_8yYXd2zIUBvPTpbnkiwxsv2j8SP80nFLPzF_mLPHkJOhGSbY_zuGx1OSzsA683eiwjdSCDrC-E4cWeVWCaOdMWJxqxnsP90RJemUAB7XWA483dZNlWULn2Y_hjVAGAgq-3MS7c-BWhzkD_iI-nx2PfT3omN5oIDCf2JBjgH9qA', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1591, N'QLXoDmyj4mj2cDFvUWCFekHam4E1m93KhohVX-82fJ0VvFE31s452mheE11lx82h7fdCeZzKdB74C8wpzhfcjx-fE5Mf_CqUA8qPf0J7f9GiDxAukLdOyFRkLXsb72yeN_D2hjvbG5Ql5n1NP7BZnNfftpzG1XmzLL_fFrW6bTy-MmaAPSQxOJNajnfgJcs7iMsiVQ-VSBAnTusZCaWijhm-R6RqZdKGhZXBPcKXK07SaIKxmwZOV9XyA_TniJJO', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1592, N'wqW8-2TgPHjrzdoVL7vHtPgHaWQmHoAGE0WlMTVSXo5l34fxGJ-Ts0tlfg3JhDvM_eiMQR2ZfYi7Mu18Vt96dt-msSX9bDmEUjxZ6jYpxq6WjUuLrp4GpRjyJhdvx5BZduEIV5ILTkpS02FzC1BVYkBSJPiwCcM1wYdS6vb8s_d6Eoa2VTBI3rBeajvxYLt9hEsFy5Rd-0-ZsaIT6NN7f_kfwRObr0Gr97W4S4gfUDaqjHkqi6j3ZJqb6aYOx-nB', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1604, N'n-QQm8GLp4_YRrFHGKH52F6H5WxK5kJfT9V1aH55sqdKzlT-SSf5qSwGVTpR7ayDqZRQOa33tn95f6bXKiug501bod0HlKFpsZ1pLuVWP12xTxOZFtIS0fGMqldnQorqOmFyP9wisO9Qbap5YMZKoM38GeSwdwHJWJP8ljRH_yAQxS3zvbm1UsJ4p5ynL-6dwgGO_76qxce6n8UrjKB_dMi0r-N_i2Q33JWJJWuA58EW4pXGU_l4cuMJdnFABRl5', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1605, N'R6TrlC4L0nfMrAb1bXApoiJnu0Igr2IhXZlFWX9j7Rbz684t2iBN3rlfDXBZO-B48wKMLCyfGogJJYVMBxdMCr2iXoWQY4VQupkOi-Gpbp5a1pW-WXkZ5_71A0cdSukT4hx1J4NnBzq6eV-XUTc5AjBaCx4fi8NzNfOEwfSwf2Yzdv-XHPSO6_1XhBTQwCPOx0jU5lw8VlbHcrFgvF4KpajG2FXq-MEmEqKKVSemG4rzlX5keIBl1uSVVEeOGweK', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1606, N'I-4yL-WI1m7Y3I7cjhRWC0zgwmM_44-6gASaPvNb5lUIITzV09cG0MiqiprXQMJwB9BZojLqyr-5jim7njXoCTXvN_fd2n5CgR8DTiCFcl-Jqf0j4l2wSuORbXv9qH4-EWGvzcYMwBaYNUA5Xxr3eVJPNttYHzuJjkSd7_fCz_jl0lSm91ORkDoOcpMiyj0lInkdzFhr1IfN3p2Do1N3zYkBWLm6o8r2QdJJch-UZQJYo-eLXMuPWrsCpMFu--q2', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1607, N'vYB1snMUNDui3iDw40knCkx8cOL34le0r1wHghBxc553KAO04q9kdRlWPn2P7605NTEDHAAydpWTaO5R5NG7rqsL6A45DYuN0FvcBMlhAwsxdUsBCf39xcPbYu7mlIzcrDroSsXQ8_CijGx1cuPle6CaXyV7aI3y4WYsG_kuzpyWL1yw7c3sWoTcpdlrrKHOvz8jmLVAjcgBYN8BDl9ItA3WBkgYh7lCugB5pAvO-EkzMjsid32ubvvVoPaJLr6o', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1608, N'LBuG35qoyJB_2gqKc-N81_Y8WN065T83bRH442UQY-WCIzHvcn1nPnubTF_PoVgBoeFwMlcVEkvrbdTJIAvhlWo4i5KEejWP72M2noGSffxgMOHonVzGRxxLGsYEOj_7EwWKpiJzRDt66S99BVf5Jf5WP_Kn2xvqxf-kSSVySSF7qmZAfY8kVYqCi1l5nyKFHiSAvapG6d5aEnBNiQJVO9fxUMUG71Cf2a0YWlen43d3LrWIB-6cUNX8D_RWkwbj', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1609, N'fUGjFqaJBdthw69fIbHo6UVeP3kE8yzu2q80y37e4N2AL1PtzSi5g5C6Z9FvdZ4zbBcHPTCzxLJWju_VPpRC_OE_0LohVYlv4e4NzwOeY0NQzByqqb1VrNGN7B4u_fK-Nx5Cx93TNSCSM_W-fEy8gtXKHyDRdu7dw2UqdqtQIEszucNwAmLywjjKROZOJ1vBBsbyNVEoRWz7uul4vp7vmSc1ZuWvr8cDVRz_ov-YiJ1V4nU4Qhwj31e7H79QhZk5', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1610, N'q1JDuzSqVw7WhE1xFhjRLJ4tobD0jadRoYQp0HbxVYTI45vXz9ppkKmhPBDbUUWwNCuJw8RD6th2so8Uc4Pb8To9XSoxkt6ZBF8_4smzipGKpbvUTksy0tuW7IrJxxo5KpDJ5BcWHBUgGorrGW-4JivByuZ7SWjops2dxNkodI_kTEq4GUuziJaln_j6o6e0nWc_HOb6ElQnyY5AJF-vFh6siekrPpGPnLIEt3tBPKa1kRizOkJkngonNX9JpLSL', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1611, N'r53-LatI8yTJqQq3M-Kr68Yujt9FUFlvPrw6zJYABNKK8nui5_gZGZuN0n_030SRfVwwhe6Oizw7PmP5LGXFzSeEzs-R5XGNOgq24EUMFoDzsuS3guljHowwYeSc5s07kbX5pAz_ylPrFW41m00x1_mD39k7Mo1KVGMCJw59rKZkNzD31DtIqzbq0r13hDCFhRLANDpCuJmStRZxwDv1Y0-osfXOIpKMlK3j-W7GMr3kY7N4wll_Bps6GU1E7JSg', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1612, N'6Pc3pXX-8hHoHzvO32GvLWGT5fMoAT5ZU0JirkDyPNMvvykEgaDYONA6FCWyPqmRWu973wexiyTBkSN6b8xJG2WPLnhik1UOB5yFcOb1EhicaV1KhBHncliWK5Huh3kAb4DT8to02lqOo27oVAQWVpUdAPbPnrvnFrx9JUM386reNnWcfD9FP7qzaTcyl_1tiI5aAHhWvsTELDInC9jJjfTh_7_90tLHaR7NGCRfS2-J806O5PmzWARRrenWH1v3', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1613, N'OIByzh0cG8YvhWmIfJPzJJiqFyktakAyHjjRdJJ9u49JHc1PTUATnSUGHhHriWYDaKngTHJQNK7EauQ6NVhDlX1vsUBpyBif0PP5DdPnxoVGTBUA1fS4p2w2ujcUw6UmrasiRaIWBtpUluYTSSI04VxUQWxEfmmoMzyMkkVtSyP0AsSQmI6i5CMqKyAc9gGMSURb_SJDI3S22RH8uz8-7ZtFT7D6IQHdTWjlBJnY2eIFiFX9_v9pqdNMUyFHR67A', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1614, N'_IC7_Vr4FtomT2nYkO6V-AkWeeuTSB0nG92UDBmbJywmywO3pAfstzYSaAWriY1CKiPP2Ebf4OgnZE3YdgcUubufZAWqgd3vVgNUmn6T9T0lw67L_AR9sZ7VaZ4TcvoTD1CzBwNbDMQC6l_Y9lBRbCiVAF1HEIqpr_6JW5EsqoKzTZI62uhjLFg5G7wfoOPieDOgtXKk9QXdIHlsRRMriXz6H4KNWQZU5U2ouG7NXfWN4YpJmL1Dtykat9BW9pQF', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1615, N'8ok-q1AjgtCqbUzafce1WAHg2bv2kvxNzlsaFQ78w5l41uiV9-gXBFSQHn7hFPvtCeB-UYFMCd7_BZMYB1PGXmsQtyhmHlupYSgWBuc1mEOJQNDkQunZfdXiwiWnCWfxDGK7Ht7A6_3JvQEDGB3i73mfMabu-84GBPqBNHLXZOLQ8f6C49_cDSy-3I6VO5tNOP8MZe7k2TZWVsCMxUmTzTaXtttnDcWVXZh3OAzV5ggouIulPFx2cScF7xZIT7x1', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1616, N'Mt4vB96-TnKjg5kYC9xRg6BUp8KAGYGRHCzPgBGo2ptWeGh5H99Ct-XNngk_pEo70PNcTOxQj8De52h83mUj9jfHGkpnTGPaW6xmGeoIm1x7qiRXrMfKUG-DafSSn_7DOGQ39Jv8370BAmP3UuufXwg8cUyvRPJEP-Nvd-FXppMvDS2yI9kicm5FXsM9G2ZTt3OwuAUGAgAFocBaBqYZhBXRWBhzCkS6zl6JSE4u530penDgpqCAjFKc5J77fU0N', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1617, N'WAE6B89y_ct1tvN3FnjxxeNUCEdCZu75fA0cGyEoj6ei1mxChsV2KAZzgOhORXP9eDjYffVhfDQft2hrB3-JZRaYtywR57ET-Dx1XcxddksmNC3ThpupLGTB03tYNjtwdVi4ua1wdDr5VT2TqAVltQKxXgvHok42ZUhI14xiFGzS8KHJTbwcR7xtXrFvHx8ZpBy7unkI_RhjzAata8ekATJ3gLmWoOvf6XlLvIbiZiy7cXuhxqAx2QrNr9wULimv', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1618, N'wIKQldkUGZwWXzXDYiTljhquHllj70vlHkidjxuIRG8IYBSceGl8v0kvvynkWYoYofbcbpyAXGUhcQ4QM1FbuocXVdz4MysTkPIwfQ0RLNjP2u79z5jIfG9_9Gcso9uvcG6uAydw4rF0PsEU_x3tuulWWtjLOryAU61KIrjYH4sjpXzasnfmwYK4AcAnv_JcY7CRxNh2KI5PEWH4dQbNu1l4yAKZb7BAF_RGWz1Urmm54n7wdiZHfdcqoYWJOWi3', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1619, N'apZ6KErYV1gxgPADXHqq6_TJzG1cr7qPswcck3oW9hG9kV1DJvZbpkMPgreLd0jsEsmFjQy2jTbJ0Q_VpYBd7W2LXMCg5hLByumXTxOEh_q13HOJoDBYf9a608qO0PF5fWxfhvpFG9QCmqrdqsYOI6ib16v_2-RQW-z4vkYLA2PtChwB5vDxuR8UVEiO49Ey4Jf8w4NzuvHOV9CpbMk82A6ONtkChK8YP8_OUBx1HpTVuKR0ccEYcXDI_Pkt6t9a', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1620, N'kM5AGzWEg3GeQYNwlGKyr0I4nPyN5lrKIIvIg6sTP4ft1Ovfcfryfr6fzITQEKp3ZIyPP9Mag4-yqVNfV_LD_RO_1H3deeEqMslU_B01SJa8UD5UdsXkhIFvvzEqDqndeU9Rx0BX1iRS1-2c1gNZUJNo_AtS9DgSwH-Wl8ipCQ-YkKsuT9v2J0znAbWwXwWIq6y91ES-Nv6YVfqWGYABy8HmYwSGJf5YWYAgtUSxo2BDiIjmWR3pcw7kEsfu9SDD', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1621, N'nQxdQoiMJB5xNFRP_lSLTf4cEtWOS3fq1LCEsVEip565EOM-zdh37xY4MQN9zGHQTsNUZ03gYrrE-LSEQoTvgedKtFjW10H54dE73OiCLD94ntYYnGTz2Q0-60IiJfYgGCRuOyFzxCW1Ue2NJedNeem6SYJf0f1i2NWyOg6oRBOhihAnDjh06goWkmyDzkCH3xhpQImOcn7AoycMttRQ-y0PDkzCEla4q0xbP9pWkjGba2ZY21Aa1Vrmufi2nhFO', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1623, N'2ORgHzHw8XLlfl71yQw0UgYNm0v_EH49nQd8_fQRvIB0-T34ttBkireMqSbNvjhl8ZRU_Ma76UU1v_1h8VX0iH0BtwOom0bmCMniFVOCd3_u_MDk5bTImaMAHMFyDVjogtHBRqiqk_CmYci7WGAO3hexj3SkHV1CmQI31YHefq3P4kgr1m6ld_FYwi6qVEwzrc0R2q6FrlVJQWTc8qBTVcCZIIRmRx6b2jUO1ufsOX3ExHYDDzatmwhSKrZZjLZl', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1624, N'wuj560roLRjD2MiGie4YBk1RaLsIb-rv2erP-y6b1SRhWIHaSSis87kZ1xa1Fd_V22qZ5q8WzazOh241cTNpP_p1HYlEddm1ZvtahOc-yWxims-DoMRBBpelmFWWIYcXFk27C3JrsOjFPueWQsPq4oYgbC2i4__LgDwTsYL1rw472qBYFjyYY9rqQZcmTCME_tZLC1ZNuleNk7D0RteJmVy1DuVSe610UNyPb4RxzE6rrbzredGSXjrwCiWlCbmm', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1625, N'w1wHh7eTA3vQLZOXrn5-tdYCUvK86-vzQaO4B9PkPnpxpOUU9VSbDkKkQ-NZ_LIEuJkT9pnj0yA8qKwDY-iXFian8_Xi0QHgjc64-aYOhvMjguiDX8pH4QPOngWEHmHFWOOlGAVq7zMtdpu5jMdgkkNbnfv4kcGVSmRh3fqvWQRRB8-dl7MBx4gPc2DCOUFMSUFAGmIAGNV4PTVs0XloQhy985iHRkfIWbYrgRLpsdx3Fu8WMlZtGtaQIWphjNUP', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1627, N'HXQeA9telEo7GU-WWGsfrEFk5TYm9EyW0d4z2mLJYE2_O7AUnj3F_Yw4P1GbdES_Tz4zuCH-a6hmnuXLEze7jm3n6_Abh5i0UbOlcOgTWtkmFdCDJyMLlvktASdf9LqfrbwG_xbMkHDqsBE-NFoFc7yVQa6tSpNroAvIKnl68Gn-5AtfR0EAwC_zK5isAR4q_sbKKxFua0pPPXspsejcKpO5z-nhdSimPRx7MQmVbcwxGHDWcn1N7dkSKcCNhfii', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1628, N'jvKNuQyNrtE94KTgZtYMSRChh_j2hUJr6EjJAKZon8A6iz7FKJGzdU7zkOS03r_Jp0oepZ5NC5JoqH0YBW65n8vXzQ9Anx85hbB7yFkKsNVlxLd-zaHLoPnuDz25ruLkyz6bk4e4d2JzNQyaYs6BDSvbcKeAZM7NpAhW30P6Vh_rWL9Wwkii6QUZOWNg6B5GFR11JAVVLO_VGNqrkC1_gl4qt9Y7P3q2FmbcxHpaN1QcvHsTJxrxOPxx8_457z0K', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1629, N'Q4jIhTgYN5updNE9ZV22a10gU_i9OHwmfrGHqUejR9_lJeLSRZxGBCqWRVcljqeEo66qn_2GjS6fu3vJf5asw4asICFoHFli2mn4B-XLtJrnkyhHPj6bcpLArF6NMTGAcAR3HCTWcXOIXZX2vC_spmLVfu8mgtqORciv7CEJhjAnRIwsyjBp9gXy5rJDDy_Q6OZ418n_ZfD88kY-3dqjtXD2w6JoC0ShQuNVhhGbsGhaU_By2ZokG9bWsMk3jNVL', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1636, N'bH08xB_7jc8uYBVFe33XkpX6Hl-xGD8c6cqq0jXjB67tI3ojaXxqG_TD1eCbhleRcQ6u11yXMe39uXR_6OWFQW1mjZD5nNhPlb84-XsCopuCFcMirzJwsl9xUpy1b4K29GTn9A4U8GD2OHCj7IKc4gDduhm1mOhXuCUu_LssckvWWviMr5e_7e4UTIsyFwDMiVrHm-V6CAHVfAhfjncn7KuXyjub6DhVgmzjGVadzA5u0oHR2j97iEyWjOpzB3aR', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1637, N'-vZbv0iwEJ11qsSLIuPedo0Ip7Cup5Aq-K5qd1fXgDD_YD2vwqN0qrzjGAEXxzsn1F0pf68B1LJtiyRrjJZXJfvHyqlXYMCJe5ET8MZ4jHqQSPwfdAfPSiyvU4m0LAxkXGennzYZfMTOY0-dDFvwP4VxeKh4tYrtUDXS4QHbuUz426jOeyP7gwH1CDbLY_IYVMNPSu5V8Cm2RHm9xKx8nYVNbEgsFU7jSXvGGpymqWgbJNg70xmNenYgxHIugLVo', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1638, N'cgF5O8mqELmz-R1MwhbSzq9jKNQ_kfHlBbF8tVy79M4q787_jGByGM2xeKgHEcjPHVvRwI2jiRq-CxJryFEWXQRb-ybqajnJxloiLowEYoXVj4Bg-4_gQLZo3gsLcDolDCJlKOj47DtRZ1E7gkNxFbMbkuIwfb1PTKngPcpd1F3VjqhikoFZQvhMIHI3HwgmNsyQ8SeQt5BENVMvBw6r7x_SEzksdcLHtejFmS2IRdu0oBVmFoxiYIxUIkeXhz65', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1642, N'7qLCqWHd01ZMVwtHwZ2yRwWhZ2QRteUUM2DJfY2jhENpZ5BBqMddQjM6jTYGsxM4kGkxi-WTq-1JuIfOfR0zuJsDf-fsFs8otSJf6HnQ4esFEj7M8w8Yh9E9NSc_0irNhJDgmoMVF5kmy0PDVRr1RHx7RfzoKSyztfhKYmz9n5kuPYKX7tOwGZzR_pwtqrT9AoiqTuRua1zDXS9YGiNXPGEgaQoBpL9Pe6Q8_Yl4dVzQj3778bQxizNJomsI9qm6', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1650, N'zzMIDzx0eOIxYOJSoRkxgyKZpf03rzUNIhig0r5rRnKfE6NzexB_sz497OXvTm38C6kzqfZhsUjll3wt1zFsNqtWt92yGo-WgLH9mS6xl9DeXLoXodO8ZaqgriloWlrLzmPiX7MWArbLEy5RedonkIDd_S4hsu47AsRbwR6KMyMuNrQ0NndP1_z8SQWfJh4CMjKaRgqhdTc23MOQyUmm_jyb9nOpPmwVN73bUTU2h89_nCkMcTM3GZIr_tizEzR4', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1664, N'jrJeg2kmt0E_B0hZmi5bDjYsH0TZ6nKOA0z8tRuHZBeU-f48upl7gs7GrIyDMi6FGMMHlacl7kAnKEwZSW3BW9BVnBJ3xJ8o5Q8iBXiL5wpz9C_vAYK7BDjxtdbbLGatShnBkDYKkivlz8NalHg_NIFosa5P71ATlGZFKw6S856-wGDlc5t7HeihheS8ODFUCCvuTGdw7K0zOIq7Ht_0TA1lEhg-mlCYKzwRm7YACznT6ptbwGiwTz1T-5FcWDOY', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1666, N'1CB4KE3RGR5qNX5lI_aa8RlRxMyzt4iRJQEVmPoDAqIDeY4owASsv0ZjiZg4lcRyWKIITADDnkiIIiGMNMRF1nU34qJFTBYMiO3u7WMAT3y96gmJ2wOXpGdfr_C98T-4JEqq87jss6vFS-M0UfWQUsMyI7tpT4Urx8zaFtNi0LT7eQP6JkB1GPFvnw2rm6Xm2X5EI-iPBvnV4Sivo-nbnWYnT3apH5O0mqR41IWAo6KPBCrmfO7kfk9F4CQ6MQP8', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1674, N'HlZi14p-9HPvG7KVtiwGf1Zltk2-8HnU4yTgF3MLp-wSUHiCrvHnoIJsH7Qws_X5BO4gMYPyhmyvV2250k9Sdcrjypa8vBY_VLgt8utvpXMNiGXPhuFcMfXTwxOEmvKYMxTtwHdr-iSa88b5JyBTzPjgtCnv11Q0yzVvSuhrsEVfYAwnK_iqwJtzIS2Ox7k9YqeupWL2SX30c2lHV15A1h-sTKUS0Xd5CyqZ7sYnrdZTVGBXztuR0E-6D8CKbtGD', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1697, N'5l7Ha6noi7qCuyu6udpY1aDa3Tw55nRBlJ0ZHaetWI0qTJTIKVchlK4durwXHFtJwGDBo640wZxY_m0kmeFKGUIeoDtG6VP_v5z7XG6zM-JSQRDWevCdKU38yaGxhbc8WVHR8zJUcQChtQY5VvYGEE49fWJmVFbl4aMNBD3i2Gyq8ideE3CF5vkHrOF8UDu3JQXP0kRp-JJqMv7XxdUuqwRB-FuAPSnFUcAKrgclgD6TeWGSJ1pH1744rj3WrIzh', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1702, N'M-WAmopmff6j21_fr-G-6wokAwMe6_wiFlMREo11Z09QoSRdiwmqqR9tZIGqZlX89qzb19ARQzWo_9EfpYU2IoRdgp2kpltiLb-vStFRQSW04LZdWXw8I0SyBZeL3cnSICcrYNXlzAdfvkZrUhVwTnEfgQoXm9y7MTpwDnWsbT30fAl4B-0PfKhnTGUCp-wwEn4MFE16bLbejFd68Cw8MZxZNztVsBs4200ZhnwJgHTGc0qs9BzvE6-sG263E1Vb', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1709, N'fjsLaX1rYxRBOHXVslUj6M3tam9F92vA7-pBT-n5EWwhKHBHEmKAcVvkkF9LNpjzPR2Nol7A_NIA5WJVFHmaPYyG98vJJcmuxaUJAKdcw6Zl_I4TCfZeDaupJ0dYcOzlHgXpWDNHI7X5G6wGsgNJQYphjdvoXcIb8cNodyoVbDnNgzOqs5AAkqnhMdG-Gp-2YS3OaP_2AqiMzRcDNgcDCOOgccF8lmmQZDjKWtZnXZfgnezM6aRNJyAECYJHiNim', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1718, N'pZbTIy7mBdm_054YRETvmDq-ocuYUq5XMTvBZshMKQRC9xO5JHdWKQ9UfmFupz55nec-IV-ioyNzisnFuXc3qL4VT788PUu-ihaDHYcIM4vi9qQCbgCYSYXgrcI-3zVJ6XXCWx2nRLFO6FZ68Dts312jZ4eonnQoXWjHQTBhDh0UHXzFqdIHq55se4pfrXn1ADcReC-XWUz1BG6w9iPK5kBKsKGZm3je48DRgtZVmYNXe0cL62UNCsGtnB9eoEa1pVZQfxqie7fPUwBmznXSJbLorppXx4gVX95_QXVu7I0', 104)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1730, N'6W49ir4QVmHoj25DsvgiHcsdsHm3TAyps9Hpb_pH3Ig64Fyge33sXS3LK9Hv1ldB-6daAsnxdxZq7PkS46n277x9d8aXHlarPdMpP7sM83doteLMnELBInAH9bnGxhOXcwmtKftUWiqkI0n6Tb3EcH0lKa1ZeMQ5WlWy1DIAnhYBBOo7OYjL505DusR6XRYyU-Nhedx5gyJDMXh81Tfs3YX_TYVuID8YxQyE5D4nUoSwtaawqowOlpIMj3M8cv_w', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1742, N'RzOVSEWnBiA_l-W2_R9T5hAVHu99OtSYr74BT-RgIpDdOHfFDErqzW5GE0MnudXayCOQMhWAJRr-9Qx3lcguG9mfmFOX24w8KI-wcoaNcw9pMW9VuoaoNLL7jOeojFnmwqgE3IhQwv7L31rGuebx-dFWLgbDT2iYr2oW-iDUWdjlkpnfGmdvA074HD52fIOqJlejyvZmsX-T3rtLsRCTKOiZku9Wd2fZUirUOU7LibZlKnyU7UT30_EzcV7hsMJ5', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1743, N'qTbLzU-2cKBNgxuvu3jWVyHsQM-iWdjdsPnXJ0tPtJ0Y58IsuztVykGw0xMKlOVK01K7GHrtOWZCYsxmnC5QsQamv7iC9JBdmvoiQuaWP-slqA9z-wGyCHC9OmMAdjzVsKjGtfnrhsfwJc87QzQVwCBRoHpqs-fGGHlyAEVSmA98PpimDmKbTkezSQZTHebJiSbYIIh9G9Ej9X69IU3AZnOxafvFV8TxYW25dzITBIGH8mTh0UUWZ9WrdQF005Aw', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1744, N'MfjGzuDF3Y_4zTi9i_sGNQjUthRd98iHus2Mg4K60OQuZJF0iaGPl3BtGRBsL2ZZoA5Plw3Sph7cnyDvqPkTYtZG1Vno8JoX8T9iDnl4MFxSKTfgzEnWiFJmdlCv6l_IzK48OLr3jc_Cqn4rdipLKdaMoNbZqBJC_hLoIM6po87OFUG2HXfw1c2zAGj0reZ9SOQF14cRUc2_AELGiQPQ422UxFxhuSiI3V6CqHky5BYAueRGbhEuWNTfqi-_0yMd', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1751, N'tl9BPmJKbWSZl8n0ckBDiF7XW8_g96p5eus7AYViCLnZjfVGXu0omWeX6YZEtI4xv2g3cpdf1JBW-8dkbYwBIBZvz1T3xl9uo_HN2lQpg0-0CRa4E2s6VSqkPhR76hdfXNSgkfK68Xp4TRG2aVAivZX1sZn2cLbFo11FLMaWms5QTYfNLYWgiAVut43zq8Ishu_1vlgRdBC5uBNlws0nl_FfXd8upH54sLBxdJrZt_WiR8VNwbfPdw5eoaWMyiBN', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1755, N'aEbCBjvnx40fuWcxj7Tkmw4i4S-wgVBwHnTprU4DIzMHQY9M1xFCIDsCkxqBWZlLu4OA7vHbb29wzwnsBT1Je96M-t1Nw6PoywWv7WYe6FJjy2WpGbrA4SG-yeEtCFKEmFtpnraF_nJtcpllnqNh3yBmhtshvfHdaqnlMNjQIkU8BSjBEoDqJ-hAl9qdIXyQEE5TduB1vITXlZ8mKL6Q42QfUQrpJlOiPCkjtncmRdICB5Yf4-uRCludtzeYGtUR', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1757, N'pkF0mQ5fiQRmi3_uRlDigyfIEjE5eUQ-mMS44NUXY6uOU3wvptYKPXlP-i2ySfp_ZEzSweBZsrwLIjb7wEuuWxtn4TLLuSLWR_THRWKlPSstykJMdAeG1RcJirOi_ON4KFEYTqK4GY9E36TBSena23ywUcjpD2bs73azSA-1gL2alQbDqJhKNEPyjtZKGj11WNOh9npOpBalkm4flOTVCOMBI6q5cqx-JOICau7oAIYsavIwofyyLDvpj-Xdbulb', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1758, N'mQ_e7K653GFgCLtxnX0ky9Uh2dvfNS-IUccBleRWHvnrkDdVYDS-9OLvPy-rpDwL7D3rV10nhoC-bhkuAO8hNtqaomIPAMw6l8UMJh2LoSco3d9g_8nga6hXO4inehBQIWMSoAqEJfpCQqlLMRlpzCEbyzsShIwMoiDFZjw5P47-cuRP4t8Ajd7n2Q4Zh0531TEf5JGm3BjpULPpuxxDEWKa9GlaKsROoqRLQEnz-h0NmTSoVY1nOFuPVt7s87Ui', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1760, N'dycpGqpDtG4vbKrJOs78eScJ_VZ36XuFPKlrivvBPTHVqpgSDsrxPRZtu19HSH09Vs1k8lWMtj1CG1-qRnFqRxAVRXpPGWoh4Jc5TpVY_MFMU50HW9oVvrY-KsdpO1hY9IULeAW1qLQsV5uMSxRCxOlcENRxVOZ4X1LuL-yf3Li06vmVl5RJ55VNbx6eYtwKlKpbs4RYA8mqyqGB93gLc225JjOz1ckZISx44O0Z0uHXr2JUaJW5Ze5inUnJKbTZ', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1762, N'NoiRBn2JnxXBYMtfPkJI7klwSUsqATFudmbYg_mFKGtCv7Hlnc43BeeMRe858hD3BmiXmyF0Q7YzSS7U4S_N95en0ZkykC-FV_MKjCQpGFEqsHvuiKn3qKRHZW2S2FBUyCbO4XjWN6F1x1-NzXAiR-cDz6iIh90dVq-_6Dt-YOseofIfh-l0dw-_BIWH1lmFM4aYKd6ljrNc5v7AmZkLWv3AEvfjNlO-EA_-ZylUUok0-v8hPNyQGjILrpdfDtqF', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1774, N'kzdzNu97tr4uEnlVpKc7OgLWEwtX7T0ebnoWW6KFtT6LG9sYP7t_Y917ozivaJShtjP-ku96eMV1gRPyNEyl4x22ROEBQvW-eLXX2j02I5Y9DXMfkuZ-XjsJIFgL9ilY4ySk0FLpmrtDqQ1zwIt43-HtblAODHt990P_apTFqgF46zQN4o4ejtVnZro0m0pKEHDxUyJV6EF2rntwesPQozO3mYHwUVaFzOkjOUJUoPsDYVQij_kS29xVEwXMpsMd', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1775, N'2Jk8phnt97mGtFWjgVtOjl6LD-kuF8W85BMplN6V-9PoEmk1J3wYaX249bVKVkmy5i4CJhD4Jl4rxQ1UGvN3e7VD5jt1GgkzyAxlk-A1I5w8Li-fV2_-X5QjtJcp0yyPqxjnsCkmN7SZqCML7cgeEimP6J6H4_MLJ6zJkYFuvL1faNUpbE1qUO0oRb6FsC_tH8XzAbg5shAuFqd2a6z0wV4u2UMn7tebQB8fZ-hWXLiJ6yp80uLxmXEwinRvfq55', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1776, N'-b3zWJ9jYHn_t-MoxtStYpBdTobrMxdrMxRBgxgrrV3mmuQFq1JWqBcVIJ_hddDAetPcDp8KrL6p9mkI2swtEKWgHJ5f8pKhUeXjcSxasaRGTBLDAczw5KGMpnlNjU5PdPxuWJSO_p0OXwvvXJQXkUamNbkfxBrJp_lPe95w3NsYlaNAqebD5ikkIe__Jamjdqmb2m2hG8QDqr01aohPGVK_LGASnHdSilQ_ibCg3EjqR6yrKp0SrSCrcsSGDZfs', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1777, N'Rk21jGIkMrPSNyvTVr9_NeWct3TQ8Q4P4adG1Dwsibh5f0yhkAMp4DbNp3vC6D3jdkF-DqUBmCd74MdQvhSrOBaIchDxb6cYb7oiJsij5dETfx_NnYgGDXvz_NX6sreDbAaiL8OMUefLQIIPa6VhAk9Vxpv_nvHTQpYXy9yE8xyp13FOW14vSZr4h5tGCUPo9k03oFjnhwoXkNw_jnmg3bU-93DzUGY5TO2pxSaeV85viw3Z6wKiXQZisjsKMq2_', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1778, N'usDJ2GyYou65n9HMRwSf9Zcu-itZvg7fgK0LjHsXVZr1gSRrJtQqpRUbUt12uVd5xhvek69mk4eGEXmqDfbkpbL38wCXf0eHe3d2Y5GU6pmjvg7-455pauFSyOpRvr2I29p6iwABrMI7L2tP1DNzCNE6cCRBnS_EKVnfTk8TijEW6JQGg5k47pos95gNKhT-Nz2VGB2NkxWoGpQSIjSypxkLBfDi6zAXjStasHacmY3oYtQMRzYkOC-tUVSmmhokPZ_qHX33XmSK8xpUjZE-k8hgg3JVcMFmH06k92KhjIE', 187)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1779, N'uFd9jGjUo1YjyT95289lLmAAHG5V_AOLWFeVPVX8raLWyRpPMbTzYXrHKM7iClQFV-PWO8nnN4x_HI0trgEi8Dxk_LkTveccTzEeNGeY3-Wrn-d6fRJDWM3fvkillTM8h-JygZQBauSyTAdm3JzYfU4MzHtGq2raomAjfhM8IsymplFk7iTDwoGX5-V6nNGToOBP7fRiHttTJArxdEdNPO0tby16LZs1RO0thUJ_Rfeqxt23vZXI8S3D3NC12M-kjBKX_0Kgc1soISI33N2vPIy7k6GYgjBqOQQsJmCWF5A', 187)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1780, N'aM83sALlSwnuNOvD-NeilRPKfEToqFjudEgiiQcOChdwobByo8XqNZtbo9MWBtnNWvof2bd4QXaxhmoMYIjL6hFqvWvRPGfcOA7N7ka0NeXJGhSyClnpb5CbM5z-bPPlpqHXc_F1trZ5xUw77D-Zds6MiLjbIOinioMoIlaiCMMYEvvalulmzVbnaTyG2m69hmBc1xxSdQ2USbl8pLH411d5vXb7u7TvHWFf13kdHwR7CSgMfjlRlF-uNs24HRnkZhWYEJS5noyp5BWUeZbTsSxSbBAAvjbd9WFHOMUpe2E', 187)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1781, N'GpkUiVT7bWfhaHGeZ1fgH3dC_fW684ee3kNCkUHxnRxXW61GpYjjL80HTg5XdYUTKvc8p5JmcCRMZL2L2CQCJMcvB_O1u1MSMPfUmiJslctN9BBtEsrYz1xHo2gxNBxgf8-TSGZwV81S7obyoelaEH0GiikV3OgOrMAe4u_PzPsAb5O_tZCa1CVPqYGx7lgXr3Zu_oO7kWmi7sCuWEVKvbhWv1OtdIGGBsuQz8fobM2Np_V7J5XZ_WoP9qSTOEi1', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1782, N'aWN-K636jzbUdK2tlw6F0OqJ6i9hKzffXZu_6vDTlX1VCGhZ9kCqNpMCf4njIHReWAiUKc331WU39mla7TMrGovK4rAu2h7NbbOJaSJFhvQa86bF-MeEWDUYVSoaMqHOlUkHEAQLxnQRPqR7eIeA5XpGQiLvdJ_IAHl45uSO4e3X_xmGBvmZsBEDWskfFKB_dpIT29ruLhZxBg_H-WTDBGcJ9ycS__45m6uubC-zczlt538puHe16Wkm08Vo_Sfw0dDZEG8VQfL90VBlDer3GbuqdVHzR7j2ap8pmtkpdVs', 187)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1783, N'6-EHmjsoFhK3Cbf7UyjvosskmCBh5wJpYFybrSBXDr3hCt-1Xgde_yo2AbYnUgEly-VFsS5SZmVIaGybeuMnXHchY7ycKzI2OJRZFRsypyvQlW6rteXZke5M_nqdFbsYl4AtKAf7msge2QAaHhUF5UYs417nk2Meeyk2u5rfbTL2kZPmmaZ-NFV2EouOaht8YOr97NYNb1eAlKRLOWsIXAg7--SJze7wgR7_Gc_N-06EX2y6D68BSudB9U5VW-Iy', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1785, N'kChJkpjBo-8TarPVIznSOUjdipTxKAfcVmzYawiHtYFUSWXekmbQgO9KXKCnCneQGbrjeXxbJKJLx9X9z_A1MlRqn2_e8IBk5By1AdqgdCp6H-5E530vkaB0yJjd7jl_xrZBFmmufU6meKRlzy646tyvBlIy5D885J2jf5c9q5GPctLNLThlOJEXkcpazQpmgM8jJSGq97sPtzf2X9PjrrUZfWulULeD1icI9uTzrAdhMLq_krP2F4kRuUQtHxIe', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1789, N'ySooUxYeVIHM-3TTMz5amR4LZtYDvLgurv5gUF-Z-kFnJaVdkvxd2zWyHfvTdaZC2BBhpn_oXLOsJjdIf6rWVFP3ohrCb15ORgXS8KTce3kCroF2HttNxdlg7PcLBfH0erf6bFBQZKL-ClgSsA5qxirVFZZ2CFADJhD7Zhq2wphBi7W6C6o5UEHXx6nWvQK1WcvWB6BwGiYsdHNoAoUcuoy15MZzseeJtXw4f6sDIq1ED4QZvzL1gwfRTGwMw4t7', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1790, N'y37ZvsIkel7EN4nrtOXas0X5R6wt9hNO4gDaj6-zkpHe9IU0A0Aav-kmTHVWceehahK2pvOnGexF2tD-oPSi-mVVQhw_GEGEBzeXKIg_x_xviqWTpZy9p_435zwcVzBPkQEMJp6ANjA0uJd_cmMcl3tILtjwkDK3LyEALKY0XvUwlL5nXeAvB3AOjCuzZvQGGSa3liqPrzleOfhvbYEGcbhlrYegql9PwHgTr1vXs-gWAYDUr3iReo3D5fOrC9Jv', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1791, N'WQB-Qm8MrdbrrW9GGn5gbJjufISCZaHDMhdkVBrSIwm5tjYsOWYUMiaDTpwka2O4qa22cx8QKDUxZb9q0AxYd2AoSZi6t0hkpqRG2rFKGh59J5aJcw_xJXEAwgXggyLbd6Oi7rnJfQzEwaGPSylC7Up0YBNJb9OGswKjDeFm38KvkISuu2U7XPyItm019rFla0c8-1FN9V1sEErthW3ZMm3iZYoVkZvZxXTG91BuV8sCVWCmN6tVXk3QxerT8wGH', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1792, N'FWb-iAJ09oXfK0fnA6tt6d5VBUBFZbEM4QS9L2jobzK8xDHyCEhFggKC6sp7B215rUPH1D8wjFg_BWeYzVl0EKahhoXlOrjUAouKq2Dvf5HAs3s5-grlcdKbGRdTdbQGdejMouo3suyNYJHLQkrJfeQonSUmIFGH1kRTBN7wCAQ20hRQ6e2B4FAWnjJCmcN8CSBIRKtos77DlChaAopn4d8b1sMIdfVvdQ9oCm-Q2D-R3WLrvmbUoglXP4zuF8RW', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1794, N'XEyMBLB0U-cYwPgKi5FF7wOS5nqpjT4Tw9Fbh-UNkUWujnKfAb5S1odE4IAKRHgudyCxfI2lwqQAy6gUF0wWijzTZlHRPjbDRmL1ysFF7kC5jC1jW53UrQZQdJOYMwbeBaFa8L2ZHfXdDH5Hmo-r-HFgr5nwvClKM45udZCn3S-6gKDQtc3sllNe5aBRgqAvcfLK196rIVmV0Jfz5NmUfIVll6gnC8jGJlTRYvrQ360K5mHapbK-nrbapHMP3Sb0', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1797, N'pDmFISewQlFbhd0DE0qjf8KF46oO1VXhYdNuPE1BVtetvwYjxGnnZnb4Dyz1fxlhjsH7T4fCjgHd3JGvFR_Mlrzlwt3HNGuZ1fxfVxgCeovLcy0ihjMDYkOMov60-nmd7IBqs7ULjpN37xhHaAf8BTuMbRPPm3zDhGEu1Ic3m4COf-CE-HGnaBM1YqLY7xjSMpKJ2Vl5aK4opCNUMnu8F8nhsnbK4yTMW7bS-_JlYTcL2P0yBGimhK3VBWFPGktB2jxMFFN2EfjVMRaQRy9AG-qOu9fLEmnMzVCMskfQMKg', 187)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1798, N'5zgXBhL7PNG8m_BmT6rK2ELV1KgeeRfkosjsr6DoUqypYxv81sPExE4POoQtG09rjsnasap9rZ1_sZhJgA2eYuiHXIYNfZ_QSNA48dqNf_XyVASB11UCmWFlNIAXRO8SPc6QS-htU760fKGtU_ijsFUh0D-9Y11mpLmT7DsZnEmqhF2s3zPYES4Az3zmVYPONLuOYJ9aL6nRHspyrMX2abSXtuv9YANgh-IhvqBrTo7ueaIeuzS6K0Mi7kcnQzb1', 2)
GO
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1800, N'xTMf3eg4rTobY9NPVxNQ2gsVdWovypg5SMm2N-pIxhBNEPxiv0BdmYpvWOogf_E2GnIYqPC73XMHkyjBSQ5CFEto15Dfk94OlkYD9t1ORLo8xehHMVjSCSb82Pvx2_v-ycBH3pZqEFjo0ZjRUnzzCbiYTarjCyWKJhQHjrP8ujBvFRZFgA1FsCdzmbD8C3nUzW0rmRTplCJseDIwESpu4-Z7ZUnEy9993Lg1uoxGQ-7qceWIvTGgs2SGUgsy9raH', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1802, N'Ap0McvPXHu6TPgM2T2Lwkr1Oi0GMdV0-uS4WQN7CHctln4Rd9vSpzgHla3JpzVT-SuusBnAoMUdiWc9BDzRlMA34BCLFKCwIFnpS5B6fNufosTdngxpVQo-2b9Qv0hHWUTWA83WzHw2ZANIhytQgf86hdDCQiMA1_1bHGy6ocK9dG8h2uif0AvMJ0ab0k3hIrUaW2MfjdxuTsgo9WbXMBxVeGPQoc5GSkUEbEITxiNYiv8tS7hRVdpINRTsNcjs-y8bQ2k36ouacMgDuqZoh96eetgvtXfwI1hRwvPgeDm8', 187)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1804, N'2Jyubo3EALCokPJ0F7XeD34p8dI1KIJdsbt_QjZUp0wMA0cpgwE5BL7IAs_K7Vg0WZRcrjTAQDp7-YDgvGNvN47vL9ee181NjbqJu9xZfgmn1mOqc78aTslyOkjIUDib6FCyv4qrWF6Hz31s997QmwkKfl5g2WCQSD3XaMa4EwzG3G2vyeC4WkfjMVmzlLP0tfcIu5eEehidUqF538p_7QVX57OAzyRUGaCn5B3OsGELSNeAE3Q-vwGJGYdgQY8L', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1806, N'l7FdpX96mSZ5U3s1ORiHaj0ilL7uIwGNSgHMdbCy3jDvkDr4K91jDy-TtQgCfmlyn6rZ4Ny2zJKz6AYpqchrKQJeY_gsWMaEwdabp1rVLVZMDVC6978mKqbWplGdO5bdbL066z08j2JAyWkb9crOxVODPv8Aip0gyqW_1B7JGyagSgfYcDBkVP9q9gIaXlVK3KuWrMKR625Q9g0Q1Jw4mC4RDsVIiiCkjgaNFQXrZ7z8MYd9l_WfY7MzjJ01ubVk', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1807, N'3-wM23JGt8O4ZdcOYigTOwSB-Af20aFaFvdMEK7RElBXuNufFJCxeq1PUKRtYLNUv_oUU0-Xu4fVWKJhhAyJ5VLUWfbvo2AM1iwxxvCci_TgNBWQa4weGbyNHprffal_Lo7lXtMUSSolJMKDm1dWtg8dxKYoXzcol74cFZzzUYtMrGz4FdacynhzOYizHnTViG5LBpUX1-65X-8KdOeKVUMMO69HlIZZJxG7xJdyHtGsSM7DITxKayxoQdmr7LDr', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1809, N'EQOgLrmnLwVSiMIDjgzl8DUQfiExpcJ6uLoULmsr84YcstY5b6gzYrBv3L3SnqTwrn6yvTW_6q91zaJtzpUP-fiFLpjqDYYEWTlhJeDWsWTl2MuAlgfOsiTL53H0vRHDB0TyIRMhmjd73BkIFI3zUTD-RQKRy0S6AgURWLhMefKB-K1byH3qhS8tqq1ubtMLG9Py7UXZCB-BsZ-sQ2l9LLhJdVA0mGlwkOmNBvHUX5GYIrr6jqu9EGhBeJKN35vl', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1812, N'_iUdyzy8yxKETDufsTkpvJyz_Y6qNPRxSfIJ7hARGaYJRW2JKxtwslsvTDKEtV1Y_hcHFzfAooB9kpfcc0kUX3xI0xkX3qQ1PWJTQEmTc__KShPBiyDGy2FkEQ97SiVS-usRsAiqseop2t9-jgUpS31zWfznPivFbvz_yFSiVuPILto-Q0PPoaXhmYPqJbFjuq9yOrJpODyNBDUKXFZNoC_q-2XZM5S9IBIEqQKH8Z5rn-ZSqN3ER-DfqH3VYroL', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1814, N'jzogWm5WHh5NRpJUvWWP8Q9G7Cdl-u4JaG4j6zvGS6sOaWuApdcypL1GlsQwnS9_NzBrgRGbK74vzWTwf34G6p3sMDKtdvB8JZ5kz84YwlBYNdykgdU9FI0SqQLbG7Kp0LBFC0dptBDCoVWssG_4yLT3-Zo3KzDxMzin3ZbO7Vu1h4NwkTY7veEGSHWR4scDhLn7sOAObjJwlqR3xivg4vNxgOVo_oyCGU2j0E4pcBG0jQkqgKT2TeTVWgHRJsIO', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1815, N'fYc5D0j7y6A-VVVa4H-1s4B4pbC5qXeTZB3D8Q5__JeuEe4ToevyXsiwaYiP8bI4fUqkp3_pN4hX_8vRlFmjq4gGhhCG8LKMyaNWSns2UocokqSQdwohUnB2179auWaVtg7EHTyCnAxeu0fdgp87dhDmnMNLOkC4-hgSYNXifFqBWmAsFFr_V5Rd0EbcpMsAtPxXit44w0tp8KIhSqJOaPP6D3MeRWSgu3mCz217s7TsRcitEND8GTGwsDDCCAxF', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1816, N'GIkaItL5jyWEqrKtKH3CST1LasHopTPlxrmlKuD7KFAa2zFJgVo52TCBMnv09Yy_4fLnn-v_QZAY_NUNMQV3cWC2hZEKRF0eVTySvzPfM1xguj2ze4hXe6JMATUCRlKcktcTiYXNKgfiaG_Qw9XeMxCxE90WfYw3QKLHAkulsu_WfuIwq8lNe_BZMQVP2BPS6r40xpkZfhjhuutqLkIEhnDyK0exZbViAVkMXfgaVV-bd81TNosFgt5sPBe1JlYITff_6ObOaumK9fFUpyDFhdHJyX4k1sL069uZ196h7kI', 187)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1818, N'-pj1kQEhsA-D3qRMyorPRg0y7F4G0UuhhJzlzdAbcrIkZnzcfrjpt6MJOaYcs7bY6PMmn7jILFxhd6f9jqyJRQvOX51Q_7hV57FCmbeLt5MnRPcwbkmSW3t5gOM3deJCh8I0TVnCd-HOwl7M7NybxXluwOnxd_4pwSd6TCF-LGGqeRfHKvAzl7VSf5tIvP3CFg0Y0tDxjciRtvX73WkchszkdGcttGEmeQgFtMB4hyWWwm3HZcgREp__VhFjMTTlL6XuB1dwQ3SWS27kyaftse3AzkbrHB7beBl_ZVmcj38', 187)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1819, N'H7DV8QF6oxF_y5azW_KLisckxfzUjDVEBd7scfBoVI2BNae_6VlqoEBArhT6DXnQhPbLvFReL5kJV3kaqXNXTVme3_B_ppGQKJ4sbSoULzl56Qm5gPcXW1j7rBnMOip0chypFPWsN4bxIhxBHYjJrY5p3Ow0md5hWEBKU-dXKjXZo7DYPup1W7RMwv52DJl8reuIF_ccM3pT8ggWEnpzQIuud_pSeg1_XQiBvkYMG9gPXXmasfwRRZD_tV1NgdTWrm9C-9ynB9201nBgPGzIhMFupBSPaxLQTSSPVreiK78', 187)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1821, N'6gzYLovdIi8b5sK5VNAWGKFKDT3IypNyvUntm84bpAvR2gU0bw--KtrPMKXpDHH_0mkOGKxJzI8ilfRwL0B8FBxISBAoxkvhORqt76DoJtIlJWBo1dRgeHyeL66sZ6sm8w-gPw_UMYDdiRobHC0krVChHzEADTGNX8K1j19c6EV9uoTMh70zjTOvZM074QYHIXsgJqkPeXfO_CUliwQXcoidE3raK9tF0FlZVd8nPhRoqNbIyyQ4AuaeNXjZVlZU', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1822, N'gkbcxvu7VmPq-vYDwvhtVnA64a4am31G0MmwPz9F2ZQIFC_lfpr7TI_0LFQP1EJw-eBS03Q3fWTAhl7dBC_00S0zO7axCQS_6JFmniLjgZOP828CvcH-2hMie3Y0YSulE1zaXOrZ3ufFR8WdbHBlq_AIL7qt0j6ds0b3xll6cgC0AyMxEqpJdsyt8Bx3NGX4GGAjBDiDZsp7YsILkFIo4qO-TESPjqbxJ-G7PHurVXQNJdNlk9zXk1NdACl7VckvtRRj50vMT9S8VyaQ6IvyTxVza0HubFiAhPJW3uxWTsY', 187)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1823, N'5MnEsgLWeK9Ed3gKlE8OihkthNH8EsvKXo3ug4uETFj1snrMhygL2auvydt1GM-h6LE2kCmDK7A7aMESEUeejDjdTFQkPRQHOVbyxIyz4BBt7ml2fvhy1AJ5bVKEvWvnRAq70UCTZ8Iym53HXR_RsIjfaRNcuZkGvTKmxtl_DoqkLNa4-_Y4tt52PJcPLy6HqhRL0gUzfgEffsWkvtGWq5ARd6uiql6KjIqPceXgUNo29oNeofcXgVJqRT72lRIQ3XKYa8_DdunXm5861yB4KxG8V6yPhBOrnXxtMuhqX7E', 187)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1826, N'TH1qeE8uO2DwVn-PPFlFMKlAjoNA52oJdg4taYWx1cGN5tnVHqkukrtLeP9FZhxdtsW4FkHHipSjPSvdSOVrz8gY-LHq-NpBccVcrgGwFLAV66EwO9Q-MlIDQjM53NRk32kw1TrE0oaAAdknKSLYmCJbRwlMCYnM306L2BSPmUKJHysGP4QdSY5qPfNSG0RD9wHG1qaB2KEBpHJuVPKCQeIV_N34gJNGtl8xFeS68a542t24n0_4xxGhR-ZTzPAH', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1827, N'SOwZ90OgmnbOvOlomta-oLo6XG2Mrv5cXO1X_sszNei7j5O_NS5T5BBH8oySAzMb2PrzCv5kDXbUIghJRT49nYynb1LnTS5bQv79uuXWyKJ8WWymB8wmO-HE97Bw1jawDUKECIX6eY5g-2G_K25G41a8OpyuGel5cn31L82FQFtdK_vr6lvG1zuJAPH7hAilDhhgSLyLmLwdPJ8XCLV4w2CXicmZ8QZdQ2yvbnZkol4EfMaVQtPFF0myf5tJ60UI', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1828, N'Pi93B1trwYN6JgTYTUI3HTDOQ4y0-mfhOw4muTkx1tcvDq30ekqRgdm4H5Ulz3g8GEmRiauESpjCUhFOpWq6-IDs_dwCUhRkmyrzqB45KvAoUmma1kTyRTfzfEWzkGL11K9fp4ggCycbJiucz7PdY4vdCfm2R6zJod6UL9yYU8lwBQHquE9lpMupVZlN-fQbGq7FAunx2pPna-itU_FEoas51YZX7oHZ2l3JVisb1bvCEWabdsxsP9Um-gwXK87j', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1829, N'PALgZU6D5mkgW-tQJAwhPl1Eg_N7mtI-b6RCjD9KckmxP5SvjyHQ0M9Pwood9ewtu0Lv2RlxdVVLVvIJ8K9_zdGKjpMdaR4SiqAzfRux9ROGIt0Xqb87S3URXuQCinQyUMSZNgdQI0d5TwXhAY1w9cXTEmFan4NEzPRkdc_RX8VAt-ByhRbOR8N1u9a0OP4rA0rlRNndf4FjJ-dBqR2f3rAyl0aXClssju4Hv7dYQmeuj6zjprw0Lb5zDyQadG8-', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1830, N'6n3F2QsbuJ8nJQ1ewT8No4Oel4b1EXkOCzfDaG8b5qI6j8Ypxp7vAQMkqZQl_9V2I0gCcY2o8arz8jX4Ew7ZZI1-v5MArIL0NK-3_WSBXchVIiyk5jFrqs-ISSMu8Cm_1rE0vHALd2BYwN1UL-jW8Gs4SyHCDZSqy0FtkrVfYp-PBsgAKHIZ4sW7XtyXWOUarFgIEiAUywVORntOaJ1PE6erooc3m1U-gcI2wmzGIXcDu-RVyJfNtlAe5YlmjTkI', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1831, N'1mX-5Dwe7B16ZVB6BmkI09RGGzQ3MevOnyhkqnW1RvhF2qDZg_oXbpnDsDHhjS9mWBNzuTBKiCITPY_ePjTa4XT-8dQCJ3g9ey4rpf3QDj7iomxKL3DPmCIZWjidm9kIfYTNimdd345Ej03b59AC9xXfpv46Mh7eUDXGHvX5dahbafkkJvKdy7YMi5VD7kw2tbittTxVXrB-W3_7N2LDzL1q3zbsqpUMHQvH-GGRVQuhYQWSKd0PzYGT5XQO9OD2', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1832, N'er3wCrdAA2jz4hnM04IwTSsxGFfduOYuET-OHwaRaKmyi9tEHqpQ0DYX8gYi6KW8cYyYgMN9mi5C85QGxz3AQoIVhJTyXjE0PcGpmoaE-ndwKyNviyGU_OxzekhWag6ISqcq26HPszHPzl1IQVPVdS6iAiCzVVWBQlozIHzkKaq98Gcohbf5B80pZuIVbqW0dUOhsQybKWv2i-ZssWWhI7r7cvCitz3lBmS-GRrNva9s-F8xyFn4j2YcIYR9hSiN', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1833, N'PJZ-hlW25z9unN07j0BIam4o3tlpjjk0KOofBvukXDsThVivO8heXoC7uN-c5bA6eW_a4VNALsSDgpMUlS2UgXfTN4zOBgFU-vzEnLES3eg9NuLFvbSVyW-2B89a3KYhmE_7WsoVRPKMeV_5vUkSLr6r_w5YfUayCj0C0mR1aTiOSJnYIehXRGnB7cg_I5SvcUMZsm2JWBtFZYehatXUm7_WhHYUCX5Ezvo_tyzNDDJvmmC0580fBmly06eehIdI', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1834, N'fh0OqmIKBy_l3uFwlBQdjZLKBnWrASrfpvmStu-w_evEIBYtlHPjhe3wqBrrb_KCB-PPcT32QM2vHFWdylSi59zw0zZpgxuqnarAWkJ_1RmUofcG8u_Fvin6zP3JMPh6JqO4pa5DcbxI_qAs4c7JKyFZzgPoR0ZKmdBRMAY0ZbPpXorR5TRPPim2tduCHZXd-mG9oNmvn4S7xlJBpa3Tkkzcb4B045XPCBzw7pU2YEuE2_ZE4Hp5QcjKbwGY5Z7g', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1836, N'eInEaFhTKrWCxbSlrQUvkvSMDGut3vw95eMZNAWOhExigkmJ_XFssF2uZQgAIpu-fP19AaV9fZnGKK0LQVpGzthpFfFihoEaYTU3Tth4nH37Dd5OU7Pr2qmA-wyU2gwknKGQJmx0OUvX7R5vAMoVq8FVjE1ThygZvP9Z3Fc5O6WjbAbZryu5r1-F8hPJvW6GFIrSNJXUi6wiyZCWVX9SFCYFHe6rleRBaD4WQyfW2cwewKNr5haTOwT12VsLjkFgziZdR87Q2CXHZpfOrwi5PzoxRxtNW1lO2Fv8QA7sULc', 187)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1839, N'5YpCrP6ndyYxJUy-miICCVxlwQV5mVBPrxk950ZmzjpMCmYpBDjEG5fParoi7_ShtY9Xt7Abaa_MeZ69hK4mZg0R9myZbyRuT_7gyPba4f71ZGRW5q6gMPjphxIAadKB4yVjZG8NNVx-V3WrCZY5a0ty4jtF9U6xppsTp68h-usbhwcWkIJmNjXMWX7YCInpbF3Ww0fuzJTlG0qX2aznlJV5ZJ6MYi0asiQzlbHyUchmQNzrS0anSijsOBj9aYrC', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1840, N'V1gOmhWWx2x88PErTEPKoHDgFNciH-FuoJ8KwiLbjTfVlfu6zlLhhoRQcaGS-_oHN3lijPUFn2lo7QL9NWXxuWRGNkjn1ffXKEIEZqWCtzMCz4f3BFolpzaN2ruVjltmWaQbPbPZIOQJpi3DcOoXu43hvDMwJQzSwhWfh3qWTtBxXO7bP_INEqFCno28iUBTSEDwK9tWdYNGpQjE5ifyVj4_8nNEXz3aAB2uVhEt1WCx2xgO5x1zf7k2NRoDQR_G', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1841, N'yq35vyp-jnEScL4tbUpWHDjtLhybHQShIPKgrotii59iSVct51TLklC6lMzkic0BDOtL1xlRi6uAsQsWUpMx_BznvjhHCav4-IDlu03Uk7YATKNhqToi-cG9zSNd3_FeOX0yWjIwTLHoh20QqtYhi3HeHSljLDsrDGoddzyir5mQ3iy0IdxVgRjJDpqDEBXOHechySZ65t8FfEDrhflVeYGLcZd6KbdKJR3cfgqFTB47cg7K6DTiOOXgzNMrQUdB', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1844, N'xizoqVUoNcQCkl4AQsxuUOxs8qtn2b1s0RLIJqbxY67Y4cFjn3AyCWVGO6TmVv7EGXPY3yYYsiUxjv0-dKlbhNyVmOhDO5dkmWVdHCxm638VN747M3BpwqF6adII4ig7DMsTTHvgbvVAdFiunt8ZeS04N2aiHiPLQc9xIuDo4I6UjSSMtm2tEpTRlnsGXYzNVWUPUhftP4vNjL_ldLKctD2XlF54--WT0z46obX6dKg-Y3F9qnmyNZgf-4dsioIo', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1845, N'UFHCXEtbIpxED2hgQL-4kQy6b3L_oRhNS0eUz33nTKNMQmF1h825Sb5aink3ZU14g5n21fskwciHHLQUKGq_1946dXwvXGDz3YNP2PYSIdI0_WTpIbGacx6QWyg01QjOCiY70OedCcJkcFy1V-jbRR-I-uh9984rjYaKDfFQw34jThSdbOztb0xvOoEFBle1Rso0KuuUjhT08tfEACNzd_efOthsvmD-bBOPkp6FDIRtz_hlqdZo8X5xflwwoGMR', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1846, N'CIHXqbp5Tu0vstJzwMymLHzd9ru7yAjTZ_3UKIrK_8_29355i_cSF9RWYQuhiuqdEnfpkqHaswOYCScfO3hiOXR-KjTeiItnxrYetPEikJOUkRbHHsCCR4TtJgqrYXeMQj8yjhlcRH9aRb3EUvdTDJh3sm9s4ktq84SHsHFQxCy_fY6jOPdn0cGIiRYfMc3uGrwCK-N90tkiLxJ0Yo8ySE252x1W8Ae4w8Gia8OblBQQdVWO3-eP4byE3n5YOnvj', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1847, N'UILJsGjaAew2m4n8GgSq4rnTPt0c3xqLuWlXSkdON1Npt6cfJipxJq3TtVb7T_9DwkNUt5RCoVRHQS8NtgFhxmHskFjRYNFXugbG4JDVCDlPI3nDQXHcNO8ftQMl5ISqGPg4p4lq8SaVsWYosXUhlyNOJjAU-V0p_dweX5PAUK2uGbINqGMe_LDOhmlseymcNWxY-lkTJYQABNBIeLMHo9L47kkOMM3pBwm3c4JBRxeoO9Vt0eJo5H4_ylf9umUX', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1848, N'RFpJRvLgSYM78QL2kDzWxX2iVyuBr2ScKEm8RLuUWX8B0fUdfm2ulG-TRKptwCakiRkxVdeyCvVmjyRJA-VKwIXoBnEEesLQqjCsxld5my9Dr3kNkWEgMWiWCVsKxmStPIVT-8LWm7nVLiTyO1Cega0bK3-Dtz16PT9tANjVBpSGL7JuiJBSVmqR-fz3kutfM5Q1Yfr_uM0MGGvlq2hUnBNsZfAQyJ1FivlQkKrnXMTvfOH2YZw0cXI9GUkdHOf8', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1849, N'GyTHIhW5e-t_jdd1WjbrMb1lugQNQT-iacVOk_y5npBdWBx5TG2aywVV-NJECJ__5FLmvm8m-5N2AhC-CJRkCWrFGdZsJ3y9DSF3Dy1W4L2MIqGCfUIPoRJ3XWc5GE46QFPBPytX4a9SrxN3GyJLqOKn-lKVGqmwpE9JXS_4kSrSuV-VDbSx6LXlBVvihzzokb2Wc0RoLiqFOJ5995ltScZ99THVUmORPnEkcTGzw6WjZL7ljgM0enkGkZ-m8M8s', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1850, N'CokgvgPqPceFVuJglW-j-s2_9ZJjHimqpjhMm93RgdK-RBFb1_Ox2oC4CaDeAsDK-XlN3Z84m1mgUUGelOZxHOEEoR40iE_Nd9nDjMx_oKbElKCgDydAVARQ7K0azbspuSYoSdCxrlTQTrZJNVpnVFmBVlBWRrDn9dGWGY7VdEzfbg2NDRKysn_cTooOpfrz8WiIsHdwb3EAp9a_iQ8wY94Jpe6AGfS3v8l3GSE-CgErrIzwIPIO6TgMQwE5TFa0', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1851, N'dEbeEpzOVk_uuk4JRbXwOPlHzds3Sc8b4ZE_PevGwGwgrb2WIu6dnoMJ2V-n5L1S6qhrX0aQKQNElSxX8kgNFtgWk7Sbx2Ph0UGAhIHFkmf5kopA2m2GBWda12-xgaxfqYFXrIThrVpyVxLabZYWvZKFqbxsyYMOe0ElhyGdDwxqboAPzqNmY0RZahzg_PRS3LZwOq4PKyAg9lPNw9nq5-GskiMav2KW5Xhgy8JOVqb_kV8T_nnWUfdsK3cDikGJ', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1852, N'T5IHRHzOKQQxRYGxGBYz4CtHPxNCnTRKomBbiFuydcSU-qz4Za0sYFGg168uSgjxctmOQt2fqiUtSggUmZD4HhxzE-8CFscEi84e0eZNfd-v8D7xkEpapkS0-QGs3C9Fqv0g-Lfz1m5QaCnHuhBwYEL1z-G86cFbktdU_G2nkiPwrUecqJ_ojitB8uKyZc4MdMczXJQt-5fDWc2Csp9y9cnyugucfFGzoTIw8pgQjc75i7P6jtpAUdbrxkuzzB6X', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1853, N'NlsBeXJC7JHSgRV2mjFqpBuOQLNeASc1BMEAIQGzHZlhy2Duhv0oGWgQFQpXRrpdGrviw_wF8sAdzsiy3KVogGoFNE8IHYtvNvBqUHW8Tz_mCFi3E48-UrkYsyePjWZFvQx35D4ZaGXG2Oxkklian68WbIc6VokibXViEi9YCMFBR4fC18_vGsmQo4fae1PTp09_2-1hesTIBxG6oicpU_evDUWqtIu1EBOhz8q_KHamP42qQ4Zywx0qRzC-yB9l', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1854, N'RoQDkaFI2U7bz1rQfqdrK7NoVDveeRwZZjYczSixFDjVZeBTqS7o-_w235wbHLWbrQYqxrn9E2ZxZRq96XuCvVGVkCLiuId36_uIkW_5kVPtghOtO62RBA71XX7bTOHTBtMVQygoNnTJgaZXcxcSRwXOelEivsTA_ogtSaqrjuOLqJ2abv8rbYhBN3aqL1W3pRpkhUYZEZUp9CshEpkw5FlIntGR6TZI7PPMIy7HoONaNHLgc1pE9J_2eFizYSE3', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1855, N'noCfFnza2wx1jCLgzxBL_5SJa4WGFHpyzvmVK6sdNTJ9-kCzOdEjTZqTWIXXssFkI4csXgZ6dMTsb-kmAkvNf3d2o4kMDF92qgB7Dn-0ZYWkdBkBtXwvWfODwYnLAztEuvKRjFpRV7ApDct4FjK3yj06xSGRk08Vu0oHj4bBkwo7E1vv2zehOhKqDaIifS0IKbDnMIz7VUNNMdW3VV5jhPSBryWqMGR9uqfxsR5xRdmtpQef7WFl8J8tkItsKavG', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1856, N'yAeEBkbrg-qCy6FudivV7lnPfK3vaxquk25cdGAmAtvWbjTil8FhkNhKqYwjH972JiC9SPRONvZcLO3_eEkJ6bpL3KELt7vvQq6lEsejgE_iRkDJq3ZVm1oDaMMFV6VJT2ZTt_YL0k9ydJUC_vvR1CHpasllNaVB1WCJLM5oYujEqqYhCIGkKlEF7bM3s_QDGHGWoVbRR18rYq_XtvvhmqznmepK9b_2ZdipHiX3kb8ELkb_fuxU-1MJQeQUwroa', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1857, N'HIHhEuOB6EFw6U5RfYKaALtmeTXDBd8DaapuJNV58YynpC6bgM8CTESJzYAykJDoNi9fUeq9IQGAfwFe-Q6aEn9jxsKBmyRosQuwKFD3OBZFsoWDg4BT0DZNMOwHUWUmYyfD2VBXZIoBbtnTQbMmwt7Tfk14WwR7q9EAt6beZzDmzG72LT-UKjtO7K6OiBuocp3Mp7cPIg56ZAXMFGVM90RG7vpQmKsSsdVaXaMQhEcW5gAsUBAieMHDThrdi2fN', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1858, N'4Mj36JdAqMTBUwIC41DukWpdb2m3VgnTr_S62VcybzIX3NSzbjcVSwnwHSk7oAH4A2uSP0jio5Lu4IDgPty3lOkDgbGqYyZ1BhwgI2tkJpViwVeJ6QNxEiAAGj8QE0nI4wInUMP7RIt5tX-C1FXtsyoz34s5766bCKABfhRl0LhNUncHDcTrisgavdy9zJNuOUrz9NMpDNu68im5kFQaxuohe_1f1R8yqt0nrrBHEGGTVJIPDiA451elvkb22pRc', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1859, N'7LUAlhZ7njxQ1RozZUw1F4ms-O16C5_2OPgrryl8x5SvFVldNrr3NfC2ahkBrGP-8vauTArWQ2JFxoM65KhKax--cj7RUtZ8RJZT6BJokzMAKmVATvfV2cnzN1xeFvAeT7z-T6ng8kJ8hHAhmd0zaGc5XRPqquSq93_Ik5gWYfQpw7p8uf19uIuGgtEwOxLMnp525-Fzc043iGskZSa7ws-mGLS1y-xUrL7h3Cqdz1l3E9HVo-0RxdFu0BB3VB_V', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1860, N'EVYnjgYKPLx6_7Wq-6cBNCYWVsRKt6my3yQnD-qNB-TckQUJaR6QHmY3LcgYPySDVFyFhdEoWrIvr3JqXu38pP6Hih6vTrrwsrewNv2j-yVlqezc13LPS64ofk2pQR8jm9o8H4Cb9_7SQkefPuVq5JLbWkwZc3tH7DQx6Fd0IG0mpfVgCrgGej8E7k-Efi18olobQZAsH1inDvCJPvqVDCRtH89bddCN0JFyHa2K7Nwc8bJr-0wJJQebjMGEppf9', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1861, N'B8tsPMgFzAcRFLQ-R7dx7lNSgCJ3puftwnxnOrDpIT77LZkVPoiZGlanSu1kEZHc8atzwFIpCpNNXl6lEyXP4XwsnNH1dAXphx3kfxx3CDO4yqeb2OXJKaIe7_qsWAKK2u08vVCU_Yx4qd6Kb1rVQSq9em1XXEz7jtuuM-AtAo-cWgQBLnP4l5jZaSil-WUafjp2VcjvpBmLOq7hib-N5PZx46NsvOp8r6UrU3Rm5aII5NOO8rjmVXtttvUNB1_5', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1862, N'W3OXGZBBY-05JUvFjnB-p_1lkkpI1UEiu0z28OWms-JJvnv_x1_tKeTd-ktZzU9EHsbRai-jP7v6YRglheT-RW1KHfJ0nCyt8r5NrayrHNqhFVNpBEySltCMW8kZ-Ko9MmawTbdTGJKhlUL6zztiKd8unW4xzL2fNcWdCk3L4IZME5tFAdy_UKpXfQFbI-OFlSI1lvOF5muJuNlBafYMjqv9VWsa70rPUTZs7GggB0AeYq-u35XrAAAWrk2iFOqo', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1863, N'Y15pAukyEsoOGSbxqyU3-Vy78VtgWjUfi-czC9PlTmZqRkRhvsHIdBPpRqA6N2iPZFfQlfEJnxqEqWIVutMkB2EDKloXjOeqvLm0CULHLABu_pswL1WHiZVLo0XKYVxosJ8WwvzH7YQpF1b1OSy0ZSvS4RFex8AGvODq2zkPnCGxaogq3-wCXi_ybhLBH2YVerW1BzudUHhZvRXsbp7Fa1teirDYP0CdWQnRhYDPvYyRVs_2o3OiFh8GTpt8JTDt', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1864, N'afhi3Nfeh3Ks3DbigPYoQltPZhoiDCFI6OWXtcH8zFebHjiz850e36c3Vkh4FR1imnADSYcGud8jOnBPnY5Xx6CnHq3NES_GFfakG6u52cYW4sS6fZU9ac6KWsyFpngKg6lrXs_teasenekrblUzfHqopjvC3RhAvVEa6crbV4ALI447g5miFH1d2HDRBbrZmcUOp-aVff9o9rbhWm-cncAWZpaPbcLNT1SEHj4MbaHy-ZV3R6DjyUc5OTyXlOyf', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1865, N'UMn5byKigvCSoP_bStwFtS3xhgszhwzH18Zs_bsETOCx8GNjefcLQKzYUVFl2YFnV7PAMjABFspWABhT6Hn5lLD8Oh_jft-F_o7DkaZZASh0puYgu-iRo0ZVu92fREMzBo-LZIS5XHrgNQC1Q_Atm2NIKDtHYXPpBJDRCn1F-_7SusfTRDcH4EDPu6SX7TPnBhu2wwFx2xAxYH3bokAFZkTOUlDQLOXzf8baaUFJOiJDMmQSVkDZfW0dzBK5ldi_', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1866, N'0CPJbCZRiLos9vSNigra5oFhgOdZueJWKPQsfvLrm0wQLLqvK4QSGCHdCbBChLmLorqbKVL0B4MzoRqlUg8AH1_zaUPhZN-_svLCrYU2-g7HWoQEkBTxpv4R1ks4cyjw0uNfw61JXf_o1jR0kHa0njUKUpYIxVvu6mOV01FK0e0d6n5GtwIgumSyX4sSSLVL3ixSdAgAQgLWDkGQ5JiwJRSN18zB4jiT8jKUYdVB81r0YRSjKxSL836cKkdFTPRb', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1867, N'8_pyrSM68aT3bvMY21hDjKP6B20Vshwo8Tx5OsNDvIXKuDMVoJHnZdkcx7son-yCIIKHn-LaDFYPZ4ANZ5TRfm2OFrRAC9cUMc01ONz6m29mt2-vjI_fIgOgV1PozosMrJAQxW0LpQdxn0FEkLCzy-feAMVhReCUagOHtUhWqUkb94OvQFgj235fZ-OI81-HHeuM6OJeV-kBnxB1cveGpOv9f9niX2KsUJ20im9CKjYejapYhKAnCFUZicOxta4D', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1868, N'GlqmywEHwk3pekF2oStObpSh2ucgi61R1zmOrf_y_nxHEtyI64wCuwcFgx8P3i6T8AhRVvL65hFx8ascWy3OPKnsOXjvIgI4GB_fFOi6UJmAezTxvvjbjE1HfY5SFLywFV5ZHcJ71Q5c4j37-iWc-RQ0ywir75eUl5INvKdlaqOpZ4YJInO8Kg3QLKKVAw-N0chnGHUZvDBoIzVq65HQ4R1TFRGJEWL49oiDhztB2gzHua5WL6vs7vke6MGYlaxm', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1869, N'P5vULxiw_SX2mpvOACjRpyZWNm3NqmpxLsqh3dTGL30qniRwJp7xe4LLYzLYRw5ohtFL17i6Bzen18pMo0zIbBtYvKXrkWm8VFxKfdEl0PsTDUX18THdQFBroBEEXQuSYnmxG_we1OvoxaKwfJ4ES89l3IhpQVtx_R0k4fgi9f2Z0Naptk4jqvK8_4itlG6uWR1Zd3sefF-lcsjgnKA0X0Y157X8-IamH2BHTlsD0U5soz3ONFcDj3BKm3vZfdE0', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1870, N'rzeEvLK1mY6ly8F7P-VcO6mytPXk-sZTc2Wmoza5ap9_Ia3nIaYY54LTpCXPo8b_C8-E9Y7IHl2Z37cbaxW4xB7YqSMkNLbh6TVjoYTdaSbtzqBnYM6cdWT_s_ZcKUGB5orp-LIEDp2egxwNcLil7zgcRNnOVUu0DJAx-gkzIVE17NgIh-uT7uz1TjSDzRwHStAFCFUGUosnbZjUDNYwKzbcwh5MlEzjItV07i_YEd-JIuFxgomYT-5lmm0Oit24', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1871, N'vNgU72UbYWe_wsxP2vbLomp2NUQkAlKr9H9I_mg5G4KYsgvr1nWzpBPmSyH4PAPrk_ajAzeKZguj9u0AN8_futrCghLdt7vanarKgM-NxK9vXgMmvdPU60LLoSQTCbEUiU_kJcRtc4bAXy1eE9A78hFqURUR5JiCece70jDLoCOr87ybB2q3QR_TLlCKybJPcyS7wUGWs0a_j--mPp4hHOidkMZFwM_t6AqpUoDfB1QcuPd01tqI4r22V_5TwY2s', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1872, N'KRJvxD_ERYVvYnvud1oTJrUSsn5msBKfWVYqKt18Kt53tL2ZOZiWsmehu37f3M4VE02dYuG5YbVB1jpYQ-6Yvx7XHC95H0b_keoStjCFXQhweYeUlHjq3YxJyRTerF9Q7oVLeKqVy0dtMAIt5QxTMJ3vtxa7zEp7rSc1X_jz4n_kT80FZnwgkpXUvD5iXTtrDZDD3h0zCgrZ9-RAzoAB_i3kRch7yVhFSwIacPNp975gNCsY0fOsE3ezaVRA0Hx-', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1873, N'fzo807uID4EI2y0O4G5U98lIv9bCSUqwRgKECdE3_KMsvYF6gEpploMnLFblLgUTrlKq5tvXWA5TDRbsI3EA_XTsVzuJuVaZbQnbV6Lj_GSwSYIpk_smYmXJQkWqmC90hx1N2Zg0K75d2OXfQLIHySYozh-6dx4CGTJFI353-vTA7TuunOe8jffLv9MbzCmA5q0iEqn56cFH0rdH1xLj8WD_wC6NpgmSbJeQRNWeB9ty1-o_G4FIpKVRLu7Z-wf6', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1874, N'34r0x55kcp2nVBRpPQn8pr8qZKVHlrp2J1HRs1uojI7pr-70P4a7AIJBPZQ0BUsxLveh0JmjsK2UQc_CgrBeCSnRjJ2AhNn03vwWJ-DDPVlGJVemW-dyHA-JVakeItN4ksAd6Iq0AnrMJ0H6gShNYjkIocXjRSbFIx-6uLiaybKHg8AeLNu7GPj2BY8EKLY_FuFydJq2UACB0Uy9I5FVK0HUBo5Ews7peUhxV5ks9UO2kxF6s6iM5OYyIkW3Ig2V', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1875, N'Zq4HL_kbw1wbojJZA9Fn4nibrogLqc8QHMoTTRtZWKx9LVmI41hFxUfNJ3CRQLulGqUyQ2LAFwrM2YE6H0UR-kET_W4gyUsEBvO9LK4tFKBu1Z3s78iHDtBv30_wVD967xHLKM8IawqBqmMbmH_WIE-z5ujmrLBfaoRlVszbZFzsMKtHCLgsc9yG_LWWs01HQkcEur3DkEyVgC8coBUhM0YhISdv858bor1DMYnEkhIHxNVSO-3t-Y_QJavIeg0M', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1876, N'bNY2sVCBHaoQgY0to6W0KJq4Aks2RQJBedbPJGpsIEeHH8KY_4-fAS-7r0NsL3Y6KZ2sLpjqZkH6aqzdv_1-BdTbvvr1M_l87bvcCZL-ATCuDYFbHiIT5GHEBReABmbANJB4Gokk9RotRXZDZrttYDcOVPIVv3LyEvzXPFuVw3s5AKsDZ3Q1m251gEbdyAz4deYm9OT80BMtsGhisaUuVpXH80pSijkbgeD7vr99DaiRAl5RUKT5VIXlsGvQP7fG', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1877, N'xfOPTs4TyfEwbwjSt7O23itZuxV15i58RUvLqJyq-6OmiIYuQVZFBxcDXiS2_AI5hYyt5qNxWv5ZmU7_d4Fohgw8C3cQqFL8JJr49yPnpzsFmcl-3gZ6Qlgb_JT-5C9yQ1o91PKhwSbFDTfGWO392ZM5UQu-h_C2DSeh6t26vJUrgsGsLX0dtR9NSj9WbgGJNmiIkUbnP3qICtI5yMugse0yYOkn7ZpNqw6ujVxcY2xdPnFBFCbsyAuoeMjOQqHI', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1878, N'csVSRgn8FMv9H6Iq004FWuxJS2_f-NzNwb9orrmIqoPQ60dDNUv9HWcdxKjvm1KQt4vt8RYStjiy1mzVG-viJc1O7tIti-15yVozNce8CnI-8645EZHPx57e6JthNdhm5MddwUt9JJUGUHmGX_zgnOvF2rVV9GtwEkL2UqZR_Tou_jECBPw_KAqy3y5j-45DI8z5djQ5Ucx0yOcvt6OqXDP3OLqpoNaAQ9PbtYCmkNF8iGDRCUm9G0NcORbmgva6', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1879, N'VHTljE1Jx5D6RBr7PzvughnHr636WrtAr2bDDpey4gxaBp65Ldqqdwn-0MUIjUik2vjMEZI0-7NgMaIYqLdMkr9zMnTNzNL2vfesPRwt4JT8MzCiw8hyRffsIqTtT0SGFYUZxF3Fcg2RACLnwhVxPRf7IPktg-SXGr05GNnTFBbg-cAS8ysTYTQ-2O9iiS9raXf45z6PGiuheSyK8hKihb2cA_zBCL7s00bR6w5ovAYkOOZC42ZASRgi-mWi-oYF', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1880, N'N6fZgg3RGoEwJ8CsNwDRL4GIF7oZuA5GEsdUZAx7lxtLZ6H4yeT2Y9M9JL8OeREAHVOULaks_6VXXn1jaWhkfZjJ5oscEU-j6Cc7mhaH1NUBDeDtBpAYxk7fyuaf_o4KHHgyMOuKh5hCZWKxNSXYpUx8k7ivxrjDiWyCBkF5W-0gDExR065p1B5PiB1ZpBR5KwnrxTD87H7ykNd2mJARkJxrzSyl51bhlxycX5DdoMW-ko-KEOc0GYTHUnSILORh', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1881, N'us1u8a-e1ILevLHfrwOrxFy9ecChFnWA-g8Ru82_B-xwyO7nafWpQiPaD2lTjDlT_yGfX2OHhOoDnvZO8wV6w_4-MWjqU0hmX98sIFkGZpL3qQ5FDZk5M1uqO0UGhSzvxfwuln4UGb5ooxT-QCXeD8OWvY1p8crF_e8V2X3b0_LVUU_1Eui1N-xbhGoDGauP6wDclRPr8-mJTVCSrRg7dS7yXo4SsbrAW_PrCz82I3r2v7hUs4tLYH9T5G_Sj_ZD', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1882, N'K5yT2hqwHXEqroOmazuuZTdf1B8yn1mZrzHqBFZ7j90_W_L7u4W17zmv-VAUbrf0zZxdtlAgVwE97j2tvkZLerWBt7OIB2BO2kc9HZfvlAFhpRB8Jx1qU_eOsCMtTt9dxzwl67QAyDp3v5EMnDCMM5igV5Mp3JC1jMlB2IbKEm0_Y4SdEvJ29GRhYgTZLASRgaWhhBB3xcVms3qgycf1vvwfO8S0eHhQxHZexO8YDHr5r_7OuTMNLMDidfdA-VEo', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1883, N'N_iawWdaOv9j2topFWTi5MJp2At_dxsmtTW3nG9MMeso-POFC2JQU5eRjjl30vUw82iQg0Dgykk-cC4NfjEN0MKOwEi_XeiYPKJb2Mfw0t6UUpigT25EnuI8BcbQsc2jOacvug9EBxgfLyZGv9wnQcwt_5byL_P2qd7gbZFYnFTj2xsadwqfFIlKv68PBsS_igHGG8hZpk2h_Jn-Zs-NLntyzDWB2JdJ03TzOh7vJGrTKveQApYfnhjM_0tJz0sP', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1884, N'EIw_Nqa3poPGRuZ_t6oevl2egDmsFA8po17KfWjglsyQGChwCHWfEEL0DqDfjAW-S8su9yGfrm1vQUvjijMCCp-W75TT3xsPrRLBbPIdHKXzLRuhpDHn-H7w8BIi5fufMEgwXZdPkg4ZT2U4FboJyZN0f82LgW3zT87PQeHjrRGhqfjhYYUWoG4K5McyHsqIbL0bdZljafD94-6TODZ0nxLPi4KE7HQSndROH3rPNEia-MUQzZq1FmGrbDQZ0O3E', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1885, N'xwikPvzok2w2knLqouLzO5g6LsgglKnCeUpq8JyKhsYNJA_FbWTdLF3fLI0SeEVXWirPZoi8aOVk5xCv9rn6iXYJy6bwtN9Upx1pTZeioG3PIOYM8ywqKA0Z7QV9FW1_-jHCwHg4BJrrerElHir3dDR36yMod4ebcMtdwkrgCnOp2lSptss3_gNFujDINT9zyODIPBHVAkaxRlDo3545LUC5JfuZM3NvstL_iO1Y759T-eaN4QepOvxcptgH-WGa', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1886, N'wzxveRsX7rUXzDLobCw3xPzz9HMz9tX8grkIqE40rcS4lO0mmwRlQCHw6FAxrC20FNtaBRwWM-Y2ueBEeGy81OL3phTqLg3BjORR_uQzXce-vvTQuPO-Mo2qwV5h-UP5oJOqt_TajfxQcSIIL4B6_mw2vy4W0D7jaHl4Ebwf7EygjovxF9Z7UwwecpHDD36bg_rx00vJkanKweDZLq-LV5dKOpvQldqXyuZEIVc_OkZgXbZ3o4Yphti0e89URuID', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1887, N'qna69n_DNy5Dfmxz1Q55itKiNlT49XNAejpJjCHc7skMGq9h9hwZX11VyHetYdIRrYmMgV6zMyerjdtFZ4o-W9cwp9aqD5WWHQT_NbDYDtAm1Vhb2i7qQyADtWD62p3I_RzKTCkg--krvvXaUJ5lJ1XaeTJr7pyfWhqB42AmwKt63d776AgIR19gzFy8zyeK149F1ZksyrxaQAj0InwiQFp1RrtHaXxeMSy_PwRxFEa-YDVpgbQkrEEuedODvdAi', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1888, N'MS_bv1ttxvRQh-WT6zoaZ0wlV1rHo8Ta1O3aT3VioMzcPd-VZtR4Hz41QYyIsYNjvhypY88RXz35o6nVEOC_sG9S-THyDhKl5Di8FIy7RvepNdCwiBlybp0Iz2GLA18q7_pFuRWI8sc4l1ReJuxoXpr2j5hwL5RkJ0Bq1XGCU743hJKH0_jdQkJAZFmWRUgyXph80q3hLhCiy42McR3NZWfZ8u__2VQtx62gVS2vR6PRNJlOk_D67jpIztWK2-8Y', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1889, N'jdkPFkfXMvwWsEVpX2VE5ANC0Mq5HE8rRg0UUr9TKEENnJ_E-YVTDblyWaG_eIP81qV0Ov7L7tRafwfObONSUWdJRuHXJkZtqH0_GlmageYGfKOvqwDeklmQbtkEagBbqDLsKRJPiSqTPeBywy9-kl-aLUw56xenX7W7zNw8r61M-SSaGElMswH4uV9dWjk5E_Zuurt_F19_Fs_EqCelC1-UfrfSxcgRTT7D2tmsPnIkjRtnK3Yt5nPLGF0bZJ7q', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1890, N'zmfOfYI3BvN8rYkKvpubQNxCn32Td0ApZSoqZC4oX5wNnyzsfs3vXxcE1K3CENOzrAeXoQDls74JB3w_ecR3PgFdXkM-24TganMUtL0f975LVN_w01uTiK7jfb2MMU5AKvSrg6wOXnocaR4OFwiPoApeVz6LjxD_dcFqhN6_46VuY9jaAkPXWOoNS1ggNoqzyYrXTgiqbSTKFSuok17wIYtKq8bswYZAUiPndE7M7Mc9eA22-qDry-lo0DBsIfXi', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1891, N'ansXsgRcpru1mrKEz20_03vTGyuOjAIKneLrciJuk1R3Y1f7pvrL7EJ4BTO4f6Gnj4TI0eXn3yCnBcLCpm8tsPRfRVN5p_SkK_URTav8sF19n9ElgClOqsg2kS5o2XDmEWiY6k-ATVonqXkAxuflCCcpV-fRo-s2kWq0qbP698yuQzBqdvapbsMBJSIyiP_tNNf3mt4aKXeT-buAD0ONYbPl5WdldNmFNiOlfGi7NGVRTf0xjTFN0aJN4PkxUmeZ', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1892, N'_2T08kV18Fw3jxVhRwXFm8Z5mclhfZJztOskC0M4tWzbECiib5lyJ2CzrWKjdRjyqaBXEFvrKFboNDbRl1MdQBhXeUog4csecGrpQOe5NNFhzbncv1ONSKamIVTQ_rw2VudLMGAnDaJsc266n4kBeBDEUUPWSwnkMqSphe1u4EtC6SamhkuK5p951lLlq9wPHfJwnpI9-bTlv_Zv6XN6TWEIVM8JrA6-54ULKqg4qDCnH79-FscL3TFnKXV1zocO', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1893, N'bKoTJiNs9eGF3my0eVpA6bQZrTqJmR8p5E4WnpSlCdPjSIYTxRuB77uRYdwZLeuHZTtcBPI3iSrIYCPJ6Mc5Kqf0aaHDuaeNhiodRrAy9cotBkByX1V101dQZ8ljq9A-Kc1vtHmPIDwKK-yOCIER1yKl3OWrtOOJJdEs5RjeMmrsGkKzRSM_wnEhUkMxl8zIzDnChzGDaNOd7AvvKVo4EMzYEhqRHBb0ZgvVGh0ZNQGlfHfFANqYF0ze9DpIoL-X', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1894, N'pBsnMTKJ0XBOwSMOt2XeIdAMDBb4ZOadrErP4aQof3w_KXvI4y8w94hcBvx05fWjfg3zl14azHiKuUJdCyFx-o2Hfk53W95arKE25ilCUzhg35UcTsDkE12nRzoWGBt7Qv3vOnq82mM4Jkaxt-Wozt-G6nMl8bCYwORFw7p1MMhOgsJ6OIHBc3MDt0AiAOT1uUBAz7uP3EOImTW_7fhy_4v0KZUv3aYFNmv9iAkT3SF_Ar8Gt4CxJrlwVf4DMAgA', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1895, N'iwjFa1nH2MR-CQxFhG776D3w3XaedubgaRdJAP3IGgtZyl1ijp8ofjX7zja50BAnWJKMeyv-cxvb8uRh1h_aN_xfv4LGHhqeFScs8be-F_JD0nF5NRKePIAQ21AhIX29fuphz4jLZxZIypAqldL2KIeWw4yjEPHi-Lln-0ixqf8vX2zKsG5gB8h2SqqNtUz8k4nPcfGIlb7ojI1i4C-053YccsV6YGt7Fn5gUHqXRI2SNcOe7Pv-ZWMqzW2IOyh4', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1896, N'Njst0L1cBdpW3xSyU6Jo8gwD384IgCiRwKP5k6ioG54A21V4c5bkiwTNnOSjV49aQzKsyOJR1A52ZDvw6t03gWaIRkAjRz6HNxuw2lurNEqOlHE4m03FtutJQB3ecRQXduOieKJaYM6WzMZGrvgQTEpRjc45VwsW5AnLTbgyP6y1v3i6OreVsxVFfrpYE33ftW0KIyVtucWP7SfCLKIBuxc-Wj57VdPZVnSe6OpIGoQklJjybTJFEbJTNlGFT4WT', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1897, N'Oed8x4vOlXJWamxPSs0Qa9RAh3heJTmhoxLhCQmqBYtx1ZwTHcnT4WogF_tnzuEnPDZgSiX9Oki3p0kYk6UD4LvBpub3B2Jttc4dwPvE7-cmA1spdKJ3gnR4DK4UbetfWN5yAnFHDXYJSRIGphGi9lrGkmneWsPtDd9D0yETMYAJ8DrAvhKW8bvT_0Co2DGEdg9zzXlmvGfKBOLti_U3anCuoi5J0D32SyiNUIosJp8SQVMFpPUfCNiONi7HRwnt', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1898, N'YKRq9HBK8YUneRuXG_qsL3BRywWcKF2kvZycArHmpnQHpzwz-dFCgPbszyf-68REswEyYH0OVLpeevG610zFZWAiGPcXVyevnsEoNgo88YS73iBJ1YepMK1iCwDKpg_Z42_mWvztZCFDL_RXeSy2OsX76Ibb5pDYgtRyhcSeKuYmWt60azn56ogdqYmMjM_RHyErCD3ORUC507ZrVGw3orodX0ZAeESYojlbzdEsQaUB603LYbbOc7X6RNVoNW_K', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1899, N'bw98utDgdaulaSg3-ow8foRwKChAxQKdJ_yUsUiSrfKjo2ZDNLKC01XdUDERbCsvMX_TO3Y58XHRC5OPi9jl8YdcqLL9-_XlEdBZt_GB2WHhg0XkqzcxVMosu3KuuCvR06r0w6T85oEesTHMs-QORjV6OO6pBh0NoyBPgoP7Fig1DLRvY0Wfyoy_Ky8Z5sveJefvUMhgohtaHWcCGixD4dsibBfomU6gDj6g89GVJbreUFjtxbRHFQ148Zw7TITa', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1900, N'VY4VoYdJV-PAE3jL7NwU0Eyp2f1IyqrTzNZZgbFbjzq7GetcQaOypIyuBfj_0dB5-caIG7zbr2JAFIJwQRCG3eZQTCai2YHcVN-TFqI6XHMZYhvbVlG-h9h3gjkUTLzy0cwXxkJdOTgydJdAyx_obbNoEXFMUIipJeKY5bXVCQPNvoysCd8wsO7-1rO0O2-nWdFsZNf_Bu5DhRnBUD12Tb6_xvSwJnlPDHwoU2N8hAdEDKVv6yH0mNnVopglo4P4', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1901, N'XGza832GVCzPMC2Th8SRiCzqma1fRzFwqvs-zHUcYVDgCedX1jh_OdmlEvjaV95RYgNXjEuFhMVy1xs9rWV6uPYSNnosUez9RdMNZQFwYFlZ2tThSt_OO_Xw4LDhHEoXhFczh4gxCYHEPxFtZCSr2xBUpf4YDyVBE8mWQ6JikM30-NyVH4xHOMhbGd9rpFHdkUDB0mZqixKfmCcwA1jF2DicvjfNzmIg7rKgVOwmSsSqMV4JpkhQP5KHKumhZ3WL', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1902, N'yBOfinRpp3TTJXDYPOH7M6okvLbeXixxcjIGFfJ_O3S33m_quT4cCIOSugBqfogwBF5-j9TdPbDJa_Km4EmkoV8DV1eG4ylcXqgcjk8iQlY3_ad-dKqU8eBqZqJMqerfYJdKwx67icVTMqykv7FXENmV0mqEIbS2fUUJdZqlg8tUHXP6_Qjgu7YpPDXX6KxWZBIGI2uf0eUe-DSZ8Lvf6aYtM_0OZi--2b-yDZnfV8w8x1R9tQ2R0pwkFsFt4g6k', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1903, N'VBJJlAjRucLadAoU7LMBAlIkjx-Mcj3RtPL4dnDpgio3i4oq5YqeHoz-VwFehbB8Xre6ivKXDihuHR24DSasD5A7tErbJoRKX7pXZHPGYpjCHEmvHRfmQc1gUMc7ro8q0gcpr1C2EJNsSAPM0nhG1Iq6U6w1BAblbAzF_ZfC69X1Kfxy4DFtuPZpQGGgFxUxBaGacKfxZDwdR3cwRMYgBRCXLlxd9lp-wNyjLjKNL-PzdmH4luw7OSCvzDEbb2vC', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1904, N'KQvTRyrEOItPFW2y5SSOMDNwrTvfuBo0M5cPxOdhCJgjIwqJD-oh19XUdawYJxaWNfxric1YWzLTW717MyiQKphwE0pF1i_22LQI347aAxhZc7IrTNvFOFd4eIx60YJkRXDClqI_3sXeX97pf-tOYn0c8KMr2QXBwx9AMFMkL6k_OYBwCv8VE9G0i47mmrFN-j_rpX7jkEp3DliLZWeQu1TMcQHaCrHiKGk-ILxS2g3Wj0dns99P5JNAf9-Sp87n', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1905, N'D2jWcx3b1-rhpJPylhFlQvZGfBXzmrD2C4Z2SHXyuS_rExxQedVKSz9AzSnRmAu_TaFbVvlXWLBYifPFcPn7DlrsUERdLtYxL_M2PL-4EuFs5TWzXXwSbWdLYBgJqa9rw--fWA4mJhKe56XwncqiZTTfdMgUoI8T_tHMcHfr7J4D8TAZ-OGiey-8bUhYA_jhaXqQFSSjfmQuSc0PXCNGtvCy7s9mBFCuRlXOIbOV_agdQcCa59B1o0l_q_s0bPda', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1906, N'UeRKevPoCBQHcC2pDEx-IPVH1gkyQXHtrV6_lqayGcIwE0qcneicA2VRP0Hm9BC2Su921JnRTy3nKdPDsS9b8y011bOzddazBE1kHQvaqxcg61LrRssuVeXaQFapBYQkNgp6ifmiRVjYgZHlOm-hyT2nIcdFIKuHqSJ7DImnpsb9oTQCVk_P0cPspCjKR7UDmuaKv4q1G2qzDX3HGpSyLyIgRFJyxOsuEZjXmxH1RrAfpltYbYmXKCV_r2H96bDP', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1907, N'N4y-uBB2TyyQL9UTs3bGPEIvSRVzxxZR10uV1aab2dCjm0nJKmzafak6ybSaIyQFHGldmz7dQDAcP9dbnx7zTIgW32e09J4dbQpgz2wsyco2KwFEqL1YmA7aGcHQGrCwnZS4ur_N5nscyKNyEyEhxvbz8FkjFNsSo424QXaVzK0EUTX-UjUUu3DBSurT8BSPYDxyFhG0QuqmI_UhgZ-VAcyskGwkkb8TUxcmuPmADDjzdpQ7B09zFMHWEZy4NJVD', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1908, N'XQddDBLZaHUAeh_NBA7KFbBK2aZ-38QMp3xIs7jbZJ8BU3Q_P6RMxBSkD-3wwT9nmy_6uuWpQkPnhB759EHMV7oprwefZMo3pRijC0fJVEVkf2i40uWwmDIydDPkr99ctQwkqrpv4CtZslQ6cgXBEVXcjZ5hOISUyrmmGRwRpDy_OGzAAy-cR1AB3945FmW9RIShTEtT05zzuCbEo8833p9V4fGcHSHH4QA6Eg7pNG2EDCUD1j84P8L6H5p60VU9', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1909, N'UA-5_1kZ2avl4ZZxeqlXrJGSOtZZFRmfGdrWR4PmYTM076W60Nnqj0ddNtSZiJKwIdZcFTWKTkCaEh6ktLWNPrdWfY1xF-wDxXnJVyNgoviKIvnU5l9fjPO9A8jv_hpjNOOj5_QryiI81NuwpDoA7eQq6b6xdFUuIftGHVl_36IY1Q3Cfk0xkj0by5E1dmbzPvdksKrlkxU9pxoJXB6BqEG6cHBKBm-FWdg_bQ4-yz69VjjmFNcBFruAgAFCBfUP', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1910, N'4UCR7-YMPzGnQlbfnI5Br8xGCMB0AJDYNtO_dxpJ3FktYKqcdFvHnvlaRPDyqNLdTincZZ3sfI1fxngTbulBPrrNdUdhpQciXN-jmFwPEtaupQ8lrOZoG2n7GqXhrVfN6JIieEzb4VJ5doQVATkVy3Fkk8NlOAIwx815J3tgapbh6ZRuUj2kwAntqYzFqhq2hbYYuOpReZldoJS8qXDjPbcUeeAjleakfGKF6WPo3Qp35ROh2WriQGiFXMd6yVIu', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1911, N'6dZNwlaDHMuDr7HoBMamAy--HTYHXogFiUtuua5Bb2Rp0MBXXhzQQjVtwlpZC_MxA05EFpwKV0r0ZVwU6URcxi9HhvySPD-_NCn0-93SKBZfq__eZM__TGRTtk9aTNyearDfD5AOtYoPySZEAbcsNysv1z6iEi_ZtKIUn6FMnh3RoPpcOLRIKvNmOtH8gKP8Kf4ZT_tUM33T3TNkQlMY8q35mrrBU6ALJOSW_X8C4nwmeUtlI2JAD8-Ef_9hnK5b', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1912, N'A22Dwxd5wTbcICCtAd57aHbDbnSjwKm9EP55QwOUaVTli33_OhmhFzRJ2ajI0oDOMtsO2UFj-cIZd8_TB42_5WOi3Adn0z_-eGD6AKeX5RxUhlDYNSojk5PripcHGy5dq771Jw6GnaYFe56S1LqBRbjPzRftpOpvV6PmWdWtbrwwYQONlst_9rCi7SOXNDbE6xZW_L8-x6rfaRtoZdOYeNCWUWeDHgSv2AVWa7M7GggeDn6NAoclgGttkEkd5ybN', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1913, N'W1OeAWywfshJsRlhN7xlobqvLWLn-bicOo1Kdrsc7G4WGStF783CTtwjoeM-h0qrIdTeiHzCo1LDtCaLEbe8cpFUjdshupwvkdfo7uRTmL8a2b5PRnsB5Roe1aoyf4GCdx3kSky5N2WDaQiT26neTn0Ra8B3x-u206kmWuHd_8G1q4i2aA0RRq05PKRNxj5FBqmI0DJesWzqReH0pAH4_d4tbpWZMbHqhCafBU1uoKauHqE91vA2or60w-_yJhNf', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1914, N'bpKdUK7bfN3IiaIQaCDMScM6rQ-vsGLNmV4_pjB894cYBYzpWAXhEArfOS2g6G8hIdSsnT-2wPimLJ1mrC5_L9onMfMHXAsdQ24zgk9WnSncbog5I56g-dFF2Zcyz1sGZ8FTQUSVdbBx71qUULVg8eS8feEIQARqaYdvmn2y_ewzbzFWAAYRxizs-RYgDYTOG98vuCm56bq4n8RzgwHzyYszMCcTAJ7i7XbQ9axYm-RagbC5qT4jW5wAmGC_C6jp', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1915, N'cl_TlFLUM7g_1T6ZPsm6Aa-8ZBCKvIgUK7cjoMEcLX4glfKdf8ECTq_4dV_3KWuiEVP-kl0MtNW1pafFt08D5KlDUW4D8H1IN4tuSjVqBkCMCAVVKJdioX6MkwSaF9A6WnkDc-rl2yY63moZjElrQ8pAVwke97DR2VlRY7U5x1uwuVvEw6BtSVSArbh8reD6_VEH-qUAx6BQT7WwdJOQwPMAbIgSQRRmUt5zPQ7M3XQ-Tck4ji0O_oRWS9Dcl9va', 2)
GO
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1916, N'CHkM1eDWObxcebyPe74RVNpkV255JREu8uxThEDAasioldvpTL4sgjZjZdRokpOItulP-5TNYyuRgQE6D8NXTCvRBx9q_qc9nYSh_8ux5nVgWh8q3lIjEyx5mlnwcKSkgIoFTC2rBAELRagtZhERfjj4Fc6WxsYhwct1S3TPtqTIa6l_c8VL4QQjZY9dqoaCtWlkXwCupRPe3esoGa0HsBamyz31CZsSm2s9oRUCR7r9jlKm_JQ_Nkuk12a6fHVF', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1917, N'QS5gA5aB3UzuLFiQfhY-Kb-3wBMKACQNlMuxaER3wa5MoYKqrwwjm_44qGPsOjHKef0fcJirwAaBXUzdlBKm-LDv-3vYRlGSM2iYr6Vg6hMXYrP2BSREOJh5BrVTlTp6bS8GKN3Dyq9kieqD3DltuwGHKZkX580rr2M4X8J0OGMb4cSxdePEVPkN_tcDc6LFlgwhr0IDyBU_P4vhUS0Mfc06utgcGis145Xun6EYG7sU6WnCpLO3m3WVFXFyDv9z', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1918, N'PlumlANTBwpEC_NixfG6XcwQN3NvkoehhvDt-h9IAXOGGn0SsLkgdLkTOQK81RCGrsrG7N0yLkUIesnk1Mjzlxnet93Mw0uxQNzQXQgQo8ui1kB33wGZ3XgVwcqOnhbqcFmTLFLptyDI3VdmJ--i9PRDOC36mB7oftb5yEkAy7Vusgp9miFMWLLAUfUpQY1E1lmM_RTLwqSAlz53lrfp9WepXu_Aj38DXxUk981uho1nCNCCT3N0TxphxkaCsuRJ', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1919, N'bo0h9WHYoXbvPc6ecsHIOconw00DzYIXSkYVfTST69k0EdcC7g2n60c8xb0LRG4IFz_9VM2HgCjBUxhPk8g6Xp7pcyF1E87cbzdnG4F8XA-Zep_9WG34wUgkNfhpwcX2Ml1VO7MWLNeJML2DL4OxOlDX4MsqHiJtJb5VYBwdz-DksQEXMFbln8Vu2Ek1QKv7hNY5VM3TcdFKBRkJQplf_AhdPXncKX16p7ZM3ZgTDhPmT1GU_1ZtOC5m8vavTjnV', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1920, N'k8aURX8fPo73_krmI0FJ3Vd2VTKGpd-DK8NhA86FFm_CN9CQd8TJtKJADdLtArEXucv_wR7MmYuv9Mijwk2ZgbFw3KAsYpj1Dcup0atKNjQnSHKsPlsOTwxZwZV_qLR8w7Y26srEWoJnLj68o36Sp0QQNrI5k9TcdCK7wHZSuv88BjtnOimrWLP0askBMdfIa7vC_aj-lB4l-Fpilc7ZsKP_NxwuBTQjqnjbHxOaTGnh9amlQv0YTrrCu7LeuYfo', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1921, N'vGwsb2sM_KNYwZDqFs5BDbOSx9DwO1LsoG5TBHEvQuMcbozpl-50TjIjNiRZ6sClIpoDagDY_AgUE3UFrIrEPIpJVeNWzigxHB4wDc0v6nbVcmzkMXKju9phLvKajrNh4q2aFkL9HHK3LacXKcD4xMkLNppCtUckp5ezAX_XR5qKKSmXUQd0SHzG4RtIDLDBDn3gzuMXs2FKefIlOH0YaOljkllc8DBUdiy-ixKweVAaVMyUHkddxBGB3RmAA4iw', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1922, N'qtNcvlwLjtZy5O8WjJ5WZSpI1lwGguCUekB-iuz8tamWdIk94c-vBfWCof4O9VB2oduIKFOdFaaHMPhpbfnspotZ-tcL3fKCBEeQ1von4viuz2rQC4qUOf67cWCnMQgvRXy66SHRRWHo6KgABzg0CBNFJJ0lAH6Bu03W1tAtd3fiAAY6jAXUubZXZYLNDd9RqgDUVLiRSbP6uwk79M-NN60E1VAELqfYcLeIgfWB6daV63ZHkW6q8dwjodnAxwEv', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1923, N'vX8mY27M_aPCR5FHzAeFL0BKbUth-HNBrIR2IEHxD9lbujgoHK6TP148PH8O6uyywJCs36buPxanJQ4uLQ7YROKWBpQbnfKOvDJ81UMozxqbOVQhyqeH3n7ZIXPGhtkXjobtbOqX9arxSmyw40CcWXCmQEh3ItkzgryydM8CBVCC9-lClDwtu9CFDJDBA4V6Ylh7ix2oRvQ9_sSqH0ktsHOqK2WvHoRXfppdkyt2z318uLrj_IasH1FUXQCgsA6p', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1924, N'6wvj0t_-ONGHnafTK2Ji5HUDjMceXSSv06dnfElFFwMwsPCw8ZzsrCpHodJrCnxpMpP_X_uhErOOo0oqsdKp6AIfM4zndKHy_j1SUCbajnZA-gS09UTQXXiNfto7uf15iU3VN1-_WfhYqT07Eg-j7c5_HvFMrgurZKvsnqFj75wzBS3qwam98CzKh5BbAZNnUFqOtxyh-_hef0rkd97J9GDIwd8nweTZFzmVI-RrvgoFkrxyRYLYGGysW5ldvfjD', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1925, N'w3gm8lhc2UD1GhR4_4wCh8wPlIr166X72h7Q_AgBxPBCwEqhDs9-WlhBeqA8pwqUZWhb_3RCRMhHvb0bE_RxbHLk_wrtvZX1eV1rfL3P_9B4MWq4q_iAKWZSfW5gD1oaIU5pJwUiD7nVEeS8CeCwShUqbxIkUNXLW7kKG4lzX8sS8YuUkxGe5ga0K8kOsf1f60twlIhsznwp95O8r3Aal9-4D9kEguI4Gc8klsWEhDWdtr1t-TMPbgXJNkd4Rj1g', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1926, N'bsOK-P7cJcuiXf1gvDuR_Zn2W13i11sR6oh55Pp16sQ8urVXn9Br41WHHQdO-1kOkQ9QZ_sJrIY_4oSW1LgGqAEplNfuv2jNkw3SmQmnyq_7XyG3x-8XPO_E-I1aErf8L-Lh-WoGWrE5C1rpDtE00DyroL_Em4YVw9VmLYsD3meoBAjYjPl-ZSJ-9ombs_JxEat15RZb7XLL91PlyiB0tCnhcWVMMkZs1zqDZpeNdxfTlspJ43teTRhjTSlOtAdq', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1927, N'i4cV7gpr6NH-eyOcqGFpBRFNayxpC2Gl2z-wIobXWsCJ-xOicRPQh_qTBcF0Ot4K3GoL_mU7lMEXrj_hzu4Bj83lGBZadSNmMVtCDbUFbpsOTDOmWm-kQrmgOXu3xhPqhFSU_a8ORYMLmFfYGvN0iIS0742DIX9m2K3pagMUO_pSdy49secaUKDKRMH-9hJKfQLK7h1XkO0XQLWNQrbzl8wUT9EGBbTDslfD2Sl4QQyeiQau8uiH8jVcUYOhlj0k', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1928, N'F5W4qhe7khMw-txfHjF0YYldJ2sbCm83_JfavWU-BJ3rIT5LQNuU5ZLePAd49LQosn9PUNwjqywAs9WD7K7c4-N3INMtiwChultW7ZosR2w3fPk3G318mIvmTQ8ubE9A0JpYo3N94jZtMZbrUmGUFDzQUIxBE7v55btpq4FNO1BV6qVAFdOxiDbxn14nDXKJ79JJBooh-llLc-upIusFlOXLiJLMAaxKnfWu4y-2aJS3mp1vHPL3HWa-4r6ZYQ4B', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1929, N'GmPNcLu8F5wX628b0zUW5HwouPfvMHLCrvrJkOFKzfkdgIO0Rwc_8mQ-8z2eFKKxM0ubNSxWFNgGGZNYn3jWL91Ak0L2E1g6RIHBmCxpaZciJLkIoe4QNw_gy-_9dWJtgoIWe94hFmbO6zqwn2aAUG3vIpGrZeurC2NPyGU-MhWCLa8JbiGvw4JphFHmVA68T_4rOtw0OrRHrA1k_wZgAWUl7m7HMi1qDmu-EBvh2go_oROzzly5-8hCk9XU8FQn', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1930, N'OzLFvjtbMqvn7IUy566LKdQeCYOQbfaV25jdOlWsj0XcaQN14Oc97JH6J28JAQLKq4Pyuos2QiIguzNb-dFDocOZI_Q9D4f1JwQ1_Kl9ZZHZYI9kq-tRdOR4fdnbAQ2DZT_HZMFLevZHiZE8nRLGjvxwOLy_OZ_B9NDK-_jyl_5oZkw-E9c-9d15iqp8GWEGiBrjFI00bC29SHxIQth-wKZWanKgoHiHEaGFHkC3dFmCZBIljEuso1Q8xD5domPD', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1931, N'3r_tpLORSjFnMtGQH4r06oYB1GFS0GaLKeLlSJVMqpUwaK2Tz7CIHDG1vvMbY8boIxz-eoN9PwGrMMUulsOM90OCfg1F9mKzhLwebCbFrT9R97_wEQpBEWwtwHbTiLjDLPuEFL7jExSzBxWXb7LLdaTazd5QWOzWdNCOql_3QPmDhr8nFiJuW9-PN3DzcJpGNr7CaW4WCQJNDlOX3q6QO2EOJHOOq3g-ipGgMibvBDY2Y1VO7YWLbwhF2waGomY7', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1932, N'eAAnIt1J1qF6bPR4Nbc5Cda0lp_fC06Wx49DszO7sLKF9sCFFJvLK1wqkon_oveYz53xgoXYnGE9u-J1edRHseH-Zw5xHHiXQKdv40u1KirBsaY0Yhkk9chd_q9-qRKmvUjVshDpVbC7NcE1PBJ1sgtMUpmVDFBh_SP6RcSsAdDgUNaCPjXAyizn4hHLJ5pOO8LKj3cjaRwaJk586_rDOXRA-dd0DskjXE848UL-x9wk5nRPO7L__tdJ4u2ROhOc', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1933, N'vA3gDW02gvjm2bnQSqGrcMJbGVVnhWPDb2csaoKaVCHfpFmyndEtZTNcpJ5Cx2qAvwiARaDaT9j6mSqTJYa_1G_kjczGIZafk5gC8Gket1MOM8gvQomkSyif4cqjzzlr_Eqj5LiznGLOHAcNDZ_YwiewyekyoKynMg2eMx4h9x2TvwXMBngVx0k4KVwv0KRRSPcxZR9wzY_Ayj4V8IEzKz1-au6rOSCUqd0WlbgcOogqpFqFUDrKwxpUhpREyqqL', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1934, N'8NjxL8Pooe0Jl3SSbhdAKf3gD4fqXzIAnm2l_TfDn2Cmls8yKF9QzbdjCDz_WwU672tWMES6Sndx4JWSzIKM6yEYAqZfnCelIqFuCyS30zsLY_4PdThyQ_DAQQC0RvedEXKGxuJ91gtdytKqx5dwy2AlAKzcewOAzojlVTAsVl0Ey1CrQcAOQgJ2cnEfAakEKSwQzeKZGiIDCAycOh2-wU_cgyLGX6yLzlmTT-csu5TXZLF_aFKNQUAnghxwvTpG', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1935, N'0kbAJjI1plVYWH3LOom5Gt-0dJGSSdlC8Dkd0X1Lv-ABxvyyhCA0Cy7Ezd9C17OYYl72V-0rdoCUO4sgM9df25DqQ0r4soDbkBYjIGUqkRdkKZfokkzx4vycgFoZHjE5oByBM5iivIxG4dHc8iHqSjNCrcLB_VCpkttJwgyl8llYbF1jpCLPC803cy-vNxaIxYvmoeJ3Ovp05oCfGToQKe-Hh7c7F3AgzMjJGPPujIvHxeqMe-GCz23SOropV0WP', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1936, N'OQnggbk9-7TkmO5zR9IRn4mk3L0HkUiwtU7gtdWmJI_YQEIgTYusLdznmF80bQIN_3Ancoj2c1WeuTQcuiATxe6tRPbsITZVqb48ugC_2Cbufqj768ypoiXeiqq0v1kr1ykPoonSsXaGWcy7brVkLbOUrXcni2r9VdWqKj5KBp8epjQgXc_LpTO78orcLj7vdkRFnyAtsAt8XsL-kMzLfUgAXLvf8H4OD-s8zc10jIb6BhYE7ghbHJ1qvLUYIlPw', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1937, N'I65VMI2eOQd0RRqj-sGtLAq9HffTllFPtBLYZnGuImC0tX4ISBA8bEAVF6iryMqzPD1Zx6LqcYJ5on-OHtoGSwnqZlp3rf72ru4yIqsqtsf-NTwOVzUfoE_TEY-zDX25TyQwTsVzVjxSK31cWcRVGYpluGt1P9y00YuTCXI1qTOCmXroES0WWnOTGkxPYwNynF2Pqfu_IxrDbzzMVruxFwtTeHK5YLoaWpBSHQSSz6_h9CqdXRUiuPa5MdPc_6HK', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1938, N'ae96mukR3vo2W6wyIkYdt2eXEVvqfjn2jexcoP1fsMcytD9-kzi7a4kQdRpIb4ZIUUwDJHYmekb4bppL9UNLU2KMA1cNUK7W0NITI5jPMOH9rJFQyK8qtcY69KsMt3Di3C33Lfay1w-A3Qs8GEbmNnEtLwkEp4Wx4pG34x95yVcIBn_HiElQhBY1_Cq1a3D3bi56sx_QsebmBKLZvipTc8ahgRfnbFUOjP8Arvl2faDFqeRgX44KwI1Tt8a_gTvB', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1939, N'iA9OpdjM_Vljo1uedagFcLRv0zj406Q_XZWK1u2AW9ifiMfuO_06yUgeYJfcPXFTXkHws45348b0J5gDOa2xaYIOLxXwqtesM7EU853IXfAR31CMtOQdQYx17kE0gUpIrDae1GeSZNKZOeFYYCSxIFrShQolPNp62cet7VwIxwWowh39JTw4WDR_nOvRbJyqT_UVTiRqp2tVyFP3wGCCC7qz4x7UINLYFC-MnIcPJzCoaDI1JoKpg3vzA1ld4WjN', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1940, N'UDmz2XEiVPWjGU-8U5rB5dW2JC6a6xOOWRXsdCJEcs62_-R5RSbR53i9JrP0MKgMZayIBqqVYAdlIehZu5vQ6Iu2QR27oATSVhOv3DHd5KbiwsgIFaQpfJ2HlI731qsh8QNLYq1Se_DbE7KA7jRylWCUxYB0SH8IAkCLK0U4aosOlbM89leqOERhOrs-qrGUuIiYCAawu7kDeCZgV2oo-a6fQYalsuIYXRTbr-NVKLoqrmBzY9zVdO5BLT-hHzPP', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1941, N'jDf_blj931deD1PHWBU97m27C1j5YAABilrfIbtD2vJPObeIf7PEwLysCNutzjgrh_UjywcjjMwol8Niz1ME3ofibC5NdncSlXR2MXRwBQxvCP6lWdOIXKiq0IpQLGgi4W5-VuuESrfHFv7cCT5xCpw18vflbrNx8b_CiNdYHvOt-H3G43om8rliGLslWHlxCrzHD_mW-6gN72TCl7bswxdWQfKVTz9M0ZC3UOoS5fRSPw_UtagrOd5i2qNUWkiK', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1942, N'mRzmIC_2erJAVNOPmchUGMmp0FXmr78RfqKNKJVMpCPhgF_-bH5jPJVfCGTbN5zpYwB7BHLdV1J5N6_JXOCnI-swMNqrg8MQSrs28feioSiQ4-LC5MKCiu_Ug4lKE11NcYZDa-4MU9U5peb1zQMLj19TigOkmyV80EnHdIjcBQBgz5f0cxNpx8agmErQWMO47YUwbguhCFwi3mk94D2-Mmkqx_LOejUSPqXcXC-EZ_kvTySz33kDIj5cDlU7u7NW', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1943, N'OfRSWXv6bZcx-k45uVCFYdaIJsupq-rdv8qUMqDzWMagvGkh-917z3glUazCoU8bcYIpoxuDoZ1tyJ6_fc953DrmbZ_YGAo6OjgEUSQCFtAo7VNuEFRPZZtoXgUX3ETls62rkvRINcIYWKeHOf_dlMnfSohk341-bR6UjkYZrNopYHBdRkvHwsublhHWdCTnSz3f0zGx06qSwYQ16QL4pcFRP2dUYbmJDTkYdYUDb6Ow6LVgTLyHp82TuCbT2efC', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1944, N'yl7Izt-JxAXa388R0vEwAkQ6a684xd8oZ-GkuYAhq5nnVdX8pqEENf3iBQnGGDnuwUVSbEfiFB7_DgH6ACBXM85TrOXTv1_cCv0lsk33iPZIfzQi-DI2DoyvaEaMWD9vahzFfDc2MQcEueFEAlevHciVxhTXh2GBzHm32quaIt_RFeKaslQtv9M7wOFU8rJfETYWDYWQW5jwHW9VW-IVrJerlr8-Q1aoO4-MKfTlRInRbuAUrIC86Zc8M2vWi6rZ', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1945, N'zXxJfJIKXC6TwQns2lDCvAiYgVp7NgEmvHQ6uaDLShmSiMZuXKBDmJZ-D61iQR4cg0TYdQrg90X_f1gK3a6Gn6gGtDOrmeZiUrxmpxLIQGRMiKPfqjCJkxNMNldGFk28TEO9dShLVJL-9tRGee7Bn20fqeS1nYQ3NmS-1N2fgjUGi0eo1DkzloSwnrYeWRq_ULbArLbxwq_KkIVR7vqXB06T5bUoHSK24ZagxiNF93dpZiKuMS4N0wZgfY-kavJA', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1946, N'rjFFPIXk1FyzgCKWE2rRDGLC2Ss_l-oH9goaqOiqS7m3DQbX2XnoyJXKbisEgg29CLjnPJLyJPcBnMaCBWm6viazwNsgvDYjBtUqYD-J8NeyXrh7kl-E7WSeYCtnDTpt9cfSHz6H9Y_iRGsOr3xz9lUuFt0n-A5Vx8mMCSqGU91nO9p8IIPOLaYehGULFUk4bITr2yLB1CqNBFOytBrtwoH32PR76CWvc_YddVBi1FAvypCN9TslVv7ZbTfwkNOL', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1947, N'eKb66BsqtfHdOLRWPlHabTfhNAOZuREG2RrcqcME2K9259GpgGzoexi_gZ6gpl8rn8bLyRptS1LFstRu6n60zV0WoPeK4VIu_fAHmDennWJoztRSz5bCs-3H1oRdYCc3VMQdLT3PTA6UF8lmm1mjg1pTPtqyVz39maEkqJ5AhD-pPTb9Ye6FbLFkLapiA2CtECiREF46s0frK2w4Tz12pWgBVC5mV3Oh-KE93yNYdHHbV7LZPz_NRsd1z7wxtZpm', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1948, N'_9P0x17PxZRf_VO2h6XyMw0eLAx8w3DzL6XTeretmW_MR6mGaU42VcucoevyDDPeBRDXZ77hFYrT0PdNSBC0mQbm8-iSyj5UzTwbBKISKlJkZXVl0cn96Ojx6mnSED2X9fSiC2713gWscTKUgJUH_w8EuB3L7FC2LJ_XBH1K-xeVi8blqTXcSLX6nJK7Dd_Q3OniX03OEEgUBA1344TiQftotfWvAfW3QeohutESpTuDoy5NZSYEwnGxUzb4o27p', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1949, N'KRF5_AO3NBNwUwyXy5dg3b2wk0Xy2_F8GvJKiYe8AC5F8QUSRgJ8ASC1TSFVO-_8O1RUKTLGgPfE3NLvxcxQvwqA2C3OOtPNUi9ZTr-m3ot84BhRPtKqLbxOyXj44itgBZ6CCcQEeF6JG5EJBRnL65vJsFhatxkrYPeH0LSsJ5XXdq8FwHrN-DgxYCSVnSVFpiFJ7pbDFnnZRo-7Ow-PmuXUKWNbdjRlOd1iRtbhQ3vEpjRI7i8-V2p7sgXNsthS', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1950, N'IH_-tKrnR2AIbtV073tREHQV5V7GDNjRl-DtIMFfYxBXDpsi3GWDiws_leu9d6WONoXjLN9sMgE7Um9t2iISAuI43WHIf-gtTKS-2n_rwd9zdFpFdV31oEZcWhcoSDCm8kDVqJ2ikKVoqi6aT076MfDqYisltn88q31xvsyb5i-XoZBU3_b18zTWgFowxmt5V10A4nbSdtIQ-BWxDxDPS_VbbDa_fbBrcjxRxlSM1z_jlQ4StWQG4FtopsE4c-5E', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1951, N'1y0jBuRZIyGZpvK5WivyN5DBxh_FiZRzZC6tqIHie18v_9hHSNwduPqCVmLKVSHm9t2KnNDsM0JT5ZL8TtZyPuDV463UlWxfYhPiZ_h7ECi33Frersb7svdkg7-cIo7u98ufWtdrbFMokz-bNHCyPG2HomdJzUIHkgexMTBIN-xjI20xCz6QjneTTF7U5CAEqbXPQr_qPq1BUD7GF-xP_4PHutvs2yxPF8DqFgfB8eQyOjp22bWINOuMsvAMWI-o', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1952, N'2tKL2CaCRJLkX0wRiwFzTmzaGl1mY9MNtkjVmyba1g70eOeksYjzncK-Aq3IeLU-RLdbUh-az4KDuki09FrmeU_wjYyg3UrFxDwgj-xS-KdxGcyEdxh_tgmC_idP4mkzz8SV0w5ZIHay6buIBZ7J0uXD5v-rECNy_XjwvIM_kNzR9iwzSNwXhMoqlll3DXTVDaLQMc5vqRnMXvn3TZcKU5S0FbtuQuiWJ55IA-t6rALBxuIWRWNv4ZRb6LwgJPUb', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1953, N'uPmoPuI7Tc1x6mCgFScu_wZ8y9U_V8u15w4IDDE3r2kYYaxUwmvzInMUQV1C1tDMlOQBxDyzNkoZnXigut4NH-QV7sGPd_UoS1-IMviKLXz_0CxomLukmRqwIn3gYx22rW3VVwBZIR6fy4Y7SWv95EGlLU4_1M8uZpEzhTsnPpqdnNo8RqTm4h7X8YDo5S-myvIA62xl1M9OY-z9AwkrbcQvmpDMeo8eUux-CeauWoNMJx-oBuDHSHDNIBlXan_v', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1954, N'gh3S1tB3DoiOkSd9wLC1ywpxpZsoXmDAc9NkqKfcZrIyrYdPqh8Sd-aRAjzeJ_RKfq-io_tO_w99EYiU-GCNrSHlWWUY-1dh0rH-c2c0KZFUi-kbxZUbmo_dcStt0RPGAo_d7eJAUEXsaNkyp-urgdNCHSrNpdNxzhOD0YruCdymshTDbM2ztNHSvVgZHOO35aWQaCM7H4cV5htssxl_3lglMc_AzpOuk2sCaIJn9UfcqeZ5ap_VH26N28L6t_ov', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1955, N'0OkZ6tplCCPcDyTUpcqfyQZY6041x1Muk8XeO6ZdOTct5f-bEhFa-ZLGBAg_IBJ-l6I8-4ETi0cBa80B4CEd_c3uOdS7xzhTFVoOtIx7bBnYMTvY-FYQ6r4JXo-SM356sWppZKlaxOh8kBhDPF2GzSPaSKhuI14rqCSf7fpr_ewweOjXTpnsK6f-jWZ6OROz2lWXxnvAnN5alOs4m8hGZY0WX5QDgCXVNE53G_v1PpZWCZCARORYpINnM7P9nThT', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1956, N'1-wRnh45xkwxr5XHbY1aS3t_u0TieHvMh-gGIcIeSV3QnOYFVp16DurZSJBlNpPsITdHnjj09tqOONCXotSGwyRJ4m_9b7p5Hziz3x_ypNxDdp0D_pTOkcpZTYa94jm62lYfmaoTIG2ohPC7nzZv17ltlI3axVhF5iUC50Po8rCeoZiq-4o8lUlCWwr8dGLKEJD0nCzbCcrkN9e7QCEPZyIjbh_WE7qBZLXaGKcH4jrDEig38FMnXPlt75SlmFl-', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1957, N'AZGdjFWOQlnuyb4YiY8C5GMDJHcWtbTYgi2ph-uQDuYlnDLKyK8nsBXdQ_8KI1qW8C0JLnC2JkOLZxrG6E5xZggOmUNAMkk_frP_s5fzaeAx15vDWT6wpsqOmZcgMw98UOMMTZX909Pb0k0dj_-lHBrJNbQQIohAuGu9zEFxP_lr1ws_1EuhKgyyE6D1ORPxKY5Y-6PBoPR0FKigZgKjFSUoZQ2OuIjYLDsXMs7jRAAYkK645vHUpHTDo04ReQEa', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1958, N'xIwRn8kq0x7IHfOhQ6Yt5157SgFwAkk5O51ahheXq6YaEN4CLiJAjwKzGsVTpISyGGI3tNaBcGxSVUtPwM_mgbPGa4NPd0YZkshCQ4O8LbtdyTIUX2ec1RBfY03Tq8RC62BfmuPwZb8iS7NLhCp7PDflSSRUD9DlwFHzoUWRx_fvfymBmpNlhErvDw6UmW_iuSwLhj9Li4jewT00fMKvcm9bPp-UkcOJDBOR2wdg96wBDxpj4807XH9o5-tiMED1', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1959, N'qH2fGbuxGABTyk6ER-iX6iEEL8rr5wY297tbi0NUD30L_B54-R1ImKSHlbaTRdDiggjAVAUe7uhwac03IGX802l_qbUVEoduizD8T9MF4dqKlFIB5TYv1oUNBTN_lUvY70clculN6xStnjV_fbbPTa2cMR7KaCljxyREK4LpSfGUsbD8X62gNbGI25WlevM8dOi2LGos6LQgfKqDyy7stY1EdqBoRVGVGRe8Z2EouT7t8Wgkj_wIDVHsGb4N3js8', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1960, N'b4TXNjixCy7IBVvDVTED2tlVm_gHsjA1OIUXy3npmFq0E3a4qsTTESo7Jqfe_9dfs3i1hmmsOtuKYgj32pZpeBVspk3pUd6UffWsXpTMc4sc9N3k2byoFh9hD6X4NSf3eypWaNlzQSMfE5RumEl2_IZ8GFXlNC5E3LufpoDwU70FfzxDohnltpujD8_NbIXnzvhgTjw8CIuYvHoCJL9m6YPzaBXLbNqkEqcQnTBJ0JnPaieZDnx4wGZdnm2ADsb1', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1961, N'nhfX6EAjaTmSPYmS1KQo5l9PpzuGrQhz1YejOOXJmzTpX5BjYZf5KXvpRcinMPvKmpfd-kG2Wmr9e2q94fgl0AP00a4ssTxsawoa2EgxnIX6eHunLMuadr_r4X77dBYLs9eG_D_G8juxJ9FWkhIbBitd9IGbRDZB_uFCcSKZjJRWBlHDNbTRMvlCjQnYtmmpIec8S-gVRcbY4C8Vo1ghFyAVZNwL5nVr4KF4KhAdKvgAwxoxP4mYvdRrZrZL3hyB', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1962, N'dP-B4rndG6oI1ZBPOUB6z9aSP5Ii_p6qyt6w67ujV16pye3kUPhj1E-Ai2Ffjxj-AO2ZBkwp0_tLCoggDXZFlO0b6xClHk-89RDdWa81oMoBwNUaMJKEx15FAlKarJNoSofYU3648IZf1Vp95XiLIcnMwafJuKDVfHBZr8k7UTS0Lo0pOCDonqKCqWAE6sK3KrPdz2SYBqqMXOaQP9BZRWS2SJbO5I2vg1aBIXCml-3Tm5fRjVha0F_nX9BNP327', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1963, N'7_gj3PwTkHGjrxxQWHq2pzmYw0ysqRUYHihm2hop9IaPHde2b0dUvh6kboV23NPDJUbpiVKFTQV9KxYniFhrYd5ZETVkg_rXDOiajMocDkA7cSOowuAIuAL1e6r5s0ppYDAEnQ1wKXVdGR_hZlnwbpWFYLpsCXM5WUrYPu3MO6v1KffIeldS83Gbv31HTkwXWaDn2D-pf9o01UcVjz90VRTFFmkNzHedMb2F6upcYm9GxZ0qH_DM-0md7XFlgA1Y', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1964, N'8LRiXJPFX2Lr2cyWhXBqedHpMpK9W3TaHg3TRKpdGji9eeWV97QLgtuet6T_TM0oO8447r9q4UrjPzyWxzoq2k1GWqIn7GlEcNp1FoYmkdbJCTJYQM0oYt3trHa19QRWVyV4GBonuRkJgINlVFRYGQfAiBaSPBZu3_sC7IYqxrkvkH2dGKtbJwd6KG9i7DmHHQ5zHD0DHIIbjk-35j6IINTouoRD0EkJsMyWfdOYR_Tkcein-bncll7PBKe1Ct_6', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1965, N'd6rYqlB2RgbQdOKwXEKcHh9QsJHAM4bO3o4LHc5bn6LH3naFQl1RuVKC7iY81hI1ehkF02i5XpRPD492ZQhPcpvvRemarQtTBxCiqJsWtODrlVtcpaWFhzE6nKvm0japk0KgKBOV-zVunYSZ3YcB3hE1e-QVY2CCKBANfylh24LbBNzWvvVi31aNj-rnocF8IeebRkEVi19XTVYclNLmcpDIgNd61AYytzsyWJ3NlUncKjlY-FXchi2DdlzI75Po', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1966, N'36FO2ESFt6eTovjWj_ERrgeeCvRiaEbL5GASzRYC4G91kedhEms3C_Tzk-kEQhU48sE91utsl1360909k8XLFbJzsD9yxXeAyMKGFGOtwT3ZE2cc9h0ctJIBLcMuH3q4rHJs78GHY36zNxq8o2mn2ZXzM3idbn_fchI6Dc2lCYU6ehgGVzx9VyFfGywUSpYQcX6cOKhjYNk7_EakyC-noPYXHxJiMp0vD7XrBnNRrpl-MnG-QXeQtwaek4NCmqrS', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1967, N'X3rlCmzreI6328LYYjOe-gaAsX_QShGa2i5Xaa4T3BF7e1w-T--rINej947-H1mnHCpFpWtVlAFWTMaEyx4pNL7dEYCZ1chYZraAYpg32UkuuHqyJbzC34YbdlvTSYWerUvt3HuPGtsG0QPCW2rJn_kG4F4SzbU0PY7NQ4Y4UA1Y1tHxsSJasX_0S8JMMnDeO3drAjR6LSIPCMXDZ4PqxatNVxLSImtvJqDLDMG16F-QyJgtWatTXmyZXGn2MXfQ', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1968, N'fBad78g2Dje3nEcKDclKM50sUvSYzXOtcIZwjK3urtvKKg6HkSKrSOtsR3HOfWhgGpqTYdCeqPjyuB4O1A0z4H201M_yiGFcP18Tp3SLwqBX9OuTbJdwTOaPNWJDy_qYy8xIzLvGLsxIVAemT-18zUqKvWDYRfMIrTHszF_Uo26cIFvx9ZOi3W82gAz2_3AytDVAQE8wNXIU_Lbjd6bOXDtwLOzTzc1JrF5M5jLwDMv1eeZnrouxDgI1N30ro-Eb', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1969, N'DwugyXdvBxP7oEp6V8Y37Az0eJoRkkFlY2Z4igq2Tup8TFg7MtmGkq8e0NeoMFV4Amkuh5-CBiEmNTiFO5qpE0aT2Ts2qwqGdpTFudbaSPmWSoo7txrJ5AkNGTtZafRFpYJBAIKGevJJiOcVMEzD_jJgGPDfAxEn2W8X_BrRJRVEAPszoEIu1I9WEgptQ0GnPf04kungkb_rfCCKCCrKnRXFx8IUCQlO5SD0f2fQ7Zf4j75lcdSRrLfp9FDwgIy9', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1970, N'qq0QMnsA7Y7aFKU0_lSzGcDY_VNVaf_7WWKhc1mRmTmAKKaxTjCz0L4_KLf2Qz0wTjLn5H5MEG9oGP5682XO1Mn0R8zi10itT4r-c7QujENCjRdgwubehMozj9-ymRz_XW2JAW_53uWVsbadY6zCT-E5x2CMaQC6BMHORv8CIQLKBfg499glsFk6odwedsheVO05M_EX353TeY0ob5Fl40KvGfK7Jrj0XzEt_6mQdJAbHZ-mp4YtQnNsObeyB0zY', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1971, N'4v0c0M6xqPxIPky2_dlv3rePojcTOEdMQt5cUQdxNHCl7C-hXn-PLR73UKJ-CdFXRiTP8VreoEVjPCF13oJo1PGrlVbXT4z_nEudB_c43Dv6x-lA7woLIdfNtWnENvffFlPydONQj2zvY9PZjTBhFtPVjlgpZ0FCcV0GZ2JA12QJ2FZ9LA9tdqNFekbzgngY_Fcu6AS30vb_IqfXfXfN73P0BYFlClOfdLfCfrEkuuTp0GOJYDCzYdj9ydvzXdLK', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1972, N'HoT3xhCSsilyVK6lMxxWBlY3J7DuOSql-hZXzFrkM3FjvULllD4MYGhww1NlMMReqrLaY7Y4A-gIaa-9lGWR62SLWGSRD6X1tmQ0zFquxsr_iiVHiwEY13pzpwXU23e_nksK1IwlkAYMrpkT5RBiSNJKn0wqCRdZoVihM9z-ojJHFqc0Azp4GktuCxle-qXS0emo-sRDsbuZqs_5yTk9LV8KCuVU7xl6RYAw0jHxlLgkCBoAEzUWzAiUbJ77q6R0', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1973, N'zcbbZE4CUpFKqwMNLofA18rg8HoouA2qGKyE_t-0abYXek-LohMX7yLhGZl5lcY-ITiwWxw34DclB9uBBdtzKTeLZCvM_8Y5aGrmmdsNQkrajl1zhJfdPiCWx0MYOdZ0jN2qAoTzXVPXGZMmf-zuemGk1avw1DZfEhtAT7BG2JcYrXiy7C7s7nPXuRJXEEEnqM2ZTZHlNjcxsjoRRHVAtpzv7jJUuoxLRVygfZdEdH2MQIramkSMT-NRbMcZWuV6', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1974, N'8CRqrvjsxhoF3dDZS1He_hML6E4fUW2FuZyrukjR13DGYVIFxS7aSSuG1PSUQ6tkQkID70A_lJx2DMQfN0V3wMicXUJEK0Y_zeGgv32MrKNWgYtwMV3Dakx-eHE87K1yTfJJXO_mvCkj0mqAiccdTnhNfw24FwQslUofHZAB0LtiokvN9eZIP-jifE0T9Ub7uEh_fwDwUS8W9HTwqatY4mf2lQxXfEtRhVPSkOmvt4BPtl3GMrtAEOLGxrtQY5S0', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1975, N'sc3rVlLGk3ngHBvbvksj58XkpQH1u9btkSaS9Pj6rNe73rj3G2X4HtaVhSyU--H1mh7KS5WPXIm90bQKDM9JG2SIpMAukq96ETD1KM5du5Do84DVn81JFAPPa7zwMkyeL3kQet5Un7xZJ7A1QRs-AFkO-O_5lscX0umSVphzUVK4WIH4f2F6Z0jXpb6KFhB-OjLITOnruQ4AJKUf8ra2TqjJf2Ucc5g-AQDF1P0tSV5QJenGWnTWFmBWdwNHoAsh', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1976, N'HikIeCnHDpID7hobSzP8I_yX0Sti55G0qP-uB_cTPsRJEggW0Mfl6e36o66yO4wABUopz2OpRDR9e0RgQJshuk4hqM7FnXXzZF8vuTIxscwPiRGCFRrHh2ohN9o0zY3OqYojBuhJJsV_xKp3CNwRQJbXjhxyXAQMC7B0edPi2yR87XP96FZZVuLBE_L97al4kGgxP7rDPfZ-A_0GIBom-kSMW5sIEJS17MQVJ_N4qqV8fmp0rdHgLqegFDcuiEdO', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1977, N'dPleFhv9lALNvsAJTCAc0md5ayLnAAE_zNQjEyuQM3uIU8snYoWIO2hlxNdsnornIzQaRmHnfIIHBo0e4qJJFMAQzdy1QY0-O6wosGJMIATXWuYx12l5xgynPaoIMESZc4q1zL4OjakHyKRl8Of63MdIBpqRQujr6iNwdcDku1iuzcErdRAwJNhQwKq9uz0m2MHpGCtUmmm8j6-NJpXc_p1TvHpvK4fmeHkTVfWLWLNGvRNcx-9nbxb2V2DPFtdp', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1978, N'm28HG2mnr682KsBm-NxxaDdVFf67aiCmG6VnJYfyFT0LcYaOM37EW1hKiWLa3xFbCzmYbl35IY9ZemjUI87S_wPeqd-nOOYzwKBtFcS_XNS5qLleRoBNYCaZuzQOu2JXLQP2it-REhkM5hjbOyNNbC9Sa4uya8OPFdieyeg8k7ZeMPP5l_r99HvkwCmTuL-SUKiDhcvudkMcNAGwpF78_-M5AxPu-s23_xCwSgzsNhEbJ7sLXFIpcGVEQ0IdC-X8', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1979, N'ywXu4rHfnmaLZn5_dtSfEh7grRZQ5CW57xxPL6mNOTEDaIklpkHHGv8-DES193XW8Rmet_iuMxI4gI-nWX8pn8x7v5KltK8VUXjzZeiQkObDaPm5MTEmy7vVlFbXzgzFoYsdjC4r-aexnDy19OQRE306tbrDma56Zmltv9RA6I8gfuJQxOyN8xE13sz4Rh2TKZrobaKdlTXZdzJGvOTHUK9AxnxN1IQwc2hdoDSZiYVmsXVSsHqLnyNlZDklOk_x', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1980, N'_qi_qR96E2womRHXAmUPQuYHiW-Kw3bfDem6HzTn3TWBv7Ix79BFADkXrc48cojYlxVwRSqq-8-LOYhf86ioFwn_cPCPokrfyzLOsxNsWpVhjkELYl_vPT-Ll214Q2HR84Jj7OVpqUJSDDf_edxP2Tng_uPBIuU8tiRveFD5YyiU04hWLJVQcT-rB9jOKJ6u9zD661jHnTf15B0ZqhbbNDVk5pO_1zBHbpyrcGbaWMcnVkaHDgWOuh_uewtAZYed', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1981, N'mGpUPgZ-jrhVh-s1Xo-QMS1sXbQrIhlcty4jF5cUG9o4nsYtecDFZqNGqunkFJGrCFcLY4701nPpYRw9r9ONc4AFtUkZvoH8dD6K6c0BgE4q88QgJFIrLJCWKLQQQ-3Z0YCUR7h2cWAJy8YO21ZAIFl85_e44kLk19cpgOOVW0hDztQO8-bF_vePatcDj4RbWvGhN8QRkvzJQjvniSo7dVg3evtFHrJFfCAhJ9rlePDJWOqYNsmOjpuBSvN-TuZP', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1982, N'aSsoFRD03X842t78ot3ywMz34kgcVVUdlIsR_OA1T94FfFV9VStJAuOIrSJoCPhzjg_aYaeBltquch0vT0GxXS8KoLac5NbpJJtqqHggex8LwYRh2WMuPlGBDThdvuB7GyIpUBKIOgQYokTNSdGcFhwXRy38WJ8sq239DVwP_5jxeVQHQ4ipR-HX99RmGKq6cm2oqhbGBeBl268x67-C5l81M1MyrLz_Z1_Usi4tVJCdAb1abadbSo-iqRDBBRWl', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1983, N'00zqiK4Cgv4VSo7ewyxya3MGjZ1d_65voJfvJKZmveKtgF1WNxy9TberxnnKw9XV1QNgctWIoENwebqfkeqwIwZuEKl5OEE-B7TmignWYK77bZQSCdwaR31YhC1Mnc1PXLY4aeJGG1tsCRFIb5DxKLA053Dvlk8iauT9BLl_b7y7NrTdmAlnzYr3dqY09CuSED3zLisNUimAwxy5uq0y_rvHJfYAk0ltTvqTQmBI8SPpGsco7e3U3iA33Z1DbNRG', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1984, N'xlnTI6LzjmLbgv7rjDsoRv3d3CrEqthU7V02Wdf3YWvVLB2Zvo9vEjrCz9bvsuAVBUMU7CnIiqIkvTT-VEze0jd_O6vZY8GzYxLtirMbIVwg35qTVX9k5j-5MwDeXw7o2LlTe48fRN84pq8Qk0qFbdHbIGozhs764PEgV2YEQ21Y5a8jQkrrkLIr_lhD3j5Hmsddw74lxuc1HkWp0KIhqGY0-G1MJ2ODdXbLCNXU9jTVgbDUZUnqOVsvohUIVLEd', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1985, N'GoPv9gHSUgGhjnxL3iRZDk90sI-877w67o5y8GRhPJVqCIgRx7hd604QhEUwOHiOEVviFPS7xQu4oooEbFN2ZgX_hTXtY-I0DEX8iO_Duio7pen1VhRGVDSnubiOj1OH0RPQ91g5HWN7lq6wiZUCfM4WCcXmhRi4wQ7vsdKazYftu0LDFreFQYEUwit6F8LwVkSYzsX88J3JYYwW0NfARG04t68k3yeKWsS8r6CIbS9NkNDY0IvU3sWzWQb9iZfy', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1986, N'bwIgEC12WAurdCAXicRLl3cfhBkjO_LKj-TFih9O4IXXYqcYvvnaFtpdb808mPXbrge1GL70XI6L4dQgxdcI87Kre-Xqp4Nux_usRS7KDziqYu9JibcLZ4fkQ6wyUPcrym1JzZ5KMnhDeWU5La5JgOxcnYbdBtRd3IMzh3p4_eOtthPm96meuCbfgJCmnXanWZP04xJhWErdJWK_eby8UM-FAGFCKs1rUNDetBJ2-TUNoEVGq9boS6xzzMkb5FoN', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1987, N'yN-EKuFinO0lwTJHPXJZAvim0KfL__UcLxkCS-lz1kPng8YZe8vVK2kURv1cMeEKPBA9DiGb-83MPtN431GYoMmG-v1B37mE0uudzAD91kwTI1fi-DXBN6ka3LMza0NE3HrFVzISgZXe6IG924ojuIjuf2BQODmELbTN6kjq3C3tzmbSmdszHTOoVdctktrFpPZ-Q8KIGVUua771Bh6OCUN-9YQXskKEao0IjkEdzNlr3g3zrDhAw3ZjSepuFwgJ', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1988, N'xX3teXbfHU_TT6TFMxn1vghzjFEP7bT3fFnuqUGqwFGH0w84erBZ0dt22vA7_kl9_YGGMGqRWWPkP51iifMzVB_GRIILeQ-oxlC3JoEiSJCjGXlMKicVo_aFJ5KnldM4drWbtqDhHtH_ButcJWfLD01a_yoUpyBliOR4h6zAgHk6WhfPni1i9Fi1fCl6p9ic0VUO_knyX3TLAbORjjsgrP_NHMKpb5mOZaRVW0LECvaabq_kCMpVs9ePeeHWBGWN', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1989, N'gJ-QWYD94dm2na8ZxAjrRrcNaEj8a-mYy_0XTYgI7cZL4LvZ5reHXx-xSAshn_tpElvhZ1FlgUH7_-RV0RoO4h1_-PZJqCWVglIJ6jyyQ-tBKNstHfZgBRIxZh29vQFq6H2ILC9Dvz7Pf3T4QpGzhgQQbll0FqBUzoO6yCUBfQyZFZXGtUAzL36eEDsyYEJACNVni7pdCiAL5-_fcrg4EchVB7i1FdZOdyDkNmkhEuI5bXXIwokoIKlbU1buI38s', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1990, N'Az7uPjlI5MzRLrbTF4DuwLGEmUlVQ1aeVgM0Qo1HWTjUL48BiuOHKFKu3rdDyJc_2IVTmUB6Wd3tQqV-EWSlv8_Q9Sl7qE5QOzm45KP97xWVe3tRtV2eBxyBAaRVcZlnGoaqQsWSA-ZJeObINX-7tDpa0JoIjVRQY3K6y1HtJWejpFM_RRoguAT-vohxhvix0o7OVsZo3EHBSLPgCSS9qQuHELIog746Uw6nCB8f0BFEeG2kwyNZqUvDCqxKoglo', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1991, N'nP5jSyrV9U3fdfKeXF0NsubAuChEmE8BiPFw2EJCJox28Q_BydurM6CKUcW8USp2hHXaCV5PGMVjR2b8_mDgGfju4j8AzKjlFSCiZSnCG_DR7zSXjKToCbreZfoynrsHpGel7f5xzsT0FN66CgnBsEt2IDbXN1VSZ0orJrlMBOJ-32p0jFZ89ZhDqs-_fvgVzJsqXIwH7-JBRzOqw40jWKNIDfMiHx8QjltvaXSR0yPDZdf9PsrohQMQgzTVvjud', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1992, N'IkxnExs7BokGY7Nzvx-T-RNDAhTOLSHs2hHTSU6NO5ClTQjGxD-41roWxTn-tCKMPC4mm6xpSQ-45Cn-uXcO0SYfFL1A19WDFFsLF3b7n25LA1YH-jZ5aJMyeJjG_hhNiACkuVbOlSggFRhRF140JY13YXDDaatoKQhQfE78tq5hirLMEMquDO3wWL6Nt5GI3Rx9GBoqnB-u_eWRzSlIyqbAvZ5PL00A3e6WmW04XvVmyRLM-OAPbUVT9Bns11l4', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1993, N'vv2WHrmv0MCJePHlMwGIKoknAd874iAc5-WqktFq0RIJdl2KzQ1VG19E0b6ktC3Y-DoVPONATZf6qnaFkd3ZNjSoxwUuSsywv601Y-4HeXRKS-9COqjGhe8fBL9PlhnOJBitwqSWjx-VK1Qh1Z5HilDFLU72GtLZj-3W1Hl5j3H23USBVyfl-Uhv_9Mby2ydARprmIjCIv2UkOqoth-_Y-6HXm3--Br8qrdeVgXBahA2gRRTr9o8OqATg7FmBDb0', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1994, N'RFX7C1NBYcOWHAfJHA3lR0GJUwFnt56UszFGTrXKr62UCkHzSvs7eDTHFhwWMyROXeIFHE7oo2Sr36btgzC7K5LrgOLhRqZL3PPhZmjfYCmqv_vpH1gV21J_XV90aVaKu7eQTi3obswIdV-LuBD8akXj69OPSk13xjCVe_qgKzlY3dBGPiWR_MU8sVjFHQIrjr8izSJKjg4ZrQFeTIdNIqnh_alR79GvLqOVtUhKLPTcbCmU3DeZdLGs445AYwOg', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1995, N'ZpyYsOLaHQss7Mi6QKG_t5L8bLIjkF4LLCDV8cJuwUQSvZpYGxYhgs7tWwdef9tYGt-DMq3qhSsVJ18_h1S2LNmIPrReO5mAZKzuAQA1SgMhYaoWJnMtQMYw81Pqxe4K6E_yAkCah8YHMFgA2ypZVju3Ah2cOt4EcH19PBLQuDJRLdQXvT0-tjFDlz0PlN9pLJpJPlOQGvD3gLjZ2szyv0rk77DTTX2llg6Gii7AgwDkMHZrJaW6BxU3SqqgQ8JX', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1996, N'0knHHGoL1DatsysLmOOMf_6VuuZky5b-ggO0gpfp2MOv_GbAHHdHCufDIML0zL1cgeWW4X4JMqnGWnH1BH0rxGFmaynOOZY6CGwxt7eXXV1nK4Xf_L1L6r_B8V4VRZ4rqtDc0Dk7FLmxR_6KyF9GSEApkIXPnLfaQV38qI0q4LgMqJcwj_xsGj3Qs2Onj4fYJnWLOgne3k5jrCa6Og2eCWzisJRDMxF2wpE131gNZyDiG563choOerbD5fTQ1tUn', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1997, N'prKuUfkvmo79zUqyEDoqMMTMD2HGCJGiAIQG0FjLGI57eGjSPTkbzCcjz6SUJYTTa-f5GfkP1M3fcjSQFI64Kapl-wVwwEROPqRbClfjzQ7UJGoN6NIPjruXsPQxLyOuSq1rFLZrHEYTKJLgigvgTYn51dQ1OByrhEWjxYRpjqK5TXc2Fwqj9WXxy6Rk81FzIyKVqIX_mqDILe5mKbsoGbd1HW8Xx7eAI0TI-nvlKjYl4SLtX_WBwGK_aT0A86y7', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1998, N'N4sEiX6h_VbDPywYZsS-U9RK1N-Q3FJ7QHZzQI1WorlHY3CyCoJLlwi7siG3Gk1ScZk7m4YeYwBW_B6ydx902c_4n8hMboRHb8Biaj4v204zAUbbsO1DB4tT2Hi2EN1ynHlPq5GQF-u_GnEUoLiqWnOuWIdo4rZftHA8k-h7Wd8vw7M4DfXMlNLGGtWSJ_TEuvulgwvJI_z9Pfj7IWSt1JjdRIB3ryL6yL4ciwaCKPH5Q0jjbmVYIr-jaZw10eVe', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (1999, N'MZcasb2nCQl8C7oh2Sv3AioXeh52OpHR6Q2UxH1aI8C9xrmtH2iiW-2bWUASKWvlR8o9Hpw6c8w0j36IivS33vCPXMTsyxryPlAvhaqv_G8orOVQHOwMpQmxSMn4zZiUsfrJkOPSAwKrw7jeUDXbNndZreNWYk6J629oAVsUhMK7b7zH8NkDiUMHJW25Q1pKHtUyzeaiLkRzg-4m1TjHYiA4b596LM_rabBipfCiqNNHyYEqhrnrEpqCj9J-_nGZ', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2000, N'OYU5IAzQSrK_OfLmbjQi3yEuoGvArdb8FArZG3vHgk2StTte6_4kjNqEIe_7A3sEdi6YlwoNZlrTwTd3-DbGklOBD7xCEcpIKgPIsUBOKM5Kl-yCfV8UERnXbV6pDShAw0RVRn47pGgDokAug8lPsi358ABnxUVI5hmI0-nvJ1Pw9tao2w95mmouJBNF6WA9xTGFFrqypcxRBiPz53bXFDwwGvs2CF7-lx9fJv-iALwzK6k5s2nBgys4xQDSR1Ra', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2001, N'W-RGz1RFFEEBBY3KEVJtn1wdmviAbR0fuUvO243cuPNh-xmOo8InEvqrJOasj5C6MeKHI6nx4-QNrQEjjCT-HwYsISIO6_9A9F49Jf1n6ikDq7V2k96odDHbkObzJ0CiKgwFYV-iL1ApQKKJOvLX3CcAsFPDoRoOD3irfiHvMWm3t1W6Pn-lawINsPPC7UlsRO4ioIkZ3Xzc8wrrJqDYSLh18Zlyk3gXR6tF2reGqyZsFBImYEoEuBUECU9S_y7F', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2002, N'tORb2HmfL4yT1puSTkhh04mTQ9hblOGNtDv_dAJSXcY4h4vcZryR7FaDGMqHmzg6RIlE8eaOnWB6o03FoJa6eApnj_NKbGeGIBFROEKFRSL6eGWkoNo3ik5isAGsehVmkZiwBUF0QKiqo4uWCgXCyjEotS4emqw05DNb3Z-0iNL2X7l84iJe1TiSa9FM1HF5AKx46InFQCLT6-UtYtjtC1HqNvHK-jDgh42yqdtx88lgO8NVDkEDv8MhnSno2JdF', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2003, N'YU5a3513Ppcg1iasY3U9ZnCCjsrxq4_eat-vEG56pRnpFh-8sdyElNImF53n8My7DwnKzBCuMAs0RAeikV3VKceMqkSrZAbFKdxu_eW-0Q-YfY1oH5EgkHZR4tUVEFW57QjKMHY5t1U0qGpn1to2Lawp99mS2ZHzHlWi-kZhKq62VgIRiSCsW6nzrJe7q1ZLv4F52HD3DSqzJtV6Ws3Y4Lyye8fWDg4Ka4ma1gI-HlBVu6DnisOX9efLU_bXIKTe', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2004, N'loAtf_qizvG93P-N8k9qCX4_NXR4cGaLMbYGKmrzGuH_ymVuabi2TkyKcJYfonK391Y9T-tlH4xToHoWyyC2Smk__LUknFPEZmIc8wUW9dC_AolBkJD7O9WS7V-mT56EtqXradQ7yMvp8Tm7ZYpVOezPBbqQLQsfH6TI55tkjV2uBwTUGHYNPAAxsaolx7QHjlZuqSG4cc2_2okHVah3BqciwgbkV9X-I3pUnixe1HgrLzO3By5-WusbDOVjHx6C', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2005, N'5Md7AFPkiuPhcrP59kJf6_DCkZE6X9Gn9c6CNTYD7ZMmSFMEp-vH4PaL53iIEjnmp4QFzRFdDJsqRiZrrOEg7EliFAlgN6RDKIxAkmNmZ1IMHajHr5z4q9dFtEbIXX-fbvs4SlOibjKTaH7a0Ch3ah57cbbZ2LwVa2uTYoAgq947X9LYNz54Th1o4X3D6sshMltBTkVkjn6rADt7BUYfy-x9Xo757Sr3f3apQoQU5S8m4EHbfsav07PBn_XBGww8', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2006, N'aDwe-94EENoVoln515Cf8ExJ69ZRLTE4I5wO4hxnkWV0zD_hBWCglQntXAKq_eq5JrSMLHTjtGlFBSMlstvvIoEHKIR1yTiGMXhL5_IdftsFzRfSnVZLUkljIHM1UNyrbtb6hJ0ap7CD3FAU0tTa0EG5ZbB02xgiC_wop35QoUAilJCqMYBGM9lCjZGpP5_PYZXqYhM-lbXhNaED8iMiRb-XZz4YOFXXO9qsKQlfevp8c_TMHc8JK4tYnRsaiIVl', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2007, N'Dr_wZVlvojAptaPN_y_1821aXPrQVn1f4diz9OuDPml3hHYptuBR1aSVBgb9Llxo58WwstPkGfETwwFXpPG0kIzg43gF-TO9mwMOirbTZftcTVFZ_fMa3tda9sZUABNMLxMwzspyhAIE0NT73tarH_Zy0Oks_EURBChd4YfHMzvp1GuhbXkGMEItldewuqmNke_Ehdeh4oW7pnX61Sc-o02f8kFlqIUjmiDr0-UG1jx12DTYD5Lf_uczwBcR6Tdf', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2008, N'Y3OQqGzTN9j3m5rNxhmZlyNKO7ad3AWJ0QCKyO39BENmZdJJ2cJPsNhgBXl10T5xeWXOp9ynOPRFTDeqZAOk34OSr9PJga3OtLoOUaPFmXY-H-sIoOUGS8u-6htX86iZ1T3iakKy4DJxDSQiVz26Cnp72XbRre2977KCou0V8aGJ-6Ol0hViWxy1LmgaNx7PW3rgOc0F2-7HF7dJC-QKf020eKQte2UUidhVzXlsOSqiL-1s2FxTz23gmobhdpQy', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2009, N'cOqZOSWkdTHaAwOkpqXGX39IHtQRiv6Cuaub4PHwAIaU_j92KGjg31BpF6VMnc0pM91jrD8R1T_WsMJdjp_rM3uUeHJsK9AySrsDFNXUfn8RvlE6877MXqo6IiiD0-yKVuXna3KCdkkzJx3LFUuq08cMT0srW1KN9wlB53LSlGXUqefmwVOzUQcA_P_b9lNJU5Ax8FAo6o9zyL5knvnEK_0jYShIUyNAyn_VtdjO53Wq1uOfJuEpst2Yor8x_mKJ', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2010, N'JTD3jzCxOUYJhau6vN4GVTeDYBSAOLpgoD0EawF1pXlTN686nUgbgnrbBT39nRy93kJZ09g2CSqZz_IlCOxwYRBSWLoz2Esn-sewlD8De2nBgf_fa6MfagUa47ozHEdBqVWXdQ1XtiI0-Oq8nrTy00zPHUwhDmbCLdvl7qhDh7sGKEzwx7nV3rhYzUcjgVnvl6jk_AtCIaz5bQRyeod1cqvsGa4TGVNjnpv9XRcdoI2NnaXXg8ptp4djarMsmL_6', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2011, N'5nMr1Q6gxAWjwLgT7GBX5KuMWoJI8aDv4MpGsWGjXAYFUZCbvtbRJkHQkKyh8I_ujyfgDSnLXtq-LlycJbHqfwxTfl7mu5ilHa0QgiF7XDYky2UgbOAiA9gHJYb4rCH75ZoQ7FFQUdp197E7KB2JQKaHkvl8OR0jlUPlfR3vmvjjHx97OpeikJzzQaVzvSMjNQj-fohf6Kx1jOMaVgoXBnkwtgiDDWEMNkUb-oa0w7WD_j9JmlkZjM4BB32G3OiT', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2012, N'ZQfxZSgJIHW3lYfBtMxjfdxdXHCZONyclhTnNV3SAr55nM667p0BEY8Kstf-N_Zh0Ss_LtTCgsATXDQFiyHQcHmLaWXWEBg765GfSi73JJBzCgb8GHG_-3RKDFmr9CBgR8EAvWfi_y6k_gxoXOMMNDfG_MKm995_2N8Xhgw8PK1eC0-Cd7kcQFLPCHAkrz-FJrbOHqaPPwmQNdghKKDInuAN0FBaKrzQvDFNqFHd5lOGlZKCLkU7EyCzIfrXEmoT', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2013, N'Ip6h0Irrj8UqSJAHhgca_XpnATgwZD82sk6WhSEcNhZeArv-mqX1o3HlNIJVu4v3VQ6BwD87iby8O1gYIrXKwMuYUKwaXlKeArh-kG6VwH_vOQmOB-Z7t6soOMEq10U4Y8yn_SZVjl_FvxREFRtoBGoD3jZgBHlrpWJzi4J2qvcv_6R-qcIBHFcyTMoVGG4InPfcDYIaJdzT-PYWEoA677PVVpfsfQcfE9y-UPZdqtEr66azdGLwerBjoMNRzjMC', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2014, N'05hAeRn2V1TuNn20RAfSd735xxVm5viY2IJUMcCAdeWMZ23-ESmcaVUGtvuJ6L4Zhk6bbJ6fSqnMIXYQgfTjVF9LVDuZ-oGVXZnDiTTxnMC-RaWguUya3BqzyEteQKUjcu2pWPYQ4lx2uMVnvs9Eli_3nL-K6VPjwpy6NTwzlJQUZq1PS0pwvsRRqFNIg07rStJSVjsPMKWMUADf2X-D2Gkr4yIWphqc0JOjNpzeVIQT5qZVMIRryabbHS_v4zBP', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2015, N'oKQpa8djBtg4O-r-51FoQ4TkQ9khoPeW3_c6AX6OYc_sKNhvOp468o5HM9EqZ8S2ve6TbIHCsAZSdq7mx1fCt4EFh5dIxfY0w-8_hUVIKRsZ6JD3Iw96NS-I2EEg_rHIPOEkMM43Fl5iJt8vycOdrLbrNM-S8GiYXF7ETQge5wMfcFpzllNvVzhUgDR_ztM8In-m4pCizk8hLA-AVGQ4DlljhtetmO42OnsicZUjOg6adIXdHM7nXpflgIAT4RsF', 2)
GO
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2016, N'tkfhC0tsvZuPkaX5lbfdZZL7z-IyLE8bECBED4hnGrKIOo_Dsnm6wqYHv6IZNOKqIelY2tfHYN-wKeGlGo3hlbr2O34nnml8EQzpjcf2KJNZR1H3SGvYqOnWOh3S386A3ILxpCaC7AlfZB5dveVo1TECosHgHTgK9svZ72WCtK0uA_Me2Rv0YPNDEmWvS-o9mfYqpqnJZPzCKydvauMTuMzR48ngEmVWlD2UBYPfwUspddrxpJNv4vsBAbzgHuEN', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2017, N'6AzNdvfyw-rRjVaao77nnX-sexRvYNwNDU8PhrrOBtCMuijQNV1l5LuiPLEjd6WMA6gw2uxfLPi_jh4iBRwfQkM20HNmFMfGelMLdXM1_Acqs64Tfugqh68ffpN5U7079TcbByZgvGXlr4vaTRKOCZxYA1pjxmc-gsI6QYHBrcrE2deY0OUvH47HP-TqN2XXaLFj5Igg9U0vesbXkfxX9OSGPwUMPOKPeW-1M3gHUJCYEP7rOqonm0htTvRGfpUo', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2018, N'vnLM1y-dyBOt4ic8jiUTfwQUAWRrcASOAUEvgP74-m34s_3hlU7QIusNgVpuvjHmfTBaHVfjYYzO9lE5x5vUgJ-iJ-hHndhUEpaB7ZUOxW92ss0008GI9KK3moFzWvyJmh6KapRc7ZTpDUr5wMzFPz3mPaAg0sMBsiu_TtwidIPFGDwlNoRTSaF962x_d18eb3HA8vKyzej91xk0pSK3TTNLLgnhfWab5Cs50Y4AB73l_aSsPf4KLMJLnQgKlU0P', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2019, N'RVJQ1nQazvs3VMx-qxCtlXiP48mF3gZqY0MijUtFhO7IF6nEmY0HLhxs5tAZUoRFL638YScDU-Jw6rFzjdr2_qbcgQdmlEQQ5CwZC1bBHA-Lt_le7r1hZixvx4mrJVHyia_1jfKKYGtwIH3TUxHLQf6HB6eLbbmQnhPMx3FuygYdFMO7NTlXowGxRfibIF9Dx2NTcwfvo780DInero0lRR9fCIPGeo4U9LgGsnTYLvmFMMNuGGah5NQiqCkPZvjE', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2020, N'iY_FnXWl_78iC_pCjxPH229TtK_DxNnEwG3qJcRgB8Vh8-cG8nUAeDUxZ-l9KZIVHAoFfhp5AcLvTEJCHgOnUmz_8F8XX2zWqMkyQ8VJ5a_6_A38jrqrPQOxHdaSSnCcYnNH6pFx2T2HhCyS2qWEhRQeGOqbMzwKkMVdCwMaYjHvl4iO7lvPi4Vl_wzAk0TiuTD8ooJXhRfcyVmqA9EB6RTUo0-hx9H9P3DGPhKee2Pi2OCVyrCAw9aabwo78wKh', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2021, N'NRrRZ7d7M-QyOzDRbig54gZH3AnA25Z-nJPwN62TvVwEccayk5GXTPphSs1bUswjpDs8yEcxTVr3pcsWYfIPrI9g1Ycjc8Gp3ucE1umX5Nm0NBYNUzRLo4zmTcrfIBf9lGmwZlmfFwnHdFTPpsBY_UdTDsAu3ygW3BDAzCUivk-aaRGBZrA0ZZX_c_1sKCeWSJMR21bGVfFMiRz0611ZE_VGN28BTJpV1yOn-23anlTeejhyBB4svYGPD6v2wC7N', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2022, N'J9kXCjWMPaEdS3SqU3yA2NSANMS-1o2wfK6sbPgU3qO04iX76n5gXrsCpKqfq80MsnWCsdj4acGUMDnYnWpsRFceIfcMrzRbK1Bo6LaMg_awf6HMTKfqDXmvel14m-fTqhJB0soFnxJ2MA9jGl9BKDIhbdVjXXI1np7b23gFzl9wrIzpgPmfU2G_HOWAJ0CVZL_cESbUg14QzLlSU3Ayag1GaUn20c__47WJRhjQ9vGKoyNJGAwYjqDh122eRw49', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2023, N'r3Z6UaHloxtgKfPLp0X4mkP_n17OvsiMMShmix_zMx0NNrX0VpNta380vjcqRxNZVjgZ82i531l4jV_E7Y0cjIqvu0z0CgaMnEA3meprH22coOB7IwtXl84zdG7RKzNQKFaWPZAu8T2jrhNXmu2PiddTLr0lvW7ZEp0UYoKbesoDAkOXWIXK9z35OSw5zH5_hraJHErsoxX89I5RARe94iCvxzpx9zVTf2aFZDYJF3Xg-c_9_PHe-YPwLfcKtFCN', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2024, N'ziWuT0QtoctxmfQ50idYz8DYpZyqykG5BwxcHg-qoEhRLknN9REOuX_vDKm-viq_vJ874xrUiwP2xp3TbPQ-TCOk5y_TtSnP8mFGX1FXi0IyzSRWAECv37A0bL8TpmZYH0VezlZBD6MRUQ0iAx9mIw_OH4rAnXWESnjiIqnI61PdOUedwheflKRI8KznpMtLt-QpA0GK97k_d4IqfBy-EP90RGtMTUIr6eG6mkHe7LQ3oU1wZBQrXujTA0nKZh2d', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2025, N'HMZ6HSUt_p9DO-xHcaaBy44cvy-SBBGVeNidDsikMXBl5S2ayIHvD7ZZQxMhJBqJg4Bpp-qUk9Y6V1ViK6W_vRTpH6zNABwwAlz1QLElZhtX__DWxO_cagAPW68Geu9Z9PyKsWoeF_j8vXeY73ysOxb6UMB5Rh2BCuW463y_24g8kI3qDOgTbqE9iEyCYOGLNPISGg_MRKTeA8EoPtxHjSxxDmuUXjigZ8RkoOLx3-Pj70cXHSF9y4Rn7ko8N3BX', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2026, N'x3o8NKq1xjorK-3UcIuJOgp098L592tc7G8mKF9hQoI_xnQ3S_t5_m5Pwc_Fl3Z4OKvcNTIU9EVHy__EZPfTxK_OUue7V_yPYoW2DvpHLPgFrF7in68_Xjl6ze5VqEM60j5fTpYErcA4TthEwEKbkcjc0WiqCdUH34OPpCth64bknDYpZFSxOtpVhJcCIWemEJWY6scGQYGXSeXvhwUa174zZOGv4ozYfb-iqZXDC3JJnnKiAAB-H7jX67DvDWPA', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2027, N'zGAG2V09Ye0mNUAUEcToYkdAEbZZIXWaO-7NDPjQvswW0ncm2JFoIhAf8SsvesM0FZsaTsqK8PlrBnJb4E7QJNRuVhdcVeblnRfUJRRdmvK0a_kwrtuOJBf8MQS6uZhJVqo0p_SUryFT9Zj4xEb-XwZEnootmWX0oeWK2FxjxqOGFPwue_LW-ASpUfEbhgmVmOww0D29QSKVEolkfZ2Nw3c2eqhhMk2-AH0YhsS2wAHa8hLsPGO2EOo6U__MtokT', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2028, N'2eqcm-o9Kh5v8A6U4_fNwVwWnCcgKv3J9cGswTyLBLTMm5u151DUvt-SsASGPIENr8PDRjcPCCz_RI1iyTh18cYQzmQJLhCp58XYVeEo6crupK8gaZJmod2UAQUGj0oGdS8MHAtE4uhM_Jrl4Kt_jJUokjXB8Louj1Yh3rNWFdBmysMr05-cL_Qv4Lm9fa3a5NdJU_AoG7uyaVjGhNb7D7yJdXUVOWbrMIjzcDIw6k1Ky7qsJMTn1McQW0aWBmqX', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2029, N'7Pbd6QWyOL_ZKEgdYCIHx_dz-P4cWoZdHq2Bad3yHhxwNrbnDjXXrHI2Rw6sHFqqO2oNZVHlZAWBOipYgRFuqeJouTmEcWeYLUP4ySfWXVQplumc2j34Z9bsfdc4DTyyZ6WlX5_tzHRTH2JQYxqRDdtAdJYypELO_kt0gS-qX-uj1rMF5a8_zoO8S37VNqjWVPiesz1iYGpCPCWRtm9GN-FwS6_Jg8PCyloY6lmcgZvL73oNU798M5QTN5OnZhkG', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2030, N'2U71ZxyyfbEu0TFqcfbv-G-G7Gj0m7Pf24gjGeQO1YeHEiOyW2PkantYeavxNjGmxdqhlsEfE6txr-gW-P4EEuvmU-5ksbowL7gdGA2z39VWr_BwsfIbaLXz9S9AyZ5-rv38vXgCP1C6b6HL8tlOK_Q3XZin0-Tr_jCSHJqzeYS7K7iCGotq_w_tvSvRhSWc7WpVtXY2REuTLlnG_mX9KE9-LfKPlmoJxunauHjjacHMfwb4ak79ufGrjVlq8THC', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2031, N'brGUcF5oWmDBEBvObeUvOASaEQm9_CAqHG5tcwDe-mzWBteHpcz1Uec9UhDJBctvFm1dm2wIxBAQhSt1cUoWYjlPWbPhHLWRdtf23eMPsrrhB6z1mD3KgKV3bToURTT0w94UuPeww1jCjvyfSx8wAXdnU9az8-ujO-DiohABMqlzDLtMZBeWstagyXUg8dDBauEUhVGFa1iFrIx1Fu3-JomSGn4SUy7QHaI7Kodd2v41gR_U38RYYwNbE-BHNRg7', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2032, N'sQi7k-bCBEtV7XrnPi-URTzAVC6IIxwJs_EjPbRZx5OOapmoql4b3hpnEv8xNC4S2dzBU-LrplcaWghU9OPHgbRXumaE3-sigVLysHiQXLtgdt1LDxQ596fFPafU6U2Il786_lq8wDXm5ajtHmo2wMV5Yj6W05GyxtRG6TEekGK3XtInOrX9TfieAcZuFrkKuTKhTgoDDTUYA8nLoQU45YzbTgGkFcVQt8-FLaWLvE4uoS2WDJCgSUJzqTObgHRL', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2033, N'0rQ7rpXAHj1ehSKB1PhmCqv9g7LWqr8nW5ApJW6OXnq_E-42d1i7r-JHbvjWUQ9D6w9dnr-SNK8QjuS5y8VYwskaFt6caNs3wAinIS8a3edHDohD5vCxcIE5RPMaIFliC3IvBfzeBilB5uHEK_LoTISNWCx2fhqGzxK1i-uxRFY0LE_zwq22eLKQfZ_z8AFzU_vNibk_FhX8E7URuXnjdKew5XGVY6_oYCsd2gpR6erJNYkAteLjIrfxoV9ZUaU1', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2034, N'xxL3SOogbp1jVyDcaS3kiaIN2kh1i6spV00HkZZltS38rMfS_3kA5T6J-__yMU2tfaTXnHat9Mm0edOp7KivVVD6M22sxPHZXIqPXGH4S6EcFbO0v4Jayqins1qs6HUhOVx22N3EMubUlphObLl2WPw_zpxbqRBzSX1XscdWes8WZDvyEOIuIjqkqJfPoswqStErR1AelhruNJU-aN76voiV5GLw26diriC4hQYDl4wWO4hmKXc6VkzqCsm3LG1L', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2035, N'ak-0POFTGUTvepoKtildjksSf-1-OJ7TimKduCpgNHC2nDmLNoJ4GRh9fTU0bTl0tsjOCBpWNSgTVMVha6hpPQzneBRfdeb4q8NRu93d1XPFh7Ge-Ntn0mtVxd0GDw6QrNUvftgmBivVIX3CggpNA5gkAb_HAW9EOS9yAULkpH8lOL3GuxEe9K23nv7vTOZ6lOCMSjm4oeXKVc5ArnmfFRTtb1S0VkstUw0WNXLmv5UO9LRVZ1TdNYKYQtLQgEcJ', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2036, N'syTdNjltl0kd9wQ47fRyq1nmzSkUCB3Zy8WTzn26p4Wii8j4OOJI2wm0z76_HGfhRE3wCo6A8YGxMX2U1EspID8cDZnFjKaQUKA_R_WNlyPuVQbqfvO18l5Jyn4Fr5bcT5AhqVqtMuTyaYjcPzdvAsKbmN3RxnWGcBztwNYRQzI43fzKFYzbGwwBN1UHI14gWgucdAa7WFdfHFgmSKGWmy_sKEptJQBVVfBoLO9jlUde7bhV60_UBEc_yWVgU6bc', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2037, N'JzW2PBiOdFuaMjZ4MLygZ9kZ8XvFuKaoFcgxh8xS6L98rXZFCx_zzFTLZ5Z7REx-URL-aygA-KsB8ug_IZiBK79F84PB95X8gY1mrk_KU4e82hzNjrl01d_FnyUDZ2Qn_9At0VASeNrOlHnLYrrwhbckq8SuvwcjppUlukGXkJWXM6qgTh_wIkF5eHSzKusZgLQxceS1tVUchsVd06vb7sGd6n0DUY-UkNQuPG3nYH42f0JV9JjdA4khvVGY6cQt', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2038, N'G3IagU5J9CRRCJ9UpRgmaqR17rF3HlFkdv28_cYri1H-6U1O8V8aR-ebZFPaFOEg6pXHLIDj0YaH22i7JlfQgolP_5chh7C-pgVdYrFDrSzK3ntIas0Wumry2DcSKNE4XGOqAnWhVJdT1bvNJtNlNYNpll5Iltqq5ckTuYO4hGvUjY-rqII_kr5sCcplotiKDM5bb6XJUEx7tTgYHg1G4pdavRsom6CnLcmR6mGPArk904yk556kD9N9QTFPuAAX', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2039, N'nZLt6GzJ_MSXwUDPE4f6G384AVGWD75sJbIm9kNyRh5GhHeo0lHH-AO4QhPZDF_eqUYMjYr3b5EhfcoBtJYnn8Yuleu1Jmmq-4tyey_3UC_ipm5zT2c2BY7NCsm_vl1uSw43TIvViSzcLuHHNFJ_meXwEsU0WeLDDL-c0afaSaOpPGCASOj99uCLfn9KHS9BgI33RLd0l9x9_SuAr25qyCXLAYqJ_ORo6a6nfUp8aj_mQSvnYrA9Qui4hXSe43vm', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2040, N'GRB6TYBWYBmLq_Ooxxb9WdYX0-Ej90iy4ksOUDaR8NpY5eBmaQS2843NSoZS9AY_f4PUMuNHJCPBVkJ--wjEBdJh1oTCMiC05WtvGIYdaXRkN41C7ydAhVMQ05xsBN3g1NICoUkUDKkelsi7P-RqAKWJsmX3WImvsKAzR0PxifiAqs1yjlFxvBYSQHZHfMl92F7aKRzfrhGKyBoE5xMSrblSCTD7nK2DfV54A6iD1S9KeFQzJe1IQgxBVXDmvUpH', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2041, N'XnlY0YlXLJ8x6hDec6ckxmhGHG-kNO6kyvMZAytxIsCvQTn9QjlkjYNJZB6o5ZF8ucuBsiG9PCAYEiEAvGonOZD-k7rLqQRAZfCddDImHeuMtOuvpl6VPrtiYcqIqDi7uiEDlKAqPfOucNDx7Vlx3yh8MkoCZAk_7OmmbnnAuBH7fFihCzsw4F_0R21sBOJ2qCd6q_5hL-koX9_9OWsFue0j0YsAvh5T08Oog4vZLnofYqpgKKiHy25jAMBIFxlS', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2042, N'VV4LiB_LwO4ycQM_ARvjYFNHHLrX2FccuwQ4OWh69-9Yu8lm0hCn1jhivi2C4cC3V9TIXo7P19_SeIclkgSbV5yptvBW4UApS8OrV2wstXgEC87Nyk0DJvIw9ELQziEjVFf40fLY1ObpHu9Ekt_p2_NRwxjLLCK0ghyE58-XtmaS6t7dJ9tjrayyum14LTLdJSpY1CaL5rqTSX4Bjsw9DL_JkcGu-GRGnMEr3sGlYwXnNuy4IyntetPDnCavA2p8', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2043, N'Q27Q006aG6I4YH5gU4JsqXR2N0JO5MfxO0VOaYlrgpp_RYwpXoPkFrtodzVBHeeuNohMnW11xpYGnC8bEAfBSWcZ7JdEL_uQCtTODgpokTLCFic8NWqXSXXk1fJbjAPOkxWKntFE84_doU7OieCqXYqbrlqxpUjWW_GKPXWzoIlvAdiuSzWYeDm1nb-kJsXXWfx7ldVDE8_i1jl-bBv2z9Ypl6gMf4uqCpqERP2ev6XBE-nHSaCOzEnc5JOS3uJV', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2044, N'kMokcXQFnTIHVutRXaF8yYCWm_HonmLlAECPB8T9CTt7bfMgBoVRuq3k7IILOYZuSdVrPpx9M2yM-bztAX9dzVBrntkYsmpCtyuy_JV2kmDaAgDTtOW_9AGF4JVUb82CMpd-NP0W6wOOFG_XjMquwPuQ3Vk6Kfw_6dFsSbV7S4sxAmi-jqfudG6rd-PCIypYL46GI-IDcn0bCu2hkuCm8t0GNKbJPI9suYOvEBkSTW3WQhpMbBbIyWAD0eb_IFFh', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2045, N'kawiF0lhSpMwpZoc7B-ecMgnFz5zsHvyVE9hCXeij6v_gVqMjWU0tC8mnX6aWdqwhEeg5f87JjBsopRV399Bp5GtnUfgh0FQ4IsYjfS5WpQfGJWkVFwp-AWXxJbVw_7X5Vx7k1V3VO1jjXpOsQlx1Y-Ky2tZmJh0paPe4YV7Yh6gaMM_eGYwpm8pyx7vtlpvbN2all8JZRWXXfCgt32nnvvqxCUUBYsbJB7we3CUF9PMpXHsANwcgNaEFGUaS-q9', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2046, N'tbey-0ivLsyj8GOzSK7cWRwljCXm5lVI6FmWxMT6f_wRBmic39tnY1F6U8n16bGLq1KxSSioNjS8xD01_YNPepC2o33pBiRPTdRX34kGe6el3gH72Azil99aOXBRqdkyz7JkgVkwTgrgy7-D9TdMeXIUFS245uhsy0Lzk2R2j83OmPiFXV2cz86y02Ivl6r480C1EoD9YQ6xhpR095KnXl-TVRDMnJxWlPXqWfo3gjMZI8-GD4Ss7SpnnUwBdlAC', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2047, N'LmiaTsKzcNsyMbcU8_TcuyaWfi0m_c6yE7ZNhnFJH9eXO8vjbMobvTtsAFwKfjc51EQFC1ItkV_O96ZblBtH-j9OkATMHjY_Q7ijgt0DlIbprI7ajUO5wrINsviTi0FKq72ECMDkV3EgqViO8eQXOCBecQhyNLdKOtuWFKlY_oEZBv3xbIFBcfZ1IdrLbDfDDY6vgtLCdl-2925E0eweUIF4AkQHwBdyI_W6sn2C5RCqgeT5KoOiouoPP4JqKfD-', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2048, N'vxBsEfDy558s2nu6n-eF3AyGh4BKhH1alJuA0fg3EKv7m0i2TZoz3h5vTbyKr1QfZZaAuMeW8K1TaxT3cvtl5GdOaVaa7FEmdHO6UuEYZ_dspg1LVGAlfWeMm69-3XTTzv_ulsbFnw5tc96m4WmDqjfdfOqKhZ5cGAvrmpeDdUv5qHsdnzJe5IevVk-FCSrLXhwY4DnjQG2JoDeioKTjeXupM-dXQWn_cD-hJdhNTXENpUZo89eyGsWDJYLd_e78', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2049, N'gc8Y890NJyeYFv07MghfzQBtLxf5OnPwRGDCOncRGmu-qYaY3dNVB2JkLX2PtmT-A_uLb4fokaJ57V9bzOdUuzsCM38XD90SCdEw-QhOlJJXa20P6qzy9qKzvkxjavejVPdDe0_U6137WDZAutelgTivxGjJ_Kueerp-6w37KupgorHowf7E1J9U2Abtc3ykqnC6x02DfobzF48z9Lik8PutXlXa1nUeDL-6dZTb-EllW5VwfNcHdUX8EjtlVoAF', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2050, N'yd8qBk6H-KZIwgAWRgvGvR5jsRxmL1ovCTDLuA31yWKj6NWqUHIs0C_joFIB94YnxIW6i8NFp65CS5AMSoZsFs20nk1SFmHyV5z9SGPbZq0yINE8tCdqRrQNBA5FshrRvD5xtgGXJgcEr8XGHTBGyYAGQkRjkrtrqKyiiCKzi4Rgl4GnzZ9gLASC-GnUsW773pXuexT_DdPAMHx1jP59YzfgQ17UGE0MMnZvBaRyJFQ9r-mBfv-FpmVApFa5a8Gr', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2051, N'EmDYqYRlvLODV_fmBlqWxRhXGPaKwiV0FMWBJBIrvBa3KmiIx7XUIJGeCuuStHpUWQA1p2jEyhU0ZHxxTvYf8jOAUUzFm7MVZBl_RPaTTUfIlG53ROF9PEhHFKO00IOhn3O5jZYGtwaETU-49caxdjPtKDZ9ogKEM0PwOdaCOThZwBKuIX4z9jDJqKv06KnacyWB_NfmgUyrfRgLuDz0Z-D15Hvr8ppzZDvyv_fpSR2_OpD5ib2UmwkyNM2-KNgh', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2052, N'5HtBmfUIhqnTyOfc_ck2s10CI4K_XdfHdZsDSrdO9JTGGpyygN87g__1wXJcv_mwPcT0vTCMEfuFoOV2It-UHxqWcHp9iM4Er7AWd-BsHgQXSpuzXTJu0jiELqzJwkMNcSdr3DybLVUTj5DrLWfMv5Fs991kTwVHcYD92tN1zljJJnk91LxVYc4EwscBPpVcULUpcXi3ojJrdxfnzaGKSFOqIytCjycrRsHZpnMUChvFyrSM0-x87u1EW7pOHZ7p', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2053, N'_7Y5HvD-XWZT_B1NbEHg9Ajs5OtuF3OzqMp8npto50eGKzWtlmaAbJXQg0STUk54l2-VbL9TSgG0b5NRzj1q9SdbzwcxGksokjYZtMn-vD4Fd1UcuUAhJP3YA3kqu-o4eOoOG6rIsMUovxnPeMrsgH4PgIjqreblrlaJQ_JATTK8BhIRJOU7DKQ_R3vLvUqYU6Kjuu4J1d_Fz5UCNpZpWPiHrFf_sNM0dEdiedUIvszdFXMhWGjag_eOKtlK7O1R', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2054, N'juEICjJ5aQMMCnl1MrCKN1BZKEh1QIqW9AtWV8gNnLNbpR-KMgabbNyw-aeWzQxFoZI6SpqsemDYAa9lscbn8P-tIFKl97NTVF8SJQanJ01q9VRbE-Gdk0zporHaIusMqE7fqr095FDUZzaSVdpb8sGYvn4cqyBdm9iH2tA-XVSS67caq6F_8UK0jcQ5A3WPEQyNV8mygYtKSU01_BwGQkJZa7aD-UJAhrZMToY5G7QYIIt4xT5jUXTnL9aZN7B4', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2055, N'fe6s4LeoXM6ko9LwOpWYJ-GMWBnltZBCN_pEunlERKm_RDdc2qM0uCT2XP9x5VyohpVHu0iSUFgLyM2odfr7lZ2Q2WZpznye2NeFaWM3AZaT42UwOhAaRc1RuD61Hy85Fc7SnR_23m8b_PkKFyOmYTqzWz5SFKQLjjOMndluAJaXfKKzyrVD0uCqVmyqP1gzy6-apObidfJmwDv36t4dlT7AsRE2lUY_JXwSnnBtW5HI-C-2L65puV_vdWixHLk4', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2056, N'NKNnG3AKbCYIUIPqE1qJlnTO34CYrO4hXQtoA5XTTJl8FG5-_cyfK4MCAqnI8yYjQPixHbsgLzBSlwPizChaFXmJSTmoj-b8rOuvPiGA3LOHErAJq2Pgn5PO3BzB4TX9fjJAf6l5VEsUCmzx3v7asU482AV_HlX_QcSflx2zgGCiagCCBEqll2Lhgz-ZJUc2AMll3mbA375AaO5dU3GghXjfUcC1gSCCEic-09lupIF4OdYrB-utneMssS0EW6Lo', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2057, N'RCkWWqGBQKcG3j0DwpEOBFfq3pNv-gSqRKuZ7BcAyY5t1QH6mFNjVaAQGqeesvrULgB1Joyj18dsjdbQoKfg0onutxsPOiAw8Vs7KScGdqCegk0GmG028FGEvnTVpv7VqmO72mbHX2r6-FonQV2y77apotqReueMSa0PrhsSy5LvZMMYRjG3MhK4sSK9IX0kwIGDE1l7TB3nQ8hYW7KdREUOoQAqi0UM9RApzqNyzR9D24IEBF4riUdu4BJJ8Lbd', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2058, N'XzEFDWl3aizOHs9oU_L6CVSIKdxwYAJE3DimzJfmj2LiA2xVQATk13KDl3MbG3hOM2bTlPjUcKNLF9IVBQAlvB6WBRzzBDuKgHGkNpNeevPc-tscaOqtCiCpK4l0lGFtzk6w7dK_RdY7KBul0kY6oF4yD8KK7EYzAgUu2u-N-16CwtGo-txAqD5-nX6zZ4onjDJYYfg66-elCcV5d3ZmrRdWht09uiuauOy9qt6oRV5gCq6RjPpXISv1HKUGp0wK', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2059, N'Fpi3FYi4DkM8sYvij06qW_K2xavbWQlPyuJKFYEhkqzYctILaZGNCsLla2WkGaKBTgEYocQWCjD91PkeXoqCTajwkKhd-blOOUO-Zn4ZHA_kdVnxY3SrPOMtkU9dLebnQPZDO5rSBC-tr8cAufap7VD8fkOiWauV4hKRf1NkIhjCTwjgoy4eIZZz6Np_RzmPaKP6qIHf7-gm8rv7_bI9dhom5Dwo6Fer-RGBE6pr2vgIbI14G5-Fe0gRpI1tJhzg', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2060, N'HqHE1aHX8xojRRRDuelNdQjKg7LD1pvloI_ffh3mcedzudRUlENozGB6nLHeT8hb8sFy1ADo9aKlLGcVP4hjGBGApvqREKY78RUbFiWokcIIVxbESfklDixd0ZAiMC1gQKUEw9VXjU2-peIxA8o8bFltNFT3_OA5dlF6raC1WbhNawL22B-TpZwhgq1iibR59fYsqO9D1j4-_2Za-NqCRW-JKxjd1-f6rqiQe9Gz3x8SkS2l932lidhgsgGxvyvO', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2061, N'j4w5_1M6ANRmRb487_iyHhv5c7DIRg8u4xYsFPZtBHSi1WzXfcDxmULNggElGAN6LqmrbMN2Zso4M3pmrJUa3-aImZWAqMDFDhtCV17ASWEWPp3IlNr_bB4HTW7K7yfFp5Ugn5ydIExCmV-Kn-8pfJS6ihd5Aw7Xmdh5QeVaxBRtQ-teoI3TiVLEd3GV3HF34f-KbqYzO8rdpfSm87brToqTKPx4Gt-J5Ax3O5OmI8sFq5emA1fBR7yhzLEgbHHQ', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2062, N'i6M2n9szRlEecfaZXI9rungOoRg61EcvjGTdo1QOneIh3rQY8aWQuGYrm9SulsKFxILIGqOjhKrSVMdUF2-XpE2yJdjuRf3aAhFFvQNlfqyQhMqUT7T5-VQFbe1bDVpOX6SpswYoRv6KPhRowy7FBdFZxG4z0QJtuX0a7em-cRI7XZsczX8FXihAPzN-HD7Ww6WEmtgUWn_6MFb1iIChWd3BUXFd1dYxNGOKWl9JcymshjCxokdmZjcnt-iE-19C', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2063, N'AKXg3tsmANQwA8bXc8puNI9XdShSR_uxXed6p3eZY28pyFGjmMwC5hu67JbSpJjoCWVSAtRrvoyTqr22MHoI1N2mPxQck5R8X7YiI_-mhzlii4FJoBDaBe7E15Bw6p5OyfxQjeTJ0n5dmOxUyOsEG_mRTFGdO_fGe6jwsJbdt3Il_6O9JkeIIwrXi-0OHqGWf3L3Jh6qCPr_XGz3EYWohhmRttjJcRKNeSiKsdszKm5dK4Fbhno2cnNd6Sda8Atj', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2064, N'kY5ARMiyAg6NWDyuQF0Uz5AWmxFUvAlrgHG48Ye1zULwl7TUX_BylWSirgMBRoRPJMzbintbLi3b0VGm-OUFK7Qed_fW9YMZiSMI3XUhXKFlOj2m8yPkztFM0Y2vD29FDl60KwSvF7ZdeRYD1QE3Rc_zlRxlo1NI0z93uBFCliLqMzdb-K2vqikqXiBMp7GSjYjVSNW9w9NRp7VINoqjEkdDZtYwCzdB_SSJcfNfFhoJb7Hsf_nqJU5oM5Oh5rb6', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2065, N'FS-j8qCRsFB-OLfvDpc_Tl7LF4aHsMyjJuAfw3Ee1biXXoVFn84cvXvERUQcCgg8aoBfotkgFmAEcz5jCiWH-b2zfE_Rk27nuKhhkeVRn5wExLmGqRv2HAg691m38U0rUSZxxoCcYz2_Z3Ioka570lrSCHPnPhAMvohtqH_bTw6tCmITkq5qs6SE1ZB1ekZZm3e1YmyH7tVVrMo1qvFHjYXxHpUYh4Skvz3icJ1vx4i3ldtDxOXk3sa7oVF1CynJ', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2066, N'EkH-I25FJUuCqGnokjkFER24eGUNG05U5pQSTmqN4o0NhJaf3TT8DnxcqjyQX9F1tfe7Dhqok2irrE9SyTzCD8Wjp25L4xquNn2qjZVKxzmMj4pnvr1iLkN_ayZsHSqeGlXqco_lsnYpmJJwLaBY5mH7e4au8N9xmphOg0A64EXUbzSeP9e1QuoNK1snK2_UzHPWt5pPVEBsoJUF67X2dxugn_91nbHy0-7A_7wjgVnw4rvT713f85wAKkUkpbBd', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2067, N'Gb6x_49_m57YFLhJMxz9RyuFEkgiPLdXjjUWZWSqHswiv2GCQTNa-qq0MLWDajwAr_W15aRLa2UFiwzPxN8Vau0a1NnuuXoviFwXBxgoVvkDCqrvFyr-rFGxk-8qGHlmm8-GJTuveccIVRCPsyLSaTOZGS_xOBhAblyBy-anLYhle5BlhanhkVqPw0Td_rqPFMHlOy0aNaPolB6vy2Xs122Rjxpcw1vzq1lwZZNxpQQn4Vxc150IufN3VtJFWgi8', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2068, N'_cN2EhwPcOoy0Ufcp8Y4ehMPEMjo7IoHPQXx5UvRJ7gYdNTTOWwUn-UcjsqN0a332fKtM7due0BX-XfPenwtbHSUVFjU75DRv5hxIu5DHYGji2lgTcae3WcfHxP67U0EoW7P_p7UWHjPCvV8zlfjSrtS9CWZ2G9V5boghunL3JQgGyxK-X--VUZvgETcIJuwP1k863cqnpFj3zs-sXqR8rZXyLiqXDHo6mkuK_Jsg3GDjHMOx3ii-cPNzJEov-v8', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2069, N'1df2Ov8Z8t9I02AL3gwiSsaG_tCcABfREcy9eHUwuksymZ4-ddigKjqOJjrGLQHPt-simWCo1Oa0zOT4dbkiP9YACDgW0scY2ai-ZBF928_W-hnMytuOEP2NxWs4diP0iMyOLESIgEps_LTqw6IZ-KN1kXfL-xd46YcihwKbJPK2269_U6kpPGWx9DzWxbahDtU0UGRIA02wdyUHguiZtpAKHNJfvw2Yxf1NCykR5KbZ2nsp7smVEXVJyRoaV3AS', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2070, N'WFljWEWisOZTEpWmBa5YBofBxrHUtLwuuQqbfYwtFHQS91qoskI-YszkghPska_cgb5Um_5Pnc5JgBh8cypZMzu2_J3G3NwIM-e_nIZHr_Eo7f83IWVLujpBF9KtfnipISIlqp3cKjOlfYIcDW6GMLuau3xP6v7d0opuctVfdWXRTEcO38d636eA7em_4-OHXgdkoNQ4Kb4TQWckQfNlzAjPq6890ifpukMwss_mLj0rSGq7SwPNy8yXagE-_sIc', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2071, N'JPkU7MNGDxhkLXVX9u0qtl_RN6JiuVbbVZ27cCPPxOyPnXEKfNtMyBFd5SkbEaIvAbMId6wBR_mpjktnxQDBLL6xKEnwJZlgBjbBnSVT7LSy77XItKfqDUy6ul09xnOZCJt_ssZoef4Hv4h8kBtyD1vU7gZmZM-dMGBhcjM6G4O-tnrTAX0cFYi9v-gUk2ON8PfwgHQoxQ821hyqflkokP--pFDxQBLhdXp4fPTOSMrgbeczadqmslwleFn40rpj', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2072, N'ivDEeXyVO2fC1O6m1RVufPX3Yta7PxNhbkxSV2jkqjqXGW0bIPWxuOtQ9nIQgG4Occx30Ns7g_DRhjxDSb4DQDSGLe2KWK76ac0K10MezDLoQOR8KKDgamRI01PgiRRjksELRY4ZiK6TH6dLgZz01jyCpEt9q4zW8MYxqk8Bh5vHymAwmetn1DokQuQbNIMFkmnAF2hHt0gNuXyqWd4BBfkM0bBWUOWbDh9qW5ie_qGOax40zafVwRKcUBNvYd7z', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2073, N'7zdL-bNkn0_egIxW7GGKo6YfRHFKoZuhgSZ8rjSvFzkqH5HKWMd17Q-E7471URpTy_-xbM-gcSfWoT6sUk8V4ethtMHbZmnb-5_Hns2fOhE9S5hknq1G6gEbKlHyMmv3ZIZDhsUncMjM2t0OeG0Z1QfrSMeR6AaYfeKhvH2Rtg1i0v4WHKK-m7tdbhu8MKZfzi_CPBPnlpawLi0_4XXHSfMgvCRks0PsNHNA0mbeLJJbXXJ9oV_mYcq5MFHhicDF', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2074, N'6rF-mRhUFShdeMrkH1z-BfPZEG7KPlYMeKcWz1kKz0kaotEBzhWk0QDw24vQp4hVlCOPQKuWqN9w59edTOV5p0e7eoKLHsoZs_r3ZvOUBI-ov2wfIKwlerjeIG8SykMaU3vv376GdBGIrOtAQxcFVey1ng_c_ISSiJ6djJUoqVKChyjTKWFvvXCW_Hmcf1HfaajQie2UhQV5sGftu2LlzdKFoZ2srGJ8BP4E_sSewtSc8URBq4zs5n3XPT2jmear', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2075, N'zLzMS5V3lnJZwGch85LGEe4mrkLOWPVxZEaZ0dwwqNtz3QbzNTuvKgSyDisuSN3Peiju2Fel3d6asz_d0TrMRhfU4ihUbfPauxFW2CJ2nNUsNzOeBltYCf7OScXsrJl_V_iqoNozOb_cVEfRLJl8_LkRUhiI7kX4rCfviq0dPKZfxIvQ-XvcQA4nRmXUtaPjCmZWDbNd2cq_A91DCEZEtWwke8NPbV_UnNfSpICkAGoQKYTSvsc5AvLuYM9vf0h6', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2076, N'hkmksOiHZ3FXtY4kHG-3WXnFYLrEHAz-j3QEcwimQKamDiGvXeRG_di5SUNfT91lDDElCEIiugtohMTf6JNS-ongNFcvZ3nmoJ9EsNfysX4H81ZSf0Ukt8nllcSkajFdAIM0Noc3VDgXncpl1uCJWVe4W03397SR45yAQZAyLkHV2we8Oig6Il4VTrxTKJnLVQr9W3qa_a1Ylp44tSJ7ylf17foLJtgZsSlNVO-PBIGd_LaZtt3G8_h3iFMeJA9M', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2077, N'Q9jfcdqqbSC_9wEnavzxsSZkpEhxqeIFhUZIyl_YCxzd3HBwjUCU0ucMaXY69-iI7rDSceOXaUoYSLRbZxFpPAehxdJs-BANCeBCsWuOFXaB_8YjFYg2lFdywbHAhyy3iVJV7aeL68yB2K08O1YNEQyLIkm5_in0mJ8XlXbxWa9goLaeMjYQKdiWdIhdeoL7aD91IV45fHq9sQx-9MTUiS-fpousePGvegvlOvG_RpkCKzf7UIsgvM-EqiVZl4Ro', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2078, N'WIzqv2FqQhr3G6-BjH514g3yLcm8-x2Ks5RlNdKs09M9tYXReG4iyYrTYAW98dGt63wcjJGHu7AMdlemQjZiaAsCyQWsGLRKzgpstu-wJKxzItjO6LpPxbzXbaiFLQjdweoHQRVrCQB0Tc_WSoecTTk2KsVHSid98zLKbSiJrbF6ramaHa9H2XHOW8Qng3uEilZ4ZSZGAfg1wMefDzyYWIRa0zMmGBk9z6G6K21R0FoLA-1E5ka3-vnsG1YPJk9z', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2079, N'0Io6HfCoDzl4gBNUd_fzan_hcAdRRwiVTqI3vrYg5DpHrPYtG2-Sw9-GJXGvZwEjD_bEf0hi9AZJTXa63KS7Bl-A9-D0zPoldUNq4OyDHyH3YAoVQhtkKWyxX9DTOzJSQz_LvGt06PjzgzAufyIGba5QTgEnAYRGS5g2ngV6A_PISFbdJO_bew6nHPARxksQFUIyMEu9Q1GdPCjraQhPPN8a7bI4zo8xqF1HWugGSepmXEglfcD3ZpGbqrFryKRi', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2080, N'GNoFai36klnQqwxoW_AjNZohiebOloj0W0n4Fgv985qlB1GnhRNwwi0xI35ZoJzR_iphoLKCqXExNk4FTbm73IVH7LZjJK3B1pi3Cq4Y2QlrK_W6zKe43wIBQL0MlLfjGv88hzALi5YXtwLe5XJ1PSeq9XOl0c_c70OxHNYClsaCoeOKJ2nqxFxYYI0r8tGGvEKC7tz5pmSINCaTk7jIZmZ0XHtRwsw2Sl-0fg6lwxUBBuCNPnWBxHX0v4yPKeAx', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2081, N'jctMSBrlg7oOkcgh2rkPVCHB6eTBLJDHRVQFu1HiAXSiUaRbXuovk2cX7LUI6I7A_klwPpf-Hr1BAOS6bEbx5O0HIlgXKX7bcueszjq8wSLQAooO2zq1Rm6m_ZXIjm_zExYers9lrkenvAUwLt07cBT7bzR8LzV8Cfh6EDlOeU19F89J6NWaj76rIniERhUKNs1ZP0XQ0t85pFl3S6KJjsGVvHv3BjAVN91lwy1tstx7v9fC-_4dK0fGg7IL1wHx', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2082, N'zTffnumEj1cc8QXsxQL1GI8lLUGxr__WmZquqQXBuZZeOkyC0sQmk0xdd1i0JvhL6BfGyBILzopcdWX51cO063htFqRJ8yRW2Gy2q6ZEBqDcqrllVJYML_d6pIqoNKkqH1jn_Wp8inTOZRla4mmjNm2qC5ppx5i_rQ6RdCuejNx4n29BU274ykfaeoAvIcxkYdWQtcSb98uKCldXzBWoehfj_86z7I3cgK8doggXLrPERBLxZDfbLlkVWuKVYvK1', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2083, N'DhKIQOfqL91ovBDgJRbn7q0I5HI2ssVVQoi9JzzIbblPo5ZHQR57_v2URnRhWBDksoV65jSAv9N1EeAw1y2cPXYHZdOo82bPOJHeIzDfHqMMhhngcTymFzZtWIdZWVWqE4NfH6Is3jfyUhpTJIBmgv035SB6i7W3losVxwYpU6qrsR5onH7GMuEzV_1N_Cmqmy1DTRjeyEaB48h_nFSdAwk8b40w9CrZf_B2HoG0fbLb7rtkC5v2W-yFknxx2l3Z', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2084, N'x7FnrAY0gbrGm2dq0KOS5yjRrWOoNm_YF2qJvD1tqDfhVQH3wPbi4L2zmAHbxAkXhW08UAFaL16ik0wrjyJA0rD8pp6KC9rz-TAu6880lyjV0lNBCVe3yNT5GFIB2gka8t8rC13B291-las5EvE1Ry4ciJgIemcN4KtSyy2zlHTz_fw6IswGTsecHWeEAaIgudIo9b6Y9O86AztUm349r4znoVWeR1lPp5WuX9EBtkyJuBSSCw8x9p09WjOxdf7R', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2085, N'MOXqFtfDtvmsc0z7rVkE1oW2kxjVnQwe_i8GQYuSF0rdOls-FINpGF5mbkJUPLhw9QCfqk9uvPJ5W_z32jjoRpt_mqZbARkmUsbS7V2lu2jAuCjfKAWH9zTFsClPuSU9P72090OJrgVjSm9dKRgBIYWfqimFonGFwf6WQTKWK4IhD_jc9sTcB3uRrSNzszWfbEfSfQGRDmTX1RouYg96KopmzRHztbaFk1svhpBW59k5aQHRWjm6nrFQJNm5jmwk', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2086, N'lcYriSoFeRxsyENaKYyN2clB3ZVCoKWvDuhtyPlav9UaLdSQa620FsAIOQujaHy786pOTk5kP-WnLv9x6JIgxmYS2vp05WC1Hw7EgOBQfHOmsqBuGuDrO7OKa0Ih9lLvP2v-ABjI8KUDex1D9ez0GH109rHOqFpqv0a6OUegWoC8hfEOK33ZiHVV--rZSotTY33guHtSGnzeVWTWLUMF96L0IofRDXk0A9exbJZMthyPVS7dbi6xp4p_wAqkI4GY', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2087, N'MkD45D2HE2duHRpIKTT3-rAgTpEIXl_veuGE3gzMdJ5XzC95Hl8Kteq4bbubiGTjalZ_WF5sWPv5hDMG9W0A9j1CTd6aq_QIUzkRqtyW_ODJ7Ejnj5Ww5P0VyPosJuHegmpkrG1R8zw3M48znxAMKfP8b7kvWfTwsXzOeOfq_YNfBGY5RubZxYJSxhjPHJ1QYw1sml9x1AqzkEpWdDJyUU4cIaMwaQc6fNoybO_4DJiAai8A9f6b79i6bZdfihDc', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2088, N'bQqslbB_EZzzCsKQX5lMJrtzL0OY_w3hyLCnZYA-FzNqFH4GBp3nvYB03IyAAXXGPmSbbZzNyVnF2UwnrHDGAmWzkJQZL-N8DR90mtZMbjj20KxApA1xW-c9PRocZbBqYMh8S15OISOUK7YIOCtZrjTTrA0DMRKftDdwpsiAkdsPVoJStOFGqiB0fXUC6lpH8KtIVmcetysq0YsFahfeP0IZY-AAeqvRDS0JLPnV5ZQXKF5bU9vW_EibvQ-tUuBM', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2089, N'tzfRJWoCrB31y4Y7Qnc5lOFA1vNz1W-USPgpTHNDDTVNuuPtaHDwykpubMydn4aIkEvAM6y8aYgGR5Y7a56WuTyMmgvhcq5qzzuKk6Zqc1XUED6PHL5SDzzak6K5MflxOBTDeA3z0XQec8Ts2B5VvnWL-tOP6QEVYBySWMlwXOx2sTYX_ytDAHUMi3-Hi5VfDS29zyzjgeX6AjVr44FrXHLS7o8Ph0uYL804NyXCzUw7TqdsrD59AEyG31wBM9ae', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2090, N'PyCym2nYMcJvvrpkKvK5nIQd45dS5Nk3duBzsjYLjenRlURbq3U1lbof8UWrkaE9_nhr4HlzlKbCTQJCGawGlt-tnSFb3djFr40HoKd88tYD5Y5zzVPXc2qf7mxtGj0i5cvAYbQvK6sTV7N2o-mjRbtDS5PpInh3HzdNHs1UmL0jTKYHx2lRp_Y7CArIGPUTH9P6fMI6AiCJnig53NHrKmpCOZbieZJbhfZ5oglieAwiz0eUJdHAT3Y3mtYdg_Qv', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2091, N'jaSrbyHP6YJ0LoG5kSVBpV2fVR8dvBGt4jl7uIzFxX72Q8XaStBju3e9joep40jywy6qBTWEUv0TW9V6aBlPk6T4xOsurZcep7RRHUNmtsZYd3nYuK64xQxWCTFP5JHE283gsr0bEfxdL-zQDe_t4vjKa9blBOQL__1RTIjanIJOd5oNaBFMMman_bQOu2eCPiW6Spgux8BBo12b-8PR6_-lLnmkokklbEN8KacVxz5q2VGSPBDEenT-OLNzdRyi', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2092, N'wbZnKx2ii5Wb7DT_Aqd4ScNqWOoPAK9IZWEjrnoLy6Aqdaq3IdZVSsiqegHCM39KwiHf0C_Yq8mp4YTNnBewpmehyCAPxj-ytanDlBBvNqRrrQ7ntEg2zRHZLaNHDnIAB2M4X5-p-rhTLJ69E0RMTYkz1kMMMkz0xM27z2vxDceHKSLlkSZ2aYy0PdXPyst0Ubn73kSePx5kgVQtPYnXeMwKMlaI0AKTxikSp5UXOoJQzETkeK5_mFqG-GiIkHyt', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2093, N'1uNXC5A5_raHlsER45TnfPb49lemVCXY6D5pMKpOAWfTEoz5sGh79hyiATmuyh3wv_WDuikzwNDeRNgmeRYGU67V7Y5DlLVa0ntVxm7RuuB9ln_SBLRkynl0zp-Krq07IOIpMJ5RPhBvwMZhlSFqNxqE-XXZDnL41OMghmF41EGRShJ39fX8f0_g_XVX1M7A6T8NomaKkRWYoSo4jfWKwBXzP9-OTipLfItniIHxdjZWuiEvgHmXIjv5pzmGM6_r', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2094, N'IJ7ZkRVAUJGT0t3_oArtqCzw_SKLa4qJ2vFurA7zV7lEZu2CLYU5GCH5Xih8gRjr0Vt8OrMQjTr9PYVShhzF_uEAVEGW61zAQmL4zMl8GdHh_nS2r0yxRK_Ebmpk-9h97jt7EwBFyKVs76lDi0qAUBfWw7Lb7fMsZe5jImYdc9oithPOpQfpLhFFs1uFaTctZ29ELoIlBOBQ5zsTDGHIb8pzBH6tEhjS-kQXz8XGAhBbL3UKYmZKJHaArMxWFmX0', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2095, N'ON2jzYNAm0BeaLDuRluVlrx9ErkMAIydfzLYlg9ybKmrTXgw5cl-DR16xIRTiwLo7LvArnozBIrBfryQjq9jqsJNE8idDu5xarIcwoZrN4eA0DgRUylrhRjFpfJVxVuM1UT2GDAzBedcyM3MttK74w2Cht3jwi6_QNhdnArraphMjW3WVOLxxnP97Fd9xwdwJ0u7YOrIN2uTn9_yt5hE2IB6_YqMa8155_hPwe2OKeF20-y5BvBmZ99SVEbjkMIU', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2096, N'vRZZahdP3RVS-MW40QrRvX2ePuhZOqiBAxQtu-lI9CaZRwUjMSrBL9_7eimoc7Kr-0mx60ioxhCQYPeAlloK0Qxgc6GrVdzO0Ww2bdfO6ueEYffIRRKpFnVRQOsLEC6CgsfdhJCuf1SEZ6y2r9_fuTVbXB9Km7tLpxaYGoX5bQ-cruOO2RP3rhHfyp4zzrn_8fNS-FGpksel6B3tN4DBSnlIPgDn8skgx_CcAasmPvstX2gPMq_ywWVEbUO_04p0', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2097, N'SlS4uPHrC9dp92ZNtCLgkz9Tb2tydfGk-ASdVAIM0EADRCJ2XRKEJY7fICT6mceqzWIsDRxX4NYbe10FlccCHkLAoN_0cTTPnuDsiUw5dXvxBDRY4COcO_J3ibYIAx7yC5kVTloU-4Wukl7vENcXu1qh793mQF9IxZRr-ESyzFsv7f4-KyZQnd5Olyo-WIuDu-KS7f-Qhhwz0varJ2hWX4J53mtIZsMMlKGGnI8RDINR1uZ3K8vkIQGngXXRL_ur', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2098, N'14gtd7pT5oS-jrbOgfInrS1a64L3vhsVqqJKQ4eQOFzJ7aptHaSGp79G4J2dFusbg_NMNhEsn7rzUXq_73AkSlnV3IpIvt-meW84IQMggNuTZrBxSRXp9KGYk8gBTaRGG-MIJ8q-SZOi8SqLoPUQ5EaIisNboPR1h30YC8Jf5lNKt0eQkYDwixKaflnspFgwqmdapxwbsJPnXNrqOemhnpeRYOzwoU_30TkQrhC5nYO068bpnPzbuIFTD5IqXkXO', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2099, N'pz7qEz3zXfjuc7EjDayhasalHR6tJRqI__SmWsucnHp3Oa7Wz2yEIijHXjDBoc1KTARj8T1VOVq9z_4jIXUoju4IG_qa1ObOVN4uNGNFVIeJLVxuSN9zNIIbOF75GzcmAFaDdNr5tlEDrrzN6a-X_1mm8MmyZxGtFxkND8kni5FN-k4llB3n2D4rhuD3Fvd7-GAZxWy4DbTVV3gn3CjPTnIU4H5NprR4SfL4y1uJqONE0aLATTuWU2gSXDJowfWx', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2100, N'PgGQGVyCh6Q4wgKC6DXT3e54isGwjswMKLxQzFmXkBpSf5quJyK2WmXkvFL2dUbt09uTLgjzfTH9RcYXl5x866kcJUzFclSa-9vdjPEy3xnC2LgKdHVfi0HxelcYfDq2IOQDZSlu2gu1NxwgsuKktaGDS9YXsH9hP06C-g66xYQDPU_WzBEYk-MJVGDrzJZJ4jNplr6xPfALSLiQ81mBjI2v7zSi7BCJ2cOSsAbxoMhTyoMluN_g7kDUBBpxQ3eX', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2101, N'ltluTEqjpMQsK-PBryuNoWwiT9ZVN3bNkaDkzqnuGkWddfiYAOi-eaDeaEj7vvjBd4Xp2zbN28A8edDsYY1XyYsqqwonsishjLTb7RF997o4rSYQvf11cs5oyTOKIWTOxaslUIaB2mY_Va2w0KT-TMYHn7b4wi74wrtHtpkHZa3EgTSbZxvtfptltr5vLVlMmYp4SC0BNW2joQdt9nBe0Yj-D_DpZBLy0hYzaUqhHTWP1lxApg1iW2pnZTg9Bl9-', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2102, N'fAHB0N7g5U6XPVMwYkhLK6ugdpjyrain6sPp8j57y18_C-GJ2_ArFiCpIshrwMVkvIbtivG3W_E76Xe5ormLUr-ZwdipqkpMhV0S6LLq99LTxjRPO2YXfKNcmCL3TXi4RjToOPkQjnFbKN5uR-5VP4lm6ay1FtQXDJkIFP2GhSb8GMRwnpkao8-cknt2EJYsyJ8sGyZ8SPdrG5IGWDRxwxTUvB__vWRursy8_bNYW7kwtpKEyFOKSV8eCy_kcjr9', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2103, N'YEs4zPlwqYhah9pX9yIDNmh0mmzh2WMzKf0F2Cxyc3RidnqWX3NckM9936Lp0kgG_AVrv_vEw_MA-niE9oSZrqZ9GrIzCWlPIROoCNjO4KOoKusxMbs6zfbV9p-pzwQVWSariBcJUGNypyvevzKUdDUhsY3xM6VGwhIrR1j1124utEiM0nMmHsRBe1PxcUKOxCJxe6GFdlR0bOg8byeUkah6aDUFKv6fxItVf_IUNKPuK7lJrghwh1_Ui9W8ug3U', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2104, N'jSp230mooDO_t4u0FT6IjPHIvOOb5Bvww7Onbnv7OfGpv4vfMaOyZb8dc3XebmsTSN8_mNDI-RvsC0bGgwvCsHJ7SQHhcaOQu2c9SMo-tcG7oT3YruRQA00ohGQncSgjZGzvWGMh69Wn84HGVhOWcM0y67x8k_xnUqu1xf04afT_oaXLe4YKRmu-Igo7u2MJhM7VI08jdlY0XwsfgPLHut-kjQywEaa7-OgrSXhkGyFrqGFKHik9VAbMB8AK1DN8', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2105, N'Pe7-9UBGZpGSDixkdXk91uGmuj7SKq5_m3Ee7hRVFDOP8K_aTH2SX5rqtgu1xH6-buUi2Y4VsnSaM0HfggqpKzrvm1xI4DRqKmUov4-kdAgHsupCZitIB0cM_08hRpscTpOPA1uUMoBWEw9JZQd0dmhT8m3s2JgW0cnJu8fP9aC05BM5caOCuh8r_41zZEs-fNatME_KF1xrO_5TvCFpnUv4bE0YJGdtHMcnzA4b7Wba7vxbNrR4ogEr-Y_0DqdG', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2106, N'vVd1s5BM0weUo1c-P03_QclRrXVqAn14V6SkvUNS8lF7Om1me45mj6R2EiBSKjgHcgn0N8gXyVJuGeqJOAJyTNOf2FeTKI5e_CBg-HsMrupajChdnX6A74KistQchbVBjoZd-WmuUWRchy6pFT8GF1PYTy2OZm7Uz5VHB2_uMT2IJNQuiDHQtWaZNtTsxLV1EESlXTDS0ztBM9Vx964v8n_sC88EAzWPcz2k-CV-iY61XWOGm1az-_2uHrK6s8Ep', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2107, N'Glu7MN648TskjS8EqNqmsekVvU3lP2u5Ih3TqbmkojdrqHiGzchIOsd2S3o3fQflymmm3RgHf13mvmpt5Hj2-txzm-8YcHlwz1d9OZR_DGLElYE4vXL5STTV6jJeD5D9rGzcpJXTJs5mT1BYr3LgxpNIpdAgtdQAaUBeMC6-j7r74Kw4tTh4oIyBFRxDii7GZrOo71bXr88bgGX4aW6B1umwnXxUW9GSYZ6rZ3oVYPm_-OrQDYbQqv8tpYH_ko7B', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2108, N'M6TOZ0eE4yAjdsxQRV4B1XuGGL4lzAM1_rKwzYl8lN68oWgCfKBrkmWYZwGvXZiFyCzRkNdd51fsNH1a2dtSJnL0opBP54zI0WLvbSLJoqHcSueMfb5yGv1OobGMWqNU8qZJdpiQAzr6jZgbEAjd0SfqZHf3CMj7aXWLGU8H8vt3o_Sa_txZkthZVJH3dpk_7q_chvJq6KElf1WsirCQ-F1MOll4k73AjGMBr-cyUXDpN4NYDwD41QS--hUT4ux9', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2109, N'YUHvbisdo4zTYfxnh3doRt1x28n6MKh8iIq5CZFBR-ltNkuznJcH9p_dIW_318BV8KBcyW_rQLy4Jho5L9S-jzhjxhCkRbE5XpAvatfPENyTXHQ3kXCd_KxVGc9phdRZHHFN91Gt7sGKaHxkHR6q5-mGcWzqR-mwol_iA-0mFfJtnUJ6VcjRrDFUMl1W3rxfG9jNDI3NJiXXYqidpdgWvdA2dmarQAhMBEjUFXUfc-yIIg7gsKoslbcf933y6uCo', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2110, N'Alrqk5P-5AM5e7j_jgVQXXd9XD2DTk97fafvCklCCa0Ma-Oqx6NCgqp3dfLVx8gLX0q1U2LqdCffbNCXbLVrjlsGz6e1QgZ0g3-vwbuWGNDP6OyMaYv-wC6tkjAaotRAjPIFZcHMpBsb9h4pLF-sYTL9SbBpZ_F_sOH0ZsFp__1tDJOwN0Si6dh4jaI9MbTaSZdW8YO3Po6pczlQbMfAmVuiHCUFndUQRpQoXhh5wyx76UJ_WUS9ROqwfxaWjjIZ', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2111, N'z-bNuxfBw-hVlg1voW1gqm_rL_79zlsFF1ECK1mBqUttT8wY19AIbJkoNrvJsC6Es_Zj0UnANEiIQ_YZ7Ugn_XJQ0BJ9I0R_0RloptL2KCcW8DiRVIw07Q5JhQrePGDet4lnzdgnuVYDlg6Qfdp9Y9gURT6v9GarjN_1NaQ2Kn4fPX_FM5dZh049C41oUhB2YOty9OyrCerV-orp2kogIwvUqoHPpgKhmFaV8leWjYtjZX5ej-IEvwbpjY2Y6a2V', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2112, N'Zszs72QZ35uffkbeaP-pUPuba7NLtPlrpxZIa4K3k5iK0cBz2bodDBklSNDs16N-cHPwrHXwoXtXsKjWMThXxMVYLJFRvO5r3K9MYtcmErnn_64ivuDBUN6hh-dUoFp_jeYh4mQcXaFhTcOLWKbwukkPoiHL2PSY7AOUurkIH0KqwI9PdRVcLRt_OyKENmnnPDF7hAZxsL4_BnJWi9nAsgUwrb2SYmsqtuRy4X68R-P9QnzecsgZnEB0jD6MVR6N', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2113, N'k4ejCwdhpti-NP_3J3qamon3BANDVlxcyYSQuohO3w6TJ4_7JEUbXv6auq1mYC9nzq6wzjKWO2-aa-fDnWcul9zAx0-MJxDSjzBxFNsYzc-HfCHxP6Of5ddtrLEbO_RgJbV0-TewYPpXmjTrmXxqoX7D-iHWt1yTYfYEQtD5HzUFYHjD3iOh5xNCK1IffvjWeHXbm7duqJxMmZW952dFv5j4RUZs3xPUPnqjaPaVuV9GbN8fRHQIISOg8hP7j40c', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2114, N'W1Uv5JIDogpzA8YZ453xepe4BEA2jGuNcv8L65jF-fEnPlaMZaCZ_XOmmAuCY532LUs3VjqsxpP-6WckMel6ayhLCN4DYD0ObYAMp3cCXbkWbKKD3eOjYf93lwmNPcNlEXPMVMu_K-YKARC8En6ZzXWZ1hdqs_SFT6BfRdKG9MPCOXhCFZBUzhCClKcYeKZirnNIV1Miam-jpenXobK8J7vUPX9bDSwEste6W7JOkaQTG5EQ7MiwtBJWLtgimsm1', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2115, N'P1MmddAcAl37GE4wm44rnDc7-jheJArKy1rHv0mAhmXDn1-Z3cZa6LFnrRNhbZbqjUMklmTcsEEWwTjvDRS1Ou3SiuGMfD2mxXAx4N2aVN4lSyS-UViFzK4ZfnO3G6oUnqc3Q8Flx1K1plWAYcB1CQPtfipV8CnpnPYVLvPcUueOsa8Mp3IjFGeyt46RHkXt4Ux8xglCS9PUc_jG0buTbYOlF9VQ8OB3qmfdHVnpYskvfzVv-jO1ILZV0Y0YQG3Y', 2)
GO
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2116, N'OBIKNKGuh_ihGrAnQfuU_rHpXrlnGRDECrMXaJfr-bkwqjfbYL_RKhoyr9HugkSi3xRmcQXCEz4XiXaMr61zwUO-a2iqj0WnVcrON-KChSKkN_2WoRDGdx5HJtIXybCENoltJf1EpFyI6JXMpv77ar9OZpJVjWk2hKngLkWks4x0gDY-RjiMpJXdYA_jjCUFEpz0gx9GzxECaQBcpkaydnYDSLjvChU3f5kNA96xFr4K9TD1uTxNZNkydQUleQF6', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2117, N'SwXGWFtT5Oc3yZZU1GCnwQ__mV6Nxd0Wo6tKrGEPCr1ry1oe26UmtQIMXiOECuxSYP14b1MaQ2u_lEoVqrP5D4EN118Xgmus6O2eB5TpPDv_JyRSD5J19dPJtaG6HhRa-haHYtp3w6FE1TwaHlVQlTDyqfOBEGGEbnjhgC1bMUSs7-6mz-M01Ro_ZB9tz5fvFZOT_ONuedULDMcBH_G4wvMnZUvwdwroD0N6vBxtWLZdfPaK-5v2heUHhZ_LITok', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2118, N'GH8g9M0NS_g7bAgAR9Py2mQaRUSkv-8ZQICXod51ubYXM-xOsrTFeguv98ztd_KH0DtjSIxmM3jNsfA--hVCQR9Ixzjhs74IlH4oKXsWSRQS0ucXReHF6s9FEB3HeSdxDGT_Y9p5ClUfJ_ZT35G1Xz6RSr7SlUTcLplEscXDCHk5IeOgKBGvCJQFJgNlXmA-U-gFwtZD_2UMehsn6sK_9qladpkMpR8D3fxW0Y9BGgI1whOQMAN6IKVH0GBxfETf', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2119, N'te4hTC-fCxxjIW151IjUN4s2oh-Er5ReCJmWSuwqUW-ucarMQgPJk0ANaDIW6vAgXHqV9ddmWjY2_2a-D3cbyhgriTFEoesCMusyn6eCjP0tCh0Tz8_tvcU-2_m18EEOQljTAxJzFnee3Bo59GeN_rIILIjHznx1u37ibo8GZAzsdXa7exQyA_zNnbWm9yR9_sGS_1aDUWDkluRWf7GhbnAhVhxarXDmXEm7GMhpZZZtk9LZe145tI0mOriTw9Iz', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2120, N'pmw86nNoffHQFGDDdBRRNukwZot9ZPC8Dp2icMJHHVbmQUjB_xxtn8hIeAy-CuhbEerxCK0ZimhEosIUuYDFPQdThAuaH4FbfPwXVIko4CxdbYoKosbhgN4P2oGicEtvHd_WFXy_9oJ89EWwxkVbxo7tnsp0lKpgQpOYPBxwz1Lsk23n1mnKtLUgcEPbWDpZbST2dLfsgZyZPPMWfpMMV8nnSwaCQjVH_m19T3P0aGxVXN_BNaYpOvXWwBPv8j3J', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2121, N'PycRViD3RMlJ9751aoRh5yJB-qvSIsdWbqyEMB8TUN-QRmO8c9c-ifh71pd40MiM99NFY-v8fPboMoYsb3LCPVz8V9sBtigN2h5vSKW5CdVI2w3_FmFTkuMl2iZarpg_IhrkjcNJ74G9S6rVcPenzVrK7sKwWzht7dHSxKEgJTRpo1w4k4HI97e0bTXy0g8FcthpnHKCAPM_WBRvVgHIO_SGKjVAjQR__g9GFSgBwKIL-jJYIZZ7Ehne04E9UuDk', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2122, N'gvOLMDey6kkYgjDji4Lpo20aqTyN4-ggVToxJVGuwNsELHT5E7iUFxMHG3pTXRSi7SsKjWoTb2wFCsRHn0sSz_mLJBFXc0u-NOh77zPu3PEH05-IGWlSjgeL7wRyN-r0_OlifgCSuklIh8zwKwvGvx5xpzX08HmssqV6BxaPKU29ZHQt2el4-kT67VsiEqDo-fndqlxiV1u1nA6ziH-vZrSV08rKdPy4b0VoYtKitoqzgFsYpzDifQt-CXRUb1Of', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2123, N'fwrhAW3TZseHi_erPxTsyP-k8QHjP6a2Hji1GEaIfkSi276kzoMbhS5L-RWJjZYdDB9TLF-5Dr5eWtRe1amxtpmPyuU8wqbcTMIpYuehUkiHrua_Q6mUkU0f24QcpENJo2TD-QZ07SDBqV6PCHod3zefhLBRxEj_flTCPEzGmBg3ligZpTkCNdKc8pfSHELDrUxJyZIWuX6Yiwht-1tkz9CGvf3Otm71BeAZHQX1O8w2zw2TWwiwnQmIiwMyU4yd', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2124, N'7c9xcZUIIrpTN4wfhz5D9t6YVffTsQ0gSEQzw4P1SoNwjsQsrtj1T5LDGMKKmz-Dj86OIFkzaq0oAPSQFydTs95axDlD8AmubpCxH7cQ2K7VhlQ2OngSIdV2Um5DaZtpUYasdgdIi_gI7iC8E8V4eqCg8DPwMp5EzLBZ-UPgtJssrh68bAqg67zrttzMw0ErCjyHcQGWjI9OiycmJv-dml2a2JkVeov1FpZeYRGZw2k6R6AXBMnvLeGJDkOAqRe9', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2125, N'kvs8L1iNQ34K_izuoldLpvq6L6I4nHLxmEUJrXGi4ZKSMc5PoYhsCPCDmHYmQVaXT0Qaw16pNPhY7kxsk7NV7VfRugEW7ZYFUpNey5lABJ5lDCDc7pGmxnOvemhOG6zRNyDR5xsJL7A_099M27OFl4z8e8g0IjDtUj1sQnSgW_P9v-lKQgeNWFA6iYoxhH9V_i9VAi3MigKjsxptAgvZax0bEu5Hu-Q3L7aLrp8QW5IUoYd_KmKhgIVU3Rfq32Ry', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2126, N'mnUSKc86irPR9ho8aBwccy8FWgKkzjRQc3Iju8YB2QyWTa0_ICwJcknzGkysTdDvt-PlTf8iICJ3F8-iokyHVm6b_yqX91Ejt8dpv0-vR2KcUPElvcPzOcZmhXO3SSNRi2u7TOL8H1koL0fmW4Cax_sq2evXVBKKcSSZkxnq3NSbXQi5X92RO6PUp6YgR3dlwc_ZZsyBUSnJrkuXP7Op33_E9q3Ma1yPzhn-hbwaohicOHep65iH53SIbJl98AKV', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2127, N'1kd8IKLrpGOlGEU2DS0qobz1_c59LOwB24cHM1Byq4_HePIsguRyXQsX0XcGH2otvIXRBsipAfqapzwnxpsWsE57UBAZtAmIgfLnYbXe2Dc2dH4RGmvvtpySlvhxx5SHPxSbPiE8JbR0R9FCroWVhg7M3gWbemFzdWw9b1plTVwcUHg9hjZiRk0vbMlPQSP-cTIC0XCDvx8bJ4dCC98VfsjnOXgsS7BWZScqG0xEty-oL4qU5O8gl34Wf7ap7abR', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2128, N'wy8IurygOC7YMFsStrqZOM8L93Yiys6jud37LmrRc-FqPr09XHjahK-CWMfpdcR3TkJWgaYor9jw0VNt-gMiwQ2P78EWoNGrjv8FQj1IXWGmRDb5bgiO0FEYFfosC2-8wEJi7LA6o208xy5jq7tOKxa5LtOD0BSwWrTnND1K6sCcpYBmNKSc_Bsbe0ctva6bj7dVOoV0nFXYvzRkrvhEnInc98bt49NTO7mBNXNmjauGZ2NYnDzH4_UAiqXKpoJj', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2129, N'78-MpqExbBEBd5axF9yB0Dbw8G_ej_ANQsp9H8fV7-EiTT-ifNxZw7CW8ylXUkPJpz4qCz_MA6YdTm53MIFpnhNnURQXrIISeBpc7Zxn6oGGf4CLNZNoMPuKk2x1A2T_gpv7cLhKZ1rnNATY2N3ZhieWfneN8MoV2mKyGTTWYMWfrawStVfmtQ_r05AYQ1712-cTEAmcky9Y1nQ_xz061bAvGw2CuRizhSlZOPfT8dNSqY-s9YDXzyNgVRXObSck', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2130, N'o-ZF7581n11AJ4McpoXZaeLECmhw6clFi33eYawPRdXComitbRUOOFABUJwE7y97TCv3X8miLmh7vT30N-zwiIdMSbprNMZVz3GLTMir-RgYN7Wgu5owpgPL4CnWnWKpQAehHam8Q4wpqBokvklFdzMmmP0fW5V-clMQQNSaYeDMdGIJns1xT56ZbRbfMnoPrW4zkmq7FGJYgMSxtEspcwDmqlAX4kLcph3nSqruAxNh3wJ7i3LSmfAASv6LLN7T', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2131, N'XVxjHPXK6Wf9vSe5P7U38pCk-Aq01cYmoM3uE9w9yEe0ymMdrVLaxaDynw_A88OKvfAk6p-kHJj02ey3iRD3ZP1oYUHUsXbfk3uC86YJvERGJ386Q2AHrw0v5L6qO2sgbtm4Fp2UKfC7D8D8WHPnRuO0RWSyCsPMzMWWxbT3rlvB7Dv5Q7FaW2xoo_9ILiqJ8m_KCzUkYQgGO9MHWH3EHjR353foAPBZmNgyk1RwX4Y37YVK0j1JBR3-hoxV_GJW', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2132, N'fFXLfKsgf1YsGs-X13pe302sSjSrM066ievD8jQrt0M83sy-dhXAxMkgr_WxI1vsQk6G9Sgb_yCvIoVdaeFYN8GFc3qXsb3oSC4mBJ-CDWWgtQzy62BdCwkThAHnKL4zQn9xfGbhBesYkEqRFJf-XiC-kWScYYVtKykUElbpFQqLaOGRcQzcNYvRdFaXwEKT6qLA86oCN0VRyxiLR0eU6ob1n4w7hYRmbzCNrmKJKZHNGeyIHHEuSCMkRw4qzMvy', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2133, N'-TdfC2BaRtN516okcafndVWiME5VaTZHa1PMfRBfAM3SKB_CPbDN9DquiQJfdpbSncbhdGA_RZ7QJHq5bTMbNOgo1tRHDgzwSfbrzCuUC-uWhKciBBF57w1Ku_o7psVxnTy5Xap5aD3tiNHznWJVTxYLNK19kLtQQsXZMm_asqDr1Hedbm8UQZlNoLFesVG-DK7doQzEEPF3tqTZO21XrNjyUWKebb5zlkWra4oszzhvfH7_0pLsZ0otFtC3h-yl', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2134, N'mijCVsxw9_is7cHlnzBvAFYKhrJpTyk6cmz14AzQPouCSCwaiX0pIFp0J3pQbo9KVhb7671O8S2HKeoh5CcY6CVrauRYQURj3KdTUeh4Liwgxeu1LD7rA1uUrpiq41G2db1nO3lvzEqrErae2UkZ2xbg56AtbVn6YfJMmsLWwBd6KQtVb1A_fECel7y17WIiIUPwalMPzWXu6i5UQ9kvvRvyy6HLBvwqlk4zfLwJbaDGTVuZqEUKYAje25jisHM2', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2135, N'3_GCMDbcv3KGU2n_LIiOuOlXQbwneeaF5bfYDSygqM3X4WZr7nR9u-FUejW3pVn4gr-uSgiWkJ4DEHooeA91Q7Oc4HOUEFyUlxWHW5liN4spMdyDG1R1iU1MiDoa3-4NY25-D2PpTo191mziiSv0udS_lgtFx2LxClLlq8TY0FBk_zG3X6B6-BdDMcKFOXsNJ5Fok6dUOxRb9DjaxlztNeLKhR19mNmQBAqNajALivoQSdY73Ii37IS4qa3oKOgX', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2136, N'pjFzApGrb8K0Wk4_TvDErCIamas9p2As8Otwvf4ar9HFVHXnenVm7ZBKY2NQThD236TfpVCbQHUCN_pG7YMneZ8qmiaQ2O17WR49_6H-klQdtkR8mrmdeTTOo6-Ly4m2x5azCc3HN45rxQOjDHtTeIXgBIh4Oro87S4iUBcss6K7MiGoMCNxfoTooPUNyUoduKNus87MCcDQhEEN2m_zNJO-6IBt-v4qAnxFDW8Me3DXYvPgM-vjB98JDvmQrM6j', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2137, N'h81487OIdhYeo_6cxe_jFgN7Wt4GsVdXM36UNz7U9caQVTRRIibr3MVzchZhC4cm0pVsBfJuz5AGNQfCJDJJn9LXf3X8cbUXXPIlOSzn7kZCX6Y9shUXwFuJQ4RLGpejQbgFti5ct2aEPrrpngJCRe2WVAR9T4N2eHCtQwwWlcAfo1KfxRZoXoS_NlzDaIuTuIauHGQkgfJyyMQubJlI6Y715E32GaOu_C-xGUefkIGd2dfBMapmkdqIxDENYxiS', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2138, N'YFNcMJPs-aU-410QDtW1eQExa-GJUVbzpU-35YKcgrHeXJMvc8KPp67senMVvs9_WrNbeAj_DPtghrpR9tjJEBb63mqu5dK-RgcL53_RrsmwhgSTl85H930z4AZpbUz8xDfP7s0lObdwN0XASmRAwqx4hO75DG3oaaU57FvYgCaIGniqDPuqvKqeP7i8lFrD_a6S8bg89F7DIr2g-HIBpDdi0WfS85Z9T8W61eQZ7Hw47bDzjZaoZF6OEfYXa143', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2139, N'dyDu1745hlDDpnyKSUN5UbZK2IyHEzHWkiwQo8Zwv6wJsQtNIIMSPj_EGOoMIzwV9p752mCo_YDAG2jx4APA8MSaDy473RHLaGg0CxEtL-17U1B0YfEOUirsaAtGfTA5ialQgtIFB6qf5CO8uxuUSdTNhY3YEf2hHtY1XSr33EgTxxBwzJrdcB9jOwOxq6sFUajNVosSq6a2t8h0N4TarDEkn-lMdRxg-wm_lq_kHOMi735n7DNBD5KPKMOTXG8R', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2140, N'dNZgwQjBbqHRmiOyl0ny9utACrX0GnWRkeSVBISC2W_K0kigbLQate-QcmGSvqstz9HKMfi1-tfQWwc3BiB0m905R6kOtaaBmeIOy9n3xjPJRISx5M9pdoHWR9Wq2FiioTzozQJ8JKfa8v_tm6h0VC8IN23LfTJ-jWx4ksICY8OGpBesn9_4uvpZ7iJFa_R0QdjfJUmMSaveRn0zjeHy6EKnI5omckxyI0GaKDJTEVxL8akelA2WXQ9Bzz3k8FHO', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2141, N'aFxdSmXLS6gMNK3u-VruXakEQp_VWzsm3Z5wacuBs5Nxhr1ZrBr0xv_gCnoaQVirzvEhIPH0UEmBGkBkXEUPcBdjNEwr24q66lX-0uHRpaGexK3mDX4vcq5SCkSS76ea7bkoEcqpE5Oc2soVkIZrIuH01A7v5P3rXF1g5JPUQvORkVH0QqWj9g9Nox-QKGgKggBbXcx3Ji_T6yw7lfRLhJo22h2EE_8vya1JcLoSSDrWX4StNaHJFev1dYFnKlUm', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2142, N'CV1pahaI_oXqPTugQEGXMbMKk6qrpvOswNEaYaMh4zTv4fpRxxyZ9dHPeTd9Fgu1cndxm1oh7ZfDnzNBBsiAFlHnpB0AjEDsMo6990oPXAu36Q1sOdD5GOiQQ_ByWAhSqyasY4MClJhHb748_IsUp9sX_vN3csxjLprWb8qffs2Wis9NdR1McA7Yh0kIOA1Z5LiLKldQW3iZ3YyUrGtjxoAciC00qIzCK5GxlmPg1mUFsnkg8HbOqhrUES9gRODO', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2143, N'kSjdwffRz9K2Mk9Pj_3qfaXoKf0AzQtGiM0dpEHJKWXMzyU8c7S-OrZVYStIiCj6TECNlcDBLw4ZvBOq85D4awEy6cG1zfzRzPF-LnmqqMj56ahv2LU9DNa2_d9JLFrI6q15EaOJjs2wsAwxJzbsT-pXeZvUvqCO3wyEf-A-lQmL0eJUjkxpEFHOU52buKWEjvttvEQMKOBOJbWtuSjk0JjeU-_QKJfz1sBIZlAgET4H2aMa6d2njGR8D36h-taR', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2144, N'pkx6r5SZKf_R4Z8pH2HaghA0mTEDxnIvzuTst1OsKe9Ey4qD38kGQGeOHoGgQYn3nC8N6k3-eM0Wcqx9dj6rL8xLeHeFYdOURx18P7mhAeqPpWrcLI09CiCXM4CdCgsf5_NkOVPE_eIBT-Qd_TrIKTjaqumZevXBNElG1zC90iBeG98ZbzxAQ7Mx0FCPYXrdr8dCoYzmqErm-8FRKh-ePDaotPDRJGtAlEFU6GNwnNdIwO3h7a0fCIkX_rEhHOJT', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2145, N'Uwp8_6T-Xrgy7VrdqYO8fBEztKWi8KnQqCyJD0GAb6e2-NsA-5HeVU5vKGxXcq0mxUW3kALPcx9nrYnP21tIaW_seRhagyJ8x25WczXqEEzJkUcaySebjNl-WgxxSHZxYPzeXlq6TTybar16v-2-GfE1s7MFjxXXUDlYHZ8E2Z28PkdQTp7kv0VgqsbXnxr6Cd-pU03uCfg8zihLWyxHUz0twtLf2hx_oOh-t92t0MDC0YZx_tfRjxFQm_DyxH7z', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2146, N'LMjHbjnX8NDda7ayt38qoFp_rd4M_jgZIOFb3USwzNfzDB7U49iqN9YieeWyLaoSVVKWWzEMQNYskgIEtRYxIA3DMNv7K06OblwB7kB6VtycQZISz9320gvjbAZinAY9_OA2l8utxa29ELB_oJ5ahBBGPYi5dmY4ZZjR58-s-hC7DNpPvXQlrcGx63Lz-ipx6YrnLIWJ58P82j6-pCkbKn80MCg1YZKrnYltVANb8qAZY2yVy6Hh6ZOOSSOmwgQ2', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2147, N'soM-BqHDy6A9droSmnqO38BO0BeuoFZjYDwQd03Wkh-2QgmUkHNQuMSwcJc_d_H4JgV7Kv-exS8n_CEh1C7PoAomjCQsaHWIasFVyVn6iEhcuL5FAf0uM0oBdARRBeG3blcncqp_BTls4ym1pJjiHSPM2OuvcjN6O5fJ9Q9pLQzj_5PFC9u2guA32JGWyRemyrdWVqZay3qSKQaF5u-9Ia139UhlWrYd1AtOf5-mIdaX5nkY6gN5PbRHV3L9ANiy', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2148, N'qC1r3nYy8_AWKiJBxEkiTRk9-r3PIEDZxf1P6Yt-4Rp9fGSf4BqaOYU__RTfG8suS4FCuakRGHmAkPiBrkR5J_Mqega90SXiz-ohohS_9AOPc8205ZpyqOauBSJQdDdYWHU6fFbQHeuHoH04krMJMC7sqAUr2HOm22oShTBtkGoI9neZJz1crA4aEpDVVbsTwI2CpgMdjQA1OoF31VnuKbs732h5MFROw9CSqJk8WtzcMM_VJPHMJTXCp_DsAtrY', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2149, N'Bfu_u5p_INwoFshAMNhPYOEnkyIMWHg5CwqaBkO5PMM7ZFu-lRHdt2J-TynTd8pgSx3sPdzbU5LEV2_SXCPClud-rweO9NEQHVHudTp_2_sh5Jm9BIdGHqh8zvmNRdEolVoy6z9QLwxiD1AHsOsdCzWa99IvsNybKypXuu2pMiJ4ZFTonyTGeO7qxZQxip2ER2_iVI5wHp7kQn6buvEK7LhJt_QucdIwSFjRDEinyCfBsH6llmoXPqUvGtrhYpbB', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2150, N'yWE3n_fBlekb671sesfZIZAN5-qp6DQCMZlzBiumLU39px2yYAoVJ1s5H4D1l1_ObYtz84e4qwclfXKU1_zG2yksAPVO1Pse9uGSBuwMj-AdlDRaVIVBPGaBmyBXg1A7GrLIQPQJ-juoStloAw_KC79KFjq-iXQ9n03xKSQiwTFgaiiCSWI_Hg_c6E4Mnz1_6O01gd3OXMrlChTkMGgTBOuG8Kz14CK518NaPtCI_4-Au4xKc-1lZ24v2aM3WKwj', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2151, N'vGxLjle3RBagNZi8yDjmlC3lgB6QyZ6ItTaHqoEAtc99cLqnpoBg8p0X-txoUD7OP4r1Mu9PrjRYXwwnW8lk-jCnM4tmrqTtA85JPpiEFEtg-zJw9W6rn-h6uBxYvivLhyIKyDrVDnn9oLDfOMTvH9GqJ8t1pvxQDIfe2dyLxN5-W9wllf1a03JTmCRT3HnSSu4WZxQC4vzOfwMikMUjznab_15cPnme2BbAjFv1t6SVoIy_VmZRS7rm5hI9C0KC', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2152, N'pXTOSof--vcxq122GpCKDAlTNLt5qXXrEkAo68dNEVLbzUm7Oz7WBNaNusIcUMxCPIFyHZJA8mnopb9s0mYmgiKBBUAKdNTZFHYI9E9wg8vciMRowdV9BmtXvLUOpgAPQms7kH4q1I29ljLalo7DMPpZkBckH3MvE6TyZpKL2-g-zjBAJQsXL6lOmBsxssgunhJ4oaiY-XrgC5qwQ3RKuaVfBoQU4hm4Ad3Bwilwkm0U9XC8bLqBjmG9YEKZab-L', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2153, N'xQLoZZER48n11Ew1zlXEjPJKBmdi4665jt1AmJGnLdk72Or936qK2q0nz403Eg62vKrXYce855AHdYmcTGxng0ckmyethdWtcEAMzyjw_9KfZVnmAEuHUXWmfYUgtGmf-rtlF3WNRMprkILFZBkViVOKpsJTpzIwC0m53irU9shyq6tjNO3wSpuFIODtYT5ARclOq64pVhPh1wxEaCvwlXws1eOu1Hl5cJCeXeZyuBmu6hDqLyAtSoggE58elBg9', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2154, N'cM584EagEew5S7mZ59-uCanNsUamHWYc5iRyudYamzOWipegU_4lKubo_01HrhRQld7jcDZLe67tGLWQfVlREZG63EOeAaMoCmENhDOM8DFPx1cAwevBGA1Zmlh4bQ92KDxATSw2yzwhEV-CLW63Dft-pNItmYiyqv0lstRslG-KYxqVhFnPFKGo8hh6h38kq0dRyQaaCyQ8QfUPm7B1sHIYbIX0GTU0Fe4zwy8SGpQsSK7cFz-N9KwFqRwZPcpB', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2155, N'T6gK4hAz4YsN8vw862vSxZ2IZXN0_CcqEC5mI19QbNbdIL3zTwxUiGzEVFwmwNambN753iZzp_9bqO-JrZELxOe1aN-TXn9a3fROvwhlGSGB1K0RovCOgUSbRr9rtAQzJgcajsFd7HtmW00LECSajbkW3cTSnrzBp578FgDzLfx5YcPQ7MFcsBsbOKNsSlTGFBkArOSZXTh_tThAxr95TdDDDhxNjASY2_lKfuUYvuIDQbgMOF4npJOTdcemZiOH', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2156, N'20V3CA8tlyTyaECD-6YBiHdyRptKgleaV8sExtJnVi-__4gTZgrBcTPf9s8sQNaKInlXhaQmC935e3bF5ywNIArCyux0KFy-iv4VcJSowC3nQMksq5w_b7mth13MuKYnZd0I8qGWY7S2f68_4bswr7tmku5H6hjd94CvTey4DmTLPrPip-jBNceYNB3hIkOddLBcLGHabbuMm2Kq1wRz0aCoYudrXeuUCV47HAPXe6SGlWV6XpOEnGMqPbwkfPmS', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2157, N'Md9X3cY04bU0MGtasn_gqliKrWS1pkUdlfgMoFZlSHIoy4CsqyxoaYZ2uJ0ln0rpkE9-2gdxh0HDGlObQ6TEZssYUVKC8cNXQvsgrStv1aVKgvhYQ_DT5Ai30WbLDSuEjb71krZbk9pUFnzDhBxOeATfDMJwKjV_HZE6_qdxsSyaHEqwVET9zt7ZTji8muue_FSEC-R8uWix3T5tgFh-hg3vwW_mCbSAxF0kzoNiMpgKncCLtXKuHeemo1bApIfb', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2158, N'bnjVmJ7HhyN_xfw-YuWLBgNsVbAuNTcoSAXunCTRUxnmCXMrq6I1lHloWKM3PGLSBFeBxzft2Tp-6petpeI8srqBlDBLhCpmuG2_CE_KeZiSbkBY1szBZOTiFj_uudCrpkeLkylMiW44u9c2afWRtS6OXsBLP0pXTUuOaaibuk02hWZwRp59ymeEdhUY0cNvZYQMtzWnWpylPxU6nfCiN1QVc3RY2iYMRYdx5ckYOkbRzT35GDAiLItBHHW0F4f7', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2159, N'-Fp4hDCuAqUT_LhboDdEuB8YLH9y52X3yTCTJHbBiedYLSbyttfhCcMPag1kfP9izpoCL5u2OWY8IzBvbmH-lOmmEhqpEnofR7ndjYAQLK1_UIO80SeSio9MCxucnTc3EiEfo7eOB3snsNRyqBqrlWhkP-IsbGxvS0Y7jH8XWcjqHTbVwk5eGcsBh3_pmf1a9cuhCKm3ND2dBqSOpoa9M5Yr2KisdDiMhC5ruumbmB70lgF6JqtLHj6DLZylR85w', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2160, N'sG-0w6r7AB-PBcvL7cb88Chcghu3Xyq6GLmVL2KSHo8O7wL-0PZDFyinWnmuqE5OdVFSVraq0mxE2z3G7HZ05oLOc9MuXdff8-b5cJi95662s1PqKlBkvIW9lxnCkg-YbiDrqIkdBtu2vcO8-52gdhc1k-9lGxLzP__YgpGsHH8S8djzECDXDFo4mnjNKbj9Hn5ThlVgcguV_RqsRBc5QfJiSbAs0iC7pvi57-udyfBcVNYxQXmWStV3qd2QPJzM', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2161, N'8UqUsu7WT4T-UwgZ14upagnV9bRTsa2FZb8EQJKysWSRQfVEX4FvpW1ZnzqSHDJ-9ZCOMlfRwvT6GPBg__PXa0qq2J6MLa9YM6iBDerNJsMi_EHaWu59jG0_zIxZ7ESylnKa9G9hZNMLtXfjOAwTiYwOKapVMJyvLYULo4yXruk_WFZOiR_NBWY7qmYVNlQq3LuVUYEuEiZzb8jYHwxbf2qyLXDXYjP11o57qY-ceQUMpUtoXDAvVy2smoGw8-py', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2162, N'cCgmLSSDEAAWsBnlkqDNGwGtK7oGo93AQ6_dqLPa1qobgxD7NRBN-v2M7AxT0_lfem3KKolYYa_CBphv5waP2TDl2wNvCswlX5GI0Nb_JjQ0_gZftuOoLX4q3rXPAjt51B-RkpIAugLCDVNbqUWtcUZYR5ioJWn8ZAx8f_07R1fH5ViBTC1bMGEqs9riWwwEDui0Btzi6daZchfmJZkbeywa06TnzxhOke-GQykksDV2_BINLXCg5pTe3ZpZ9cJD', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2163, N'tqaqXxlBOCLPI0KXy3QoTR9igzdxGEcF0YKtlSNHcz4fNsMzRJLHAjRIoY69Ka7ikRxvxh4fVXG-DTkGv8TVk-ytseKOzAEo_c_tn-LPlVUtDaFUQflEtM-NyT9NsU-Pju7zmi3Ybl-LQ_jnCs1BZcZuHmT2HD8ZCOyJflTn4U1SU2o6Dj-KoLoXXDwm6URY9U37YQaUEzYJ7FDfFgshaqx3FQCY1UscQrJSBbfxAGAkDVG39mXAFEAmuPo8S_FW', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2164, N'70mDCAZYvRnxogHr5Kx82OqmF18T8e7S9CeEfRMtdbr0LicUnNADA8h8rIaQjVD8qOdDsBZ_IVmwceRHE4s6nnreEbw55n44Vx2I24KqVx3AOguGiBcN1zqsMQSeX-Xre8Yf0QZrQs4ZOu63g4SVGFcKjSILWfzm-tlSGiKwJXmZxoOlK_hnQOwAsMrMZf0nzqnKKS2xNMRZmxS6NGaaer0tm78NB-FNgwPPJRcPUZG0lBHJjhkrnX247Q4sGBsv', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2165, N'sxGoEhtrtjaJoZLRtcmdlqEI6ezORo12Jm1pI5AlGgNs-ksnlC4ezkB5hztSl4Nz0VWIEvYWwFDzUfZYyGD3c6K9xsNL9pXpAmI8JNJgc-k4Nm1EyHYfVqlN7QHTPTVa-OHe3q8cMm5KQSVOFG34RfTMBPO5L_n79VvqZ-99I5BJaxWjA6mfxPAbqvIVFrv3DamWaMO8HK6YmBASwBRCmbympYqTxA559tlPH-2Xn82bMbdgAgf4GOvCO4-zu_Ws', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2166, N'j04WLtiCVzE9IL2iSUVdP25a8TVQNtrnRPRNCoEqkdbWS0f7CH0Nf59cwyb282uwYbPEx22Iw563V0Mgf8gi86tZtcJDdwtb_iI55D02SUepoMZhLDRSIjrRRf5te0MtInejfmsvrPu13wwCIscCddiR_2h-rMH0-oON3JBmIZNPuUXeKv2SyUcCMNhNc3YYIFUtI4HHcjc-Y3b9Ud_9DPYWafqZ23jYOu0A4yXBwltO4gelzljc-P-qKQVTHT8v', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2167, N'qnKgteq992mnxuRDsPApD8B3x3K-YC4tqEJ0W8ZTQnFDhYGIE5qS2_SAOm-s9IiZYy1zkpvkPB2damIrP-RcQbnR0sMzmpvzRPMV3spU7hDIQqTdVguGI2ClkWZnXpJCWxT5MyJvzqBb7XedGajo_X_eq4jpfRlhosvA67Rzrd0IxlsqXvfg4wJ7NmhPdvLw9NQ961EL6Ak5cPvhnS7TIuhc7auWjlX-L0l4L6dsH5I3TkffNhi24qDdsBf4gsJn', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2168, N'113i1J4ZPHg3dh8vxO9a8XPhPLd7BKpsC9h2TbcR33yuSV9FMwqm7i5wwklNBOepQPqv-QWEXXIxyI3hqAkpAUMIbS2MRh3Sj20KnnjlT74m9OcaTcowjwN_1liGPJGUaPjB2PHwan8uKJEJ_8rLPFCQgXvJiOuGbfTRa-f540Udlp8nfTYA-rFREcRzWDLcmP-ubfXOofnbJFac3EIulzPJqwIrDQyxJqooTaSQNlpmvdPSJ3dvjA4u9FkNumrD', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2169, N'cZh7gUf851nW6EVksmUqEeyrrDU86lfglnn543TkYTmxfYCZBw7OLqp67TNnAT9-1EgbUP0et5YSINtI2zk0cFJ9d8GOMA8mkVRzG-XL48MF4lH_7eElYFxOv-7Ym_4CXONvU9rYwnQA-14g0hnZnjRO6ZpES8NBw5-NuL5eYV_cmKKJkJ0xRNkP2CxDKsYtWiofsTh7iPIkQJrhwXKb5dC0nZsBH7iOPiGhM66upVmM9ihz9PEqTCbKcPrQMFKC', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2170, N'ZGjVvmpOcJvRXGu3rv0txLCKEzM0m2EJeq6A5-vZ4M3DHkoJPvK6e9XJJshO3uA072e2bTcP2TBC0sYswzkKYJoc0yBwn1DYn92vJ4py53s0mPAiRj57y7CdIJVMsQWaCYM72Q0kyzdgaVkVOC6ukuE8tVoc2Q2MA6UUlxP3yoSJE7FfB6MoC4s_uG12Ja9Ix6lsUyaiVSTmrPiY74JdbcnjZakKgdb5tWgqUbOWmdF97yFG98qMeOUmjVfE4IW0', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2171, N'Exj3K633FtmL-VnyOXCMDVd93UD400VfE0XdlYujTr-V80AWLDtgejqzV4G1sSEFbgzv1cyn2DYUHPipFcIqcM12FiNA5Cp99-zJlJjkNDxdF9syoK-OriZRGnjfhPUkTO_EPMShJPacmrRZp6cLOGfsBMJ5DOqsziiZrZFv6o3JjMX85Y21YfD90gMiUwCefm0DBQRA6NqLWvEF4iQqa3e_gEYQV7CzKiiC5hU5Yoz_G1mvhzbBwyoFQJPUykMU', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2172, N'8zWLNwDAX6uwCuIbyn5gDvVLLZXEynwmAb4TpiJQsJfxfivBMqVg2LGF6-_7XGircyKgeurTmKg1viuCc8AvT4DAci5JxgBscL3Qg18ZpkN87ZjVeGeRGWUfgVRlIKvHtyP6X-RoZTGopUogfzlKx69Eiec5_E-8sLkDSoCC7pS3BQi6tNss8JU5E814gxT8Eu66TPpPt4zv5KBEkWVYEco3gc_K-oIJ7aVI5xN6VOX1cILYyGhYVnhCW3ybwgjx', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2173, N'3DhjRICMytw7ly_wJ6X_G1sJw4slgnYfd1rGnGDw77f8Bd7OkmhqIWK_AIMYg41kYUI-eQ0PHplIiMNkzFQiRXCxu6mtu-NVvxOkLxlR0sPzye56g5o_3JaCb8d__4lHlmnlpAJ_dJ4ClIHuDQONKlIOjaIh-vRel-FwB_jKhik61pWpiWqJjwL1_hxoVeRRMYT9u37rKgEyiL5C6spV0oblYQcIQ35ggXO4v5ztqkaB4682-V52-LFhLbUQKBIi', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2174, N'dFNsHgzoCkXvmFL_vxFRp0UvhzWbYFLjCqlrRZejo9zX-RqFroKq1KUBHez2RcXQHEuSMzChmebePMJvSxzTeN9lKS19Z9BugL32BFNzO88azVtUuqbbWCkK1gOsNSPwztgiKXfj3w4LYG3AJ8BjpnMKoN7c_4UviYsal8uv8Jg671lKmhLbkln_k0BjWIKfwOlNEKrDUexxZjZVGcnEOZx5q77X3-rxMwTLpfR77Dx5rxzAF9YfMDJyE8haW6g9', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2175, N'TRBXmyV10JVQJeOhOMnQrxaqovmVWlaUJG2fSCBOkf8T2bhlOw99VdL3uhSRerHHZAC4OqVZ_Eb-KT16Kgr4zfIi0W8XJPD4xOCpspu-t6Sa8JIe7BEOS1Hw8KgjDF1DDYz0yw7sAQu4PK4mJkekYLs9lageG6m8gMUKqwVC7Frgov3vsnW6Biv9vs48gGR_lWc6w_nAbuwCIjC17XD33yiuzfFSpXWRvk8-5CmVE-p5KwetWFdBdcUDkWj-W8wy', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2176, N'JrROEQxT0z_6_Cka3ulrjmWNCrZ-GIc0gLYQTrg9VXO5NFKxZjHpr78H6qDogQ8lazZYjZPh-jzdxKyoqiP4m5rfJnkNEYP3Pb7w9aPJZwu71OWKqrKKYwim0iJ-wc6wtl2nPeS2J-BAIelhej9-IIqtgtDgCfUQPJRxxOcv_femIZnbk8xMwpr7uTjnVVi_UKe-deqApr_rDGkW5KmKctIYueJGl9lg0J-hv9lEZxcc9m0LxOck-PC15D0-Ino1', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2177, N'ujFO6KTd7kt_ArtG2kvpWSRH1gvnh7kPgcOwBkmkYC9kH2QQSa8qHTFF-dirpy0e5I7NQwnDISdSaPj9j6oHECtnc0D5Gxy4kUf3JT-l-aHX2tp-zxAWWkzWkFrSIeZ_uRe_PQM0it_IR1eqnJlqTFvda_oohW0Rs83uD5Dzzr_NfL7KO-lRzGNrouUo-JmVcuX4YUZ4ykYLFHFujv2I2VU94BgZakzC8STSOaG9eEqyJnsBTKnB2AXNtgat22ok', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2178, N'9tdeIE1iXqdcxxldq2npnxzQ3pc0bLEyd73wAmVXB7sqlXDgmT_3jqjFVMovNel3hPPwKhq8npDPWe3va2KK_e1B_lvVRNzyBHVL5chOm8B7vvgcECAnjoDavRfgK9mMEL6_bb143kggSNcCZbk5ZFxtVU1RhGeMkHyX-zh6QiyjfrUcHDLhe9PmlWiZqyfAFdbLJ9M_CHpoepY5qweAQh5HFEonpo3GWls5X-kpb6x4dRTrBK_uiPtGi4ngtelD', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2179, N'wi-mVGnWLSnD1_sTJT3oMFXGq2JziE_oZ7iUkNt-0SjDpuYxlY2-6_XGnGGbpI9jui-Ek0Rq7qg0MQ0RQFLzbGFDSH7efsLmM8H3bhsPFJNbyYGjOZMsOWEaRhLN54VQvjw1e4o2kQUsChPGVUNO_7lp4GQdCn_4Ool3_2McCeonR6eFkat1xowCUeXbLeO_2LUdptiIewlp2n7P3cHdHdZM0a0S8HB0BxFJnYDOGmfl6ZxXd6mB7mpdHiHNiokX', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2180, N'i3hN-_Gnd1IuPIZ0hSxfSpcwaKPck5GYw9OyTMvcPZzvn-wgAfwmiO17yYyj6X3y7Ixc58_Jr7dYNRyWeJAsCmVfFF_YFDYbeJeJKntP82UDjNmbCPqJUBtUsVltSX5vbrhzfOmeRH2xlLFXRinbSa6TfZeaO4rDIj5zCeJcvxrWEjmadH_IYzvGy6VM72XVKJREHeyzdj4njoNW_jRz1hK2_cAG5OPx6c4JtKitT8gsEc4d-DXCt4w0OLZCwbY7', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2181, N'zIbBusYwVilTs3_CkD6eujrCIcGsE9bdB1BJQuUw_Di0JG1v7G4tWoalUlHcIOxKWk2Nm6yltzeCVzjkpcqIRfh4oHo-NneLFpNiajeTAQc9gtS63p09hXvAg3uqKG4wdzUen_43d8mmfuQhL3Ryn6yESbadd-FrZ1AfYWHQr8xYmcLwlhORc9FXT-DsyOjgvcw_WJ7wggaiKdjTh9_XIbXBsaFbuJuevDBAZD2bsxZvEKtPwmi09jmL0r6r2nB7', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2182, N'EGQXcrqrLD8ylvV-fKd23vlh1VsArB41k4v2-x0eSqKImlkSscLlRioM4gF3I68J9pZSlM4a4F7vg02dXN4yHUWI_qenzTzVETPAMbngQLMZNRBhe7vHEd-pynST4Gk40H4bgJ2SxVH-4YsQp2vZBrhkmuYRyHRV86tseP6lhn4CvvDIZYGoX31YmirddTsTJEhV4-H1kr1yHXrxnBefrgogwQjNeZmNeT669-ng5F-jVSPJ06vv2WR0HVwd7vtd', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2183, N'jKAORtJOV6uGyPVBcbi1CFGxd_35Sp2AeIXdjwaDplVMOxWTK1ApwaCaiOa8SX7Gu8L4zQjff08g4vEwfmWkLYKpGpVwccd7kiITWZOmXlxK_7dFLmekpm9ARMldyCyrfe0qkju7yF5MDJEokYUmxEjoepbT_tgWfbOFLuz8FYrXFdhDM1ZI5RiMsbHkF5YwU4Kp7yMzKQaBYE8hsvmKc-zw5syWF3jRHkCJSy37UZJO_zamtn36K8A1DFR5heua', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2184, N'0PmdIJxDHF5g1eQCZLBOP5zFUC19o0_Pl9R4Gb6MHHjHAAD7_LfBkQkCUMsc8uUmXD3w3SCf9JGAIO7FX0uiz7vLdLJ0aqj_Qsceec6sm6ZNHHUJc80s7PmVH5BV0kyD0fGc0c0rx2tV-rCVdGhs-NSuUHrxYmd0YhN7HFFXWGPb6ztnd_NJxBB9iakJtFlZoGGPMa1LEPhyU3kvokqmziAB2DIS8HuA1ELlAgcAaUVqRaXkAJnuOp6oL0Rogp4_', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2185, N'ciwmydQ6tjrwZ8PMo61bOar2PjDuvJ4kf7rO-Wcy3VR2k0Wt2N_R85HezWk-qPedR6fvF4ytAkIjnBM8EvWCb8DU4wRLndgGBHLXb_GuXwliTCQnFU0sUSjSpDF2dUY5jS9UYLraTyHpscswRt8Ve6ecEmq6Rld7Ls_l_ZUmP829BMye3J9NJCSELcXFdsmilEV99sA8UMeE35kXda24IiETg_9ohrOR29g6l7RlkORv_HZgb4bOCjP1MuARgH-2', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2186, N'9985D5XSfO9nHOlCszhe9dezSHQ7cLn_a0Ae7GHZI1oFUJNihbUWtOWgcNwWVSqQ7Brdiv1fgLTroiDnrVrWZfmkHREgKRq-WNoIFFRae41mnqVH_pbNhF77I6FMFKjb__4PJiCQMQ5pUlVLuOp2gMCAI1h-Xj3n3vKgr2Rb_Nm1bxDg2zQra3yyt0SdSdNVNbOLzTvja-jVAJkpQRzwwU_9lOd0-prrGmG66sMMvRJ9Lgz56odBtGM7n3NZRnMI', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2187, N'40M8tnc0aWLI4j8hD-sKoGrwGUoRoT79mD2AjxcWPLGThuIVt1weh626hzXBCdcTiI6XEeFkJW_6Q6xEk2mt0k9vlkXM08j5SrFMS9YqBtzcROf0_60QV8obet6MFEwQsBIfRqTkaXocdO_4KXGF-AEQFnDpOKN9SmbS0guLEKPkedtVffw7PvL9SG0KeqJTRIPQOp_Isy98Yv7ZRG48db733iaGZUbY0B2SYHu-q8IKbqEjzrVZpY7XTHoEVUj9', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2188, N'hLWzxAk5H7HD17Vy_nzi90l5mcKgVlVYwevhq19zrr-shEI7qPsoUOW2UFx777bjkRCJks7DiGbDFgx4xWOgSkZYlLAjoU0Og7-wSkMKVSTwERpsxJZ4Co3zgYwvshcHxlvOUTRaFoozJSmHfQPim6_x-JUFl4XEBATeKC-IGNWwO2lsw4EoQExWIX44XN66uYhtY14Mb03UxJRmJOgaIwfWZ4BvFho2PhdF1swAylhIyMlrTv9RoLadzU0rLRT8', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2189, N'sgfpVO8fkQ6l47-S2iLOeow4_A0CJAvZIS__Aye_xLOt4ZB8fH96s28xp8ZQaIojwmklJY_aBZFPnbuUlbymBW2zqeqPiEG0pzGtuOfkQsdzxvXThMur-b8wBjXqn3moLGiRWh3gU2h2ix9_UMIXsawP-ZUmHoU-yIRz68PgtUxfDmWRWzh2Sp7wba8xcnfnCfRS0Lz5tglYPenVzjNFSKG0k8czmZtUTRJdSgjh5qDNc6nLSmdP8Z6IJwpCqwRV', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2190, N'EiwLDECW8AyfEmEugFZGmiI6vyOLHZyowh7ykX_g7hFqDio2mp4TZEPL00HBNXHQSmpPSVP1GH7AG-B4uouuCYasiOcsNbkyjROuASFvk8AUMrDSysh5rjAeOHSOMvGqJzmNjfb3dJPHnCX0rVgKfRuNTdySoomTx96U8MnFYiemX4txFy_k5d2TGAZsxXB5ZtxOCTJLsUBTxRxdJHaXsHmKxzsKvfYqaOUT3bM5hJPulPsNWWroYqKlDW4BGj0W', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2191, N'TmbBBxa_xOJZi2fD9EIqlWF_UGpmJbshQd4QSDUSgGfKd4MoFlUAW6XqIMl8gbpKTXOkDlPisZFyRsoVgj5d-28cYRDH64haENJLxq8xNadF4ea6f7DDv0618oaO5jRaksczdljZj0on9PBEdnfPch8LPhmFTK2YnoNpxzM9QGPDJ4nvHqiICMeCGAlFKX5pKgTiXLIkts_JCJak482VwtbFn2Lh7_bXt6IX8WemWrxGxiBkmJrb3XzD2fQukjRE', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2192, N'2zmf-9JYQvpeN3flu95BPyjuielSVi30OrVswxA6G7SwV-JeBhbuEVNt19xwfNuk0OFuA2UTZu0GugDkUbU0IXmRUPjOMtwnBs1lTwF2QqCOy_Yzjd4XW6i6gMhE7Twp5Xtea5uaA8QwT0KWh9u4BDxXF15XL3_IOWSS0l62MjleXlh6wLJikAhLZH8-kqRGFEwGBN09ksV2Z3xb4dghoWFlSBWobc-qUBXDDkjfgMfUhoCnbdhpjLw7ANd2xLLE', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2193, N'MPhOGkmIjnz9vIjsy1YdTiR_M_B_5Inx3EnSOH6tLlGcxAOZFqxAsjmNa6zbh73NHQ0MZ9guZ09qBmXly_wkPEPHL_bRDLVg6cnEMxf4mQNSzovGqAm_VXLZ9siehNqgamsCxmo1G9cvvzmbydAYnlQDKs-yEJoU-EPBJE2QwlSWenKrqtEJMPvwcRPNaQHLb9PCOyOYLRoclgR1x6p8cahz1Z5ZxuYF8bOgPbZY4HnmGkDahFZjTxCeaat8OQOa', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2194, N'foFfOLA6ynOVUcyRQBDEN0pGloZ3q86aDAraqA7H6DKneWFIb7OVHI-UuY5ddAn-6DyqxaBQk3-swasjjvyD1GrHHaDrxseVIv_9RTKxHWdgwh305rBRHJWIdyhliNqeqCzAAzHbESjMuxOXOlBVIfkRQgT7X8BHXvM1uQPYlVmHIapVNSzQfCKsoAZevCEUiSfWeBONgVtyhg_fZ8nh9DPaOX3XDHOgSlEpfqJhgd_KsfINLFb1lfasT6wiE2au', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2195, N'4-xR5CnUTGlsuebEkzIWMiv6qYj45ATWAEIDrCBlIY2iTwrQfcywJomDI9cUT6qXNh8KaSGNwnTHKZJiibcbz2gHXok4L0yk4wxzjN1bmX7DOYMiUVcagQNWqojlcEx83rsaNrFYYE7e1jmaMFLKSG4k_VdBZbN13C1jcT6jrVyH8HdUev-qeL4_cmBBJXqf2qzUmBqshsWAFuh-oKFf0J3yqlIU1PhUw4RGR9tqJbcNCAlL3FWzcebZ7OCKGBBH', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2196, N'ns8l8Y-DYult2ttcl2hYn9EG8hxSj3BXlnk-ypvrucQQInDTc-3buZx9gyNVtvfmLKeonSL8lD6HEs4AojzhfWiWM71MmRwE60s2PqV1PHkt0Lb1mbxoyyyOxOa71E0L87x_P5-rptbHC6h7-PUA_iVyhInkv2j_kt3pQCJ_UMEiSqRzTuv1NiAsY8ThkQ7ny0v15caeTneLNj1suPZImB9walrbEGxov57dVzh_4MYSYl0Cq9wyCPz0iH__gXIJ', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2197, N'P0rohuZYUv3D3JLrSwwUUjPg-zQfVPjtnc0uzaAv8FLbLQXjBKUC50JGqJ24MS2rPSvPHetkhtPFRBHJhj8EKdrNdTIvPIiW-1Ny__3cakzB7AurAYq8knGdhXH0qzSRqZ98kjJwJ2gSpbrkCrNOOjeeqUcOX6gN0V0pMNbym6LLrDCqw-kzNUQdSK5FXT54yXjwW8cUm9nOHbtblux-q_X8lv1cCjPU-W6qVNToLgMerNdlak_15lqCZb8UvF6c', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2198, N'MjhwpwptBD3K22EnIsSdojxSbXmRu7J2HRYNRFMqR6cyL4kVx8kWfhUoQI0tnBkiTonEAImqqcrJbjcImOu1NIzaI7mtgCRIwx_GUr-PVSEXejrU_kffiHLRseJr8x0QnjE0Gm-NbakaB30RK6kjQLxSrtlOVP299YE5WqYpiVnnz12Z5HkQknkN00vSEWrginv50TM4vOvUvo9cvPAf_xnNdey2W8IXPvVRPOBVQMOTMvRXY-Vu94n8adEtmAfqfkEcDm2DaxHfELqf_6K5kJl-fFTTDIWHTccLpOTdAso', 67)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2199, N'BhDGdnf1FRfOCC8hWSNuOyDcaVHWvA8R21nmRF5wK-btS5HPxC4sZTPBAfSY5V5WtJogbe5pqRhZ1uLe913l6xhipZJcPgHZ1-I33-BxEUPjqo-U0KZOOrAi7iTdNbwAMOJF2hWE9eJdBCahkDdKwiGlfwdmQuByF9YNVR4cbodQIGfSzDtOrIj4yKiegQKkMyUdkK6UJlkUh8zO927f0U-tUOQnOwNgiO3zqP_O8cbbO8gWwJywG0pOrOXMlsIq', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2200, N'EyIJfbJA-zs4ghAmI0Jy-F4KpFa6JLOl9E3uYVS24hPt0JdacFzw1leS9loY3vkUwoL9wimWF1KyEGynrIwbqO7QE2qoLNuN5eyYrIPVJR7gzbQpmiL8lt3_T5acZgOYduKvchuCJM08vlDc7Pjyeu0f1XpfxJ6HnNI3L_R7nygejqj32ltdfyqHXCLI6UVc8Fcbe8vCvFdh2EJdMJMVuen9kVGQfWU1zsABccSffsqioqPVDldP4J36MJlUtN93', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2201, N'rtTFoKyNjmFpAcoFvNLtfutwKkH9YbUUOsKZBgDBmjE4A0D2vm8yQz3b25c58B4DGAavHCVQ1EjZTlCKQazrizG5Bvj-VbgHWY7TUPRhLTXUX0k6Pr5rXtthC52UZrZF7JNN13mflzU5OoLmR0mLLIbrYnx8XrDU2pOIhx8jXK9dwARUkWgk9qg_0aZIyDlwqTgZe6-8CiCcliWCbCyGDeStjw1gW25QbL9PFEylEidkQtLKomZ8Vp3ccI6vTpnYheiwhNhrAhr98cRUwIqDkkMnwOXVtbmeRcqsncza8lM', 66)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2202, N'UQa1MaxrlJ1PEOUarht_tO8owgSG40HracGkYvtbapQqWkgPcvPMP3uZg4C5NBvo4HMHC0wkEsax5jFYVQTVhxqhdRy7nTzIyfaW22t1pNNkQv4ADXE20luhtr8afr4vN4zTkYOsGZStyUmr6rabiAlptxXfhvzapkfFNEyEZ8NnmMgLNxUuiAPNXu88tauzQI63yH9uD1ajb53ilBifq8-rXdQAqpDe2XeFwlSVC1FQoRwYJZKqzU50MszXse7nzB9bPHu81gxczg-qCGJyF6_KvV3fg-mMAPS7e0otYXw', 67)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2203, N'sjgMbdwfHSca8g0kU9MzS8msyBJd3r5g09sLnVWVm-BZLfIofrSkEbyrFCBxBbumd8cuOWIkinmcfJbX6NCiV3enkXC8MSmXGsomOeoOGCPRLWlZr0b_Sqm1u8JD1a4Ua3NUPWWokAukKMolxS6ilsV_dYCcWoyOuifH5H1a4IHw8C_ekH0Na0wVhMO_yRuVR7XMQvp_G0kIx2mCU2JprR_baQ9Si0cNCOEkMTzSrxgIss0F2CIU0e17k3PPN5tCMO-Pz2VlDt8Y1KoOp5shY7Lt5f0V66IdLGH07Y0wbEYi8rIo5dTrpgmjDFp_yl0w', 96)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2204, N'i1JnDyW_b-dzFX_eMToPjSaF9ekqrEVcpRN7Bivmjyq8Tf5uIEnZMx3ydyMFlRI_dPR7CkEuRxsTFbiGfkf-kZGEkX3NQM-wwdUyE-N-oGpxb3mX-MwkeCQfOuyUVD1WNqO3sZl3ZmbiUCRAAoT5si3F6BtLZeI_l2cVy_qieEmrOI3SUSf742aT6fTa6a3PnKNSrYZ-qnnMMnpjDIsma4_0GWjfghGv2dmEhLXuamFP8jrL2hvLSh3BuQFV4dPJQk-CQEiO0gYM8NzjorIZbYQOTUYB-GhnPpRzBfK-ws0', 61)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2205, N'MOU9jCvUxyraeVsnWBzUCIJWh3mzFWd4uyRs-9Z_cszlOzRYBnne2PV72vHv4C-ILVPk4-k9mNcb6JIwaJJANU6PWis9_lPmRbfBuyZyAL4VCK7R1HHTo0pXrBL2itus2Rr7pHxJEdDSam9Rpdoh84rap23zrltiLyrqtPS7JnsdGzrKyEP-JOzCLn2fre57f6-x6vUo1BJmY6GdbAQdq4TtFRtwqmpLZEiIqLOixjwU8vzQyHmHMSESwW-bWBOSBBDhd4GiybczWbxMbTN57EDfowFv5yBrXdm2CADscyA', 92)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2206, N'z02-gwDJC3LP-LSMeJO9hj56gyMkeuNyaeS0cbCyLAkqplPIhLjUJur8T2Fa7oU_OTHyY7WjdncfvPJZiNDVD_Ycdvc8P-LN2sm4esA5Kx8AwfWA79pg4W6qQlGqIFvuh29o6NN5q65Y07bzV2xWuDoZ1PkWt58_I6PYXunokCMv4dn_cNUvkPhhbaRo13StizOvplW599TndJKzidJjzrb7eNhiGIhuKK0_ugZ3WkloHYA2vArcxXozdBTeADW6y6qPz-nZZ9sEk0OXGdMch3qwFhkHzo-LMWiiroMbmQg', 67)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2207, N'lzyzOiQSOmX4zkOafn-JdAavjSxOeXeTX0C_xh1CRDDGaNoONsW7zyfri8Xp1bMltbFOHNo6iFuTTzMyUt9bbNfIWilXp90Ai_H27dg7DPQ1uwZzuOAI7WbDOYnxDH_CAHTQuTM4QdhzI5GH10lKlmUMoe8eIH7Cbgx2XnrCPZek-TjQu5G0hywl5PTDuyi-O2cknJY-Kwy06DeM4KILhqBMOFjuZAaP62uMtv5TRhKcX0Ku6uGyrUwXetdjKL3qZxjLBDo0-RkTX2uV7ZNWEWqXINxwpcqlX661uf1spGg', 67)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2208, N'6wtdCbK04ANWbT1ukJIx6LmHc5FsNdxMWhVvMK9qildVqJKHO7XIHUmRwJZfvbPX_GhRbSj-DrB3_mIrLrvd8aiN0D9rbaVwCTvEmfm3A6ob3ihXXZYAuFjI4xmpi2AGOfkv_x5_4r49KiKn1tWuIKr_94AkDyRqwhUxSJ5eS04A0FS4wjIdqtklXvNfwvd1bDP1xD3Uy8-AAZczfQe5HAA8vV0dpVrvUz2WNrK0u-O4qioUtoEq5aP8bhODHjm2ao4j5oPxf_LqfOIyhdyVaV8t5vpW_IU58cs7dcBgwbA', 67)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2209, N'ANFZeV1OnLFK0Sr8nsealPzOd9ZH4jXp4KaVvZ_kEBkG25VWCRdgoqA5m5qBrbTBPKppxlfzSSiPP_MZqanl7PufVt6nYLh09Ylsja5y8mzh4sXCyEizq-GJue64dnneTWMVj9X8Fmlg3suFVv_4jFGiXnf4ChSr324jTznHZFxN2GDSH112sw8qx9qH_0cNZiDm1yw16wenn_uw9RCK8a42zIJNByA9P_AE-xzDRGmFXT3QoxBkB3J0G9ArOnjTPkTcJ1ZT5cFirQq8IzVZbfOZnds5HbAxgYxlvOKdHwU', 67)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2210, N'1zRvvMP65RXk9zfS7-q0w79tA6_SRYl0q2GMPurwILn2PZ7voN0IwYI6_nE-y0K0hqGmKsJ270rVp_QWs82jn4jg_WSnZqrlQFXJYlBrkeGvF7Z6oq7_ZXVYIXcVc7ZLAeEKRrbAbY_mNyNLj3c9sfWfEeZ-gBCzsJEahGr0otLHjqMoq_hzwXa6F7Gj-OPjWOFILB123tmu4SQwrnIQ2aTXETs8dAmiAYCSapQBnpKs6TtL4OcBYGXr-aNPxFcdZRtMmZJgWeyf9dsXNL8twlme3dR7W2JTISU6CI3ZaVA', 67)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2211, N'Hb6Z1ymlzB_8yNFZbiFr_7zcMMyyNKk3u_ILP_bSuWfKlEBFyiPd16vt6ErhtTuEPHzjlPV5ckfbiuWQDw8SPte_Vg4AAYYtqLqOrJhTWmh5utjc1NrjWLEQEawWjmjrmj_-xZJe2w6Vmm9RPt3mxrxdK-d7veuXaD4x13fbkaDsJMwuybt3FHtLj3-EkJz1H1kGP3u5NrNZAct0vIe8A7WBfqBz3c_EPJ-UCDTRoWwuQIpf3z5HZjr7gojTRrjbADmGEg9r8uSLseeoVKkPeKzCRPrBDeeYTdE_rZRDXHU', 67)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2212, N'vFn0FvRjKrZmLSOa5YFbnWh5PWoEmYQAZzCbaKzJBsmw-e0bl93KiFnP1HnJNgzXLmTgCG4x0LjcX6z9C0A5f0_uesLcYGGzcUglCKxzj8KKx7fXvoZpVof79rpo62o4_LjpYAzStpXrQJrcXlrj_62OxiH9yCSYgg8lWLQVALyXTq-VrudNwPIKmyydoYyTX0KzKKNhk95EUni535scXYrqeYz0EKK_oTpEomQgPsOqwKfZyEpK-3PyHrhw9k2Z8yNhYaioWComKtNLnnj0FbzbzdYFA562cvaAeO44VJs', 67)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2213, N'd1rf6192jZLs67LBWxBHEZetXMlbcbkmWfsy34ikQQXgfqFLNjAWde6pCvT4hqUjBcuVNX5eFho7FXHDZoSUL1XPBCPmDp8ZFNiJQbZJ9ny9VrHa217_cZpn3Mwc4vwG-2uM_vm62vtBoRG-QMESLWbgrf3vDjLSkvqf0CIr7vJE5UO4BH8w2urvsMYyg0XihZlAm5PG_TEwglUwb9z4X9QOM_488i1UBt9oG3T_A7nl6pZvdmTPIOO0GeHKN2vLpOZ7HTmfIYvlwPVKz7CBWtHhrl8boLopyfkuLSSqfBU', 67)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2214, N'4nZvTE0xzSKlAClRiuY0oL9mNf-171uK_GfaWzhvPzWK7yTpjTyVyIaRgzTaVWZfrsGR1GENLBcwNVEhKJMGU5O9vGL1kEhj0LHfF85HRsdCtGFzn_h7mmLaO0WKZk6dVj2g6Ra2R1VYQn0lldrDIWNfCOo0gnEb6DUUH9bdAVMPxq5uauycNnqoqgPX8HTKceP__NLVJWIQ1KI9yKjQ55Phh73q2mtBE9e6A2lONPkcKiIbFgvf3JPQDjCc1BG5b5CAtj69KWlg1CLQo4NIIqaUQ2il52WpxpwlyHiBJog', 67)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2215, N'VuNsdvblqB7rK41CIna5EGLbEUU_-b_SKQKAGHPlFnj5QBG29oNCzKCXsqsAtRfYCnNI985qvm1IjWnCwMAVhoOOroBt1ziUbqF7AQlQqOF3ekz0Wj6DRhhVu1RNY3tf2N0CGqOdcDFAcJav4zMRBa_DnkTym317U6UASM6Z0mUn4rkJchH6GiJLDN79TF8M2XmFjK2HTMmrdeD5Ish9ROhi69ofeZdsZf-pft0U6vyT2C3zzwTxPoClsfoKDXY47VOtY0U_3ZrMtJQ09N35pzYwTT2TBlnbOmTG1Pd72K8', 67)
GO
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2216, N'y1qeHj4jmXIm5rfTBiGjSnfAey5zt0DZjnH3G_jTKfA9rnOkArYvMvnX9Vmh2a24FXeIynYCvfuZl-anuTRkqFhpv3Bqqq2qlXoQCDrT1tf8fG1ZkXS7lc6VUW-iCtZe7YJM_FPXLGluyLsYZCu2xXq03N1Oo3bjXERvmiUH1po0CiUCCFPS1X3DVrq6W0_uN1s5Wb1ajXoBg0htv6UD57grMzgM07668rpIT6fiJdgLflpHdocnIuBUrWiReK_e', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2217, N'_yxczrGQLyOSdg8paMF7BPw3Y7Rg8NTMf9h172ZhZVZoGnivjD7yxhJQSTZsrxSZStMkOtiAZlb0xtcDszqAn7ksOdCzKoXkWbGp2-C36VozRvL9qCoMAO-TMFT7kZhYmUsiGwE4c_UhYpZkTlUKWTEuEdMcg-oGK0RTuwuJaDgRv8gGs-LTdj3o-YuehhxJS2TypCcmQXCvplAuzHYuU0PSsY_WTLuT7jB3hcWwztm8629mXU0Cz8lW3m3p2ZUI', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2218, N'C5XFQuUfSpSUdQiCQ26IfdorOGFNXGb2ribcUeERFFhcbBtLrCYzcRmpbXXSW-EpdBds9tp2TdTJ8vjpsDKGM-yewA4RFpwF_zciTEiGKVmVgruxFUEjRW-QOntJZ6CFOmAuFxjY33tx6ud2kxfG3RoNp-pVI-FSxdt6ebPK9nFW7nRUVEoPsxRtLycrLVXbTYLJmzniEUR-GsJEmMRUa1NfLoIV_uBUwI-2Huy-DjlyGj5SK_5GQf5nJSQNn3ut', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2219, N'TVBJw4IX0VkiId3XvDN98dvf8a_qpqiqEEcWZDvjFkfOc87NI5S4kR_2LwjS5rEHInN-6elpf71lKY3l3DwynXI-7uVinFmZaMs0afj5z-QDDMM4mBxfMhPU3fBTA9zBwkSsmq6ZRNWdrxIVLN4g8JLrJi4PRaCdg77BXFhLPKMqHmCVYczoHvDxIbJM7h88PHukHgRxJcUnZMEWe3ys7gzaNZ4CFdTj1SsxDHDFrALztz65l6K9XlkTB9ZhzwEc', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2222, N'DzjFKb11RGsD_buYPnvycLWFpPDM6bVjgDZcNT4i_1GVHFszkSThSpp7t34tpDIecWqxCrSLrKH2IcecSh9mLpJQBVc42CSo2M1LSvqxceEcRCrYBBCj-dtDedmtauorC_ZGLXvyfq54As0iiwGaEFzQzK9P3bxNwyu9C05tC4NbDtmA910YmwAII1H4lXYf3SYW9x0QDTbCQN9MK9PClqW2tHCCXtjiKdc-98q1oUsQQFcYT2lIJLWKtCNLnT9G', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2223, N'yQU3Q6HZaHkrVwOXMLUFjyPKmgnMvd7xqldHrAMhPn6qfrOsSp8of_tNVgJwHnD2sHd1BaWDJ08CeTQmeyTFzR0BO7ZRuFORXeh5zjA5gI2LLZPl2YxwXa106jqZeWjvBGZV84DCXwgGoKrTXUMWbNTPpRuu0Ay0U6Nyt3yE5Q1RbTBoQvz0BSmVcEDCa3yjDP1SpMC9nUR69Sl6zCMvBNHd30l0baIBgI3rsPLd5djM-SkqIBarLTeC3K4PBptE8HOA3VzUr9UTh8CK705BIltcK5Y8REOrwzpktnaK_Eg', 94)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2224, N'z4x2xdgnn_Zr1S-TMpXXmLKk6SwJg8h_dH8elyAstGMAdoGl3sZjTPbMELCCNuZpSdTpz0zVE2qyQDt95WdGq45O4oCDvbrl4JfIZWtREOlc4bnRv81lOACXb6pUpGJh3E6tI6oqSTUZ00434ZdD4CRvT6csU48NWKV8aqjlvGPmoIvRIbma-Cx6npBe7bcaLlEOMIsVGj4qIHPf86mawDPDK2EnxBRrrJjW5MKYNLuTUkHjT4cY7rI8U8ytd-Pmkf11TWw3wkQaQDu-0fGHMTYX-TpOKmYDz_ApycrxEi8', 94)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2225, N'50wLvoU9Ub-D3h_FPog5KBDUKYJlXUL5wmwSLC1CW98qImEIMfGfnFBFWjsjMVrVIL0vS--YSm9VlgkPRsdonp1_FyNC-zvP96ZJPUp_VU72iAndcNXWdzz_Z8GDCu4lEYe86ufVgsiYSChH59T9UjEFvyLD3cHoQwC6J1EAXZEyPwkHtFEnpyUlErOahP9klpiVlRKfegkvkLN6pw8hmQ81J6kSeRwnxfLJhzOJGIKc7Q_1iPXmIZyk0iTwxIi6', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2226, N'K9aaJ9ytTTFMaQ4rZeVwAXelXClsC7Jg75sJRzYXvl-ikU60jtAH9nD8Y0zLWxR8y_aYtvFq3H8ViUMcRKz_2Aottr8FodWZKMfV61w6WAur7yndk4Y-CCFTjlNcOBLZeHBGiz40QvClFiV701q4wjGmyL7OQ7CmuNJSt10KvSpiriGYhaVxQJuJlunYxpkeV0Qd45r6QU9ceqcckKkERPh8FqKJatBPwS42vyzhMy22O-LbbTwYCGhNyUfMgTPC', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2227, N'VN5OEcxDS8G25yuYkgXbuUfzRbKyHm1hBJaUR6rJhIGr1QFxVTUQvvvqQgH4ZLdNiVInrwK8vVFhR9tomdxFVikbxbA1FUcOtdSuvT4UVWHHFY5oZrNv0ahwTFJN-sBMOPOuQN0FQB0nbYiBQiTWApARIkDjp5IJIhEjh5Y4JRRuDawYRrCIBmSiX8Zk4YO98OU7DYQAWC_z2DmnLwXpAc-MXplnFWBYyILA6K3V4Px_E3QHBZMwlvdSiQDTMXsZ', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2228, N'4-quz-A3NsYYla-KqmFiEFkvj_JSHVWv-dk2e8F65VWTP1JxByiKodSmQerefTov4sj2Nq5zV79FxGC5J_3rTbP8gkgpRnUow0bd4aomLJYi8iAG2AQvpMWqNubmgnWyIDSi0MIvjMVXOAXtygA_vOWCB_CQQeU0DmT65ETTE5D4AUt_3CB-_Kk0gcEOcxA9JY1puIa8rqKtcdaYsVlqupL4jsxPBS57SwZEzTvMNTzhq-iIY2rBtupKWehErQUw', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2230, N'HPdMQlYaynM0WmuHf53mXtQQK2_uPYGXlMgffBvnNTNA7MTsogSG4546yO2LZT3QwLgvQWAiz0SqJhN89c2IrXuKEdQhP5RHVbxu56LuaZqPLGp2pHPOpFlnx3WxEb7PLcuOTkzCNkq_21nxd9xZrMEIq5IEsL6u0p61HHjbtwVW-fmX9wqHvbwjIwO4Wc71H6dsgo1uvmWmRvwF6d5A1rBh1WRGEbKehaLv_ZfvF67Iv7WH0ibqfeKFV6LBvuPV', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2231, N'Yj7IiBLunFva2N7Sn2-10r0GdFBi_cTuF4Ky1SYtG5svEy7vcHYvgN3CNZQo-5cutMDPgtR6idlDHQ8yWt4y4zO8Gucs2s7fe1i2DL1ZOd-696YhfNz1JzQfNhH0ag9HIX1_0g-bYnsFZJXzUMnxgbYIpn1LzXGmvW85XBXc-zOObEl9skNRMCpO4rJgnrgvbGAtmUigcTvXbzyGU8WJ6Mrcx8CxBEhLx07LiM4sJUI0Zpuh9EkcwP0yEp0Puubh', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2232, N'yNhAvJbloTpDLj3oanJXmMz_j669kT8tIi2frSg_4TKpKSIP25wsw3nrw2WUOsDCQkFlYDXywxfoKJJjT3uwj-BTjaECbM_JAGwe0KbU2VtmuXv3IJeJ2_jOTud6UV351ezslqc5NnunP7-p8F32_2RWJWMcXuJ_R-nU4OLHPksP1ccmYkXRer96y6oEh_y52aNv7TKrhb6heb_rmhyQl69-GOe0XyVlGFI-8dKoRNfpGgU01rOPzowgGqaidILRlwj1AGtZ8bW3NDcR6bcSW_Q70vhxv_emT2D8kE67sU8', 94)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2234, N'G1z1bzmhRRmfoHUSDlaOQD6uO-9qgmaKq1y43O8Amzfw_vZFHxurDLamG_CezQSQt0C7ZZdyJE418APbJNjo-SBegT_rV44seNjUmKtgg_ddR41zroYToFdz5ebRGYAH0U-5cEUxlDN13zhslCthL7PtgkdXqOs2HL-wU5horZhDrKVZCF8t-auAaqu3btWLeQieheSB3fIWem2_JAtSVfT2dzXjm9kPTCkx3foX16WFIsXfRiS7TyzdQ7Amq9ze78Z2fu97n8Y6xheM2Zb3jhMnUMaD4_D6LqJnAjZ6xDc', 94)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2235, N'prKcFVfT9TAybb3q--atBD1PKOmTYWM1okkQV_ZSu6GGbUmgc2_qETG9ljeX0GhZUQOpHyragRcqqZotBYMkhGW7otzGUfAa1A39PKjL6SKqreNsAwi-1qyZzYiux6wfShx1zAROa8hBg4wtMAYQ4Nfubb40U1DV69rkORK7wwUs9nc4y2VrRIoE1pCa_Cz1BCoxq5U9phXkK-CRAn4Sltyrbs8epxTZ8DFbxlhjinOH8FzEcqN1j7vVaRtqqGDs-YlV9zTBYX0CCYMJP689Sv_R6bZfVq8BrD1ksRrIk7g', 94)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2237, N'Zy-91pfGC88UaMtFxrFJgXQNCw1gZNrW9BQIUsbWMYEnCp-jh5vNztEIA5fMZedCoCKwDA2qvevpwGpipi-q_nu6cQ2QhRboW6gyUXAD01069aZg7izXYuhJ9htybOpeZEFiFtG8NYsy7zG2He92WNDNzxy_RlIzwv4rLpTnar7ChmVMVB3nDcoNetGrFSATsINFUeKbJB_EZ9QEiBWgGFBjW-YlghTNZ4rYcUyVowmcncj7hiJUn-Cuj0g9sHDe', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2238, N'x14ImEGyT58yx0F_OV8lVAvCcS6DkhXdtly_C8-ZylBGxDDmJjTDHBo3cYzVHEJgsKhao3t1qYmoy44O9vwvm8LXWuV0F4C1TfN89c-oZ-WpcPsg88blbl0Vax6oNu5-WvD6_edRmkKjLhfPcGlAewrkMcMoocICXUkRotMeKj2Yc2YUSakV8Kjy4EkWnvPeGpJSPJNRE-caY0E604bu0-LVlm0NX-PDMvxANSFIYS-rAj55J-fcB9VfcKMwmSIF', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2239, N'SxlluQkz-DyMXUIcUfNbUxOOPrwiEtkDY8XKNyAvOuXRqSYgY3h_hIL4Vj5DFYsfEK-K6mx1zNSpvhi11Mt8x-MpLmaG9pO8oj7Kclr-MQ97dwcOx7o_krEGunmzGHLGKwWTNZXgzBAWYB2Sw6h9ATdhyRvtqkdePgd9aAyiy6szJajszNk_yqhuSlsQp4t5jFeR9_FWxF7aBALtSLWEotN2qalYz0OKrH9UTPt3BH-tBYdGZ1WyQ4qSYeOClI4W', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2240, N'0Bka_06EsGzB-e684m4ubexMGnkBU7dlb_hCZCpPqhsFBW-jPMN47DDGFDrhvZwiYfqK1CKMw9c-_zTE95rA0TE42mF1yMxUVUlTtCK0miAmV1ouUjtNzGSNHjQ2pak9hx8Gw-fLmIikkyJ7ZwKu-Jtsi_7BMmysonLaIqib0UV8opKwO8ztcOUO5pYZO7ttkWiTIb3v1NsLLSq7yiLulfF8qGm7ghR3TEGHbTGtNneSsHqEMkk5zAIANFIxebeV', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2241, N'NIRi97GHKPcpMNM0nq2zr3Uhx6o-VjsHeFYD-8lUuwyC_elpEeIpQZNWyH6DqoMAWMTE1xk0zOaONb4HsSLgZSi-aMZklzybcFMj0hpYu7nihcrTWJMgimBy4TvNAbJvF8wvcJRmuOx0huurq61JPW4b7Sc2YMPz_8i8SgZLlJNPTC2vnZm_HGjfWHnkmkKqViz0avIKwekj5MZ6ffkfxeJjY8ZDci5F1wEUmOH1Ed8t3qyeoJ0UWK-3GSXDg6dR', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2242, N'z1jT3Uz93PMCzmfKXqMqQKFT-ANy-46BPO39ugjjqa1sAzIwNCqCtrFWoaWR77LDAy5tesZgjVND3XHCR9dcnlrGDHp_2nlTXUBWcLBnF-jyDqUCO7mwGFOrF3Qnb3i-QkWURs5bFJ7t3lbBJeJY5eGpFYRRqgEFnvTxbFusDpYnkBcv7SRihiNyFAuYtNEqE8oTF-kipYzAVkUASBxDSH5SW-pWnSpIxoJzihFd6n53Ze0bRdSeX3yuORZIhVtd', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2243, N'cupOK2Nuf5h3qwWVuqpPlYhm720vpurd1pVf97h2JJHtdLgVm9ldmpZOtLfOUoexOZ1p3k7FZgZp3J8KvAS9lrWwsCTfCCoQUspM6kUdyYzZ4ouIPy29Ckfeqi_hgE4Y_YIa5dzma-EDIf3B7CHnT758J6w7mt5yHKTkaWX-uxJ_4TrziOkB0UL9HhKKVeXUXPmy0QtKuYOhZrEuD3I6_pS4OwyfpZe_1fAG3V863fTyH8z9rEETT5fsMdaU2DLu', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2244, N'd0AZuSerEoT52FPDB4VhRXxKIn6eAv4FpLrsR8h6X4vLlEdGk56SJCcjYLUQFsUAO3M0FquxXrADBzHnb784QFMD_Yq84QaHMwyQ2NzkJj-PPV1AU3mucInE_B2PN5UOK3WN3t4Cy1JcCOzeUuQUQkhJOj4qOjwt1-ALtMO5OC4zW1C5Yv82z06Kp0u9KHCsl9enQKhiYl4WRZ708gYpqMnCd43su8dNJr6ai-msGP2zvypD0GCIdC3vl7WhxoI6', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2245, N'B2RleLXX83yGBw1HIRJz2-n_d6fBybfiDmL34rDFsaxD_4eNKiEh7whf0W0A55yrC2fwr_uhV2pJd9OX_eG7tCMFKVHsqceYP2uAwisnaJuoqI_Ecy8HABRP8bqIWGRWp7A_woiVzlcPkLbbQ_obXl-fiLzJvZF_5vgiiXjjG-TnX1OisM8tINXMejGdGxnBRlTFI6FQXaNpSOdqfNGvY4KyouG62NngKs1kHfelZMAiYxXPJ57HgY5bK5_Qo-9u', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2246, N'ZVgIHHetgcYjJwdGN_1Zb18LonuXxWzzbU93AkPzjemaaztMQWRpyOw0Obq_j4EkjHXfnJU8Lyz8QoSheZg2rNcdmZAyzGAusKVB9f3Vp87mtYgfnblr5AickV_fd8yLYjAefaaumg2cR1GHYfrsPJen-vkrwB8b2iKNIifOVYnhudOeoFNXLnfDWhxkaKqYO-mAnofJm6SGS9ILt_UyTMj9GAlKAcyc6q6WMljcIdjggXgYukP89E8yxrnHmJ_z', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2247, N'dpyPj41DszxFp5_eifUHM5UF0UgFDICPNRPBtenwcRtUIPmAjgBBoQcXCfsqBRowQwgdQVYAslgfu_IEjbv-UeZZPkE2zWEp3BOKO6PYNGDrWzSVZStp7IwlAjG6J4dVTzz7A5Msv1wzPUM8JBBrda7-4_iMuxFu_fQCsWzw7AFxmpsl50WRkWOGMxPM_kkCggyAcO7NPvJZ1Ju_EA4esVYTmGbXTfU5KDx0Hd7bLR-S4AIPIpCf6JhaxtUolAMn', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2248, N'2nveNa11wu2gnscHkEqgehsz-mK4fssEQf3ydrPjnoyYZj799xoqb6HDjGrPbBD5O-In6X8sPtGpKl2bu1RoujZJqFqSfwHwUxgR1TLCRZYqI-Bf426lQ4VuFijsDUEbyzrNUtup2YGM4v49upGBE3NtMKa_HG2lwsHkr-pXRq-GYKN-mXrWusERfr3kCmhQJwO_n2_LyP4KyEYiTCfRgydReQ0DoL_E2waPpgE8dJy0oxrDL_U4zlcYxPYTO9qI', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2249, N'TyrNv4KercP03C8sHXMPnNQ0e1rN1AGkpA6ysMjWv8pIxLjdLKF0LWsSBs2npQV6zK2l-4zWLZDiWXI9cHcyzV2nOTWZIQ2eTSebU8ofR5HLH56a_lDQ00Nd5AP74XYTrFroZEHfj7h-0c3-BxQVoglnnu9ncM5hgkiuttNR5sP5Hr4dTciD-u15poExQrig49DvFRAD0Hjm4E-hsiPszFjfQctVlyRIq2OEcGHJuk1TaUPNMFuRauRVdkkFSdYg', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2250, N'iaGw2ME0VExvNG8F0NMbK0znH_q6yCuNehhYKQ7LRYx3HsmD-jfCv1xkI8sLoU0q2HzrRjofIeeBviQQdxMF_rxnNKZPrx_McJXgSSJPDJJLhA_BHvEGEq9yTXe_Mjx-1yqCwYkrPuw2oeLWPMUt4QZ2NbgflYNvz6gaOjfXd9ExPN8_gfz1YCNeQ_WNa3gbkh_Ls38u36XXouPx9ZmAY39PmDlv6svP-ciNh4bVeXiemaIoAwvuscrQ_xJj934T', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2251, N'fki-sFlrp-C_KhZpgCuRjf__RppUanm22JoZE7S0SEfJgDTcETK7J7ZuklbZm0C2iOnFUlL0T-OiG5SzfVZTxRwVHIdCfcQcsRgb7AswT-pu21cy6cqNvsnPWZGHVDEzbofdMAKLDmsYFPp9hwGmZmxcSn3fllfRB_MJQk0hH34Bwr3Sy15LgAp5wzXIFJKmzBczrqE60tbyHX5pm3lZmoMlT0p-2Hkw68LYRAVCrmmAAJ6lRyFXNX8NCGgnj0EL', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2252, N'YQSu0DbzvVvSXGdtDsadRRh31TkO05vaXQAa1YAGd1s-tjGqDJF45Bh0RZ6oz4OAEFEhw_yDNeKTfNmFJS0EcOx1NSIzujt2MrQ92xMyCYzLsHLLMJsB11kAAap6cJ-nElP1ioeego5V1UBxRlGyw_IOKEEYuHZV95r2SbP7er7v84fkJHFfvm85GsizR1yQjx4Lym-yErZxivOsjcbxtNKidJOPdI8JhVstJiuVFCGEwqL-f08Mno-VIdJ2E2lW', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2253, N'0L4zWa3sTIeKyVwyW4VtLfmgrhGdQsNlgZGxTiMvgK5tCorLrQ8B9-LihcED9qU12vV8O1gEqwuFrPTCXWfxfWEGAV12n7wHDE-RfpTBcqFlOht4Tjckvhbm78W0XyT18fBUHuhqozM0R30qHJ4N4IfEICttyn4b0i8kB09j0xKsXFTJADalymqV0IBVt8sxBjYMZmH-g9TtBeVep9Dlzlu6tFXMuBkgDIh9Za_IK6scg7vTCV0Eb6cXd5P9C6He', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2255, N'o9Re1FEvnUpRImkb25GsMNGqea26f-0hWgTqf6JHAamtyGWm5MYkONvfqe4o-3t-3xyQmszsTRVloWWQQ3gUVMa_OOx5KqyOrK0ExhH-yyOgR01mGZqlx-qkZjVlL_P_-CmXO8BqE7pYBGmeBXrZpErpEYNS2-ZBwdBj8PRyZDdFA9Jy6RgtlEGYoIc9APaXxq_CYWLiZUWZ2V6KgN8qpTd08-LOBL3AIRiRXyqRaXFTsi2DUdJiSD7QBUg6Asl8PPGSwCEFvomPpQDiHUypxzbCnzvjIsGPUutP7Ufl28o', 67)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2256, N'ggCFr_0fj3WMkuuV4yq7W3BZ43v0ay156y9NqKrEOLnEYaP-kg3iD7ioY4iUAUPobgCCfI_Dp4BAB4bPMPgDkyYgl2AOestcTycSM7dIRcqLwTzuxlEzIgIT7Fm1UVh5RRIJXCZ1OqhZ69etwFGJUcOIm8OB_aRcMpw7vSZk8bLb7IJrvf7owFePaiG0Ghf_ar0eZP2vHsGF2hk2vTSzAEPeZkG7k__PukfbPDQpdLi9gPcKXfguiagVIBBNfvqB_1mb4Vf1WC4s0DqNuAxEmfV2SGUW3E_ibhZa0RQjiY4', 67)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2257, N'-UcGqc8aepdfxB7c852xH8ZJ0DrukqV9Ue2h2KragBWQtGs2PeVPVtyp-8fi0dSwNNxwK_Vv8_jDTeen2YzT8ZO2L49KNIgw-cVwrA5BA9pE8hpBGjbQPHDGZBQ2OacAL-UUKA7YHXPce79vwFVzhneC76Pw0YGKbyrkaf5pW0FK7FN06wdhS5xUkejWPpdFf7jG83ayx3nWbrYv1O_Kn2URKMaQ-CCe173oMSnoDpL6PwlKchfrnR_VqcDQotXh', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2258, N'0n6OZMCNDG0o7SSmz-vPioYLut8GkWSLTIHvqdkLVp4fXpC3x_NghscRudIGZl8lQP3qqLZzuy0IfEyrXQfPC1t9lbUY4uTgWA69PQBTGVhdnttlKGqvKL8SMs6VklracxLBAE2AsppL1BZlHx8uv0Puh36meM89r5FMkuvnxKjnjDgBUq2HeB_J7SjhiMJAU0lzYl5sLLfezzdg0hUbRFNimGHBRX2n807imf7uwLUpGvjyIv2iokCpus7VTM5b', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2259, N'udrU7TbtPdp-5q3vMbwdwiZWXfHot285oDySWe3gwLEyspOWciECoWT2GUyY4L0iBQC_IPGZ6Tz8c2S9Sz_hAIyoRXuco7T0fxIL2w26LTUfQ_stwPD8pd3MnNDBjqvpwmNeC7GaY38JlKxdhVgmWlt8ZEAdJi9stWErgXYESUhgEaLslqVyx6DxhSIY8AIe5-NvVNBtCFnA-ppO13MBoJqwI3B1WY7BkE-2m9-OOdjAxvcwWGNadftT3N7ZtHEy', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2260, N'0Pen-_y7OWMCpGYMndDfcVvXoO6sQIkkVaQJN5WzJc6vU-LSCPTi5VsoewPjU7OcKE5UE5-51Oc0r0-KGnPXK_oO8Apneqr7CsyFtn0Kd83W4_o3OgJY4nRZagdJ0zqPMY5XKjlkIU8WuXDQJQBbl_Su2WdfAisHQwgULSgEOAzo6F_d88g7WU1DWgkZpj2zxubWQ84TF08_YWCes4si2dTYgEIq1YcTetyA4CIFvXABMJHP4GBtnY3koICrefRv', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2261, N'NLcVTjFF48N9LutkO1Fg21G1NGIuSIOnGPaZymmVZNR3S1MFF5jhL1KXnG8uReANGiPYPzAhl52fq3v0SHCLsRt3J4pgDGqMjoQLwdekZdNQBGWCdOgDtVUeJlWHPPHofYkHzpYP1zgac6KHcnRugN80yVBSb0aoRlJJ4PBOIPmA30zp9rs1f52_8Gxg1wiGzIWIdjpckO5FtsdPVaTSR1HneOgKWs06Cc0uuEj5_YiNJVr7XXoNecP5tDlkCC0C', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2262, N'Rxivt6paZEboD8cA06YbOK6wrmJ2aykBlVPXJgi2DUZHqghdY7KV47rmZUztUATwt9NrmPkz_tJbOe2wBQSS5KmfxxojYLmgVfNRBnq2JMZpPRiOZzObPe5JaaJ2QNkKJf_NS17F5wPB3GOZQGauYlzu7ym2L7veLy0ODFg3jKmPw9zQoLdTxl2aKQDxrxdTWp04f9RvuEI2_MbEen-RF6pRUcrm4Xm6l9c7twIcvuHzVoj5KLbTkFmsARXfOii7', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2263, N'tJPi3Wt6D403R2co99glckkBWTChk_9B7P3y4n0A8ZhRkgA0MK5UpR8pAk89TI7d0-Z8nHuNTmD-ReY9FtPHrspYqW-LOREt6mHaV_LCWgBJMcMA0Fti27dpxQx56gDxvrJ0uCHusAywsmcjZzERz4q8fj0drVah8scjOgaxIccDEYAizq0cYPg-l6mUG5Q3LekIe4z9mlKwWKNL0LHGvqEpGAD9CedVUwku33KjdrulQW1vJBsO44_ZV-BHDlv4', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2264, N'ZNaWQZSSgX_8VDhtei3rEcG9XhHmD9WicM65K7YOytC_fQs8wUNilTKsBNoGshgrOH7QWp-0nISGyux8silxI1a-ihVKdC9V5CqWgOToMu0MInGZbxdWyU0LQDOeEizczEas1oYIoU54irZBrKPLmuH06qSTBxQFsla9ehwsVPHBs056o2SkdmQFC_FRmZOpZfuS2WB27b2iy7JEJR8buTUmzJE12iVMtvoH35NQnFJ-3rEaL8JB-Bmp6CKaHu3E', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2265, N'Tk2oBxgKu7XykZUTne2q0VogWL7J-cRjhwOefBQEkcdAdH16gbXZC_HTEMb6UXi4KAjbZwBmoXib1r_t248DxiDjnB3BWScFbOaNfQ7XfDlACeQLcCqNZo0K_-byTYSDOAqsVcuJbHCtr7TJw-9M_HIvsI9w4MC6mYfHtPghlKIS5_upH-BBU-yHHytN6j18P5IMOe87sK9-0C2vzgeitAPmQ-MWkmoXmI86XrJOa8v51KchSzCkQEg2kGRKuEib', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2266, N'W-f6-sQEPRWChNiAVmyiitkp995pxqzJToaPS88TyJ7rn48uSN2YPbHhI1RkHvUjFSoIZpkBFgEB6OGG3-Dr5Ux4gCUtu-tUBm6XKTAqhnbXr26eJqcgkVvr5tDWxmraN_a2_IYy9tDqYTgZcO9RI7hkw24WuwPy8lGgC00z8pTt5wNBf0Bh27ya2EeVy8FaS3aRwcfuO_10ab-aYYrgkEVdMf4xlGNQVtIjE-5OaVz6VBGkyc-DDngutgLRR-x7', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2267, N'8uwaC2OmsNfKSsCNWo80cf4ChuMuFfrcFCeIIuOui5RY33bGrIfIiZEmo5-G25DHC2C-r4nFrJvJpBu9_QXZ2RuQHiCk9eVFMwD-HQ9OCb2XKiOk3CW3mtc7ZkL8Gh-0E4C56_s9pGBtwLDiOPF0D6SEGRM3czTYEpxouH_iKfOc5hWRPH3_6ZrXu1fK0_jxOgiGx1cwTl8RsAixbYGRUAlY5OeZYB7TxkwVqk_R_k-bJ-dSs1bgB-f9KTA1hiaR', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2268, N'gsrz7H6btIcoAWZwmJVcj1DHL35a8OjLCWVPvAOJ2IRrVKtKaGWHsm3aDhbutdDkpKtzguj5xufKvfGg19wGVm8N-Ih1sqK7NOy540HMEQ1SGJneZUka8tCntHgSoS8yJEOn4JePz-sJgxS8Zpck2RHhMKjTW8jhV4ZIV2fN1ffKcLLWZe0STZTOEhVc2R1KW8pL-ut9JF-kX1IuK-SceB9_uIxmMz3ZQNY5tczOrn1p0fVwFhPfkjSARNSptc1u', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2269, N'zIXaTQ-N68X-wrHqCd3IA0x2aKP5G6q_1oqv22Kij9tAoFQjbKsWf25R3FNKRKcyjJ2lCBLC7kReTK2IxARLzK5fLAcnDuWF2Vw4tAH64OqZvWH037PsnQZG11YQPWMLeR6Wy1X9nIYsNOUYLDvwWExO85yAUi7H-ZLoOPAJOLYRaM2UM0MrxbwrECUYPSSRSdy7LRgfQpxoVMwmhSUf630eXqSYgOxz7U0kv8byxk9cLy4XyzHND9mY-oj2rLn1', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2270, N'QprHrTlK3NjzZhSaVeHVtF_t4pQw3NkUjIMJ8n5lJZAQbSYa7s6Cea9tXkM9Wq4qS03zXSbD6y7Ya0wF4uRUZcirSz7SGF-snNZPyr0ev6Dagb2tmUqALna888BrvI147-GNP3_lSAe89FUo6cfspQXvdS2ipVHVjV59jeapO4--s-WN-7XTIpqeWqKH_3vSC6uvr2skt0qnGc7cpN8ugoPtG1HHa7HuDoTK_alo6i8ufiOUjMGXwiLN8__1chwI', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2271, N'vf_57-Z4Lv3LzD6HDk_OeiPP1m_qqTBpq3u122ZHuVf-xG1ZB8SRwMMpD40FrKU2uKF0cE_P3WMzMGQnSywabj-vX9ncAQGDPa2m0iXWcA-76gr20gXmnezKJRqctG5Iqt9zzFy9JY3OrOBLzeJwVVpWQw2H07Vrn8LVL8_uB7j987ecaj4e8fFii6TddJnBqBk08fO_okPuajStfoXYdu5FIEfta6EPfHIJ2k_g-Q1IFfJ5k1hVbsKQFFsXcefS', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2272, N'py1LupbvtEosl442Q62bI8HxwTAkLyoqTPuFLaNBtweI1CNGRAh9P-_0Rz2Qq3SsAdLbnZ1zlScgl5PExFqGwSbuApz9OfeihHMOzWt2MZ6CFvcKfA3wzlRLkhGab3peWgd7dhpr8JXztPn-uTsL_OBLGgnVwEhuh29lmTe2mJNvviaLE2_VQaRQooy5VBhx9d8LXpQXx8xFun2604isAtAaMJX8XsMSNChM2LkqJbK7eVWnSn_dYpW1KVqQrYZs', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2273, N'bUcUZOGjx5bBhr_bw64-qTZg7eP5ofSMGy0GK0_LsZCdH7eHwVKQQoJ_x3J4LlqaGNs3hOA5Ik61yno78d9r1MkpUNgWMjNWErft2P5qZbdQB2P1F32CC5k8m0FtHqvB26P3x1pwtsiFyVnvUnLmmvbHZbIHpeTv-mwqemlW_-e1ffg1hGs9RdA_PdhS7lhNHxqy1WXP0TcureiR8wF9t1uPINXa9P1kSranuAlmcfjeUGSRdqGRYbk1cfBCHQQz', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2274, N'zfr4H7QfPVzSR38hmLTkIqHUPRil7eIxRVyCvdSx94GvcfysVRFZ2YBhNXUhIK-lpzWLf8nObkcWoSzr9plOIPED_SoLpAh9AIrUz7S5sYbcSCSMxxkiDR_iQOQERjQTyENxEBiMm3KHvhiDkv4QMkCUnR4Y0jBHTQWzVnn2XeYeDoeZSMIlgmw4i3DPRTKe3pJ5jmpdcZZ5EfgPk-53cyiq19CMxZmR6mokobwhCNL5FnakCbS5l-16A6-1mIh8', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2275, N'tLGCUqIpontsXc7UhHGddzLsruGvyU1XpbJhW7SjsIYrk46BNOZBjuebs2_AuByfskhq298A_6SZG8hPUcg6bQMu-clKFPo5R9OFPGwEaXEitPXbRKXDUYUyMqVVpFczbg8mQyVYyqZmjPxlyG-bgqJiADGOIVq336iHadjzGRBGI4YAtvsSZATVY8yU8AUj3ITDy7A6CUpR4F-5SQNhd3zot-vXttYaj5Hj523H34goCJp_R1uxd4brmd-7lo0X', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2276, N'nDycOISnprzNgL3bJTJLfR0-yv0Nenu8cOlt7LZjDL7ZzGeGaGF9-_pryAfOOxT2KfcFN7O8BVqHh7YKo6Tniu8HvoroiHqpDcbvgoRLcZZrUZIgGQa0Gi9vVpCmz0Exmp9rmC93IrA9uD4Fudi0DPin-ihGTdUsLLrM46WMcAEEZ76avrotrd1sWEbeC0wOkBRJOlS4Uz2QAXPxOiHSAIwgVurpkQWDLsRwF6e6pKcadSolN19-HFUS_ZOCMSfC', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2277, N'sdCQn0fwGf0_B-5KH34vd3i-XslaC7uiVekLWw4xcphtXObACm4zJOiURMhNZ3NXI89jB6WODeiwxkgjPavi_ssdYyBDC_jQNPG2-YJG8V4KdPRg5QhuEn-vbLYhnnyU8NERq66gIms2e7l1ElVXsiLYYHeZfnkp-1kqo4Vw_6CBOFF949F9PISbyHwZs5AZVIHimnef7OME06C-peqn9gR0U_qZPSFaeqcR8OSVDSa-FlnhRp2l-6x8giPd4QVa', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2278, N'-j2MlqSpCVok4R4pfkmdQFfu8XlITK_TSRQQRZF4OfL4d_r85mlszU4QdBnKpHVwNVPoB6b_G0AwX5IEiKuyEjwH0_hGP7nUQL_kTNE4I6H0CWZqaBsIfDL9E4HpGNXS8y6I8Sq44Zo0OwdgrKVbD6-PpFQMfr3XRZ1A_TJfT12QfuhuwFf4l4n5-vVyUaINsLcPKDEi_xJfa9JNnRb1tXnuVjtR6VglVL0p8Gu05b5nLHvDT4aN-y8tG6aT9M69', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2279, N'gS9zjqEtcqcfp0jCgMQPnTA2xZGdR8hIYB-xO1qMexwwR191DFg6oeOK9vufTzEkSJH0Zbdiia3v9GsfENmnWTO1LtmfGpH8nVjF4kgkFXrX-92QzHCK-yeGayYD_8nXLW3VQVqdWREMVijIyGfS-QlF-nRuuGuLlg0hTiBa8JwqIzTq8AlrVs00cMAjifjbv_a2aP4ilNohJ4FAFmhQrREs3nTwTQHOYf93PmQeZV7dBdwoR9w6yQhLo9uephi_', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2280, N'MaHnCB4-OK8N3rS65ik0jr89nNTfTK1q3Xi8KNGsl-T1wxnqJrl3-B7Kk7grq1zQFDde7ZCswT3zkG0rkghiwQ6iDWDyevstqa7lMa_Xx44YR2gD-qz2_MtZ1WzNvWAIFIvEtmZ5cc4QQMWIX8vTjk7qfffM_BeyTiodVpDC8QhiCy3XC-Cv8tccprS9A_DuhsvCtRGUMtfPxzrNkhjmE88egqpT7goYsu18rAdlbpHSwOX2U57i0-MO_A4jNXzR', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2281, N'6JaX2Zn4eSVtYaa2PDlroedym232ojNke4HU_mTbLO8T_DwSPL4etO9c6ehHTCE9uBJfFaCGaqbo8qFG-CCinSuxZ_LGD7O595GKCVu9ymCkMKDjQV8sE7ObZ12wfXHWid2HFbjlCyAWjaajIcRqi9I1c21FcrTBqlLAoc_2gzUq-LXqUiyqQJl02Ts2yepOLuKkXd1rZJqO6tEZOo_SaEq1mCfqKwS0poK0Xp1_CJ9s58cWO7fMWcuN4uwV7J4M', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2282, N'kqZxGZ8RvdFTU0lcdQ0WGenaeypctO-m0MbloMYDZPZzBZrx7jv7Pa9MVfgByYMXd7hcA0pQNfz-uhnrZ-2Cowf9R_3FSPicRS0n6DqNzd-eYl0K-1EXuYLcjcI3vHlFc5UbOK-EhXQGB3us9CO_jN9fkm4rmRS715ZFVQpsAQNUwdF72ErWIPPQWfKfOBSUVX4ayL-9A3lTQ71QhTJHvNeFHyJrESYeLuSmQepY_3or5kkrSqNNu-G-nF-iOlAJ', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2283, N'IOZCaKX1EKbpnZSXZAiINWy3wXGJMt21E8hDIAXFF5OwVWi-eT96kl3InDNXdxFxQ-5nXK8DPNgMkgANCHFGA53o04nBCe3Rm9SMUI3YqMmiLlkkpVFJNhc6yWJApapUPlHzYpTM5zbucm5wmQpXbjuT9ttVz4WibxdSID6uPpVP6DGJ9t6hdHeEGaujqokjUvy-YYCvKdGm0zG-N2AfyH4MviMjmcgcs4PlT0mO7jIdpkcJ6fRtlg25JOpzp1qA', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2284, N'WwmmXMtXuVZYXoLvfpSIjOWrMTPJx4t_6ExuMVW8oYMwAr2pCe1eUsgAICh6HJaN-jNTrV8II7KmmgcEqrCsaynGpR-6ugYmGVYmZmXaxEbrmwuHhq0r518V8AJbN8HWzs7beSRH69tjK_Yd9O35stJl3nQzAJBo42MWNUVaTCzDQ2eBX5LRAZMCCGHB3tukxAES60qNsjEbo7R3fCz8VUr7EownPzyNFo2-HH15u9rKQK4vQ0NMmdJ-QP8oNSGo91KizAeowJwjJGxmh0njwEsR_HvJBHoZIEk6klf5ukk', 67)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2286, N'RWhjVgAEW8Liq4KINDgeVlJyveyiEmeu9-dOLkJ3yMuwdo99fmADtHrXFWDiPnh4BG3OsroW4NvNw0QpqRsYDqxfgs2LRd0uNHvjz3VghRDJjvQwgAyWFkE8G2eVtdQetGwCVUGnUXDdBArHOXiYVvX6W_aNjxF9qriHbYlhxVk84lNhFCj4amEpde5XHPWqX3nhzOTLddFaJzdY2b5nJNuw8bihk2-dBs4HEDAip76eUVfvdDM7rlppPckMnwiD', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2287, N'9psJd5ENeC8JIvkxxjo1VR5kfPJhRXkfFq-zTVHe8xGxFABWLnQNJeMdfhF6MBUftFd9aR7qLrwkWtcoeW43OwroPk3nSn8FQ0wCvqMEfjXJJfgiqqqmoGMXp8-Q1CYJWaZPjT8xqS6ugOPezaiUqP6bRHkWQfWvGcAlhqGqz6BH8trmAPGK-6wgi8Jz1dInB_ooMFxoOZuvUjdRvGwQorAl0KsljPfqBRXaeMp7TnqmPMObbBbwSo-pg-B8HXOo', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2289, N'iBcSvFalHPn4GQbD8hkmHaOMhM00SLx-wirDcTclDm7qatEaSLRB8bBdfU05MUStT7xCZhmcyNEL6a0OuscALEafZ43SvN4bJh6uIV9RpLpI6uO9Gm8NqXilIrux_ZHwqn8pBAyKtETvafym0NimfemHjrab3otTsbf5AG7ui4UJ048t6EG5NskeYHFz-CjYZHfv_GdtSfEzvg3498QB2bqnO2otcmK-P-0MmuGTOXBSVv1P1R3yIuoY5BgibAdIZsiX105mzB5lA8vNhaGocNJ3QP1ecs0ScIAfpSREzIg', 67)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2290, N'x8mOnV7I3gF1v1rctHi0i6UFYkqzWZrCt7b0-5GJdf4K41D354svT_thyZIVh50c2DYMCpx-nrQDb6ESa8hP7wk6TMPiMizkdsoKKJrq2ywyR_PuAFwGr-BzCTVbvNE7gjpGcE520mFAXhZVxRFakJ7NG7aLIMv0khwAosrL-Ax02l0H-1-dvXIB24b2qi5WKgvAdpilldl6lpgib1AusVTREfbtEnlQXPCqI--tmphaKUNI5Qmr2u87J5OyhVFt-8UbkOqB3dO9reFtsyxGeArMvUaGn__YQUOUYc0HhoI', 67)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2291, N'b5LQgQ_mB1CFjItmJDxx68_mTqeu5xtcoBVg61mFxl-QhWKir1fNiDxnwW-pWU54WiL4f5VWl2oTF-mL5A4R7waKk-5VwJDTfzwHmJ9N4nLGTRjgVIXBPLCjQ2xAmjaG-xn-VLHmAUSokYuIKuBlPy74NNGeoy7ynGt3OlBSw2OJ9E7bjUmvpwcN720txDJzvdUveqL8KpyJ_A0u-918VvdqlZBNML9mX9HtEvP9v3GbuvSNYRlNQiJy6OQ7CzBrSHZFu1KaGRiXOLQK5jcbFwEjj5f86Dv-E7saM6M5yz0', 67)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2293, N'DKjChFZWtGEO__DGgDCnZBlg-jxzuBVwnl2O56pDUH6Xi5aL7dyuvcKfsI9lsOhJvCeZBJXTJ4oFN4dkXpVWalv9Wg97Y0bgyBNruWvF2Ha8XTzlO4uTXqH5hWYXX4BDOZC0eBMAdZWCDeB9_h6KB9maAp3Vb1xB3yx9fYe5hcr5Le-RYM-r75XMtnzirBn9JqwGlvTPi0orer4Qaa20Ex1qEPkb_LayROnKZhT-nVySHsawoob87oUphsvUxk03kcgrIRwsevbaaXsyWoCDlvZyKMy4G8gzPWF8weyNGAc', 67)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2295, N'4iil_9yIr70XEvzWCwFIWcNwibq-2N0XjZahHpemEM8JbzdUEic5i38Jb-rEYgHaJN1PuDrh-5xp0WNZiEn0y0sM3cdcTa2NPqAolBYRTy8XnGtgvWI9r0_3jEl-XTo38p2hCZZV_PMXrEYbW-h1seAGAIql7Y3xeDYa3IK5a4FzLkzzMCg8S9PylhC5E_oNngNUYb_53uyhLqKaQKAMvI06L7AxpDrqqKs4bNV3wuna32GTnNTS0ZTX_sYOfqJxxH_7-8CRN01JFENQnV4NaT2R1IXZ2h9Lh32pxX-z7XY', 67)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2296, N'gAGBDMBeWeukf0VcFNBS9blTIQ4vzdrUd0p0FSByYNzfZ8vJ24Lt6yf_7xODs4YcuSo8mvh6oOLz9hqYF5IUbBYego_K4ZQRUpPoxA-Rib1DJCJdli-YQfqlgHmJRaq5uBAFMxq0z7i6LT33EleCc21HaMC-blWfI7bC9Fb6D9l-j6bsqdVh2n4UUaE8zJFoD0UQYgyOXLdfGJsJbPGdYPouiN46C1KLdSBSb5Ut449NVsk7beFbSx-kzlCOkaRQ5LTJjYT_RbpHabjTMzSsqO2hk7kUs6WQqPslRLXCH8o', 67)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2297, N'bsyMueVDdcHsFu2ZXP0aD3D6kc-Z1KbqpU9VHeBNtpKFJYF4s1wVONN6f6D0GaR3_UM8Owt42UI1w5uiQLLmA6Z-JZ2timY5vbDtRvU2gyU4-R8itE8bgnSQh_zVbrnxic2NHUrrzdCBM1x2Miyk20_nGbwOnYSkEOeQaItPvtg3pCGMbHIps7UyAB_2AU-XfLAkTJvBcqUN7RyZYWkUxSdjt_eHSDuhSovYGxineBIOywN-Suj4wa76Nut92ozF', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2298, N'B_NRE9hGq8LNQhNRGu0veP34rhKXQzIuKGBFfYjq9Q1H-IHC56ghd4_CI6T2tGqSbgOJ8O0kvBRqupvTDbXAbe34EpKo4nyNV7WmFqrBNRpUqZWKALF3rcSAIchKzEwzBgXxNxrjtwpoUpabyPWQodQqIRR2am3lkQm_EEtNhIPvXVAtcz0Va9ExVCCMJnaOpgAMpEgFM0d_w0Ica8qq1IjPRNPFKvfhXRdgMDyXCfzeb_9DKHk2aa0h3rUlRhaZAiU_QQktXUCk057PnP6HfkQaPt6cLvgRCylbWFnfVdc', 67)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2299, N'b92JefokMVwqTgJ_JjCgKHhsowRtVJrxyVVKFbkSGSUUr51bj24vNGNgGf9Ue6ATuNrkPg5ylsNPSx7_4jH1_mgIrMQQES8n954DMT9zegCLFmNclzNF_mfyQiH7XizZrA53itYujYkordLKWbZUZ7q-gqfe2Ptc0j12fZotBsTDAA5ktvTWwTdYlmyoSyyesxCuV2z_q1sK6u5lqm6M_GYjs_EWojiisz1tzbH-lWA7mi5L5YZNpzHaKoFQoeUJxbpVuWmhQYsFrZM7G3OcFymQBOjdMpP-LHwvYx3cRV0', 67)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2300, N'G-6bN0mONxxKkzOw93IArijPhKd8vkp1Wl7F9RVEuRN7cpL3b665KzyxnaMfdVFsAQm3DJ8R2oP_REfH1k32MgIlcMMeUoyANBmgK2P-gF51tCeYzEWCg-J6Q4PrHp8U3d1Zkfq3UbCpwQM8J6BhGMRbSd3ZaYd2U-_muAqjxqacbkLVtT4-_XXpFx5xAU2Qv56sN0ENGmBcHHWnPF3IkMnpT42wfpvtCoTTjok2pnl34Ll3Lye3rOuJbdXozcrn', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2301, N'4ztQ6SUqFJh8v-Ux5Vbwud2dmhf-HdRHvb6FkNAVQF7cIFlAyuMzNNg02uSj51qzOsGVbODtEQb1vmvHfRtNQY6iLEUwIZCVdYWVOJODzvI20ZHsUjEP2GboIsQm9ts1LPCWhJON6Pwt9YkxnmozhKvHyVPNXFm9nw2hR-4tBOgkDAQpbElDj-D7qiAB7Dh6hXqbfuVYlSlDRYFrx3NDUMBenw8FtAj7_vFuFaLrfwwwscgzbfSvMXDAAjYiZaX6', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2302, N'qLNmHp7fjQajSxL6aiuv2tivcaRqHq5ToWWeAfXQuVQ8S7YjxSnJWnQj8-XJP162heXX4WptoRzQUNmiNzjW6clsLUYgPnIR7mbOxp7KeBTAsoWuLO8DFnW6rj5G9WDdanco_L4-aU0k4-9MIbD0xDGCX-hl12QZ5y6J9VNQwkf1_RTSpExf-ypWcj5yfhtnLFjPQhZpGzODR4EKsZHwg9yds_mIf7MxK746K58jFczMAFzPzFjPnbCrpiobH5FN', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2303, N'flAIa49k0BaPi0p-gMbNJfD-G56xueCnmUSuaGRG89BQCY_zNbvrDfcaz6xgHL_T0202RG1VcZ6o_LuZ-j6n7PBjzNN-BsJsp2-FcVF8zRBs2CtGcJvBS621UyLWTtYZP7wx9uwG79IcJc1ZbamPiiPjFcX6Jofmhh_rU-ECMmH0VQ6zT3223XhaZVss6zNS4-siNws6mfQfXVj-J_EHFO5BdqmcR5GIa7Ezl3dlL8104glQM5k9n-cgjyo8QrNB', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2304, N'IHcaZEBGqKrNuKbSUH6zL6YQNrGi3mA14PiUlqyR8oQPBjtAnTFTdSF2LVrgHsb9unBb7YUShbFZKj4UqG6Y_zKfZ5SJ570ieH8PoypLhb1xw7Ms7kfaDP3SGvlxPiMGdfHis18KfwWMhQKk400OYbON0sEDXDqpYVJHogIv5lrpH7UEt04QBk_uefzPtl_ZRXXxtO5SCnC0z5KpO67QwUpSgSb3D97-KsvS5ZIVP_Ew71opX3tpirH0t5-da-XN', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2305, N'2mPCftXlDou-iOPMmSC44EvW_bisBFsleTW4J6T0lr9lbEeMJjprqQlZwCOLpFaE5hBjVL_fC8sF8RGBc0EHpngu5zVJdFTVoX7W7yR5PXn7QA0dK8p2WklsODHDcoL20QvlKbPmQlHTrROQtETeC4yhWkjr0ZGPxv-yKwWos02mczweKVV0o4fP2BWkvjciY2WviNXcFybKr_zFfQOCWF18jlOUQyQs3LMmMGakar9A47tW_50JAlt_t0mB0PvX', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2306, N'igY1hnTDQ-GL8Mr_RLU9U30Mmq_B56yb5A9ygVAHFsWhc0M4HGebgH_800pfYa3tyOYNpj0252_w0zIIYyJNzSilwJx3yYcWEMbyd93qZfQvUL4xTCtESHVn1ZrvXfc10lBsBqDgdM16Ft7Ck2O3B4w-pnHb_jKWgSeXywQlDuaxf1g7jhHwoz5gWFRdmHHBx2bVNjFoMY8D-RlkFWRRCgnZY1HmIul25cVFyPChSLvxDUiepVlfyeGRC927B8v0', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2307, N'CQK__gWj3ShUcsEw0yuEcBUkcO57MfyFGIgYcQ3XP91NIBYLr7rOOkmBJqE5vodb4Z47fJLNJm-W4IahEBOiap0ESBaEIwcivtBaDWQuZQahSQf8fqYh3Yv9T6EbxUIifJ4Q0VzQzsWesiP0rs4YQXzhgPcfX3tw80sge8Uf7U_kP1sL1mLsQF2XNs-GKipbtNMtfGS0f5zoNIaJhcs19Lra43Q1r89GUZdK0PdAfemM4t2WkM4yFUu0WrfLTdl5', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2308, N'D90Lq1A7twtC-kUupHvdzx0EVfMfunoLKn4FAhuRsDvsIqKnKL0SMrWjMlcFA9alFakGtNR-wrTo98x4Jjg629j6LIGLEIh7WFFgpOsaiVvQ3odWW_hZPjiSLuARNvTBihnBtGgCG9qDUzKcGC1-h87Tmhig8CXWwtE8NoHO-HCxZDk8fyj0YDpPLLDZohmZLVdCFZjHgpeYr5mDy5jYaXRtPhvEOOEGNKgmZ8PaywSF0wMUf7h5-64VTPFl0qI_', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2309, N'bFmf6lOdNHDnuheLqc1vz-uCEyPtkwhZhslf5da9-wu4ec7LhG3dhbn9-Zmj5-Jly9q8l4aR9rcoAzL-wg9bl-5cY0BpAvOO-08VVtUPgI-SRDuNJZUWqjJsgjJliJpU7Zaf0GRnj8zMIjV8CbkGob4mjUmlxOngxJFtb7sTjuuLJjF8U8rFSj5LaOyAmPdUamBInL37FTWrcOg2KwRJ6cJnPongoeUe6JGo5BYSZlmS8GJAsMQ8BXhC81C9vAhL', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2310, N'aSWvQqfTBvlkQJHPkJ8ohccdcGVgnnEV34E1Nn-VzIJgvJs8olP4QEap4sM55OYNIN-hcD8frQ0UNAqEQolKHBXZ6nquhjgmFx6UdfpDLWj0Mfq53pBoPDsbktbKFT57tma7kYmt8PXmhiLdFiesHt-iDPgdim17HNg7N4Ad9t4hZIr92kDMaMcCdv8PNBn-7d30B6BlIP1Mr3-bYh1t59i6Yc_Q7Z5a2ov0yfxkbXXJi8zCUl5X_TIrFhZTqwIj', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2311, N'YFrgFk6wXJez16pk8JamAtJ_BuORKfa--06n__HJDWBLi_sFxwMArat5DcL_BQDZjiroW1j0vnY4T6IZnmer6upYPcyj22sZJ7Xqjo4r7Qz1Ig5-C8klSffirWNNcLHEb4XPZXkLj7W8uyCu-KAz5b_hnYw-ny6Hd-6nfumk7evN1pgSxWWEI-bjmkBFXlu57fPf6QFKy8Jy8xzEjzeqqc7-nynHNpUJ6AX1BVdW0i5Gzx1MzhmctNtiHN6zeFb1', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2312, N'xXVl-uw97vevEqUeibkqXKtOULYmRwq--Qwhy6RLhYoz6Pw2oWTOz2ISLAFx6QImbGduP7vYaD2fbJ0IpeyugUaThzQnwZGt1IBCRkOcvmL17MagrJZy3Uky1Musrtx2ye1v8E_PilsoYr7OtgavVfwMtA0CPrYNzBvNZQDxraXHqcwJAKCOIlOqOswf0KtFO0OX_lAbNmO3S9IxdJQWFOsqhDyXiLWUjAFU6NutciPDCmhXeRzA7YuiX1sehhuq', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2313, N'miPB4hfmwwtlCA0XBLdBb54SguRhQGq1wYk-h-jhDCI0NU7_LJBQ4hK2xyYmYVkwP5tXIqNs4NbntOimLSS_UA8CmJVFpd6KttuU_G5HIDNeRkSlWbVVX_x7FHmx8NFmTfklqu3SUbKerDH7yqJvq21-V6YuIISVrAYlBU7CqpBzbQHhBCw1Aky0-oLBik1GT7jgdOwPTKkO5rZgQnmHQAmj2hGEGQHK8u8BsfokgbEweCWkIh6oSV-QQznajxOV', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2314, N'3uwDEiBL1KVOJ6vvRvXhV_1uUOS73GeTc2FKogub0_vcnLlXF6-2BUlG28Xb-raTzx1B3iFHZypFNdUXoq1dAfUTYyFJeQpriK3e2SdQf6FRkh121vkfAjpl_W2UEEKol3mIHD9k02O6QrexenwpTNqLL2I8U81Tv82243mVCnk9katWL5gapc3Z3PHxKHmIKXXCBKQFmx4zOgQ1yhVwb8J196_zEhb1w-376PQgZrumzC3A2cZC5UZxbbR7qOPa', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2315, N'u2jQ_kUp735syIIia658M3Es0FXVGcMc2xFb0sQA__2rB4bcS1DGS37C9HElWuLHNPHVrcNzPf6TELGBss_X1I4ubrP8-KLJOJDcoT_yUdNYXyf1pb_vKaAWhNfn7WbQogpNueNz7gamI7ovDrh6S1OzYKLwE4balhSO3eXz319M8iGZjOuNrCreQ8TNfvpT_q9xCHJpOngNpAbr9SgSGy3A8D6RWc_g4hWSRLK2_b4fyr2FFh962jntjhTW6AOb', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2316, N'aHLjFJfcWSaZbh5AXDAt_DwZHRaO_zjsVHuvlG9MCDkcPamydHErQg3i0wdwqyqu6fFcbFQwXINtTpbZsXJQC6OYLXfgTnOgq8FLPqI4qSRAPEaJNTHdKTMMxvJh1xvMRvJkJDs57207AF--KKmUTm317D1hNXUXFh0kE__DfreexssbuwTzVxtJfth2UQRAjQ1_3zuUeBGUymXSTTD5HQXbAvJhI3CgXGhQmHqZ84Ioc0afZbNVRVINykrFoL8O', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2317, N'KlSOUEygPzfOBqHjHQC4Pk9B7_txLi1VsLZPIxBMC79YE379aay_P03Ly3lENXxlke6uzuxKrf542pLIP8U3AipVu8TomJF93FfUcQ2z0TNTkNAMSjT2mWYD-ht0Vw-QPQUNHDOfvw5G7I8kya3nC3WMRpC7euXfQOYX1HdBqqRCXc9mJsK3dZLUzU8OcMfi-n5zoiSsPcm1IUIPo6ajDHT_r4fiDG0mMQCb5FYZuoiPQVDwF1xc6FOOVG_qXdh5', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2318, N'vXo9YzqASsQ4giAWo3dIeKr7odfIpWZnl2gB9z6Iq_rtG5Zga5mSDzGOXx8TAfgbRwy1tyI4R6Hvv08lJkwRM5h8Iv89CHSnx5ptDvi_RaSuN9uo5WGNrkyLPGYAi9cx50rR_jQGvFJFeQYnB3FJL4MBBGtRbe_dsO1eGaLIvjm7G7aaNfovjZf2QyiBnxb92Ka8uc-WkLptfJrruP8Zpvx9sNnHppg4rjXphR6DDgcZX6wpgVvFG6TTIEvLl7gf', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2319, N'tOyz5n8I4gA5XAmK8UVzeWVSmoE2xscGBM-6soy-kWKQnxnklVKoJQuB4isYJggbLH8Q3YCiXzlbuL2uP_mh0AgupabCwCNJxU9aecdhlQtyB5Y5CaQx3ScjPVv41RkCdc-XW8rUdL1xRgDCSo4Xad_E5FO0KmgMNpB3Sh-BqBVCT7J2wfOKb6QvIbjfjpiw-V2FH7JrzTIsbPnUt7iuOjRtE0ozf0N2r8dCHOLet_eN1-bfK4T0AgTS2y14LUWG', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2320, N'8nYoYMoXqF_I8OTJI5fOfIu8rWVmui069lh4HeWIuq6V0AfftMjprSg_3tTL56Cg83y0oD680I_8YmXLttPijcCcYkg0hc2C9qxVEh3tZNIAiDWyUdt58rR4iogF3lkYlMISu9fZSyb3tKsZ0KB4_TY_sTOBiJ34WtwLLF_DYfNaTZxTPuIYIbCkh8AYOg7iOQF4nMvXB6fM467vtDrJ9DmiroGhK-JWXhZ8TL161WvPl7aRTR31-zkD4X-srWCl', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2321, N'_JbZgrE_oyOLSQ9MZ5GhjHXR14LvLGrvvAUFNdkjDyV2KXbpMY35QI5-sPxCYKNNL11DxrxI4MvwO2dhny1OrXx1ESlZGvDu3dYEHnpgVYBcROl1Z6sJ74niSQ-AaXrlB2K2nizF14PX1SMWPrePwdc7TGYlKfPna0PzZiDLCP-lSEJjhjzJdO-_gEyuxIntXEt1EAko-67lFKaMu68HZQE48IsXIzb_T22e9nbaoT50Ul1Au2BzTZrxzGSDly63', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2322, N'xrxroO7iT_-AuscjYcU1xxdP_NSUwJyBPG93j8RNKugLYy6Xw-sIelR6mMk_SZV4cf-CsmGBmb1_I1pz00DpkzbJMtDJWX3V-WdhYo1RqR_jH6-YYwVSVsNkQDFEjiiFoQ8zxEZLrhmDARntrR7Gc_ViRjT-t5S2tt6h2FifsPbzZQ7EIdVVf7GR7HPijsyXj1KVqXhNhCTTlf_boim342C98t92zGm5mfoFcyjdWfu_b0HH-FMHeUhisozRhNPO', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2323, N'uytzyOSMLZiTb71FqOY-iVNLTVc3sZmweVNmoYL5_03o7nmOo2am_xZm14sxsPGF9GXIa7ipeXOcB92EF1zmu2nwaknsxpigsaDF5QW0rpI5jwwcAIwbQqL78Yb39H2XvLVMIRtTMYdF05SYpHQzabiy9g-6ovQQxnyBUvcvNzUWahRqsnqTYleffpmtIo4YgBhWp1AEMDIwi0qkYh4qqNWdKS4NQnjSMAHerFjRXHklf1RtLiu3gtzSUBSQ47RV', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2324, N'1ThgGj_UIGZrNok3_im5PXkjriznwY44nMDyX-sKpB-UHGjGSkhx1MZWctZC08u6FwlDcYTq5aMzj4Ugtj-pY5-NwZKHOah1D_kTqsJQRx2buo2dRpYEpB2BOQ-TMuansBhHBSEZY7VmPFcdVThDzqzops6a2BiwMiMPkGifsU-R1sbriff9BSHC7C-vf3_1ybmJR95uP3uZyUohOjmDvFz2SjQC5JvGn4-koIS5SB-2fiaOmf7RAbXW6H5rs2jw', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2325, N'rcI6ab7NLX5kzwXKjXN4ejevcA4mloC0syAEi_oDUsDqsh3kijhMVG2TPLD-JSSNTmVvuoW4qMzxV8Dpz6IoWGJZGaVAsrhpgP6BJmo9wr7fsUusEkeDQVyCD9n8UkRpNz9qvAS2t1EaznubB73rc65UmghoeF47sF1Av35n46ICndlQr6GyblRTLPLsBAwqX0R100NTv8Isaep9AEBcoBCLzZFLgZj1OieE8QoSuaH66wm7hEB4Ok9QoijCAm8Q', 2)
GO
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2326, N'U2ncRj05xt2RXvly7yq8BaHgHOtCxRztK0yaaWyFc2kuz2nQoNMl2doztISK9jPNfCrHS29WPLb-Mjl21CWa6lmgBLl7HxXGFvt3hBGApkKAzURr7eKfE4zacOKTJtSVUDCoz_e6V-0Ce6-6it1YlEWjoDsIXS_cEVCnqjg0jS4JqYkH-pdXEGWWsNOomoSFl3oUykqXcMH9CB_2Dx9oREgGSZlX7BtE6hAwEFUrN5CDjHh7rB8v7PvfButl1Amr', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2327, N'5UMnmpSha7xgthGI7yecZobTnhOfuXMKauanmwxRiIXSuaM6fuA0zIjAZxG-E4TOrb_gF7cUu30yytYmMEppHzwSc8CRK8ykQgcy-nC7SmZloRQV-NzeUTUfMNZP-5Mic5h9f84B8a8pIZ6x-BMZ-7lAhLlCGuAUg3d_t-ViNR2Yk2TyL7iETob-JbJLKKlynioM3FWHeqolTVM4wmslsKGDIdmuk3oCKngRSpo1_ySpUyvgaUAzObUQ3m4emD_s', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2328, N'ycSllo8V8WZxip8gltbEEOgjT4If2RzmfxqrONKXjLZdjqiDOjzONBBG1vxhIUHLavfkvD8vZcPl5eUdftzoYnicfY58lU22rpZ92P0wwi61j1Qm6uDc8AR_E5x_zXW93414lRWho7Xe_11mQhcjN8V3Od1sbojTEjGX1G2Kjm-2fvqW9I_UINi0_7hP3zQ7-BqupEEuVyMevlAkloz5OhYkcXDbx8uH003TCvuP01vcnvBbKz-cegHDDjTVUtEY', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2329, N'2LX4zR2ekHiEoReZRDHDwVRwmb17-sKf4wUVidtxOZ9aQg2prVzOEmgl-0EnqMVfym5fnR_yDHHcSDZSULZJwz8E6F93h_S1R7EVwLHm_2iXeNWAmBkzj2c5wek7UJz7lSrAtnIps0J5q4hRgC7QZw7s97z0HxR-WVZtG1JFnDfkAErchQGRTWWtVo0I4K1iv7w4l0Wbp2D_AE7mRAza7UakS1ZaDy2kURp78aBa1UCCjoyo0goFTHbzD-v_igOt', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2330, N'u6XLt7OuqOdhnpAFdZsOb300Nj0st_j0TCr308v_ypbkNCkQ5fx7QUZdrCpwqtTkAHnLo0cLpBqmpp4juGkEMfE8bFufat3qhKX36BWXY9bSK8YZh1c758NNeKbSrpvjQzc7ILafzDLy_3-Rz5ChClzHU0p-SPP5WjNcR1kta41yAgAYCSQGR8Pfi3okgdsITPLjPGQOGgqnec9Ul9ZZsV2OBujNQIlNo00T1tUDfsMGvOVTyWK-IusLNau6_pHA', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2331, N'gIYsqAV9IHz5UvHjdo7MGe3OzNdOr6BAc-MlkwlgWlk69XbJ0saD8kz2FDp9NRVfHwiukeYvNX8L9Ws6DOvYruRPysS9S9-sp219gn3RqXFTaDjheZ0Tt-qA2CPKgcFgGf6qfNKhx9aknqeKnRUatwJBs7yvLtcL90fiq3CDv-UtE1wF6aamD-xksWQZlFm75RsCP3bWv4orh8adJQ8XsocSRtKBhKUeGX_bFXsmxFEtak1p0C1vg1HNvBY-kj_Y', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2332, N't0R0_IRXsYSYkISfE16UG6CJcDJZF6wtwrA3-lFJMUSq_lIDUzPOtLCzoJFBte1iedj3PbQxrXked1v2A0hz8c8yeYVkRXr7lwtVPYSHVm--DutOmeVi9y6ZGjgh35h94UyFtwYTlb_x5MYiscC6V6Bf1joecbUOmH9BHZmipNFo5nVK-zdElBa-QCKMNG4-f5iJgRZ_Fe6S9tcmmZc3c3AOaBlpGxK3amUaxLeV6YXLp__qr37H7xrNU0wgzBqO', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2333, N'CXmMgXvRG4rSBNZeekYL6rHkIMACpSHWHpChH9J5tsVmyvBkyv6Y-EQJC6ahKLi7WiulJl6vZutpaBqhwUtwgfFVtSsCgtP0kAm4t1MN94vQvsb8-G4CWarVwWzbXgwC5gVvB7FvpvL_5KXw-LfeuwfKXK1YRKICFa5F7Hn9PwZcuGkv8wTB2LCMTTmaP7ho3CKSabiOJTDSVkC9YTdflABZQSC3_PNnWOUpEJzuMUQFFl4o8WqlFOKGPtRWMT4K', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2334, N'jQBedCEoQMoxNuQ4sNZYDJHd-1bk0u6zP2AiFR2T61sa-HgjijexGtx6Njpbfab-e0RG34mlMBSmIjkLHmR7uYeodszovJhleX5_A5_bAwM3G5wn721tCZbL40ST0Ox5IO2UxxSEMiux4YfjYs4TNhACRE-ebTDQrW0SuIsvy10tfnL8a1hnzjAxrSIsVrB_YKlP5_R5YBrKEabKB17B0Ie7z-UNbSV3pbGHnaj0an1VwB04brVsCtlG1o6MMHsE', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2335, N'DXkQp_0zY-nxF0-XfpQksrEme5nJHCv8WTE1EeVThsGlmQH9cCK2MaLTpbjHweVAiHhlYmuFsguGJa0G2KrPASTfYzM-CxR0IbcUGRoSl7Aof_BUxKfZNtfvFlqPXl7VEVEn7fQc_GQEV3lqadyhER288KWn83-Xl0qW9Eio_hnu2Q4p5ex9s3FMdehSIiPSHG_MYacl8-EIP5fvvvjF99N-fLUW46yHBvjNFBdC-hOU3HoV75cPDXOD3b5pFwDE', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2336, N'mfAMVTzB0DxJkDy2sN_pMUo8K3J-7h6lTuCZI6tXCNgC3sFBGjZtzFxw62I7yjs1lyXNpS5JlD6ijTxzK7UFpmS3HcY064ca_Y1oIrdQ6pCTzquMsW-q-EQnbXaeEyIp8lXMgO7-FXanSPPuKD8q6K3BqEBeTSWhMgEQSy04Bs2d3ZAJdmGEnuNRoPpEf-i0H9sFp-qR-ussF5Os6Ruzcb53yfmvM5LX3foM7Z8HoSRpfxWUcQjSPoEt5Uo5qgLq', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2337, N'j3wxfeOKI6EvJscNKOOT0hF21eVuuqfsXlUxogQc_FyP56Fcosm39G1hcpTkjAJv1LXfG9BcLfHwIKR2u5YixCMJg02C4ZsiQA8c-f-of9nSNattOLaky6oXd_iz0Ufje-rL4o8W1nXNCxJ6kkr4CeSk1OaR8XbjZU4SHzki0QqMzRZfKbAvdF8j26P8OOTyc_tuyFGLU7GNpbPiX4bBY3F9PDkGhm_QfZHugtaLeA353lMwcG2a13JJcXv8hBwItvWmI40iu7l0lDQmet4PUf0yQBgntMxYoSbtcfTC2vvmXMYaHZq7w6MWKAZGyPz1', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2338, N'NHzWGtLLmLLuTg0Pcmns-sS9GBL_irzfhXqyb90EOyloh9ZCKzIf1jdI5SdLcJjrqZe3geto0i91hTYtXCVS_nTPV0EKBC-v91Sb5sSGx-g1ksn5N_x34dsgGUpXo_074uo8egoiJwQqhXGRoevNzhRQqYlP6dNXRPfi9AEEXgGmTt2dYALGO2NcEXofem7ADQzYwwgrtiPb-S3RIFhDqyoDP7I23EAM1Mh_tuH5M1oWYSjf6n3ikTPnm_PwCjiQXhyZlxJz_-UePub37uwYJMNgSvcQCA7feCqNWkP7qJCYv_om34rSzRGsMs6Z_GoO', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2340, N'J3O_LJ_AuHpe4-_pnDK-HbCe7kY4l0Z-Vop4h6TGS7nzQPxKq8vTwfah464PZ_Bzrk2QVdBfS9K3c-4oQgqbMpG3ioXlfVDCBszAMD1ZJfmqr_mB3NHlkuIIrMKqv8W_dbX4MoQ9Qo2GPPkAfzdbPFLCYP1v_lC7il2y_83GOo8Hg0HHDgKiO-9fydPqW2OfBZM7Jw_PnY5BpZa2a6o2L8bi3uZITENv399V1iWpoS35aj0wfQeyUaLDPgsjFRtfLvjk0CFkfvMb64u1zZxHqLoEYzJik7lSTUqUuwO6U74SX79Bq4r7hCF7eVagcON9', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2341, N'zoxtTvcTNGobcMEcE_eXGS8kU1YPWresS28_w012paEKMWzHqsrSKiIdySRerGc8Dpg_5hh6bC4Kj4qDNtuAlAfjSHlpZe_2E3Di15QwucHivlRdHbJOicWvydcXlCvWVBqUpK01iH7xYNxQ6Y-Xe0tyHZo9Pqeo2BlDR6dmdzHlxmVo6RbsquHLm_28BDmJJUe8WxOI3HBtKCi8HlcGi7oQvKVbMoetRTngNdvrgOo8_O2GcieDLE98OF93ZLCnfUDDah9nruYzfaDclTfjroVXuqRBJXAqU39TYjJWUNtbgl0qQLRiSu9MdEEL0d7M', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2342, N'epamiFh9rV-VmNijHZr0vjECO_Jv9Eyj6LVQPFqM-WeREy1REcNdGExAvGJtDR-yJ4uBuBF31oICTHdl3X_Q4S1bUjPCIwtT9FETwxJnr5xS94XMn9azZKqh8zp4wzvJefXlbwtn87g8sDjQdcwY05tdFPcjS3bMo94xxlMX4nV0t3Qcg_kzWTOp78D_pq9F6pbjdi-CiRoB6Y1y7wSEglPDeQwDhHFUfAYxT7xNRLzJceiBaeeFCFg8Lh_fPOrfSlYojSFGtsOAoMzPaHmSMBx1_sI31P-eOmYHH5iu7g25iwTsqUKpS0C8Oj3mhOyV', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2343, N'L0h35ByI6wMehhArOh52yC8r0lO3Vj7m3gwyA9pUT8_X1H5g8EUNM9q0FSagieAexcs2bSNZSEz-xYle8YggyaBlEgZ3sNOklXONgo0CoNU3D5juZxHD-YaWiNuRZAe_P91-SuDM_ykJvy9-Nu0ebaoC48JXykssa0TQQd0uDoiHklC6gmydgAJLtWyHaFf1bgKZMRifSOf2nRE1KgnL3Qveq4uYRL9eWurjjL1B5Jw3AdFS1Yejw1PKDeuwcJKR', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2344, N'tddoBgWzs5HjDCjmoJzM436kgWs_pNH2gqER7bOsUZtMSLGuKaFUKMTXkKXSfH_BcITVg0voXZFFAzmrUaFcyPSyj5oQ0L-fKI90FgOPtQ0XhJtfcsQzfiDjhLU0Q8H9DaZ0V7Z7sfq3y_AftXnNAWJSVA5GV58eFpbjk7XW09P8x0LshMrLl00Qp74RETeP8kMSdHnPVBVOwiFBChTMzxSz4ji5V1CHKtlM-10gPZ8aYF8mJCwqxp9aDS_oRNOQ', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2345, N'Cx-p1WXTT9ITNYRKZTgXLYnVw66IScwOQHX8piPx9stw2H_vrR5DEm7BYgCGTJxV4IrptpC3Trn6Z_ZQaEdLXE-RAGMtcOWD-xWWkAKmfkDssn_AlQyfPKTObQ2JolIfuNEIo04QumshcqEl5p_PIF0-0nnvldVFO856C45uJ36eT3IQwVFqKVC9hNksDpFWlMhGFzyv-5pfboCIvtrilpqoRrATUS_dRvfbXjiLSmjf2WXTSqe5n5Bp3oSsyLO4', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2346, N'gYjymC798Aylddw3is2J7P4VyMYvl1Z8mh_UvGGO3ISVo5ZPuKGGhil7rFyIP-c8hzWOWmNxWY0Uuuk_YP_M7u6jGK0c3AVsIgTYleMMHyrHMsok0rAs9YgCPMkJhwDeRzY5W95tXFpV8qKvwGDVHEgbPBbw6IGmRGIuIURKGctq_TeNhcZSOQA4gaxZ2aCLitGj6dtoymlEbjoZH9vSvZPDFnfBSFH1W8HSkFYLUa3DHVuZb77VyPEeIDAmODSQ', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2347, N'JJBEqc3jQVmz7tArmeyBRDoZQ7Xe1F1mFNBLC-vePU65Eh4sQylFPmTKEeMGi-38p55erUZNMbc22RA5IarLn7OzXBOT3GwvCXobHaETNNWJG5hdwtUKJedjS_pY3F5_rjlm7kDHr0WSmgMavpw7r__LbSypKbUVd5D5FIq5oGPEs7acrMl49gx3ZQ71eTPdHk81vXrRHaru9-SXbgsGp20JQxUvf69uH7RDHEqCVHtt9hk5ATroQDxLvCAVSqCe-R1SZhZr1LnkSb6ditLcqSGPWEJ5csA_caAe3yXB0Sk3tQ-7MFF2U04PAK0FitUo', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2348, N'JUCdLl7EIG_c9yc3jhho8QIJMXp865Xzt7wC6v3GFgp_iO8_FuES3bgpeZPn4QUWH_QTATmamSxZGhUZBx3oXZfg9nzZXvJdN3oCmAWVa1oGN2b5UYrFBAvN972psYu03PUFtxT9iERsS5J76UFuJnTLxtzN40DoGHWmndwYBCFu6gqyuk4FJkBs4UGKNYrKE-bMsCPYPgZXlUVupy9dFOyz5kOm1Lit1h1dpRwU9i-f5_IOtWzojcp9o-0VCtLXh21SuucHvBI2hzw1fVxG-Yx-z8_VOMkWWRnkAFLdKxdjbRLlNJw_prcMWGOEVNEk', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2349, N'dscYKoON_JdLIokH6WQ6zwagcSJZ4a4_QCtasPIsvYUMEPpKUxRCenbPgQ7PDFwdIs-fBpOfD6gDM145AhL1v-17RnvvXWVrH5FnQw2KAf44ibC-KaQ7qvZiao3fAuovaps7Amh66wRuhBqqDleakwh8_G_NvkJSP3s8g3-cAOZKpbAC_LnzsMhvx19gLmk-c8gTzL1Bg_5WI2BksJG5AfjGsoEK3ml9IzhA-q2CJ8FTr1qXL8TobsIdzPh_5B2cYbfnsVlTUEbv3aSUko7ZY9bYhfTkUjahinoPSP6MT8T-toAlbhqZKbTZtJ8Q8PJr', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2350, N'RS9vDLhSTh85CHu8Kdm5Z-tde_NoaADJDpS9SDqay32H2DmRM5jqNY87689XyW4uU6aaADMK3idrVhfU9AOSoKCpxPbXRKyz8jnD2_7Fjr3hqCrShKFJT1WdpJ1ZUrKfmrvo4GOPYPDm6VeST3sR_7F0Q1QJ87V7QBAFeG2BSQDnfQebkbqtviwrZyiIgiRmANONKi5xQAGAqBOcoiAsu0YptgMKUH3S7HlIn7OuSaap6_VwlM1LxAU2x0CaizhBbWWXTz0rnZiQo8Vl7Sx3ltdGDAXiaTHPaNhm85WxFdBgCT8fFzYBfeWrSjz86lDl', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2351, N'ZEJQi7HMu_n2-AkIpb1RHs6SPna_VmUjcPpWMmL-H0S-8twr3XHGOkJzO9Fs4WXtftOWLV3LrmiEZMfBOsgpJIrqV2tEtJvCgrJmz2j9urEhbk-KHMKNJBgi2htAKJatOzdVbNxAfIaeSX7Tvj0HwcNBouQN5rzDWzBlAeU3FPZNGbaTImO2PcCn4VG6adkMArGkAb4vg6xiYytqCHVaS7p9NwqM7Fyxh6lxgiSX4OeTn-nrDxIfOq66yGuUe0Gr', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2352, N'6qwkO2RxRZRsm6n_vcxOBpASH85XsBbT2zu_jo-RoSlJw3FKJHQ2uS2el_PmpE7AGYWD-kj2G-zeGAvPs7KJpughdoWxO4taOO0lzbn3gUq2uz2rcTwMI6ffwv8XQZzjjst6qjlunvFluL-opo7Q3uWmo73VLuxdgBxz91-bSwuH0ZiTMpXws82G8ILMzp0Dr8DsKXojYKfhTYDgMUWh8tJ7pv2oH6BTncZ7FHGbg9-ZdxrxV2czj1Cdtq3xJkEr', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2353, N'CtpFPKnILrIQJr0gDMhPe4XLiXm-6jLfZiIxhvhvVZmy3NUzcyp19u6anAgUYaK8q8mvCdSTYglrYYmIOtDqfG2v16Ys1uFUBoxjJ3sLhqNFemBoxo3s8l4OmJld_yc6P0bmKrLJyUNejZmKp4jT9qLg22c0d15bTSYBGZgR-TiQocgmSWFY_r60FGQEtTFGesGtSQLE8SPknYcdKlYfH4sCXqHvHbZlJVocb8-RogfQLYauD2NxGOusSbMZRfiA', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2354, N'bRYP7Dbx6G9ejYWqbBv5lHhroKc62vDk9ER7Dqhis-LgUD4Fh47N6Bvuh4VApRJoRgDFDCslYoCZf8ogf4t6pYYsNGx9bO8uU5J2m6NIjtnaU_fndR9jfxWassi9_UGR9qzZYTNoT0ZjJRRI-pVYUdfOLct-Shy_SU7eCtWPfMUUAVFOJC_2cRn0L9RVUrcrskyl5xzUTBELAs-D7RhDyTrPoeayODNP4zXpSPEfp6hybA_UIEdhna7kFDw5Ae_H', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2355, N'3_csCjUC2K4SgGm0IINgAWo0nQg0RljmNipuTBn_zMTjCADWm4DlNZNrFlauy86TJ5mSoi6DNoj205GkwvSObOCte8jrWKhYZN2S5Rcq7pme00AFtR6krwO_NTnHowlXGvETgs7AfZJSzUhqzvddNshlalcKALb8ytbEBy3ml5HS3XXQX0bZLyCA7aYEfDnWjGF3LRMNSJPc_vLCMO0jND6lnfM0wxiFh--1fRRhpvvvEaJRiI85ossN-YKx7JMj', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2356, N'lsepGLNvcYF3Q8H9D9LW0hvl8AZw-_f4Nl93sBbfLgdDSburPTDzezd_2X4nsu1ZtrBRsGw5zTFUviuWmGbL8eajE35Y5oUd_Kx-QKjzs6vobTYILxw25kOY1zfj-6NSKuMpMHU-lqMMb2g4vsbSZKQBZ4Ah0_xViRYTbaZl7pJF94lD-ZIa6hBV0gWqM6kZrOzj8M1EtKdWaeiHVFix-o9sbpEpLjbruqeRdWKr6TlTBBVF8-4Ywhoi8LCoIGu6Lz4qzINsDwEHFWTZgWhZGGBjAYCZ06XzV85ZGjFe3CchgJibCdGUug-eh8CoMTdE', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2357, N'b9WUSIpRgE28gsYTvf-w-YD_fdb5RaZNRywUF_Aldy7BvmbmAjTDZCymMeqAWfRcECslJABmF78Ok7FcWjTeXpAY08wCvSMWq67FgIsyYsmGzb4yR8aBE3-pO2VxqmyH32UIG-Ug8bGibxCSGsnF9kL70sksR2NKOxCT0GtouixOs3rbD9XVCY88nnsPQeHqC73-Wbp2IzSDrjQkIUfMWYZvmLLu52KkHEVfBvdO2Mp4056VbaYrBibHUppQ8t50S1QTVUyml2tjIAX4cWb0GlH5Lct_HZZrlqT2TO6cGxEW3Vai0Hb7Mise4pMFLmkz', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2358, N'gUNYylsBX6j6NOijA-bHDWszCzOSrK4WmT-YyiBT7atYxKZ-lKeeSRDcfW-hGb1IYV4pc3XY9291lNgkKaJMKF3xy3e1LY_Lt4_oyALJRgse1788inGPD7PjjwUUdtwRigN6MFlx12rvyhDvG_jcibuknPY2fZ3xrNlfFT_S1ZTxfZ5AtMBRm0oMXMenJipD0cbF4R93U4XmCtBPqHGmp2yxv0EiQJOMoZleAW5iq0Kx-Q5h0j-uXWskCSg5aUsD', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2359, N'C5uOLHlnlbt5yLEcDXk44IgUtGr3f8py1UO6jKR8I9VIpxVPmnNFkSHBVWZsA3BwMnovx-82sTnObLKcX-nOyBmlKtQ2ZivF_TXeME3qtwgJQuINX9Lpcy2p-yFqZMe-PcZs2vttPI1xs_3mGCAgwu6raeQxM5d3dbF02-y0AdXuzxXsBaM3s2D04-yXOHRY80AuI8XIjikVUGWunL7bIV8uNx9sUbfIKSz2l_FHC8zPSt5rInQhqfZ-tNyBSeIK', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2360, N'AgGGO-ghDno1Isa4bd-omzOvqvmsYWesdswPYwE4lnJtCVDUrY4aOtH1x7z0fVVxHIFO07eRgPWIGFKpMXrCdVQ1ylkfJMs3g-Z8TCtd1XIdfVihOZ5SAjgHEkWSsGwruLZtescclFSmtaV1GU_ZdRuOpnKd0akqunkc14UYmwYMbJqpjfoNDkNLSJj5LB18voF3smSJhJ17uUpw1rzoSUIQgUdLm8iSdlGTQmnmmtCI69fT5cRDExoDaI46ySs1', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2361, N'3lAJHdmjsVHX2rfKhImpFFqQ8quH_ywM1BqbPCHm_9N_btVxH-9QzapXkcJQNeo3twi6z4rs0Lr1JXmfx7ouCSWxMKlLy9H0QMMdz3oxeAX5bTnWY5ByHj8tRbsvv7qNvJz1qmlixynltH6VgwwX_y5oJk8F_FccqjGoanezDOfSqUUZEfRVFcXQ9T6SwOtp4XfA8HAmIBR47mSTO6V45WcjBE8DPhrIUD3RlJtD-6bf3ETxIb8g_NCv4YXA30nf', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2362, N'BUwO4W27KU1p0BYMIhABPlYCtMNoPoWPnrnDsXIE_kvMIxbIwINUVQbCmWXJTpgKSCxpCTfSsjYEOsO2Uv3pe8ZNWXBniehgfXw3as8V1-JGusQwgPadUIvkqlMcphwhLi1EOOzaLclUqeFK__Jb08GrU_eTGjnYV8WkvvsK-bDXasjL5CSUGfMwREIlYllw1hIZPjcwhSg2Z4LCIdoxMoUPRrghPuMOxdzmr-0VNQyP5lIaaBfEhNJDazQ7aWedJrjzieRqCS_msYQVvYM4DtHFKGy-xXiuqPwLGW4OP-A', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2363, N'avLod75MWulCPRUswqz1UFRTG6lJLM6FMZ3dW1xAfV7iHT4bpvidVrZ6JT5Dq3d4UJ9T9_wYgpuo-nxZmOGT6gvsv3ZjDBmXuSNX5oxIT_4c1J8fZztDHJiJZ5osYA9CEvZMvIq1f6tKl7m8K8VC30DPlHfW1PNov-ovN0WQBVPLYtg8_uIohWcdl9Ip0e37y2nuynrz5v_dE8t61Kl4qACAQaULqmw203WxQtn9yhBLh7mLk_3Yj-p-W00tXm2W', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2364, N'HoABF-mENsRuwwaRVm7GVGUZdyMQi3zguUZaF64BEQcXeP6DUiP5jVJ2Huv9ZZLQtTQN8u4qVkZlCyMepr4r25ZurQlUxJKxavsowEBpmR2xCDpmuikIRzP65W249Sv71vCvKHdON9_Yc_SoaEoIItCtsnySH4RcvFC9qIOXBvnNm_Lt7vt6PNQJVYrATSXZXNwhsMPT2ZFuRp7dFQvYEc0VltbGsgS4lDlScGpYifX2nT2xxr1e_UZqtdb2fKUG', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2365, N'sbhxHNgkcwxbcfcObfy41y3SrW8HCIPBO0fJQs9zG6-FqixrPLJANltI_YC1JujZY3SDI9MoFeX0W14DBkmrbejsxiVZuJkMeaV2_nKPiVnmygY0paNd5W7I5kqUYtEbkK80KjNxUxoN-B7mKuWzMx5gTcrHwDLqWu--hKFU2CZB63E4xc1h0EbNuIkettxH9ZTSGPDbwAFWyP73JHYzkLDrDfcumqYbAGx-JEv8KIXz_q4IzyJKqgDkqDD6sivQx0-tdjddFJed-Lo8XV6qO6j8FUVECz4KVsv853W3AFpUn7hK1wN2QbaiK-o-NZyC', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2366, N'Pcx0I4S1V-yUA-o-1OBSRKmuCjb0G9CmI0bexS0M1bgLswSHBrir2RAcNvAeX9PRoJ2FJbl5w7hw0P6MM9SfOurVcKiWgW6NKCljWFP51KwWTrl67BqEtBrZePoLX3xJ6In4XpuCaaa04TOoRLk4Pu8-ENgLwc2R6emjQ9W_Zf1DA8OMOjB3xFovtzDxtwGjuIg68ZFdBXFHiXOcx8QHXNTktZGmrhK29jxVevAfwy9bBytHiS1oMml-GskG7R2_', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2367, N'zUBNDoU7Z9Ef8WqpGZVuVH8hUVYlD7I2vr4N85lMjZpP6Izm3jwjlX8KHtD4cfdEJ4_P0x5fly_qFCNUMtXjkv5hxEeCkEYcfWltxg3tByKDP_DnNeWOOl8YYcTYk-BelmURma0XQIQN9HV5WQP7sDQbRC3AjA8U9aHiQ0p0OhSuK3NNQqHEq4k9K-4xTqWJUVffYurgVBph6Bygl0J15hB5nKU4j1p-8czKXrQ-v51dtwYwmu1oHgy-CYL9IB17', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2368, N'EX4gMwERHdr7gafqO_ctz_fNkgUOXs3Wfe_FNPv89Oxo4x83w38KqL88fyFd2bRKVuHXaaX4fE_NYMBXQXDJ05AuYwCIGedlCnLAigu5ICpjOBdE94kEzvZAjUVdot6bRhmc_TRWE6ilKKGpymXTnwiHOCdUX9B--C9sdvW5nsTPoIEijWWvEnD3080CsllpqQpzjR0Si3r8J-2IjqFhtk10IuOtDRIezoXYYFSq9X-hJ7O-N6db3T0VSncur-FStmhvB7f9hKds-tMIS-nJVszD15CUKPRZLLU4S5pE6glr0BXIFZUZnBzLJ4b8MlUq', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2369, N'g3_i9flq9NveENmdSqVpis7ALWDGjrnupIXedQCYYBbvPMB-qoiYuL4YfYhjPl6LvekVgMg3zg4-GpfJ04q2SthjXRaleKAe_Bi3w6kLJLxoWyqvLJ2xZvIZF9RZOgzgbO0aE74L9AgfOKh9q5M0QeJ2bCsHucc-Jc_AQiamMWTYM7Be6iFCZCzDAlZmXJAiF4wZIuaknjgA4ZLPwo6w2vmdrJh4dLCSUXXZ-Y4dCgy-vBotsWmy6hF13k9KfMtY', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2370, N'H8497QAX-l_hEMJ3w3WLcOz0a_NgjErWOY_pxM_pGyivtVMbNUs16CCjJ4wgX8Crx0zGemiYg7BJWY2pae74lnOmxyCwXmQRqpKH4GFNGvmuCV457SQuBJ9mUVuoT4P91XXNgZ0xlfk_hrgj9JUl6cmFfoTjVCpSMQZxpe9gvB-g5c5S9HkmLtF5UE6_wrmGdg67vGYWDT8zfq0JzqjzTR-DCCMLS92entNLxc9E5o8woaA5h_-Bfg20_mtIt3jq', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2371, N'tUIxPGYNRs-LjVYhpbEONGI63zypvquKhJPx7HBzdEabbrYD74cSFUT5WVDjfqGBFrT9AtuN_exygXk6EAfzds9Mzig1xGPX_edJ6wtSNuxXMyBF-bhaGF3hjxRfa-ojX43HcXfVl15Wks50_A6Nhq8oL37THwUSBYNWxdADS_Si9uW_k5ZaAnLSjnH368Vh2yXQj1d3h3ze-n_kEOeHW2CugKCgYUwq6QdacMjYyHmUsDDeuQBlfiD3uNYLL4Ns', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2372, N'CzIow7YD1uP9kxJYgqE-Whv-SDnHhUN24lZcI9uG7YiTgFjVGMrxv-ExAU8x9-BV74fUIe7E2_c9kQq9StgwCkYvVASgZqpy5255_YXBz7LiFhLyzFqDlLbtwqWcZjrv7_idBuoR-sjKwzVjJhWil_i5px-OyVVw1vWL4fTI-YavyN5aiQBlwt-MsgfUFbodrMVSnS1nO0WYA53R0N1Z10JVcjIrHJQfAx_HEycH_AZp9P76j_elhU-ZuFCPZ3rL', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2373, N'nVoQuccqhLIsfCHJ34DGR-1VNTPGmLitCvYRu4chDxyn70hWs-pwACEYduSK2jcQufpuSzLS2GiunPto5Tb-yr5SY7lypRTJV1xP3mhfgjFul_ocpAjg4_RD8BSRzdMvf1WCvDNlChu_TQ7b6tHlmZ659dHrg0jyo5nv6Bt0hKc1i5T4cut1Q6ieEwwAQ8O0HwTqXnRjx1MhhFUevTHm3PEIX5t1wra8R7-q8zsCG9NTse5SsU4hILW_TAZeflj8', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2374, N'W_JSBVckMLlWBTRuFs7dxGd69Kv9R7kChY5cRDWA-kRaFUPkmIBJ5-G3SS4xdLX4xxSKjWcZ8UnAY4Pax3SZtm3xrw-UL3NniOrlieR7O-bP6wzQvepgrR0AFUYqMlAit3yGkS0uIg5EvcJH_v8uRT2D0AWSg_ART4PBdFn23hWqjxeRVZ5BCABiRoXlZ0itY8fHC5ACt9acpwN5C3gZvJiRFcvrPPPtchfWlCjaw1FR0h-Xug9yRLyHrGCIEuli', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2375, N'49JGyvRGzL9aS5lVETuTaXtwWGx2BP_ppMqXMcCBtz2Q5rApYR8HN8dFSLY892FfuAoEG_krRZFywzvrSrKntID4TBnEodpDoyM085S9w0ZixD15XdjSkZHIk21gfRQv9-KPRuBb2sKVyhEtMhSyxNx8yQ8LWlrsf66V-fdQg_IGCtg7aU_-WvBEOroEp9_qOVAfnuicpAMb0AptiiuJ05ZXpltZXB5EmbWkbrjm5UBcmF9IAOlcFDoCz-UjMH6Q9Qc5N5zxAwJ1l83agIaixJPNfj4Elmx9S--RwMoHQXXfueQEZRTCCQCRH-BsEXA-', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2376, N'bvVbFp1Oy1E4ulXFV3MFKjfppQGP33kpOd5hZbRTuB6w6zmCGGBeX1tGNO2XNHo5XphJiTd_OW3XfACVyTk4oTVW8jjD_pLBTJkZ5RBLrv1m0LCeyJmzCMwtPHBIMkKTbQtdtbw7z8Idxfi8OjFW0PE00ntsp4d9DQCF2sbBPx0TYY3c9IK8dNR6uoVSdgLXRaiiMcI1hkEZxoMTR--TE9I5bnZB63QredFgmyrl3wlir4KY1jB4umXGnTvFUU3_iiXltkxfDh6Lg-3zhdKczA_LICZnPgeQKdkxXRMymn6i5boXQiyJHv_MPHNfs6Ab', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2377, N'qYsI7BHFQjxPfkBZzOiDl2Z8DjENNNJMHeeszsxsKqSHT-XIKRYUWR-MfvbblXctLJU8_rmg5vIfAqQHOJ2ogcaQWoMd8qe3-VixHy0xnUyhLqfF-zZUJQpBXmk3sFiq0MHIveurJi0TgjDhbhC5UOe69EmFcpgUS4tZW2uAM0zzq0UJjgmI4aWTFVyrGTXmgMbr6ycdimnZuXqjcQ2Ew--4HKIQYzXAGhUVoEgGyMqQS53t_jRWkymKdEzeTThW', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2378, N'pdVCk7-oi8HP4IMaUuMGUU1rAi-LspwYRsA_Bez4HchjFh2s0o2VLvtB21iKJPjZmmR91q8T9WKDg5lQDtwSwHKLTzeIoXOsrDksr0Fd3lJeWsiAerG3Buy0wP_xzEEMjXbUlF6lMJc2UjbKDWYqfRlxrFAsq7lZEzgOrGEcK9o3iBWBdUuULY-2QYPJc_KiU9pkt7vDhNZoag35rXfoKBdnUo3HIwR26pd1Zcm5AoM-xJwaK9iDTlnOwD1orm54', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2379, N'YXVOp1jhZqHFuTtwF2cP1n5jCaxlVGbxE7fbLc39O9xYbaE38dzH0GQCGrK200rgmQtjGaR-53ogRCaeLBC_G6CPla-M610HBOIYq_tqa0eAZE5octZbBo4OtPmURt-7DDYaySaXMtIJPdoZifsneIrFo-xml4ZQv1D0MGztKOp2wkGGGGql9CWj4UvHqB_znptu30Xkej57VmPo2MoYMHYNBqIcdgiyrZGJaa_SG1D57jAywzKWCW-THA4phllxTNbijXUhbdR_bwQuJuQ7eDDk9fuQJTpqhvQXFfE1kbJkTUL0cfLFL8h80WBMqS5t', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2380, N'VlgBWfmyySOlY1DFlkViYDYtmfQ7NW1hoBo396CIliHYxVUyFJsaMdLIju9W-TTLWYyyHoTZUDLkN9x3-2WT0NttL3J2Bz8Uui5VIoP7jElw9It2GbQjJ1LUutmVWaaiM5wjU1A_Sf4UiQXRIC8JLvu95fhpyibWZJbYJvHL2GEyFBWi50bPzmnpv5BlV8a12lxBePCpl0KIkL4GsVeNLxMFOmnKPcKUWPnXIwd4zP0JtOXDpSFxhgnI0G-nK9vc-McalNrEt4AuuGt6alF5ZaJ0wXjSdP-lM-7smQEg2j5Jl6BabPrnV-PuTXT4jrTI', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2381, N'Ut_9HyuzcuooZsQ4SxKYSQ0uag6MuMojdiM-LG8Ua9J5FmOV2w4Xpst-h8_0ldjFtdMGRA-_YCCKcwJGG8nTFfCkeFT5Lb1XjXqVGkiormFCxLxIWFqaF1V4R7Kh9yR3zHmXZR1HhEgHMJlruVEN1G0LQJLWn8IsFcBrAW1N8rmj5vxKEmqZyLo6KUpglpTxgen5cmSt9_RZdplUtelThXAnLyiw-v7PQXmd5Lc8GEfAGlCNhZ6qTvm4Yi2Ap7qR8F6cXe_PkZWq5jmDRHAEbTyDPIt1LvYTOMq6UkoUFoNqh-Y5pkLhqaHXPWnDCVJg', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2382, N'yyTeGorW34wqwoixB0Wp-rDdlXAPJoSNKrs2bsPnT0zU9DUscCJRQXI92WUbvHa61Qsy-pAYcFbRY0yNeqAYk2Gk1V1ir9-6eXWINjk5up8vZT8-aJ2jKmQC-d7zWHhwMjzjwXF1xl-7p61Bm23TIRHSVx0F2mXfvCcSBdw1DK6M-HXBTV04ENGr53rlIt5MZEpdtye0zpduvPJsynJ8Yhx1AZrHBnzhRG9cm6Vl5t_hAzLzzV9TqfnvJdtDhn7ZP89frJrydJIZNFReO1pBVHDWChTJ4aFdadX8CjmZn00', 187)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2383, N'WCeNE6mhyrVmDovVygpJ_TOsH5HLpSliJq6VRflOOXq-itAgzEojxmZZyzuEE4sp1KAsNola0DMzB4xjIu_aHNimWioxCwjyf3x9ol2vS-hLa-TpI8vj4_ANI494gMshNu9IxlGEaX4jn5o6d8SZx8fFo5fyt903VvcZp_Ql7pwcOIpuv1Ykw_7SWqJ7g3Lo9RUrUU2iiywtT_7Hu1HAZV9rJ5LT94YyBiLvFM3KtOMr4o_FQsmg95WQcZyTEUWE', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2384, N'1Ads6Qv9ubqpefKtAKlmh2JRkIznAdcVERr4aWTfqaCsiQRDIySIP_lbNGmL5HiR9IEVDyXmxXaCwnCU5OLtN5FGI0Ww7M8kkkfPqTaSM043aeW5tRTxgrSfozhwGrgesakN6zM7GEjJV0Woen4C7dW2yDzZzGQ9FOcLo9knWz6MHki9EqgDab3l6AEpNMfeLG6j_OJgRlWcEKV3JPisp18ecmSaNOseE1TnJddNRV86CJySH4Mv35rHa9g4lFmJ', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2385, N'-6oFWnOA6zS3-UuFsMCQmrtDNtcoeFc3jBdMUrxPg1NVVBvM-fheJnW5Z39ZBon68P3J4MkEmHfdZLP5XvsNGnFiBxw8J6zJmEmhLT63N736Y8HtjJ_ZEVF4aNgTxlha9ZVsHbKrERR_MX5Mvh8TbUxyVEtQtEQ7Dpj1xRTiGsJCqWaXWm90q0hUY5xP-CZL1MedW5npEUKBjsieGC46WXwS8VnxgI-hc13_hrH8gXOrLdUkSyrSBZYEBE01gB1zsJb_dO-nXCZyUWNoV5Rs6fhvycuo9uwM_GXsMAQu_GPcUXo6EgfG4tiF8gzdoU2i', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2386, N'e9tAwG-nrZTyYIFIc5MOOIoA38h9Qf_LQ3A6Dr6cchRTxym2-f2U31p1AIlVIRZbkSXgf3o1scrCztE29sIgHsBYEz7fWasqti557cdFt3oSWLhRc-v6PTFaNoVvB3ASj2Sc8DFy9Tmtg4GndsefGA0S77erRQR5ZQJ2jpKoY5UaaRqLkv38ns6KCf41Wu2epga4CwrXpJHbP7qNf9CA__nbum3w_uksf3PXvDpJun2TmqtM7mY3NgBaVkhKBnzzkBrmItIBZtx2zr6XB2jwAIHSWmUmijwUzAyBR-D3KcWIYqutQnUggIpOBOEdMzNE', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2387, N'nD_8ha2zPpiF8hw1OEqMnVrRy29LHt9koiyDP0jKQHc3aUtvKkoRRApRSTv0BBHSP6QBK_q7HEP_YUmvXYTUtF6NDH76OJREUp2JLWCCy030Xk_QlNOBi2byjWfg4AAuFe9yscuRDO24g3ZgH5B1XasXUKxsEd1OhsWtgo-w4fKkDmJZEcycSeQ1Ieb7FvOpky94pab8dfFEhftv1EUw5y4k-YyTzyS3f9zrPO5Tm_ABcnYa-giF-MYgyLhugcYe', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2388, N'6eC2wGoTdp-D8NKjyKSVVTXsNNwt6kv7GnkWxiyiYjvBlYaJLARz-B5gkv0vOhOLGvHOMZxIDA-r9Ikyel7vCgA0WbKSmVwPGQQ1FSxV5CmGGl3dHitHQuj-GcF0cFj3n_sMPIJS_RzDyDl2fizT2-UwtWKUTIGS0TY_TwuiWb_g1vIQPUgcDerH9ujCsKS8QlKuRYUag5M2Sc3wnm6enqHoZ9BG0NopX0Usk3qGW58H4I5k5XnNzvL5pXUC9Lbn', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2389, N'vAQWLJUSsFRWEuAPPQQR64cfcRm8QYBPt2JaPLAonEqzdXVDYgkiNAk2YVshI0Og-2nmvs14NQ64czR9wQpcl8MSsxFEJN1v-at_k5hEX1qC0fNv4O6BrLZqcofpLYq-d8qLo9ETzNHdQLUttmX1gRk71Gt3ADAufWPjeOr9xa5sJlDfDmEXigDxI-lZdbAdFlTWuMAaXHHihiqnxEVnmnvSTX85BOyK3-MeUbtGxAHoPArDb_Rvuwt9JYtJ7mNF', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2390, N'JbwcEAxlhZoIUco6ptIBL59UGQJrcX-XdiNq0JR_3qH8RbopI6Lp2_qUEE727vsM3xtAdbdLzXrLHfMzEboe0pqxoxTGqs3jWQI9h3WxXCUezz7aDnwLZ2nFc17KCFXi4becdwBklhXoHhPLlVmlovn_UuVuDvY5wETYBbpgETTMOax-sah4LgWg1yHw5gK3lDI0-S8BMpPLE-g3k9y6eEB05gtw3YpBtpB9gvjuHleuyBNF0v7_SL7C5jeRgVdO', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2391, N'loileolx0MQVUt9O5a4LqX-k7wfuCWXrrBxStVvbXnUkzQkAuACIJgX2x6sbMR_z_M4XOttKkKXrV5uz7n0AbRJWHzWMOw7D9GpGzmg-QS-ccGV0LVd42gPWFMPtngyseqdVS8j9R3E2MBQUC5lREKZJlQULHzWUC_aljm2QVp-WI6biI-J3NXSdknk6FSaA4VPB_w--Fh8fh8K6TK-45u7P1e7kfdPdPhMnRloCOxG01nSeK7bdwMMXofFwq33P', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2392, N'3CisJPGIsBsG-P-CuE4yLilWEcyD7OQyb3yDxNzyvmxN4SnZmWAQgujXcO4cVHz0xU9HFAi7OnPgNU9_Ge3rMGeJhuPs_XAMKALvqnYo-goaDReVqPHMPXDZ8PWCbypE6UpKLYRWeBrImiWzIQpdUw1dcyz3DKQPCJOr1RjJtm3kJ7w_20DbMO3EF7qzldMfrPu5--ZYnMCPvfgfyTsgEHUG3CeWv3iqD9MgIlt14CSlb8NJ-_-c8zKbcAdtPG2u', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2393, N'jmPPTSEhnSPBD5bnAlAQrxwD-Va2aIZ2IiJ4-jxmziBkA76rm3-MRi-OQbT12nqnfG4p1u-wEY_8UibBJ7KwtCknq_Ys-BCor6v_1Jy6R7_pEEcITzn7Esypataarr_0dS_p-S3KFwHt_ApSsMKKhfdYF1Ir6lC72iuZrAqZ5N5is_sk-WT1IMw_LaOVbl6983DsF5EqcUiW5y6Evclrib-icrEO6VufgIZsDAaGrdxGjX9W-_C2GumJFm0D3SRj', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2394, N'3lirQoyHdAvFk6PLDR2QdLejIYAIzRUMrkj-vNIrlgbRBAdj92lONfKUTAUESf0ac7qb4ASa-OGZ5le7Ct6wcnkH6xCc_wM2FzQwf0YrNgtXp-jxl-n68grRIkQReJGbtjL8aThpMubE4eE1Ok9nXwjPrutF8czLO8CuQd9wlUCXmWasvAy_i_DN6uK_C2dhljP9j9ZsAdHfX7Z2Yeaw3W9BV6WccXR87hBrINytPLvubZbAp7EzeyHyAuOxzURe', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2395, N'Qtz4Hop-YioZWpmZxUp-83ki15fWcA7sSsEYqe-lAfbfd3yucH1ImIReU6JErh4BdHpmsYtMCOcmBrRH3HLtldQ773IhSDImNu2y7HqzApN8o8bD3ZxpzariUOjAHPvfIkrVKp2efElUWtJ2NrReqGuLPANh_zJUEByZJWZ19Mg7QH0uxO2qceIJ3XNxYPj9MRR4PKhrdEPT9-ybh1mOwxwADcwaCGe0KbZmUrdeXLRb6hLpmoSaWZl46XLFIVZ8', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2396, N'J-q3kSF6KsgK1fhJ4ZFOJ0YFI1DiK-ZaQJtEnHanpGkPyfTVIF9wrEi9eac0j4jaVqhDYjjspANEX6OlLIG3_-8mJyiyp2BZs7N3HqXiFRjhQFn7gMWw3Z3EKuTzk4045qjhxaWgph4IFWc79Bk8EaCcAkY5fF3YKdE_7BS1v-Em81lsb-2KPo-Bqvm_2R8DNidvNtmqBWYW2NWL5yNniC95HB9VO8F0yLFpRin93_2dFQXkDipPOKTSu0VwV1m2', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2397, N'vG4-q2mkDuEgUZHyV_0o0Fc1I79I_1tkUlJt2agtQjHXlzNcWkL8aku1XxRQwvTkorKvKk0C5COjvSOhRIfQO0FJXECG0X8ym-ZJ8POEdZZzQaDGIhlGAomhxZm1mtEshPSbGkjD4o7LO743y6Ack46KbvGsVP4u3tfqDsO8vL_jknNocKNAcPpmFTLusoQ5HzzEuYr3PEECwEsFDktBHixxyy3OXJ2UzFEeKK9_VcCLqAD-1cCdgnSA9KM878Fp', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2398, N'FBsjSLW8xAmcFTHn-yjCO5DTk_P3m8XhjPfUV8d7UgGkDpjKzmedeKXnWextbgthE9LX0USrlmOAwVXaq7JVNHICHtxXLZ2ZX0ywCTo0xgK3T-BoxPaxJoKUTaJNw-aC2DGIwlGClBdcDVTfbO-sRVZLdz_K0wWsHg1rf4acFn3tEM3PT9GOc-eU4h0Cj12rvmy-lQxAg3eqB5KNl2bZcQfHOn82HjI9Rb1h8vr5lH1Q0ZSn_XItrq4lN4Tvao3x', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2399, N'blZkPVXUHRVu5k-Fgk-_nHVV_XrPl6JOxV-J9Cj2uYhNUxbMlpHI-ea-ER0dmGR3HI3-zqzyI-UC1l-gyK8rBVcjtkzj63svbnZE_iykwZJn6tt_ZjlRwk_-je6hV5jsSeHCZ1f3-bY8Ahu1qp_cbkYf-p7zKO-ihZGQsjpArJBWIcyNlhBL4gob1WX1V7wEjHNQVmCAe_1colhcqH-Rn4zjn7c3JVlLkxQr6tKmd3N_eCCneLg_v-ZvwZBqXGjb', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2400, N'UKpF5lGaOzHUVku1Z1ctCaa2ONeJ-M81JmiGb053_9RI4i3z00e-PNlF8HWqAkAbQ3ITL04RIbnyT4laVjnW45mtrOnlV1RMq0SZTF5wdBtwDJOBynVwSk4zyfxj5gIEkUwbhLHqTKFDreuz3BhWIT_ZxX_q72Rx42bd3HmKErBAuTSt2NxFmi6fKBgGZUPbxX-WiDDLt5sZPUKPH9KiSkkUnumxop7bv3DIjKC5b1qmlIkniX-rv1e_nDV2EJIm', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2401, N'sQF_LCKvndu3kjcU8ZH6Ipt4lOsiDKeOcOT9M8tKSIpFWehcZyR-PBfHxgVxr8enY3MaStVc-HBU25xv5nSli9JHogv348nYAvwH6PjFw3ZFpJTVEEE3NXE5cv3iqnDldO8ajOIQByxRWii1uigDBa2lPrF0nz_B2Q0nOMQ7yH3klvPH_k1-tzjWtdWtKTuyJkVaAjDL1iLMDqKWxud7UECBdoBhNIVme7WEWar0NZdiwhIa74qRB_RLFhGME7Bd', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2402, N'RnaMTat3_XqhUZ98q89XPapxM7_k2la78gQqWLyYK5DHXFJoU_jDSrzNX6DmE41e2lH68WOOQBwxoDtty4Pg-iv1TYK7VzxEM-Fkc2ON1tm4ubCmu6UxdVJU2qj-5tPrhr6o-4dfaosD9cAzY0iL014BSUT-zeaOoSoEjagdx8Wwz-6MsvN-N1C-GeyjhALBC_0yfvVgxpWvNaj1E8Gv8zpPJDbvNb7MCieF7G2iPQ9hQKNNzfUVeZCi12pzLkdv', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2403, N'h9TDB9k2ToDfn1JAjCRMIwSH_BztDFHuwe7YGQGKrPk0Q1H7sp7lpzO7QUdao25yqDWwgKhJONZ-asyTNc_SSXITRIsGKH6-E189Oo43QzjJHx5Nl-IJFFmIuK_DKJ5j-RKmHg0yM1Znr5CcmcjC54UNzpaH218AmG1kZlV34KtMDhvu0BuEkzIwfMXg4SbjtAL6h9WwZs2dRu5qO5wd0B1WiOo7UBqHPPY5wAizoICcjrrPD7CVG52Kl_4OojqW', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2404, N'ywT5jtFaun4ZCxDVQarLMuyplPJ_LHAWtI9R81W8oUVnQNp3IrxFQKmZt_4GJ_2PYDDhqtwIUy1Gz_VZKzM-VpIRrbBXYAmLHWFF_SL4Hk3LT8wjehJcZXWD74RwTXUGwWercifkK5TvGOhBl3kyvWOeQd1OhQaNvCKppOtg93sqCDZDEdiTjqI8aeO9LiBHUQJzzokz7n1L5N95_rauHFrq0DAln4XhH41krPD_eWzjgXpQ_5lx1mB46V0bTNcK', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2405, N'V7sM_6ZIK0kaP709EGwDXXksa0vGPjiOHZYyNtctDj-G8fNQknq9ZubEZrJzgMYzPrEM00tftoe7GJXPjhiSasUmESMTnwMPiGpdqRua_oAT5J4MrRuDnuNyKfuNYFlhunb0Rza9M_xv2NfNH6W5y1VRqFRFhT7mj5XMFnIv1kYD4TlhWBS6SYFbeIJcYMvDdoC2MHe23sKH3P9i83D-inoZLCI8i5u8pDXwbes5YJBJK4T8ClamC1QjxY4kDmiD', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2406, N'9BQ1SZL7Hb6ydkw5mSGWNN-3ERmhBJS3w03VtMNLH8WVpdJXDSZOb6NdEZWB77GVNkwh8_atMDFTtJ-Vhd9ZssngtbZp1hN1txFxvh03zSvLCYoxq3vDSo_JVEaUdJRhoYM3uy2wyGyClHPF2uhxT_lCMxQGLfOWpx5UUXrAiUe5K-cF_ZfYpo2Dn08B2_2OMaPXF-4bIFlKdxdhb1i6xYnM2_VmJ0id8ZWAgfi1WHKBD_I2yI8T65-Qi5C8KRWgwPsVarRK7C-V8mfDhE1fEjfcJ7hRsR_1Culn-dILrIeM3CPnuXGAVlwJQk081SOG', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2407, N'N9dh_9VaRbVeRWdqXfRheevNKGrtJeu_bZeFSMJB6QwRYTkMY506_iVDdvV8dx29OhSusvqZEDunguFH4o0QWeXMU0qwXOhPt0he6rAL2Y5n1d9fgApFlfh31eLtsBfvspKSsITiWPyqtMDWYNOygMQc9hAcMquHrdesPP6hdxBPbrGjs1KykijH9hf9oxE72khM4RUrXQJ4PB5SSkO0mdhDCRGLMW3ESjeCkAtywEegUUudv5N6JivJRBN7NAd0bXjre565zlpDBvfTWy6eA8F2sTukgvxmck781MO-Snqi9_0sXZCXziKRC7_klynB', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2408, N'Yqi6fqjdVYK-2kZ6Z0e21J5OkCdoesWiu19_bhShYsnwqBHg2yf3KIK9YDOgi88ZMhBrTDxshG-7MgLcDENjyr7NMRr4FJl6AOIKGWXa-3LRhWAGbsOUQv4tIeTontxIIcVpTQbtp7odN2P4gD9vNXwT4rlstNtYqrag9F1VliakeOj6pIgUk4yI8gT5-wZEiO1X9NtktT9Xryrt7S4huzbhRcfrdChUpFLQHqKw2uUsU6aHCJRMZslM0f53EQMMjoikEUAQagbNmWWc_ZK6A0ocn9YlDPeSVlRE8p2mIhIeZuEUwqsR5WLjKC3LchXg', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2409, N'HH-jLTebyjB6muJCDJdTfHEiIIKfO045ZrlU3u6RiGeMzkFmXfNLdL1xutXPBR5SvQl9-NluT1fqDFFzs88uwgoAX-mEaSOGeXBDDMLlGsGJZvzPVj4dlMu4KKL_0QYdzCIDLT_KyG0fAhsq9ApKZqPQc2gxNeiPK-98B9ad-XyCjL9LuCJX17rc0yHe9HtQwhnYnSiVjo-WBM1bAabENYR3p04cCplhmY8AN14LxL6Zm_v9EsLVB-kAl5ddDs4Kv12lvTZdLK47__IizAuDfsGo5EOeEWLcIcF5jOIUQzI', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2410, N'8XOnHzqtignDOG8_tEE4--zi2yC753T8tRDET_vqgv-NI58t7OvYG2gU_pOqK6Qn15SY2HkzcdnzFgKPDHqY8-LUm_dZKaN4_5t3iTIy4eLrFy-jgs8Ou40QdCbKufR8icTKK3CfWAERTM004gNo3ewZIsGaXdWHxi5rwL-mj2Yz6iATonxo1k6Oe7sJsJKXazndkUucpKSNJYMXOAESL1-rctOPnt2LYi_wSQ1PoYGQ9d9OXLSR4R1Oxcmh0KboEpuiZlj2FK8uNYzWmJluq0qZb0_z3_eKc2sHIJ0znP0', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2411, N'hk-ICmghDMgyJkh4LfcdSu5pWRbEyrtDVyGR3TcqrPlq8hgWIUrnTWPk6dIi8vrjz_yaaWh-UZidg3QgFLbaHVeuhwt9pa6VpxrngGoi0BbjSCtqMsEGaxRxqK9Q5jKrO9VYgkTp6QKFHRjaTT98RfXBkmW1IQ1J-ctDjPhPdgds86463rFhBDy_ZV8Fn4Zig_-sNuhuU3hWvpdOQIPpeBsxWRIvnBc5BOe3ImcjZD7pMtXBNTGDB-wFUiGvtCXQ_JceoEIRL8AZ7wbHdAwFd0DQ6GFp_1lmH76_e_OQtuU', 67)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2413, N'cvs8D77F2e5NTfWJWavU6rn6P5m_cIFkukCRsakMqBn5QYeLKFVoCw6E-wJ-H8D2ONoOZXWsh15nSA9rMDsSvRkVPZBSDY0oim3e6dAJ_EJjRh1qC1zub2cwOZjVANlo5jTFrb8yCTePhWfGD7IySaHMB3gmwcsQLuw57p5oVxLcqozmHRUzF3GBL_d65h9msdi0Vvz4-4x-eh1HuNugDLRNGOkqAaCvEf3zdXQ0pXPw_1sd1OC0E26IcHZ2egax', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2414, N'K2Nld4mvSR9PJ32J8TqQdjHDmdor1U-e-hVtnZAaE2uZbESeozJnP3KO0AE-WSR6gxXXNA86mGBxwTXpakcRG7F0ksJcZjho3eOn4EFqskLH-fPohyk4dA6gEFCXvrhtNF7i169p8nAWJwUSCbryDIAjVk8rqUJS-Xd1mXoDsliM-xuvPb5_uVbyeL0hscmHu0LvwvMRM-A2m0TKEGg1ryndZHdgvmYMkCqSeJ1uGhrQwljhiJbUo6U1ta1fZ0An', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2415, N'gBWVHUz4DPmBxXqUkAOWTlTCuq7hh-YICf7dp5fIa9A_MzGIgzNH74bHzXEtRxcPAMzn0asOHBSsUmdIUEeKbxch5vDgKadaA0uQj6dNFHj9SI8XyVeNRPkSVuZM45Lnun7W8EFlldBVobPbWC_uXLk3xwGavW3FOc8kn_vpjZPQEpsZi7bOuVwwHg0fMifcXZCFnjYHk6spTrDDxSwztQeGXHC0QDvs5gFnNjye0Q3yDmOTPh4YJTNLQi_HIkmY', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2416, N'Qoq5Qk_Gmbu6Pjq29XBTi71CLnbc0cdQ3Yws6Y_5GZIlFY3sVikz-U5aZZ71oU2YH-zbh-ai37t2f_J-_rbVuqiL5EMNgzoUfNHQHFfElj-Npmlxixbw8ebzszN64Pa71UBpQV44hUn4PT1pWBF-v6JmhbJ19u1PQgN23EilNnntU-UjY4-owsNpCRZqeygyJZuSQXuhnsMqG8HPJHmz7Auj2FMl0CzgncqKt3YHrFOkeiqqQSAVQjUAGB_39x81', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2417, N'ah6hAFGimWL_jKn4MwtHet4qGi4zbNmweudQ-Seg_kUYTVlNPFEHVGtTrVK3LM6hzE7NgwrgySDaclZoWnxYKKGs02Qt1Ws7V1_ftMZvavhKQ3FrDu8TjeReshn_mT2-GEKHJLNRDerJl6BskpW78XVr37brk1BpTVkFjmrqd6x3m-4CxvdzJ3oWvEOZRO1E1VSpNODjspA7i57A2FCQHDYjgjbFHPzmAQUcGcP4AGqwmeoffiNQY3iz2p_7T9NkOluaL8khfVpUyhBzuAuwnJBivPVl9kxmXK8u_eKiYWHT89a_oRf-WXzZcqZRpGP9', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2418, N'Qqem0JoyGMEnmbQpPtmDg9wvN9Obm8Cudhl7lOxHLhfTj0IimKmJyT9qRqO5chmVp9-uQNq60OXDo84WlpFUVTheEHaw_OG9BD3UQgmInKR3LhjNq20vVk0t39ONNpdenc23MWlA9OP_0e4yZhkmFRjWJ_kcPEQ391eIwjfr45lOy2yU88jRWAeok5yWPKTygDumQfPOsLVUD16_rgNUL3QJ8cd52RZZ0i55zzwBXJwkojyf3qg-WT6dWF8SOHlVzMpArkQy1xCZnf42rB-YgGg8OJ-N_gLE84Rmp5K6XlgiyXdoCOvRRkGAW0J-eO5v', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2419, N'ZgSfAdwVEJbtKHB1EGo-lodq7pQEmC8h5TR1xalko876nrNCnvDZlEwCcnfajKhmb6U5a916T8vjhiMt_Syh5KeT6YuzdkJcLWrB9bnmLz8BMVicJjIvJCXGGglkzGq4lndtClgcMNBZW_IZ_XdaCP12tzdTws0DR7cxisMxVvqlLfANsKbd5AJMiZMnc6fJK7XmAbLhCgjLD7NTdh1-EuGNChsa-YrjNHghwl54-wqoU5dbZ72nE2bEtSbN7nsGXCz0UehB9p-OiLWonqc1JddE5grc0CyEbALG4C66bslqzNiBWQPjLV3wgsd3xrKr', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2420, N'AdaH0uMtSQG4cWZZrYww0ZcqQwOv2kergPeC9u8MKUK2qJvFVTmWjTw0WtVXuNYwFEL_fOAdLdPxKp-bpV5_vPKK7k911U8qxfmrZQiLNqaXqPrKyQI9ShelF9mq3SvdgBRk5y138tvZTMQzA4XjyGALtB7Dp1gotYwcLRCEPNufEsqyniAkE3_V091NO2rsXhY1SwkRct1x7wMQvvYXAreaYqzGmVqc7MvrKS3G64KMVhBeYq6bq4G4Og5iu22BLWcs6nmHlyFrY85LnPAGs7LX1X3d6JNMfEppTlcW5uHN5t9nS1zhrjbwnEktv9pN', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2421, N'i-8bxptCieyxpDIsfQ_KAgLP-Zn8PsrTHyUD966ghi0Oe4anSdV4_udcvjaIFIr6ldgda6XT1fwMR3t35uLsTgBOwP1f0BmO69lwN3zqAJey4mg6WB_9166wVfIgtItYGh1Z6sv1pMIw8ttOb1XbP0da5NYdNL7LkoCX3Nwk5bQKZ7RbQQ2_C4fu5NAdQuIzJnTLaBG0qf_iJv3u9Huh1HOBrKSRhIxIenveK-Sxo5YLuzUlEqXK9013LvawyK4_', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2422, N's15OnjIie219WRQwYVd40dRmIezramCmUqhRNYQwTb5eItonKej4vfxFDOZytj4nPDDdHzZDn8hmziGwhAlMu3dRLAIl-ruuNA2vnpg-q2L7LTphEq1GG84XKzsl0mq0rkA9F-H2nX1U9uywllgu3U0FzaDq82HnLxs3oUTLOtiGEZ1NkYyAb77mXLVKjVSKUU2bA9BmGNgHG2j2pSMAmRUOd1GGf18KKXPOIgC84vZgv4rISlzgf7nusAwqIJPT', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2423, N'DgbNZ2r1af8zN6u0zjGPZCTgRTy91uqHdcklnpxg8sazw5DUKa-GuUc4nACvS736drIX3Rf3xSTaS2kFhX7qjeBg_3ZctDU6FtSs0hNV9RQF_J5sX13uMv6aLCpj_pqFnxN8jOWFb8vWgu5acVuBeYEnhFUXu0pGHfLdsyMh6dshrbGrAonR0PfawNcrlAa9LqzL3K_Z6LN57QmtbTZn2xJKytYoVuWXDPdgl4JowYOk2y53Hd0v4PUJ7t6Y6ZYX', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2424, N'0a8kc-u_Ip695J_YJ6SVX1bMSeBN_O3IDvHXGYRdIjZhnnPVA-P46CN2kLrP5jQznOIEsGEHjUpIunhKGR2weFi6-Byy1_Vl2zqUvGYcKjZFXB_0OZt0BJwrLt75V7eWquTgeCVoap9To2BrY-ngxypxypmUVKFYzl9a2VRGBAjPLcTFnRQXHsPGQV9xYj-85-o8rWwUzd0yTr17DdowoZPkyl6aXeUOYaSRI83HUXyN5pDSrvY_38Sx9LRgiaStrtBlbNpibbtq-3BcFrimLtGnzDriGbi3xU3O59azxhA', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2425, N'KBaf4thyYcxfPq7o9wAa0U2-_v3fwKmJO1Jc1evNdesQ7r-5YXPNxpSyY3Zf-c6fsBYTSfBHRjuQn5EAXi3i33pZVV6p1JgSxZa6qDsdFr4LxI9axxaLzTgBeIIKqQySuSzSFvfrK6Js41A4_ERS4Nd4luhGQYfb5jhXAEaIm_t1mqIHiDpt-PI7_qBE1hDcLlli23efmWZfolT4uRLOSX0TnAAeBtl4pmv_KFFmh3FHFq-r7BrzoH3IZWhQQpA2', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2426, N'odjzPE8xx8IdBwzqLo0GejE6LjCMNI1pQ1p8_Y6vTLhvQQIEGHKTiKPSNSV4v3GjSWLCstvjIVs0r5U61a_IaoAJtUQOaY5fXIaiSZb9EY2tDZv7vXvV94tzVrIZ-R9a7nnlREjDPp2Z8j1egZ5T7TrfY_HZYRta20-zXF9d6zTZfQh12f6mBOEjzESJtv-wo0_bbKK8tYj6qgBAiLL1d4yrVm-dHO40QQqH4RX_xUqkrzyUKgS1sEsIRp1h3ARV', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2427, N'q98_-Ij5q2Lz8csjU4BFA2fU1I0WqsFRW9fbNcjT1qQbIN69jwUgf7F636fqZ5R883rakjsXF7e1pgStliajef8sxsoZOu6vlViysJeYxNpTVBBpc9jO-YxZkHQAWLCz7VKCKuQsYk9uCrPj7MozbnXAQI7YKK1jcTjJyHihyT3ojzXVCWTvbrmKuw7YyMPLnELsdymNKZ37xHf7gEkugpICU7Eis3ADsVSqLpWFMt24m8MwKYy1K5AOjT6bsTYpTwgCMpnh_jxwDrSaJmgSn9DmB8SENqQq8B3-u6-rBDsADsKHosma8UU8-s3GPBH8', 98)
GO
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2428, N'c6L_QS4Favy7tdrCRMG10QPM38r4bxpLVXoWQTVlRTjimwwQGfpoE-ovIF7LOa93wrnux5W85Pz10tV7lOUCChbeZR7xuV68tKUqEiS8dmPQQA9j2ANH5UxjttYEwmfwgRqfwLU-tVNnjCm1x8IA-aHf9e35KVFuMXGF3p1slJWtgtmWwvZ5mIQcXLq12LLnqkBDHBCFBFYPlO0dVVXX5ES3tSrc_3Y8mNrwPHBjto3D3P2_DTs51JNE66fWiSgjobywDT98b76V-XoR8PKAuTNs3uiWR7DDJi2gCxZPFFVc45lYr2EwhXH8zSVm76vX', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2429, N'STzir5GyBWYKCnOg8tfSQ0nXA7qLYnfZL_ktX88LXQZSI4t938J_ViEw7hMNR9-y9ZWTtRgmOWHtScj8g9vp8kNSJjwye46eO5XT4GuYT9CczFvKulR1uLB4p-Iv-MvjHXXNW9-78sjFZFYmrhYtOOGrFWEJ7ZppoVxVNbIuZHVRh08QwpI892m4MaSdmXolLF9TSYy7aWxq3foNYHRO23D-hVvDaSZTa54lYAz8dD4Cj1zmmk5VUriRwitq3Rw5', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2430, N'4s-ckumxIPQnUVbHp0frJQNfXjGDiIDzsHXfbipgGUsoHVB5aTx9r95fTS1NOKiwh8uLop9OOv7tYlBWAKJF6SMW2FOWHnNUAsg0yz8iM7rRkCmzc8cEEF-uPQDXbSMMTgHRqv4rx6I5ZLXjXkq4wB26HsYtga6sutWgwgERbdrY2pl6SHxSFC0Wa4uvVNf9RPfl79rUYlbE5uLukBdT_BYHIbxPhFMNlukYzz9jum3QjCejiAhbFf5eOCtm1CVLJeobS9RfnQvYPP_CtRx9F-fCdlWJ7Oyle24B0WOUQ3v5xDLl6j10qa1k9CD5aCUd', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2431, N'zGwoKC2U-Q-mTx1tIjMEwAlCy5Njf2qwc_tVaBAbgyiSIuvJ886eZaGPs4tGl4RsjfYYOOn0OopKPMEqteJveBmcX-LorjIwBKTbOw2sG58WVwQM3tfxv_4Y1_wi0atkrbmI2PqhUJzK4KXCwijPhVeNWmeuPT3NYxzWy7NDs81lKI_9Bicq-S83eic6P0s-oamjgwUylXd_s04MDiUBjWW-18l3fxpVqZWnI0AkYMnwVk_Nnl8wYTu8xyZQt5kUp2KMyZqn5vbiH6maI8tVKGkWajFl5VifQ6RAsDi5jhb7cTLg3-rm1nLLWG6yZaoE', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2432, N'TCP0OrOLk2mnfMFP8ehWVyYYY11myxD6uOhRdLIoJYMSKpFh1Uwku_uEp1mP_k_w0N83JAPqxGgpjMYHZLFWFJssN49524zGjEKE-CN0jaRSx-2LFboHM5j2FnUN6seLTH7727NM4d8OVqJLRivT5ZSxVbXSkeafECH1_steEAnS1QopjpeJ5dmbcAFKDj4vehNXl-gT2rWwFN8IhHNfc7ogsyBlhZOaAerTO_AgxhKEIeXM5G_ixwUcyql_lTOv-_-onQgpGDUDTLv270KV-Ga41Tw73Wqb_oK2OzNXq5LCDUEsG8YKx_D2-5nhUaqu', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2433, N'Tj-eKwka-xb9OBYKV6btMjjERlEOUxGXdv2C_psY_ShE-LsmAiOCEcFE82_cPO8WoEjzGXdUDAHrOVsJwL1Y0rkcmzc_1_P3AqLbjZ8OyYaalCNBrwsVmj2BpcWFUGvpEj6i5hHwsFpskE-PQ35tN7D3_r0mtc2Zbk91m83Fb23dDCR2niTSkCW7uFFMMYzkRKTw_997uIE4ALd-q40eekBo8H0yI2AqrbT_SPs-RDNRecV51hZOjXHA15i3r-U_WlPdH37LNGMZvjnyQR9dVuuWL9n_oRLkx6uBqqA2IgwyJgmylk3yqxH7totsvXUH', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2434, N'nA9Old1LNneCCeYqf95_H-WIxJyVGRqqVypXoXL6V0OYJiaorAaPnEVgaeCre0nFrP3_k7eiOc0zJBsPvQwoUb78xt7GbgdXmgfW56NTrGvkEUvmeu4pREHsSXqHz-bizKvq97YJFFtRNv6UQX7Z0E6Hdf_b2Lv2C5yCxXiclZqNDdc3Q3riTg5QSX5bOkh4iI1XFcD4JlkRCIL0GWfQPArmLleLnVX9ulPH-Pe3j4TPDkAZGGl9KdfLC7J9EQb-HQHBRGyFbb8fGZ58tflGZl-WoNEQPCG2Cb1MINCUdlE8rPJINxTfCGuQq6FS-M1b', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2435, N'EIgd9isN7MsMhgnx1C9SvRl2jQDy01vbFqhCqMUtuSlcMLIaRaaYM2J4peVoYXq8R7OuNqQMPTebwZJ80hoxi3gNW7PGvJtajkNs68ziauWwzbPBKIPnQ2yWNBDo-lEjgo_qMSgC4nlgU2pPXFMGz6THrZ3MybfQPM1JOWZCIpOqOqdcbpr7Kb3QThrMdXwDUR4eQbmxJTgGRq0CSKD5Lonp-6LfXXvVS1esNyNHWjy8Qy-miYlJjKnzcVEOiMdle75HEVQIlXs43cHID47JdI1UmsU4NwHXPmB4KyJpNtK0mmW1nvBALE3JVAFTZaj3', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2436, N'BdMn-7U2o7A-N5P1p4Qx2rtf5P6ymU0KY2xxn8MqSH0D9pt4elJoerodm0Os514kXF4S0qgJyJUPIHtnfQOoSBc01oTGfN-484UL6j2Gy3Q7uwmmHjM6gxAZpq4113o5fnO8jXPJc__1GENH8o_jhPvBfanJqMpcZC9iXWaf5MpV5Pqt2o36j9gm6pVBBr2Za21WP9w6_aCtAvE1yLMt3vJhHNvOKAeY82RM4hGkVmvtstSDutQ2pY2wPstjntwyhyfd8p4zESIhjXdaWC873MgwRbpakskQ7KGZOk_jmGdvsO02NxuXevECJH2ymp48', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2437, N'FbDeIsYiCLNWmyb2qcNTcRw5m8Hci6IxRteaqAAEfx3wlXNmmbQo3UhcwXlCvH1HGRQ5E4koYMAcPAGSTMWSsWma6_gq-Uyb7QncKpNazjCVZ7GM_sOIkdFfO9tujY6CRa-7BBnofQfO8-mcFH5NhyHjADogn_hnKOdL_rBOi9r7OkjeMXSKhMs6m9puuRffUarRNjWcZ2AY4pF2uOGRjTeRvpaKpzGgEsOJGx7Y-cILy5RdDTfjdKYqQWmXY5L86mGoIBJ6pwf6dusIKt4rQymICFh6J3Y2HvBxq6B_P9DINjc2XtPUtx_SMtVDcD-9', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2438, N'Zu-c4YOKkBuu5oXk36XZXdW4n9n6sx9-TYMyz4vBfgFsWNugks-F3Z5I0jENsU_oB_kEfwDCR_NPrYr241lKxSVwTmZOG4Uv4O5opkBOl1rwcHzEyP77XLb_VSQgKTIcXebCZSK_97PB5_HRs-IPSm8RJnEoPgQZtw8CE4Hs7Rh2YxRK7eHmhKmi44pKbfq3kiVxJGYNIpmCUWfNn_idtCimNH76WM8tlIn6xdffS3KuhxlO_8vVj2eefDYFZuG5ooL2Ab7bjg5ePNdfflmMiZzXrZm2Y6schLfSO_M8NuukVoL9WqQgC2SseqPG9qfV', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2439, N'4LFyr1MO-oSBGIE3p6jvllKnW7MR29SWOfxQDlbxjI1xM7t67iPNAcWFERXFvIlaTd8htYKPKhSDmTDFfognMam_lgslMIiC5WT6m8J2tkVXyh6pFE41J07-XUMSm4e2EAdDTKkaK5XbCEFNj17qec0TeI1J2u0GI90ht1aXBK_AGydvvP570T-H1dl38Gt1pg_0APX3d884DITQ0F23TGDgKGaPBUrDr0k_PJ8apiT5iHXFuvjc27UAAX7RWxEn8D_hZuf8fTQgoPHc3hHIohFAE0tYXwN9X6N5wxNWhQCF6wnn5GRubrcSI9T13SQq', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2440, N'SM7LV3CsQ6W048aHt-NRrSrK6nAW4movCBzMWBk68MsxQWR3PZ5qC3IZCnyivtp8YwyKTD5C9bof57Vgx8_eNlCMiC4ZO1PtTffVxu5WjSzsfBjoyv54lUcO6aqgV_IvP3eT7Aop_Ejam69nMOMKS-QyH8iMMAPxvw7_nLtE0MIy15GI0NRpmTq7-lx9SpxtNdiWyj0MrY1vaNKmMWE3bi_-W3O7Uu40J_JbO8Q2Nr21QksWe2cI3_k6Db7Szz-qQqBEpdScY14xafepxsu-P6unpANeh-DPKy3y9uEz1SDJpVOKrSrpbfyIYPmBbYZ3', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2441, N'vxWoEnNJ8wvAtNsUgwV9Y3XlfHRctlz3EPpij6LyOrwqBn5sxtTsbJFy6CVBVMQLjr2x8pGTJd7ytSNcjEJo46lVPgNxlmwClU4wykndQ2GInYOeU4WAZmeK3wWVtD7M0Gg7n3myz61_nXGXLJKZTY_HedMncvnq_xGxd7fNcEWJj_mUb_5vs0Ntvb97nmIqEjHvUArapIDcvwsQhe_SJpLyerpha10lwWv7fHypaz0I4winc8hPiKxtEnhlkZ0y-upO9VOH2dkAq32t-VZtaiOOfHWwryP9TXNaEXqquly6SUF7XGctWdXT2_mBloNS', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2442, N'wLnmkE2uCVsw8NAx5MvTrkAbCX7t8XcKVXQAqW1kzlNeeOkJvcjqxHGroqavykXynvHQfY6RyNguN-TNCfttkqCSSH6ywH0StTleuYSEn03JbQZyXnA5jfAPC_Rz8gOeAmyKC9Ns_m_9IOIYThNVCNlSd4SoTwpbgtUuqP20UItWApvI6dhFNOhl3NRJrBSJL06msVUSXaZrPBHkJ2xPSUuhryTdY_ilrl4yYOhDAcWa2Dbn9ayQ75j7PI7HZLBBH5i8GFyS_sH6WiBkZNzEv3KGRqD8t3bHKPznfCwHXcOpQzgvY4T9GiMsytv4kkwB', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2443, N'QTn8_0c6XCAHSRkwjA67nWxgxeILLKEb0F2vo_LXDwLoU-k5eYIpr3jUIw4k98wGacE1SCybHU8HazWg13Ud8bQUnZgiaRncuw-C_6_aqivEULonMx1Cj1RIsbzLwq35qRTu7YtTgnUiBPxjJTbNBrlaP-qlY4dOfPquUgsQkRjANkpbPGO6l3MsIml1-4J1PFtiR4rMvUUH6YSsWZB39wnaquhB972vaqWe7i028gz41UXeaacfLzP4lopunYV4ZpPNErkKdxg4MVash-Xqb99SjKA1ovtKTUQnpsgAx1QhnTe5Hcjpb_4nZKglTvD0', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2444, N'pWUL7s4g1w_S-zlrbZZ-iAeFThGB3AyVPnR4FQYNRPla_F33FvqIDgw9ndNJB1tY860AID1CEkV-9nBM3_2tS5U2s3uFFpB2kJ8V_tJwYVICAUA-DE8Uh5IkvP5I_bTB9SNaY09u6W2uodzmFGQHQWuRz5dASDRPbxPHsEWyr_9AG0xABOfSpMLKHJDeq1BjVNsRkcffWz5hYnhcITIkSPVY5GINkXYM6sSTctgtnbhkuT517d5FRhCHMaLkOYA9mp4c7jXUOGNnA7gLMS373j4Z-tlNYcAp9srsFVW-obL8FMGAFY35_XPfPkPA5Qmp', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2445, N'4MjizVYtlEL8nSVNeBkBVOupWcQb8j1peKiYpgvZeGSK1R5GtFObfrOm5jPMZod7vyNod3epVhcfLIK9e2dRXxSiHrKyF26-nn_7XEoFEAwRbmvy1GUMcRxNdLveCSsSB1tL3VW57QixOohXg7Ek3SbOX0deYpGBBai6dL21YvTUchdivDkXKVQoPGEBw0oToAI0u9SPWdaD7ETrlDH0_f-_2laNwY409TqwNgLgpAS1QcggTwByJv7iv42QWQbsZR8bz7zUzYS7TX-MnHn0PNDKqRWJkXAxwYMQsAaYiBO4x3Wdn0RTQw2i49H--1qx', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2446, N'Kr4OzwGRaWabyv9FKsCwCqF-0gHpw7KJE8yKjL0Lc_1_JYqwacKtv80DP8yr4SulXclnplubGk3DtEAqkRz0q97aYsj1aE00YzCLTBM9pLiyKxCJcpTNfBBZoxnOMywdwWa5SZIivpyAdQ2zI3cjUTrqFcl53GUzkoY-_bNtD6aQqcaKkypy0ZVASfqLmuA7ilY_G-k-mVOpLmCQzm7J97ZlY4TWM-hSFF0SklYR6-eX2dWcf04pWkpP-J-gPKJgOR5BMU2JbzVpmXyIovrDbKdO9EPapdb-pwM5e_H6i9swXF8Fupu1jcIKvKNAmV8R', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2447, N'S8Hoit9ivclBZBzTMnqlD75h8F3UZjZMV3FQz4NdhhYzT0eYiHee-QR8DTu7lzeZ_UVrmcIu_dhtHzfyvrbL1kfY1Qm9jvM3bN1Me0qtot-f18KrzK-4a8LzM40AaWF_CAt5Bu5eKlEZFQpWPkCwrJs5DimRD9ZpavelUDb4DBpRGsYekL0Ip-o1Q0RmcRWZuREAU-5Le5h8OOrf5VsTzFfcwnaEY2XFQp7iPKjr9AH-fnEVSUqlHX_mKlAsqU1LgoqD51D04VgsLRrUOELY-H1aagT9OBvs9kaqPLL4fMiCERrEoklimgaepAEMMmj7', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2448, N'0D4ocgZcEeWgvYft3oAQ2Ino3wdeR7VD2eOgpjdLPaT73xHuicic73cRxp8bEgGyRXOf5ll0X8NuuSqFcaAYOFAhA78VRwqJlI3fbmcXOBahQm4_TRgpOWlDoWdxODOuchC5q7QX0fwBLpK_9YIgQV15MvkQgL_L8eDMR-tqDcf4vRpeabF9MK-TF1yNBUICyy6D2UgAiT9YUBss0xMlFuhSG16URKuUJWImrEpuDLyj-e4W9jc-kf0ibRVBMIZTT4Bfx97fKMBsZ_s-qGRLqp21yXj7oUaa91M8ReNdZgzzFNMT1wGFgAq9Y5Kd9Ore', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2449, N'hGT_usDEbUMMT1ozkgfsiKWDgZKsJgxAd8r-1PRaXaEKcFP-4l_0G7BNmXb4rxXFjeoHnlIntLPY-u9OJH1v_i2YUEc7nIZLT98WrO-f1x5jg4zy-zvj7b1BvPhEoQt4OhFNxhHkcwkmn8afPk9HVER3I_OvcIWi2AMO7dXhnXGT1wpuxqeb2qh7b-jS8We0LSnkRqLtjHJpta9tw3IRCV5iXdhuwcGq5z8dXiPGyvtbTkVYilQETIBOGedAxgil5uT0Z0CZceSUHSNvKm7PcK3ycbb1Mk0DeABh8KnN-_XF0dcfNXGBHtrliGBnFCez', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2450, N's5MHirw0uayofGqLfEmLr7EvAYlALEf4JLkeaPH55ecWdcFLetu7oN34BuaD8zlW_-z1DGj7CAHXBgeemIvOnSaKmfxCs60JUkHXcE47vrcQYjiPok57LeaQ7KPqThy4_miwP5WWwZHlSi7sd9T7-ki16BQmZhIn-sRyc87UFbyjmvYGbSSAlzDuRvyZoCCAwdFsM6zHk5h_LAlEISjuw-UckGTmz_EUmL73UFrsTZrJ8xVbp9IVl8TY5sA82rDf_XWWy4GrV0tmxIjyxhfaTSQsZpmHUXdwiZqPyR3MKd71ST_CfLuhqstEHs0OhCr5', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2451, N'uTX4BoAK-MXp-VWTpnbgwkDXLmsWAgIu-ZseK98QE9_1cH8A96CBOOboSL6mjt_Kiyigx_PwA6ZkilPQQkFHKfoJ2eVwHHLuwzXgPUHVcHgRGIAxHjnCnQOKVJRH5E2wcum7PLP1MKvpfkdse_LPw1gkwq2kiX18Y9y5C0H-vosy_4A8Uf7kaJO7oqX9Bc7GYiTwvxzGPrH1IYr6nKPpwTNFr6-I3tIfZm6e2EoljiSFV8twlc6a3Hvi0qZWIg4xtJzlUSc2YYZxssbj--fXWvJAmOhLPpu2Z_oW2KqhVNwsUhbBsgQlwTfHLEkvFjsv', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2452, N'CDBFZm8e8KN5wKMcNsEixwTgSeGrcbNunKeStHOtu2n7iaMSeSufvDiu7Qw4dxOI5oWvp6k4HNsFjuR_r0aZPcSV6sP0axCjcnyAYfFO80gGYBHLp2wGTMdf9BfmAY0pX60YfdNEMet4NVHxq0DrGfTom-SJIHRQbbryYfBXIayrxvhV5YyTAZBewnTKRYTKkn_G5rxAfMXaC6VNjLKwI8KIcUdmKjEoAqpSqc985-FogXX-_r_q26RPgrTaehmaPiF9uxAjS0VZapd6y9-B-dLa0AktJGdrUUV2a4fyZSlJvQgHpSLnO8iqIVyKBzDX', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2453, N'TWuYL0qTXloRe9m1zdrsp9uSlEKRAMdq4H_b1s9pKb3AYnpXVeQ1JOA-IijVx0xTwSoeFqEtxUDcPDXoOehAEDJVAC1ArXpcqJ4zUXKwi4o1VlhzBYnNHtZRITwXvlwQUt8OIo3M-Vk6hYJNCeuKAIF9jV_Rkj7OfD5kHJiOtpcgKzYGCbU1M55fJqcQgmzap9crv30P_T62VEEj2MVw7HkW4G3aQOEhilzOUgLJ8H6a_a-sAEYauQO7RiTfL3yxHdTfYxAlm5fFeRoXhRksQvz3apbY1nDMjhuAr8ZM9XWq0rf31Y1ILpvTYgIWhqXx', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2454, N'Nb3_9OBP-OPU5uJbg9KXtmrPjZjGCpAlYL_Xv9uQp7SDuM27MPssdIio91Ee-YVk3KQqHAgFIoQQmjsCWWaLySE-VJev9wRL7WDB2ZBnx0YStsfDEm5kqamhj7T9XtAlyX9_DDeOzfHLLbHai9rGMhQ83N1dJ3EfZcD0poD-I1DX0MUre3TdUmuibvW8k1HIHGkH8q8fGUSDa09tKBFfOKfSHrqTjkM_IfSw7JCEV3pIQYhKi86NDZs3fOurijKukD0e2nAdEWdsL-zwismyKAZbFHy1NEaJrsnXreIYR0g', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2455, N'yiYKa4n9lzmFjqyFDa5_PiI48bDw3H3r-LccQ67X3VC1z2unPFE9MVed0IC06DGw3gUjAQIm4encgCEW43qncgC0os_7u6FN4Drpdi-C4uPK_QphuAMcV3_v-HMNGC8lwj9P5G_06X927txqDul8-2w-S4XIbfYrTQYWaeSK0wGYyRVW8UxYgzYe3GlXNlaqJyu6SAvWWB0TqQ1Cfn4WFtRztflE3CP7pQJNkytUQaN61MtelOZYwYyv2pvfJKAS', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2456, N'OeaqngPTKr7qtkh7dq2WBkRjPGGsDEfbgwdcEdUufsgPGVqMWQ6xqsd5Wuf4ylomLD6LXQCVI9GZIZIs4TalR7osvcoosnKOziafFn0l3OA5QRw5VZoxncIONlDIJ4tRPzkjHIpnqzLi6Ghalo5xgkIdyp3-Ut7frBHDTvaIj1K9E1kUtbfC84lfg39XFlFsS4CcoWeEHYfyabKjok78UPlCLRzav-3nGuM05XosiMBZW6Eq8P62EzffJAufy5mTSsndVLQLF43oxNASwDNIjNmSyPidisgDrweYG2bSSE0JqRByZmnbvOH3ycRbyutq', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2457, N'xzzZ6iveN7gwdiFSmCvMT-m1fs4BdMyUh7rHpi3V-4PNqCbeccpr7jK6cvjPL27MQNRHtbO9GeDcETuvG-JHWsmwESpatAkeAWLHIOmSvBuHzp2DJ2GNP7sx3At5eNE6HSjVWsBA3HTERnNLlcMHDsopJrTW345EhnTfNJwHlHy1gWRmtXoPaBze_2SpeY8MA0g7WyO9swIuDfsnDQBkwVzAyNxyj3wY2VAnNhvfRXovKMpToPOxghfa16_LU_Vz_72xUUIl5o1s3OZcqkRTedion_w26gbuWSUWCr3Y7FXnIVLt-VeDvmyaXqBMTsLS', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2458, N'emlsbar8vBK_OBb7zGSfhnG-mQnmrLgYAZXH0k9xMdJTviLkhg1bFUfvR2WiQZMzP8fy0VCK3aD0fUwTPKik8-czRqDattPVcfq8JkX2ZSak9aCsk6qi_w7LobIg9TCKPzrxD9bYUqc5rAVtrZlE-ZswgkdphW8SnC0fA_epyYTwctQ-bDvqz4Ub55wJwWulHF6C_ZAdODu3G4Vr0vEzXYLhcX0Ugr8J5rLGkyWUMA0B_YTbZNWiJnxe2L0EfEWO', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2459, N'4D-OIX083B4Jvc5AHifvxGxnNJSVNBqb1Y88_zkdn8N8SVo0FgJ5CrkbJnTou7agckn3zzedegwzM9OVHMJF4J56P516fhDGCsnQ8Y6XDgFY2fQLkt-ShOoycHTUtPCig8JE-jwRzGWhTVrUDzpKZLiYVUCZE3gJmMQr_zWkNDtdvSoIxGZqFoBwp4esiJU8YKFp-lLbFGloaTPrSJnyxNFrESTL8CngAptxI0zbNPFWdCTqz-YX0-JljXqcm1XS', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2460, N'6p_IZ-qUe2JWLWJKdngwzANkyIMYRA7rME02Lmpr0GhmEg_uEZN6-q4iRURDtDVw3r1F2BLx1wn7v7WD76wE44RsOJLzufBEmTeajuSrwtvvpx5GQ3BGLUBBw3tWlLnBAPgq_kIL559aRwAxYNg9t5B8rS80dTxp3SKnT0ErWNT8VusFYD6hVluiFMVNMKOm0dWz8NZp8binnBMmpN3diC6tG0JVGNDyYqkt6oFTsuYG8bVEgmdfHSvNMZe8ctPn', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2461, N'tfoeUTjuXu-66l_-b8cFqb1__A14KjavNLAuYJtx8SMRlCw2GOk17YGuYnkVapoYtOMpETMlq_P_wyFQWkbAfRVzilEkI8dk-QOhP2uHFir-Ph9mtNkZmclUkXao24O8wfC9AoItGWQ2fCz1IRuCVV22jSt-psh51GGSGNvgx7zkw5km3ly_-6k0a-cnaC2qdiOqtrNUb4q03CXyU3BHjTuKLYxpE4zCD4jlRf0RdjHZfDv5kgmUIc0ktivs73Bo', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2462, N'HKyxGGylRdToZ-FJKJcPVAhNObWjR_dgGKeTTBJMTu82S-GgJJKMvh2mgjnkTaFkezxzlSJt4EDux3CCKRPJhXWTHUxr3pbHTmECAB3FknIO7UHI36eix46xp12Ie3EMCYSToxv_TZ2zt7qf1wUj7amcHkiLDmieGYhFUdZkUhJx1hADeWO7zzw_u-YY4bRbTGrwhgie0z8gkZdGPWl-OMUCLWufiU2pqrVTr2QNLKoOg4xyVlL3iyV-n_WzVFea', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2463, N'zAs9u1rRQ7ahcy14ItPhUQN2d-gGgXYyKoAZTgtq3ar0rKDOAmKoworPuRetD4OJGDxeTB0vwLw6aiN1phqu8ulZxRxh5QE3q4clkkGjdHU6dTSj5eo2Og6EklOw1U2TinE8vtC_3L3LlnTF_6Y6bhmSUdKuqwcNNopwgfu7reZ6HHXoliPttLbiO3mSO_IK5JE2RfxX3ICOpjXs3zZAZcVwbBKfy-23QxnbZT_8AEexzVCg8BAEn7ancWvICwV8', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2464, N'K70O5SK55wtGdUuZlmII9GNdEAj22DyRk9cY1SV1hWb0OkHmVYeIwTOhhxzdY1bb-Sdv032-C-q22CsJftE2z452Sbxr_DkCK7y0aahhQN86Wac35as8pJbmhimVkubOl4wl2yBXYy80pTUPmaPLeTDdcVRRG9ArGwFU37SvtHoahxJlziqKWU0CCdtJBHxhoguyiPsTFXIRwDVXpSrgDkhqfwBpIvKx8jozBLfvtkERZZQ9jgUY33ZCO1r0GkvA', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2465, N'kKqJ6gH2IJ8DzYYdpIl6RzBJi3tmx_YxJjtU_W08Bvm48cU5CkptFkdchdgbkzkDGaLbRks89K5RVpD6qZfrEeJL1op-VK5jD67ubsi9fsFDZIRXCxSnk_9VEoia4D61EVzX6qJ8q7bGPJAYu_M-fsdRzlPiFK6XHqoiu6OfLE8wYLg9VRqyXTWf_ZnxiwJLvc2KVvsqLxH0BgwHJUalqY7Wb4tKTsfJUj5eSTrYNDbZGwr60WAsYiVk9f_25BFF', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2466, N'AXn-IdZx0Zxu3bGzXLld18KRjVKxu5suYc8Qstt8j9WoHM02VCVm2K0cgfOJn8z06IZTPx_dINH5HaZ2FLXcTu4bZVPstv0AiTmUFcn1fnHxTLeh7GBwr8k2UEeH8qIps3MDDkg-Fxr9C-d7n78dqZ8frIC5igRvkwopzXwrw__NTMszUvRhirD4NoFLAAzdQeHNIjLI4goVbE4D4Nbj3EYf1ilOUAZuydvdJqoL1VD7fE3EArTgwzItFd68JEbp', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2467, N'oLS-BWuHsy0PK6dqa0WA3NjWR84Xrhe40O4AtwrLRC3veSE_ynfU-zaFRgVVAluaTUBZkmfw-mpIeT7J3OiN3VX-IFah3CHxizwmCgbRLdjGlZKL8sZ8pfDyzjo_Ug8NIyuzCsKEF5s3X8pRmZc5FK7FtEw9IHzxhvyiHE5EMACNbur7hwCQZv9EtHhgrREWkCtVFb2J3VGKXRnNVLE6ECQ3hSUhJGW36c-lVAbYukWrRIuxKeYlXOh6Ud3iVSuh', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2468, N'htpOYmXI3ZiEraxhjOv7aFiN9kf7DHYkQqQjMEs2KRhPBsntcvA9o6MU_Qd_JHLlInHH_STXDI3yTHnTklUEAip8Zs1_lf97ZG7UF2bNr2BCpC_qCdAmrpc7rJejUZK5ctCKI7vynjhE6c3D8IfOIB_vK9y1f0cVTdr4jMfCq7I_qpjqJN2WB3A3BRFrsjTmb4y4Rv9DsjW5uxe6F2aoVfG8AgWRIqLq9EL9rPgEvHWb5ZnP-hSLy7K8kUm2-kmv', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2469, N'TBzCPAh_XjqsnTjpDIajfvDhaP8QbUhbq3naP58IXnX7-3QdYqR3racy8Q3DjvIpiMt4TumN8xTC27RaWKhRAFslZdq8bnIeg-9x6z0eQGBvjEZQXSt8x8oSPXFpMYG8D4Jzs2SaUqZjRzyVpp4XEFvDhsgsWThvRq-GklSm2KiWrTgABMxLoE6NpSh49-dcpQP7B__iIo2mja-5FrFn6UnxoA4yU-pqsOBHhGzWNXoLQ7Gs-6TNtNQpV2-AzMH49bPeWlVCpLdsPuBhfSsbaJp4OXNjFOJX4i9Oe4OAFvE', 67)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2471, N'jaq0qzwHSZcFk-5ZKglrbhu1oQHp7c7rS3-klGVGnnjscKr5bMhABMMU1IhcijxC65Hg5X-k3CbFCE8cXza_DJz7iAOMpSFzkInddch0q6uB0ubjyxorCjJz2W4nzAvUoiDqbT2Gw2WIxUzN5ZJD3fEaWOMa_XHj8HCjwpQgX0Ho_pOXUog3cFAMmSq1dCstzZ2CvXt6xpMx6WpV8iaPNyLxyG1kT31ZjSK-5bwtasZC_aZnSWEdUpmfj5F7rkAJmw3azNCaa-3QVMx3BK37Tl-9WjnN27zxRZJAQ7XtFJQ', 67)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2473, N'A0bfET-h4Bw0sD_LshlOD1FYtQfmGCwA6csA0ELJJc1Pp_VONkQB9o7jY-RDepG_0RcdTd_qXytol0EhzjKs6utVOy76ylt0U5bE4GQD9uj3SVxwkJW4ir5SRwxefCRoJR8gAcN3Tv84cnr0MTdFJK8QfVHTDB4IPCt4p6Yd5zR58YUP-AerhRprhM6cPypuDZMG2wswBKIxjFy2OIdXlKe6EqMzSQ4wcGSZPGsMc9SoOtg9zu1PuF7TENteQ8i8uW_RgTtwiY9Eb9h_57OnCbC9qFcDiqlztYkCOMXUvhU', 67)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2475, N'Bz_NjYACb0rXk13cwaBMAG3bSC5KFAp6OS2FhyVwUgbcR1eC3d9rfK-0CjNf3gpL8LLHWT5m7JeX1hDoCiF1rYCY_hX8VbrsQHbeOuCT6KfioSF3QT-9hRWMgzh2y9pKGh0n65cGrUlpLgQZcSb3_CflVgN2iSBc2XnSitd9KLPyMJI1XtC4wXQonLZJf5a17bM1nmetyZBImQX6JOwRH8LS2WQBrTywc2XgB-lxOymqr0IKCTGFXgliPCcv-9Cd5sXfU61GIOtPg7Wz1-x5ULxnTz2ipsMLcSv6m1BU3Pk', 67)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2477, N'gExNpd4zMK73kdaPbJh0hRuPCoJyCVvylMiLQT8up5Ve_Mnc6nA2RTty6YJIU5AySYg-uv6Bz2umZhvj4NfgGoVaXlbxIaqLyNeAsBuO3_-vZEISqMp-uvmfMke9wCN09bwys2fFXqA_CASvbvYhUpTNAWmX4gl7JHBiVfHfjFXr8pZVzxR9TGHcx6H7IstzCmYm7D87BTw6y9zpvW_lwDmSDEsGgZOXV0JVbeUF_M4fvjfxqKqRuyYWznjSdIVXOu8UNKOT-TZB7C5ldNcZmYAm84zhxGcfvVIRHwPXDjU', 67)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2478, N'pJ_p2SkUWsxYcNBa5sdU-EWTeRPW8_Ef7huCSSvlEtLtJIfBQHyxBiKzj_hJHP6KE4uSZU6NT4mvEHSl3rC-UehjuB0Il6B4Vz4js2qC8FA4HjN0wrKbshqC5K5HAThIZX50TwJ9_Rja6AQPlBjw25YOf7Yv-nZTpH0DsRO94SIQodh8OHPV8hSGFxM_ncH9T36XfDe2fM5n9omIbzqfFAJpYhhgDwwmw9P2PYIuu3FyLTdQ4_ZCX0hoZ2nphOnOBEHJg6_pniLfcUy_sp5Lt_5ogiqb3_ZnApqlPpNxboY', 67)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2479, N'j4x-Ewf5CKVT2RdhA5GUhZNOgkmiLTS0RJ8heMtf_nHsw2GIiRap-urc25l2a2olKB9JLsCOlM9ND96clAwhyfqV8Ph_JWLA5IMZEpM87Um1uppLF8nmtkJgQACCC5BrJObzqEUsLO4FaX_xN-n30YfLikErlWS4Jn6k_pRhkolLjc-iaN3tYLkQCvTLvsVip8u2w_0BMKwqxdwyT8Bd9FH6Lu36RN3AnJj9b7R3QViZ4PBqrDIHpjG7IELYguuVhQ698dxTI81Hz2c1c3KRToFnkbDY6kw8d5Q5iyqJK0I', 67)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2481, N'le86s0DzlqL-y7efCv8t4WgJZQoaUCRPgIFOi43orCOKGSViQ8Kyc9y4epC4dYIOub5SkXJejdfOXa3GSWtnfcCfRrYYbxby5CLcaKIqpq6L5icG53ozeTuPklGIcAnbCHa5tOJYhxQrySi1KeuCiLCIaM9RzOyea30bQcfmqWvlQowR_9Qo8ZjXrYvjxJSGo_rvKCVPog4xs5ZT_kczq0ay0mtXHmYsO9YxVSJKnJAF7ieCWiLmYtheRj6qXbO4R1rfa6gRFJAoaXxVTlh5IvDLmzemrdb6M5BBircq3bU', 67)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2482, N'9vKV7wRf7QHYhLahlXqv5z3cOTUw7i8GxMnguHAX3hrII67WuD3M9219YnCpFzFjqJ9Mj0yIWH2wYhCNoOVxK8ruzadCc7Eyhj0UJ1HZRExOG923EhmxepSCS3F4jFvDFiQSNiWheEkcGTwO6Pm0alnxqpQLHqSLtVh491jUM9u90i8DTVfZIlQN17fs3rSTDIWr3JNXkuafg7p4oZFgSii_6-PIHxk3u2r0JVCQGupsCnscBMgeVgeOIpmtl3pnhMIwsp8mY-zEmj8GtN5BjKYvqSoXfNCi-e-Kb2PInZE', 67)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2483, N'VvMmGoLjQMc5D0jKR9BruWYM7ttT-y6zQFsXgEEhV_YybnD084j02_KtpL478puyNTNFqA_dqRql31rYA8xi7Kv4CmFnGHs4CqH7at83errHHjDzm-FrZ0L-hBilUFhRknVd609mnxVM0tHHDSwNknzR6fW7qpm6KzxsL5jGJnuliCF9Xg2P-W0z2bcZW1E2Ucir-8YvPx_Mj_QDwBPltK4_j0Wj2fTYxBkQ5X3KJmu6-8UvWJodUxJzxyVsPx3dLj77tSGUHFzCtZWgRwVT8XFO9_-LyJkGk4WWpYIFjpE', 67)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2485, N'eWi9SZqfQxBz2yOYhn3EOA-4zWImEVlUgMCYys-_ke6TWD07AOTrQrkr3G9jivGs9Zj9Og94btaubDAXIL19di62OLcgvuxGIWMJxup3IpDVQpMzQaZpc6Za-8cBDs5bxPOXI57lJ1IHaZ6I7u0H1upPMmaMGLitgRkcrRYYiT5rJBXdyAmJGGvIu_VjocJbmFNneoqrIaCNj1OSo62YFHd2EUSKAmFDXpqx7eIXG8nTwnDf7dxAIFBpq3zN9ro546vuB0ouPxWTTiTJP4rgxDASDhriotRM5N8CTs4lbT4', 67)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2487, N'i0K5wx2tMhJgE83coGYW0HdWaO-dzsUUj4XygLxl3RblqUOxcnvSoBHt5s2d9S40AKxPvwhTWOycO9uzZR09-7M2zUuEbtXhX9pKO6td4KLnVOxdK72o7tdTYdEkP7Ifuy-tD9_Zbl0YRaqF1iHf2PezYb_KR99S4pxRsnd2bNP-1FCFTyLuTbUpf2s0sNx5T5m9v_elnRvi6i9llNqISQRzguW6QccI7PT2ZiYSoB4EuWa7Tp6N2A_yPDEmKloF4He8bPtNKVRez-3DhR_9FV27s0bS7Efr758wgCcysro', 67)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2489, N'sCDy2iIhVwSEEk_fckRe5jp8NxJWv-Uhgq5h9JTzlg-wfO3SGLqRAnu8QnQTeHB8iMpBZWx_C_ZzujRsXgXRF-Nq5RyEkD9L0Qsy8SRraa6pbohOTsYh3EwC6KSXviphbczsfryIuh3cN7oPOdEHsdJ86Hbg4GqG5XYoDuV4gFf_5OGVvI4CZrplBDw0ud0JAYtYmFxg-hf_NJp1lr_XclGKCUVkc6NY-bGCd7uZtPbDJAZq2DgRIU6Pieqaa0o_epuKJXN1o32_7sFG3YIPbgRwUcX1WExMZmDlnEWnORo', 67)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2491, N'xQ4KNN4HSb3FFncIkZFpDvFk5xaK8yo3THet6KtU4hs2RF6YBQr_X-G15ofJeAFDw5NJ_nvkMjqnJNdp6PqqDovw1ZUmhg7Vh1BMvzLzckyhnnVbxuAIDGPPvKn2HjLgb6nW4EWmTJcW5aJrWjblVkpfsgVSk4e401md8rCSqjeu7OZk-2RMoQPPpsMw7794IGA5c4J-xUQ41U4G9JZCJh_GRlVdsy16sPyA960N9rkNXy7kYJqUqJasBP0DBOvEe73Jbz10FwKazqBFHWxvlO6MOWO_mOv-rFCw57YGge8', 67)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2493, N'm5rFVLysPiTe_NZjIMEH-Hk6OsslcdZlSFM96TikQLrcS0wpAgplrJF7mhp2W8CxHgFhJaivEDTRSsYBuTcRGTKZEP3h1I0JgYH-ZPAgNhtiqgsTDKbjFAzYYxx6Mq4w1Q0OH0lPD2CqrPsbpGkYsD59aCfZDDam34eK0EZEjlQJb1tKNKxH9SzsBqyW8XwEP6rX4Ga8rGGGmV2NmJwnxuMBwGrxn-JoJp-n_CHXrmXBO1icROrTJZIAxnkyhNlu4B6UAedcYl4rTP1b-Ewcq7qwBNKNnq85gukFtEoPd34', 67)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2495, N'OLRPRMJQBoBeqhMCFbhI0U2rp1SLIEmhfcMqI9I01gF5H6LrnY1MCedJV9yexoJ8EZ5HNxt1PHcl6Q5Uefg2XYETXb_5gHXenkF4F1wxfjmpwLrW4U2M6ns0DuhwXQMHJtFYY9EqdX68Hv2m5-woXU3FZ9Evpo_X3kqVRclgQa8X7RxW2K6oujeCUW4zvsCneLNuZR13AUO68IIcOdAyrt8B9CRHHjZ-ApNNTjFIsyAhSl1VpJzrxfOF7Afgsg698QIHQdgD-NzgAPiDs-hn1qwYjPhJf2jIAUNNCF9_QZk', 67)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2496, N'-Hd9LImHaLt-C-iwO-LBPZRwZ-Wa_2J3wsaU8hrmZNO7qOfS57tEXEXTEoBMPHSFn4vEHlsbC5XMn5dOETjWZyQT0Zgr1JIfOz4BCcKCgbBrZsWRu4nZWzd8xBowGfklD-Ob17C4LvOwWQFcNNNmgDedBM-BAmjnoJPJnll9DpBJWLbALsYJ6IfWAohePYu7B1BNZNdZmcbbIW1EPN2yuUSvTZqMqoRa-qS8BZZvCuBRaFo51oUj68qhGVyfDJq8o7TowhmEhJdOgwp0GQ2yTLx4ieciYdHA0QhSiHVI5Ig', 67)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2497, N'oO5TxBExKuoJqZL-IZ6aNSOjOC3bwxR37_w9NOrpcOr72XgSCf85uJP9kFMS_JUDXn713_C0s4yxs_dLfW8Js96DUk8Xa7GyZjSk6EJ-4n9htXlta6AAEMqmHxwDFncmn0jFAL47U4SFchKPtDaGFQ_jlQlGbD5ErOGwCkcNX1-E39Bbh-QQHwwslWwDgYHHrbhQlnCMBuXLUBFcgjJJXdRmY02FAlKmC2GjQ9Twh2jRUtUIeCS1blxwGEK92lGR', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2498, N'shIcZqcVWgf69lrdrySlaE2yxlt_YFtZK9zCcK-O9HAb0DB98so1JD6St7iHfnqQOgzhr9akge0TSINbMOSqpnnueps9obp7YvMub0z7mMt9e9lL8STkKyMa8yj6YxZlb3xxE1YNaVhDpM7eYWn0oI9jYuv4_BTTcYKjNVwgzuoUykWFwPVGsP5tmLQrbsZBdCluIEeFBCoTVzC0KejBLZv0c9icg3Y-7_P5DqXX1BS_Yk-YC4u8L-A8ReytQnL-', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2499, N'20lA9EcrMfB0qoSXvPSLtFi6cZutQXSqSk5_2ucq3c70N8zxAAedbaNFJoy2QvsU3Tbg5cBXThMnOeSgDJqbf9Czkm0AfLZUhL4-nsuYrpMeCzCfjw8237BWh7oUlJkkQFrW7IWtM2W6IYDba6AswJD09lVqvrRB-GOyOpvsjROLRxkoaGEzHWCcWIKtKMpIUilDIX717_b-CKaQThQD5SmVTqw74sP4L9GNpCrZoi7beUz5O88NVsdPknuqB2V9avPhsyjVL5RdTDx363Y02bNHW2HoktB1wYKOaKQCxKVgYTj-xl80qlM4IhfPilhV', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2500, N'dIAtwmMB1trkNFTbXnT_ONMTEuBv2wWfOFCUfSEzFzPebxiUFvpLuSS_o5ZMNIs9kC09Ec2s35D2mWutbjYo3X7ajMaWRHgnR9NXfcq89r_6V9CRokrEq53QaD-kTcgskcS6lcuO12h-l6tuRPJDYAprP8vGiO0B75Pbf24I7XGbDjUdaFNCCgoOE79vI8FcpQQUlLOsHtskAetZRl6sIch3v30nt_F92rPp7VBZb8N9HhiCxsFdGJYTSSFmW6-lL-YBYq5rhm_MYuxLSPvRpnTT9UMxTdZHeCLj4cdno7bpLstqlfuqXjBwCa0ILsHk', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2501, N'Hby2BP6x-gHJ1gwdjWWlXZkIXMLVDOgbMLwfGxl8V8UnVg2N0_XYPdH2zEv3Kk5sT0RNjDTYyjJGgao8_ZpqcvJ4_whr2F61q4K6qkvH9kWlPZfnLSFwg79L1ZwxSNxvQ3Kds9wn-upDKnI3kau00YvgA9GYDZaOHvvMeYPsLVRehKyOLsvs9akwRjajfDgzV6j98m1FEO37NdmPxSPojOYGKsbvNTu3hnEUSflnwQ65ks6AZ7z5jdVfPyXkMLKn', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2502, N'PciVEguBkoHP_Nu59pYKcGuwMcPvoZVhFENd5il5sNhngWoNLS6ueRAz1czB71nKfeVxwa7xj-Lsy6If0liHnEwyP9DidpPVQ1SGJmaexcJ2eU-jq14CnW_2M_1lD2fdf09ZeETs6L7Yog81lJn19B3nksPv0kYxU7yIz6085GFzKdzDZiFIqUBMFItIEGamiymhgkTizLo5HAJz96e3nkMFnnmTHfl2FznvJGGbl-_pQs4g1xWOGeFCYX_LZ86YF6txgIJJ2PikUkY1wSTQtsOlXnwhyTXBV0egtWUynAy2lsmUelu2hNaCYbh4QuSQ', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2503, N'QQFSNFLos_KSKH7tTAYkGvy71dEJEud2Ik0jiWWVOnO-gG2sD8wIIxTmoDtaSTp_kfncZkLh0hxQWNYPTyD5JcfPwVp5-K6UAwjhQxNvZjusmilKk4-NilObSGTb_VkIkOwzOV8IhQ78FtadeIV14mCSFZFJIprhgpOWg1ESoO-vgD4iumzw4g1eFoE14XJlgimGJb8TcuMM0MqtBf2q-tk5PHT26nRNNKGYCa1mwzWZ2QV0ffRTRC4sSja0mn7FNyPQOtcOTJTH0RePs16Ee8bEiimVgmvkO7cgg3B0b-to6PZzerPMAfs1njNitsRl', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2504, N'U6QwnbCAFr_FnL2zNEtO8qRM7J3RC-rh2RA5tZCk2H-i_ocLTK5HU6A3O4a2qaeNPjDOE7SJ7mUvidfBWZOYITzXLZ1JeYEXuqKb8D6n-Ylc9YVB3REIaP469eT22bjuJ6_17K2hpK6krsHEjiEqIT0uogYhaStCaxuwBokW9wSBtWmdI1GOuDjuO45oy_GzNVfnBkK1tF2w_OaVweSScDd8X-vD7q4tTZG_oGSgip-Jfe_DYNd6g8u1yXTR_nSz6ewfx4DKLvxCvA-Ha8YAvI4VcOpkTSeixcT4RvT2Sxc', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2505, N'drT-MYKLhSQIH3BeNVSOuF3fEOryCE4Y4c-e8hZ1wA598OqUoehkxzrhWbS2e0xDpSuknQjXvJNiOTsrCLY97FArQz5Uey2e73_Fkzowegjwltih3ESHQC2_361FdxaxseNDRJzos0dOQXoBre57hIMwYc8e1j7hKYcrRfCF4xQuXdNSyycDZ6PNrxLFQ9KQQ38hGRD1ye4pK8xagypZrayCZBrodk8WW9PQzwk8c_PzU2GLYZwJMaB1q-CXt9mbOubTl-90lrrbvFKjSr72ouZKu_Xb7_FjxNPouJoIk5KxOKHROHje0pr2oqTeXy9j', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2506, N'lX4zbgo-RzakcZGZ8-WJa_S_4fxgCEKpSG24W1OzEdtDfrLBBLP8j0ms25ZALq1V4g0MRSlM6J7fJ4GunA9W6gE9OmDQjEBZtDJo8J_Z_-dXHjurz9jXDmj0sRcF5I09z92AzZIvhaM6C3R_W3ZNd5tDjVF1QSk4lXTxe4fRWHYt2GH3gZHlPXyS-4sBQPipo2X8gPC0GwiaLGp-O9df1O0oMUP7AcUKo1639aSSCOAZ3iPOuPzhEuAe6sf7NDKTTAwnv0ZkXwP2FExrXFhCRMZ8iXrZBWhc2I3U4rlUtBiRy0mtn0SQHfrpvPEtfrwF', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2507, N'IX337n1Bwe17hxcreZdH-O7obmwp7Kou2OikXlbjOckXRsVsXb4ZL4etmjrI63IRIu_u91bUmqqu3YUsZXlWyLVTMhaSEBhdyPN4RlCBeu_m9-AjYqYU9WJtYS5XUGC7FUggXdj5srx4-YKnTWzjz3JZE8-gYs1w9r_FTD4kJyNSixfXg_aCHB2IbcbbGGiXUUpRI3n53j55gHO28kUF5ehZnbKSlD4nCI2RWtD651TKKwdkqQcPfHV5zklLycyGNkPjXd92_snKcLFTHxcf_yqPNDjdDaA7JizlMn4E7LU', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2508, N'dxxm63Mgg7faVVeOuG6qAMLa2vbH8KKPszef_Vn4Gf6NaNbPkyWKSBRgDkdPKWNoAaU9uaO9Ukquyxx-8oRvFBa-bj8JDmkH4XzfjLGFBUqYuOeJmi1STUtn3UOIQGbm0fpZ13U2fXKZfUdOC4Hpp1MHBSlK3GSdDczFBkZ5iHoxlcMHrC9U6LKhw6V8oqT9JqaoExsr5w6gJRPGcvsqBwYOlKn-U1QU9SUmC3HJYCxZ7pBbvghtlEdAJizIp-P_rLFOWG3U7vDWngDQbsqt_l5pjzCj76c8ZbI-H4K2w17uVAi-4LzgxBEH8RJR--mb', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2509, N'Ho3stwfnhB1KAsomUAMHtOq0FnHOEpZuL0p9ECWRx5A3NxJuMod_M5e7j0H8jV0VCvHHOxu3T3AS5B3H2rIs93o5gp-3RRXU2ZQjpXRSY2IIWgA8bZ8nS3YfJRps4pduirAxr_UkCd6xq13T1wBo4aPGW0QhxHSHge4y88bI-0RF6_5BOt1srpAKAizto2RZ7Z6QsgPdQKsXj-gax6FSaLIcENuiIcXAK9lhgoKVqUHR9NYnzx50BP7VXE3WkDrxZ4-7qPpSePR2KaZeIV61Ab21iYjWiVRBGpd-iVfMhBBp0QSnPv3NMYvRl2NHpRwt', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2510, N'5xiQhKSqg-mZ8CK73Qta0LvJK9t1G2wi0Y78l6jQ6Tm1m9nBKZrYcFSkrwQ0j3VI4N2NpZcsdrzwwS_Reckoyr4mdTHYj_9opUclfaTg_OQNhDKdcpxbstNHPrkMc9StdX2nxjrIKO0FPRjHV929OmGnEjqSeGkP4Zf2ylX0Yd32iom1a1xPJWo0P3fiTyzW6V8Mh1xfntpL42DqR9yUKz5DElFckGU9FMxA3bhrWjyFfPHZLPIea3Njnymq1Mojt7g-7Pf1LdpfvKF76MDxXOS4ucDsdlZ1A6ImdYUoYB6PgDQC32VsWPbBa3TWSUVB', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2511, N'J5t2Fww5y8cq08G34kITiL1z_SzqahmabhoiAh90KisHgDO68j5VB73W5T01cpHAnGQA3-i67CBmd9xnhZOADW6xGkobQgEYHGXAva7qdiQ_z4kKo6po1Y4bj9wv_BbXjnpn_8WjXILQ0wJeXx2qfdXtqy7eQ5-s5OO5ggsnb_w6W8Udyh5hPCbV25ZxplM-OBZn5gCC0XLYjCtwrnDW-0wp2cmn8jilJaaNLDXN5B48sSLfTrD01vuqsg8rlw1t63cMVBwZH6bc_SU1QPV9oJG7BNmq3KYX9xZxQL4uZlM8ppQWOR5JUiCqda_EulHw', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2512, N'MSb_gWHW54LVJKQwNuJ-mFM4ogplVUc9BBqFvHIm54CQMfQluFxr32xRmc7P-mPKRSKnL3MFcdMBNStVYBSNTW_TR0RoT8Y453CXyrw_C8OPKLhR3nFsayYksegOpKPT0bHOnse2-BcBWXkPDu21o_X5k_MqN2362B-huvz5Kc5X5fpfqFYAMtb8MAVJDZlLfm_52f0WuhuIjzLVk6bRrDZPz9Rd8O6PjbcEzpcBro-yHTX6fie23TWPMn5LfYk8VJNUXzpuGYPblJumeKm4G4ntzwtRuI-GNN9UykIUcKvfGrNHlEIGnEFwlxcSbEkK', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2513, N'WjA1-OKpQVuDsZ9ZosS842QeXY0qkAKptJL8CfarK9eLNH1c6-zSV1WvPgh7HXINSw4hyAWsCu_asrz7zeO2SitQbsRIf5922JMuMCTD18eLeRQkNDiLmYw4g-ZH3bln97EAHxsENuQzrD3UMw_2CKelJewPYiXP2ky5a9p678WSD600bOLseORpNTeP0noIIplY4tmaZ29QYshNxyAkOR4rnDinTHPX3xpkRJHQfWvVipHr9mCqukpe3lomMzZsmd409sPTijJqrMG6xyoL44yb-wHibdugSmH8cdgFS0k19_egwfjezG12e5cNtqw5', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2514, N'A1usRZ7IaBk6tkLuEaEqA7mO13pmH1RH4DcoRspICZwhFLxbNW1fgypfg3nIH6F3nhp2qx1KC9-XiBNAAiiVLidyBTO-QEwkbCKqxV7lBAS3xWltAGIasGZMpMT3OiTGbgDqt8SH3KbnqbuROXmDF8RVvGcoRpTya_3khIM1LXk0WwBdWaztJ3CRQ5qe5gWtlujeqECHuMnymNqFNf0jt4sCte2lGelT7cv_WNKcKJUQ7GRBVsuGZz1x0PfaBJkSigzBgk5aWvJqAAeddVaDGLPdFcUdRB0eqhoXLJNtMTE8wNWsWVFRCtOu3hU5mwGc', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2515, N'9xDenQSHl5wpc2ujWPzLMnmkk4FaB9DcEMD_anu44wpd6bLPpOXNCS0gCb_E18RMdmHo_DQpgW2cKQ6-jUq9q9mYro0ITQ0CR-sX2jNr7xyeCOdLXeyW-EDR0IvWBud6yomt-f6KpDw0ccRITk61GI--1Jpm-Hkv7uZBSN_hHNfn5g6bY59kWH0BzB_St94-qNFZdimSDPAQIQlotQYUwNKg1equNp8L766UZMG3TCym9wAHweKfZzN-LNtNv9zUxIjNwpH28LAEh-nL3csYkTxIfjf-d4ZGxUPtAfLM8aAJcYh6ikHNo_GA1YPIdJWt', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2516, N'Pf1D6oBemxOHTwYoUP9oWgVItm1SjHA9oyuozcluvqHqCg_QEAiV4M6FPUfjK2BbATufkts84_Eywvg5CHazy3uMk7ldHidj9-TMYWfBGPapWhralPirlEFgRVyXZjuL8e5rgocY0TmmABVnL7tfj_Fkisrt3lcVcn7EMrPX1gBtkNHoc07p9uBNfJSxC-TAPlwUMd7_D95vdyrXPlrfw7hMYmmljUQr3CdSzgvVzFkoXLbVs2yT3knCsl0Y7LB9', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2517, N'6yH_DgwX5EZ59bfU9epUV5Krfw8xXtQOxRg1X0Nvl_tLwho9H5alDaJfkcPRbbL4dPhzkmcWYliSeL_eeNnTkPulTJVLq3sz1ghh9QU1nmEI2qLNbn7Bll_RfGUlifxR5APx_WCdobdofK86b9wNypbXkGB6kdM4eS_r6srUIn-X4g8nFvALhglzl37KJAt3YHXBGmc7gpcEwEJ4mQIFz_rmQVttfeTE-FUGPpVjyZ-9rvYKiO6UpbXkA_Nlhim5A99pX1rp5BJYlP8lp4uesHxuhBkQF-Ii6r7tA3ubGnkHtWQiG53v4btYy_4qTY33', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2518, N'21zbQxZYZ46fQaIOMRt1gKvBf4nlcVnjqjbAE1bYahjoOtz7CWVso7dBYQAPiBuR1YzcR6HqRq5V5fYQOX9tXlHBAojHuEXMUyRbqTkc7kJeGUnISd2Ur0BrowjXX_QpbLDI6qWiR9FXaMc8XwmuzmGitSFdKtu6SlyqPLrtbBLwCJ_oNSnAbZliPpwaZBOfy_Do2MO2gE7D0MHq8VorjV2KnsMQRRTFyOxRX5LhrKs8JCf5vBbQxj1MoEFGPMhR8wnzKt2mOS6AOnYf7QOEROPj6r9gpjDGINYkWF3OlWDX1WbfP6lunnrfpt0nqW7N', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2519, N'4h5AcNoQPth_2HFVKFalnM2-_Gl-ZH3vR6vTA2jfRzLinaIs5EB7ZVCGhwvrHCJlsvEfESKzsUhR5Dj5cE6mJLquFDuJ7dN1Qc9CShTmMYiEc6c4pUKi7rSBY5AmJ4EL4tVauGh2QphQ97aZrwI9xMEVd4aS8V81DA7LwB7PI2CgXyW7K4dWESi59texGjCNPdMa7UD3wo7F7wGEv4yhDUGF-C8jGDrfwyaGDbwJ7Q7KPsOhO85d-6Hm6cFhwOsO', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2520, N'jeO_SlnrBVYkkbKN22scYKiDqd7mhxaVkXtCFJfM05W0nC5ra1Fts3s8ZlRocvAJ3eFDsYHrEW192jIoKH8_u-05PyeoXiaS0mbqsp3vQdu_EEnGCUY3ZS0GhgLZhDt5ntaS7K1ljlM-vhLEQMMgJE0U0GY1Ick6vF9loDEidskG0S3Wr1HD7CF8NohrPQOlnvJGBonqmUNR1-wMKH3HNYuUPWr2ONCwocH9r4SSAR9UhAOlWNjSmRxTp9I4FPX0', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2521, N'aoluJ6Blx_Ep-Ilx3VfhawEBMbLR4Ubbrc9CVvxLegTmxtpbKwYMt79J7h8dVkMV4mZox8FtGc3eCgWHJYMdhzgaAMv-r1NH3UfbOCEubPYKT_O5oIe9M3l-1PGmOZquHULvJogz4vMXqDKaNIuGuQ7yt-2gB8gkffQBXSSInvX8ngaL_8oWp-lD5zVytc29H55kM3iVFnf3h26r47OlQvhxh7f3qsZg1xonb7sOYO5k5wrUURyFSEagfYaSoAdY', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2522, N'pVbdxWGUesrsjz_SZ6Bv73z6U8n7r_Df8pUnL3DHMYeHx-TqYPFIrc39WSD_4XjLW2C4qQiKQr4oFSPZDh3spz9vBx1sF3E6GgnlI15fQXQxmkzs59racJ0ITaSWrXB66trEwCK_49GGDPySyM4ccBiv2jCSbFe8nkKYD-UhAY4qxCiJr8AQ8fZfMZgVc_jqvwCNW9iEZv3WN0RKkVgH3IK25M-sX2nPIljCJ1ssvN5u-c-ic728u3cPvCZyZi3R7lXGYo6nfG3Nt33K8VyE779Bt_mXsp-_oSEzWXc28DE', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2523, N'7Tfn-0KuNjZsjb7COzS5pIr009CGEuf_r3PnEcgoOsSnw_kUYeWDl2N3nmgcDN7_F5xSufniTRyQMG6YLIH_ccR_NornZDkys9juLZJJsfRyXbny1gPr_lzjpG5Au-24ol4MnR0Wv3nCN-tP0FHoyPAVtg0uZeQd6CEeIkXhS1zBF9302XZrRiWkaIyxruRkZbtl3J-Yg5xAsh3hBk4BJYzh_w7AbwvQkfF9Ghrqm4rBOODL7g7HuHGKnFhnpPbBoEU5zXmeO_ugvQUJcq1g6XcChy3ieQ7psx1_pvrMVbw', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2524, N'IsJsD3ZJv4kMMWj8UdvzgXBHLxFgeelIriDMw7lBUES31IkKBOkeuyLKKM3rlroqhmLdIDb4HJefv1vUuQdMoH6DXpRksJXt4E6xoweFhovpVh5vcsDb-F8QDX3FQt4PeqYJekeXcQZuVXM5CcyFd6VNrYfED9Ai4f5PCaKqah8E7SLKtJ8azCrRCFmkQeMZetiaF_ki29eSJS_XsEDwRL5oF38UfFvTi348ceT83kxhZA5Uh4SsXNNu53e7w-sT8RB8oc6sDIb6iJEhMuKa3hmC5pA5FGNZEcfJHhgDvd--J5qlZ0UYaG_fLPF421DP', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2525, N'Px38kKhYI7798v57rQ0K0SMaRRg7hnW7kGgDOxk8ufWMioQCCO36uXZM3R9xF7E-Xee57y1tM5V8maEOum_N2QP9JKdDg_4wR_1qPE4cemG8RX_vvLevfCymYkB7u1XDzY-BORbDWGE7M0xYa8IThr5E1CrC19Rnzx_NGACidJQ3t6OJ9tsapqjbNRPcN-D1tvzItuqHpfnO_xthPae-ChQkuwIg3OSrNQ0EiAfKXIP8uYCyYtKqD-Ln86OLnZ7p5cxqlqUG6G0MNK2r_eF_02IETO0XP9N8B3Uvy-udsr1k_sqPSXpch-ko4GbaImJb', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2526, N'Wm9gzpEquJ5eFVuL7FoQbiKpYMNloI3I7-ZtlLvgBhvkl9rw4bRlBgepCLo1NRuPidhQTHfjm08A73-Vk3YxDCmRbAdEBY5RiZwDWcCVZwQf6oIv9qzE6jS9ZLJ_ZZNNxEib-UXQmumx3G-yOec9eRvPzshtHxoDlD8KTwPEq13cdI0GeHsjczCGzIv4AUr7L7BvowF28duPJXx17qcZoXspYFSdwr2lNg1tD6ZSJZhWKn7CkpyKtVaXxxgvnDzd', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2527, N'11s8bolpXeTGOHcJgDqvnoSCj7FcpWSTmrbBr9coLu9EYC-s0UmRD1oVv4k1yHO3ErJXaL4uQE74nV749hRs5IuBjyqXURYK1uBXWK0tteRCKfoSg_xf4JlINHOzzOuMB2kI4vB_aQJEkIUvTkTzLuC_4_8QZ0nUTuG--zbBDLKzV47tlBIiQ7VfXBf1KRx1d-oP62EEfdUYK7dnXFEszQZLEDNxrvpLLpB9uPJa4Q-BN7VfJOZJGMb-JTfQl4hsUXJ6tmTgV28Lg8z56Tp-GJAtymghvdopYaKtpDTo1o5VYikDAj2ViEMSJAZTToZG', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2528, N'D_yWaDe7h9KhqAMYTPPP5tI-2Bk1Ifz85GcbJ3OUyyJiwBq-Uf5kov9o2gNBUpeU8hhrAdAZin_-4xf-0fbKcxDU6VF7_-wOnPF8xK96QL3a9-ofXSciMAh1BKPHO6KhYlugu0-OnJ58LucO0GX4s3PpJAhyFAmoOXC8sBJZJ21RFnCA72ikLp5xuiB62TZ0wUU6PeA1jQqi8uP0R6-fqioBwnSjwuZwx7pP78t_ym92hrYyxzQEj5b-gwOT3hBmoj-ckdVkuFdhdB4pDpDI2JKrtPu3d3Df1D2K0O3y-HZ_Qcf96yqY4k2uep6jbAUz', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2529, N'tM5UCn6Dshm2j9ExRYMxXbrBVg4ZtVKgX1PnOxOR56kYJf6NjHYdC0iqgeeZa8969d83HV2eZHOKqXHW5K3dOjpcQjHmJhyx_Z5ZsuO_zgEcpQfQbTp4cTBV62FIDDbysTmcZreUNCYjcrA5BES5U59bdx4_QyBH3XO-IHNbt1QDtbzsaScEpC6r1HZZX3fvGIezE6xKLgs1OpYZ2dMBNoJtkEcFTxzjxlpmb0T4W13e2LbzcZUknxfK3J48LSNpG5WDG77ImAFDnrt-UlTjPLKKIzJOnfrbAHUL8PlFQ49NvobCzfL4KCDo44I2mSY1', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2530, N'C2zWYU2WUfcrV2AHq4L-lFjKCEA4sim7Urc1Y4w4WmuOGmHpo7LANUIxztWjHrK6G_X9FVAX6jjyD9zLyaz5ziVlkZ-ezDYa984HmZ21iQvPLaGjdMWEvmpyXMBM-iF9lbkNwOE-AXgYpM2zYZoLDundlNZKXI87RAT0mcN9bfInaBHoAT-PDEcpF9lAVEIYpOEhwGQbitLFMbuSfFzMni_X0R5M20rujufzZ0PKysSvcmUEDNxVcZpzl91RY2sfA5oAdXL3irLuFHP4ZMFZD7kT7OsnF6uKd_yi8ecUV4UWKVVaWClwRil-W32YxicP', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2531, N'9IB92HvpEYmVskdVIW_Iii0bcoxCILe5gI7-0nGsJl-EfLJEfWCmn18Ck5St3Yq0yJfl9A3If4AbKS50f0cDQiUMNSNYyheaLZtVk68rGfh6XT0Vmh4zZfAI234dRvBHxewUSTcIwnMK9Wcgt8aeQykW-qnwlkHS8_6VsrWD5VePpWUIDrvX1SBKoWShr_Rfu5I10S7rExAU_hpB04BRDQ5ondqHBcxeJJ7M0aZSY5i9DMDz5fqbwx6WgAu7sIF_MbMBXAhF7m6kI6fhXJs4LXVB7tso44pnqLiFYurDoAg', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2532, N'_sq6x30RtiqdXmP8UrREAONLID24aXRT0zjYLJr0LzQeVHu8YUMInQez8_8RxWYXIIxwkIbnDT8hqC-9rCncEbM_Tjp26xxFVaOqfSQ9paSgQ7Yp1SvxqZGcuuNynpn_sGDFRQkaQMavTIV_dzjE23qMr5YQL1Z7w0mjF2rCkC8yW9mt8d40pGfGmSAWvTAVkcJQrk0dXhrIaOX2M6pLXuteXMkDYy3EMSF07_3AVnya7EiarChqBY1B3yTfWDqbV0NO763O4z35XRnXacPvjUhOD_NUSQ8rJKFrbD0iAZA', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2533, N'Rdj4ZzDbnQIBNDRIKoDgRsb06UESE7wqcbb1S9zcCTntmQGaH1VCkm4k5dODLOs4YSdzhwSiILdjXZsR7zByQVOj_vC18lb6zKq-RWy4lldN5sAIe-CSg8AD6FN_tJPq1M99GQMhcyyBX0vhDxQj1OQQdMoFPqUwQpW2E5dTeEo5HWIplXfc4ozKwufcIzqiNxSwPvTCWaAu7W4qeGyrbmIhbsXjVsf9pMbzT6WRlAuXzoQPjQm3wpQ8ztu9K2r9', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2534, N'RkyiZHrkhH-3N6vPxJg82UdG5fdQU_E_D8uo69mhh1L7WZTe_JT6lqIJpT8n7bT0S7KXr12hrRVMkDEGsqcjGTMfpLEV9GvAvrptlG4ew5fMnVqsnzR22QBvYqTwI0UdAVJBS4uM9ef32I6Q0mLmlqM0IAtE4e_G3NTgwgzG9XxU3UGLTkGCev2nb85_HEjs_xEdfdgg4fUG31h5HvWmq0MHt_drhflLZc7j_sND7LrifXWZ91h1_EQhWnyD8mPDZL2uAMgKV2Ucw_MyPAbtiH34B2CgcSl-Wi71lJw6dzOIuNNPLujtoTZzs0u_R8D8', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2535, N'1ow3gc0afCxWqCocgSUfWdeeHJF4cyGwhlRMgx360YXdArJNu8Kfga4J_0v7UCgxCBrArdo_IoEuqMphjtpuuaYq4XEc0o9ck5pOKG4oaDhqAW4BmYeUwIgRKBGKyZRyAWQglc-SHBtc-3Vgo9wTXhSKvy510mlv83YAK68FSvcurwKfwTsfAi7P7yfELYwUttR1_1koLptcJSiKQD_d1DAAoS1Kngsff9nd7elMdlOZzwvzFuD6iAT1_VbK9Jv99Jso4Zv0B27qL25hxgm3ttz8ZvehJcWTVUxkdT0P1DaGiOhs7EaQBRs5KKorO4Wg', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2536, N'D7jh7VHZ5oS8vk-Q1laFwq9zi0WK70xvf3uAMNwHuPSi81yZ6X9xiwTGbIOR2TS8teKfHCuSza8zhVZ5zc7FURhUpQzRd5tOPcC333QDzblpZFB9r5vjCxebWBhic3ZUKdWqiTrNpdOMtzZraoo1Ft6xYJJFPEiUCKXYAlZwMS3W-SPPFInw-UTcCyOMdbuHVawRwdOcmwlYR5XLi_LA_cgEZrlMxANvNCdsPXD392vX86OiYcVEGKBSA-f5fD-GGiEqp7rc5qSw2zZyP_yRQ6zAs3BpVN_dTv53jFceYi3O0IuSU2xHx79-Gg7qUzDW', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2537, N'NP2l9wTvJq4wyW4RRyHQXsNPJi8rLJ61Kj5UoVBfHN4jZifqj_tjsozhO1baZk6VdKYuZxbW9EgjVoUaM_O12N8xYhLc9L9gKC8Hek_lniUuMQfE1XPoknAly1nNhm0Pi_QaLr7iNZ28Tfv2AX3cfSt-v9lg-hgLB8rT7q2de-jZoSNra_DzXggOJZ1Ld1Ed9uxnbTPtrUAQ5W_MUm_xkC1ViepnKDb_QfMAbNXzuYlVbVapatv1C9ie2UGn25I18o4J_pQCLR_d4HtplDGj3ElTBV6p5c8kUdz5FZ-rVfhZoaV3VRHWZKk2akKT_0p6', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2538, N'hkJKLlA8Z2pIUueuCOIKE-rPm23p3_DwjZjIB5DzNK6rUN6I83e7Blw54vHn4sZcTB4r58hgRH8NquXKMch2ggBFKgfwg79U-6px2cbBwv3XfzKL0fHyRK-e0Ot770GtX-H3yY6fLyB65KvL_4BjLvKOF_ElCBkkctUl_q9P_3Ucfvjyp-n_dlnFVHU-33arVrObwUaQTqArnA06o41_Ow_sb1gGWXo16ddRY3FkuTCwa8bS1PsFGzjfLobUNjnU', 2)
GO
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2539, N'Al4vgWlMTf89sjpkdDOnaFAHogViytiLzgJIuSHq5rMVHN1XwG9l-qidbNyNVEszC09rV7Zyh36LDD05WzAMq73n8UPGQNNcIqXGjf0dEj1Yn49aGGUPA3QqjfrY_p0ox1Wr0zMMnG9KRfs1-qfk25O5tB4MFanUkq2iF6dGxPSBqcQJtzpgpogQTuJGTUMiRy-69j5Gy0eQ6jzfMG7tQRbEYUD2Aa_DWbi0VcBlpXkWwil9Jc99vOaNMmlG9fIZZxBO8CEviFVgf19DrchjCUUOVl54WQXyvy7V-AXAGthuevtJAtSVOR5PQXTmVDgO', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2540, N'h3gxR8K7F0z0rnSZ8c0USU5XsTF19o7MgrLEPehekO4VsAldFis5FsQE2M1c8bvTVAzdgphOyJjmY-CyBzd5TOFwT6rtLbYplMolLUdneo_b2QVmTaCZHCf-H-EuU-3FGJw-bHVLdUoK3OsHgVyZginY4kpLMnxoUjGoysDfc2BmXPb5rHPjL7wsZU94YbcKJpGG_2V2JyZx7qq1lijkCyc3iQnqCdCzYZBq_6h36eiW80ZrdG_xTnuzzqiZ1AoYgLDF-yRbvGWpcZS4ZWyT2sChk7Tenxk7Wz6nJdC2ReMMvTshsAdVrlJr3bbAqAab', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2541, N'A_0GpOzDtOY1wZGGODp70mrNn_Vf0RGUWNQPEcrecIxBAL-pyQedJMBM0E--K7R9pXf56M-8AZTAysbG-FqKEcNbFY5e4wuccU7wyL6EmEYSDoit3f35jpDeBmOgB5i7Lc-gYE7mu7c8yHjZ6Zya-uXMqdAZsCf-eb3WdDGmRCyceoWI5QmPcIiiLm6wkvqRmZJsQ5fD79TI6lYtpn8pv7KiCeqtJGczv_oEkX8Vz7tr-QqGPHBTIppx3-Xu-e1k', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2542, N'QPsuRm8srOYNF3OKX0NeJMUIH27eVctNhohOQJNHS7ZdGrq6_sAmQL69uRc4If1GpYYoQ4BDMIEeZfXPy2xYkvZCigHCa6fmsta9S_hgSp8QZTpNU4pxxJqv2Rc3jidm3R-MunW0-tBLFy5N1cCSwTu2PEY68lATfdrDuVVbRfO5Om7M8FLn3xTh1sH9CJ6wG8Kbf8Z4NZo-qRKaDz0uIFlog17yVGH2vcaoF2qte4j-mjGBIQXkBsE4sQUQC5z3', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2543, N'j4C6zM8CobutVBnnK2Itlj_Lqdumw222be_-1xwOy_x8UN1AJMCt3Dtd3ljiwiW6PgMEL8fzltvnOCKj6xmxZTEABfdPmBfOSpDn2CwJyxyl1SjsY_cQy_pw8Mq0apXJYmJdyGHmzg47P3L6WnTbHhiIVlHOOxxRSpib8r6e79XG_8OvAjcdLIMa8n3k6Wu5ZIUwJ25v_HOLl-ehGAw3xPTX3D2t_nxw04HqvY9ismUdfGpos1p2u3bR64aqGszD', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2544, N'TDpuOgFeRTj_SSK9j1gIHjVCO57k_YqKYtfhxXs_33bbYjLClXb9O6vYB_feLAUqyEALGPizWljXuGmCHAdXAFxJafpVU7dhfJ2ArJ4vEPad9vuTUtPYWaWbjAY_PZoald01un9UJm13bbtf9ttxXHoJmavRaC-ZlNieBRpRWaP7k_8jMhXFLOGdUK9u_82rCy1MrO7sYn4Sxub-s_YNp3QXabjGkiRXrM0yeiv35PNClDvWE0TT72GVmfeofSvC', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2545, N'C682vJgTjpNXa6Tq6hNTNuoYg4sl03lZFR9Nnr6iwyRYGJFhaZJ-FxtXp9a8E_u3XDhCPX15N1GVMYNqkqOPtha68dJ5d5gxq5571PGNrOcxio63P3j_ROfNt0vdryZC2poGHBaxp1p225cFKJN3HZbZvlQUGDD6P2Px3KUjCOGAaDl1h9qWK-fiRZBwMcH10sAMvQItxbH1mLvgVGlQVDNUKiCsvhVzXm-Ui-FV89hxKZ4qMpMvYyl3eLY3RCHt', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2546, N'm1E-H7oxOF_s0e6Yr1voV1-eqyHkMZsQsnE1nrOItV9ICuiPRCydiRLQqYu-vHT383vexrEEmIhIeEX_FzfY0ko47MXAEOskup2_NXZpzgGp7QULOdHZG4ZdQxGP_41eHG6AcfpIOBxcgqrtxZK1-q0f_zmhCF0XifScCvvFvL5qZP-J2W1SRDRf5bavcS5mXUYn4zDy-kIxrPXNQp_lziu6FGgmfV0-sUzMPX6YGiJsaFcTpWfiTaWy4_BvrJvo', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2547, N'Av1Oqm45xervJubs5CPLemtlPnBLAPqZHTC9OypWQwVStJa6H67Zc4yjVRK92Gh93sb_I76ZL_8Pdd9kQJ8SevPjF7DAVsaZcpO7dmaum9t_R61a_a7LRXb00r1xU_eLsxHJ4BVtX9UDLkzvRFbe9dDBJ7s1ZYv8Vgc1AwjVikiLw6xBWeTE7xb_HDfyHSf6nf63KmaCZiRNxOoaltL7zEOf5RR8BC70q8pvJy9TENEiSk79jOyaczvVgmR8u4J0', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2548, N'1RpXTHhGuICmWnFAo3Rb5_96z-7MCpS5m7lqzMZ_dZ2H2RrCx8gKgmAaYoasKyy2PSzX2jPeUbGtwDeeEpfBDpI4gNlQSvfLXy4ly2nw-SjPSEfBZ9Yw6dwlqZsIaIX9CtPdKZzZ-y3ZSJ95pfaA1RUDq9C8aVqPMluIqdc_Jrfx_kjcTnRoYQOi-impF5CL5gDGiOPan7M_rILFGqZTZb_BS5Ue3X0Nu_9QSoUwu8IkEuie4L7q_htQ1HCny_IK6ZfVeQxikceDvMMt-BcZL2Bj8st_zXZ6hnYUo-GqtkiRhtMhkGgNJL_9Zk9Zod3Z', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2549, N'7EUioY65EtBSQ71adtyXWmvQw970cnictpNIZyZRfXeYhVjJr9fUqOOSztrDFlP1_gVA9Vocldc4n9ErxM4oT0dUieF0SkSWPGqWunIb_OqfS1Wpb54QJnJ2j1ZfMJ0YRNXr3CMJx45ID5nU6fBFRG2aQU_lAiC_DOuxZ-oiepNR387ZNGjQU-C57o868gp3t9zGlBUhxaUwDdPVWqM4MYN5SbqUtr7y54OvmK4bJ9DqiuKFLQN57KVwE9VdYyuozw9VAQybGJ4DsZYvLeslRppfsy8kEAhkN_4yMLfDT6ZkaGqFDzsOzsSk-rX5jTFz', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2551, N'vHqblNWIle6u1G7tlhPSOuQ93albHvqhsx8IQh5GkUWOt0S4ZKuLznbCtsAEvht5eTVOlwJJ-4uVSNWN9I76-S4KOY4QML3W4gkIeq2wm7pD2RFlkEt1B0wJ5OJHm8OTgg-OPEfrn-glqygSpxNU8C9hV609PYlWSRRcWrkSxOz3r7d7CYW8tTQ5pnyQasmkyCsG3vVa-z4cuJvIzJOdnRS4EgxCIqMQ93hVkyn5MOFFM5VRo9M_JDphLsaYe27tBqRYxE6bm9t-yg7XbwozTTE9q3Em5d1xhdOT4baRRmsumDTJvjCMqt5DRBTZ3VlA', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2552, N'tQPC4XAzmzKEC0qAosv7GhLMIltRAoQcPfYjRUQoMJuaz4ezrIN7v4r1mF39u-KB7h9dx8Y-Uz_GU44STgmw_dC3Pp5js4Mo8eAhwEZ00XTMxtW5nlnWU5sieDcBKAiz8TQYxU8QAJexIGT0jggxLm-PlNlY1QzMP3fuv-mxm51k1J8fK-X1AcirM31UMFOmNEj3fa6gthL-okl3-HVZp_TTjtfq8SGIIKF-J75NkNuEoRzmWbzrIFhR1RjtWwCpR2gRgvYEanHQ0-ll8kA6V9bXnazQUZ-wIubY-OZWHrh3fGVc1tl4ZQ0TnmE8BKY0', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2553, N'hIMkchPEdMeYs5ln7qoj1O9SzMI5egm0uGGnCxzOahvUoPtRc40BId72QXG7r41mlw6ZPP-R6nQXrtT9vYFTnV7m8qX66mcIgWC3_ccJ64Es9sHhSqWqkomP25m4SjL0XBQ-SLd4O3bPIkqqgVSe9eaJIZtlufJanJG-WD7PtmUE9dLEQLAW-H0_c4uBi6LMV47VaK1JhAj68J_sOEbTsJ71e9bSOASC9EBjx8gPb3sub1De_43IgXvaamIcl4qXzfoYpTvzohaeMvbgCGjr1v8v--W-4zxS_ngTlpzM46om6SdCa2dgiTXVPpqKhS4e', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2554, N'ecnjnAEO7nxL867PXx2xZayfyIjxmHuPkrXqt7uy4QQD52KETvHdVcgrV0Mb3SZMcYwCZZPBDmoQPJiGFqy8rS6BOq8XZ3Sy4ZTm_r0rmijS2Is3WAJgBlGnhmZ6wxj-PuGzYIbgwaZX8nfxi-Hlb24PEk-BFT3fzjqL6CAyqqX2DrRviHPMs6veI_UvP1l7MSYfg2NKTwjEGRWc3BQjxIV0f_N1lKVttsPBYvWUC1bXwtjvFxwQcDk-lBT-HXqKqagsP1wS5PLHObT_xCdVelxum7gXK5ZsN6k9Sht1343mRz_vJFJD-iaBHNrCIhKs', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2555, N'xPl0lj19Dx4myILuoyCf7x7wR21FmqaxE5sJqvcwItOjZ0064Hk91UdVF8bmCCkBS18oCjJqYxijfzNOBPOfAReYZxlbe3IxeALJoj7Adle5fBqzJRanXqfH4K47tXtJnr20uZ8D20wZTMtu7S2V6jJwJ3L1nFRCtHpk3JYA-h6C-8hJ_YkVlR9e2Uf7NX11a4MlRq0KKzQf66L6eH2BMQPK8p1Un0pmOsgvHZIY19-dINqhNxoRZ1NQBh2R3wan', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2556, N'kL2hCuqhGE7EnUeqL8WcNTcSk4m3Yz5XVOJA0z39RQp_lmpmzEnnCq8WxEIlI96o_9NaOJ0EJbU-XP1GH3pO7GMj0LvtjPgFqQG9FRyJ-4TpHs0ltGHaFvR48BPVHAdftKNGapTbc0D8JPbKJmZEq-OtudgXw32QAG2dA1q6NjPg00r28WB0K6-OZ1rcQ8j0AcQxQGdKx_7PWESwCu8mTkisD-dIKf9nD1FrBfvdBZf2874kQH3sVnbC-2POVuFt', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2557, N'QtnBYD8V4nLzOrdQ859qjxAaHyg1uvKck0f3dXPPedvQolAtvzo4y_dEWKC9z81HVptOxYdFxidqYsZ7uyjd-z8qXeLgKAjn00jpv7yVRhaQ1jbMy8NOkoMdYrtKBaOBV_Nw55GsG3Kxbz17pYbHl7hdaqpzXFpRRgbVt66cGK1urIL_w31TGn1XtUwYLaVYv64cZxnA02l-FOHs3XAuTGC14nqRpdlqryJbb7J-ekxfXRwbfNPvETwKBvjtSdZ4', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2558, N'qkJCj91DCbbqGbK9h6lGRPPwE404jvtY9D37zsoQURKu7FzRUaHk_qSX_VO9xoSlsm-U5TGItsfOmeJ_FjgzXbiX0UPcMlvjF73053kBGS6r7bQIH80uTH73-nvFMmT-bGm-RFSfnsjmP8q2vtGrL6iPQau5EnjrQx-bspk9LktUmQAHQ4M-krjwUtahSHLO69tSRTNSbDva6HJE5BpzMLdOgiaC9-xvFI4RtLKQzScyPlH92dBMvXBihohueyl_', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2559, N'aQYh9n1OKtCH2ZpDihuTac-p_GtMm7NbRKlcXMWbqCsqUu4hzfXyMqQMh5m33CEplpw0RllqABUHxY-4mRclZDBb67s4YnDEyGlt3PbqrQmHklg4vIXpcnddPVY2u_-uqo_GuWXkhMmlN3HcE4cs97gtI_ZfPV3o6YH9P044U3bIEpA58Du4LW3DPRqpMLDD29izzERGUVvbbcjTdXNqMLuTOPcIKjRRJ9dLJtbuaJDQ_qWaxXAdAbgybRgOLvzX', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2560, N'5HDlRmeXAtRN_7dxH6JmEfdEe3eXn9h0HB1Z_uNN3jq4Cur141f-Fv-tPKgfIb531XNdP_JTby-4T00eKtMC2PDK3LjuAB1UTmBJA-3Si524aJu2_VzWoYRUb7MvqjI0xybmk1KOhcJbpI8nF2VtyTn9bKFc15UA7IAvTswXPCHhO6W7kdJqyqyaN2UzXdYodkuwnxgIj3YUrLFeanKDTjwa-WeekxdKNNrPpd5KbtJ6WTSqmWRvTEE8aaHLfGzG', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2561, N'N3JR6WqVYzqVdIOtG3-OxyW23H50QT-ixO6eeGzSI1h4YL5oHji_mLdLBBXvAUFezZz2zC-JmzqC8BuOcg-fgCRtgUCkF57o5Uwhb01sQNf1st9sT6cH21hJTz2C9U9V65spvSaWsTlT4Zob9LVmKO58UQThfUn340KGZ1CkipUrXWE9IZB4SxyhI6yycMQJ-5voz_3gzGOD9mkHVWHFCIreqxd2YBQPprHKD7dbSC4NBcwD9oe6xV_k4rmKv8wt', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2562, N'vCfPKxhaEEaIFvAGTN4OzNfmwqs4ScVkWoCs7npvaivh93ah1ZNfKEazXj5h6HBsw89x61SIohmHXdst78zvI0k0hww2bN_sPXi1E9Vo0hbyTNQyfWzCDYhC3wGqOIflQKGqfXzMQkJ6oa-hjt7F9RN1OjfRVQnPCDAT0iJ7CHRvRHFTE1mGc6t3vRRw9FidDNjhSNrVQxXzQuYG6igRVklv7z8hcvA2wnyh9lnR_CWUyzJk-YvaF-0nNA-EbaIc', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2563, N'c8ELU6XFOgj5pi9ANP_HY1niW-VKNN6fk8PGsT0dwxSvKUOtQOEWgDRk8G7J8ufM925d8eoxTWvnJIfal7Dy-TgutH7FHHw7TRXTA7DibkjlWHYNI-TWid6q5vaUW0WdJVkAquxXXWn8SAPYTC2p1F6GuOAX0vn87fdM6WTGO91lU1kHEDav5vHUh6-gPRcJ_6BIeEBuavMCPjs9bxU8A1VUHt6w98rmzThEcryZbMplpDfewgQWK4fIjsnHLHsV', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2564, N'xsIxYzd8okjKDy_W_1cTCccdzIVax1BKZIpKp8kzOr-I4I2z4HahEJlmW2SZnE5dx2KBybWD386nyIVJl0vBlBb6fuOI7xmgjxszjR_B558rf1nXwgxG6w-9NhqDv7G0EiSQ2VTQJXQ5vKtste4FIA-it38S_WDmgAGHDdPm_q6uXNv-UYV3yESrCKWI2P_NxnDHC0tosNZFF2cIU6OO2TIR6bEkgxTdDfMMlQlQfF-87LaIFuYavyjXd7m1Bc5E', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2565, N'GdyHAphEwadGxVHHUcj52ncPTucKGd3N_I-BCjE9Sr7zNUArBd_vsUhi4HPLUTGVMN3RFMYJdZCOeB7HsyBM0XUyOdhWMlZ4ny5rcCPycV5dd0AY7Ldm4PY744mHV0Oj5oWyelLhwQ4jXbonkGSsTrGKCHvfIfQXTNELGVIQ0Fd9vGbZkCSZrsSGJmhwKJtUeuXanRsgXm-Opnm17tAzjPTlzXfj5Fdm_toU-pfJtw7NoiUO1Qr95ftd7dBiaKHQ', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2566, N'4SrSRbhl9bqiGIIWv-MGr6g7PKSDNNKadh9h0foCIDAmN3PpvmW7DtrESF-FQY3oDFqYh4sjhNJr5t0rDLOX6cvr5x_7hv2Ol4TWnsft9I22k6D4AC3eOyuWr4qg3YZpVz6TTgfq2haCNVM_9WGuLYKQBKQu7l_Sx8W9Tk3cqejICUPX8yBcB1pvmBbAfSBxyBNvLFxTV6kmAuFHC190NUqoK3FdOL7MnIcn0fuH_S5QQ3mmzB5nqT3X8ALrlk0I', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2567, N'HXoMCokfAM9rK3zIYKPHTXCVqokbY49BL8-YBrVuoTzAY4Av-uWYDFcGCOhxP_SqKjaZkfKOdEP7FIF-fRKiZfFHlVOp1DO-VqquIT08j-pYkKhz1ekHrRezTITC7doJ9P7a7F9dCqnVdgXT5EyCf1TyX3_62TdrBtDkvNn-b3hXMl15QjivaldVb4jsKaMMEqH4jNCLIL-q7kxmGoTFbV9aOiiv901PMebQiDazOFUP8Zh1b1mkPmn4vZ23eooO', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2568, N'8Kx-2Q704NLcLbztINcvjnq265FzOcDte16Tz3RgHI85WuiS5Z7Lw-sbi_XZ_FrmlImClHAKvcTGpF-LDzyqGGzmuS3c0xXKSXOv3tNykR-E_RKHwLE5qrtrX9qrRYAgnEDRzBlxNM2TLg8BdxFVOWkmxdZM-WrXF3KXf3aymMgQ4_68F5d5VLWDSUec2OhJ6skwHufaeTfpzUxB3i3wKihO-UjyMa-Uk8dQt7aJB4PzWiuRShMioUZZTfEy9iNz', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2569, N'KHTqigae2_ct9PHPPmcU7s6KZcyyWqlDMji-A3r39N_wDJGNSWPaG_xUsLfm9FHjan455KM8XD7LVwLA_dP-7m3Y5rLnCsBQeVfGan29Y_yU3xxco3DFVIkFA7sJOLbVwbjQo0ozJciHncF9zsn-f_EY6gnISOkHMaeYePyywgKPEm_iL94_C27AfJZaygvJBJyj6K39CZbd-89fXqcZ-jOBmNNz01pkVCk-X28DA2mFQELOb951CpJjRV7cCsh7', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2570, N'p7lwZ0K2p0nXUGHLnLEhsOAA7tlwX6o6A1y5LfA8HEyuplRqCq0_WG4gFFWEQTSo9B8FQAqgGgaIRNZ_UK1Cps6XGyORC7cpuypJRQFdG0pvQzIkOT4wIFLqdR9VlT8aUJwYQCb6xRbgbqBAvH6D3p1AMdxMAsCOmq3jPPnbxM79K90tWPXJ4UNr02ZE9lbrA5tR9nYcYGaewkfKxw2BfejpJvePJ6r9wTn8lU66hosCP6itTZKn_lbpIWZOyag3', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2571, N'XhH7F8ZwUF7vH3pEDuZUhenhlqBSH3bvHwAzmw7kocMYK_eyk7HuTtQSEn6ans31tUUod43qoNSxco0i7sb7LUJY_I_vScZwverY9PWvmxhoON926mQ0_T9aZ1h97LqKoaoA2DrutP29gtb4wK87jlChJ_RCHLpqz7dqmxdbOdHQ5TkRI-6gQofsJMAw2BN_j1gm6i_V4aSWUIU3__MjMusBf8L0-BoEQXL6MWSqlhCWKumRaNKdv4FqVGpOg1kc', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2572, N'tjOWoUk9Z22KwzPaBsTtgJyJWqq8tBRueFBrU8-K2aDUR7jIVBsCqLbITEvNFfEw3-eCUoQH7X-8AqwM2o1Z-cG2DJbi_Ikp-JvwKAScHz9LuRBjFg3IpM8onHzCd5TYWaXfHb5pnxUwj0ycSV03tZxuy3teA6nPVpk8EqOizG3vrlfDeY464nWkl32eocCEB64shS7yPbbZtScmyK32RGiUBe1AgJBszKUhAqzG09OXQvb9kMICDxdWr5AYP3uk', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2573, N'tGjlXNNZk2w6hCKX6Y0xZmNNJH0vZy05BFZWmsVrc9cdqmBHLffOgw0FPyQrptM4vaf6HqKftNQZkjHXKVN7mmDcx1WeuoIouqdL6PGwc9SzMkww4piKZiXdqZccZdOUXN5MNt16hEtW3wt_hxtC1GwXpktWVVnr3SVZyMyf2ozoSapcoP5GpqinQS4epIrr11d8Tl3uSqg0-rvb6adxUnd1W1z_GGgOUWgKUSeUv5epwZtdsTVPxiy5ISh3NCNe', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2574, N'MbQwL3YN3CeApE3GJ86xSG9PrjdkELWaWyENsUYfUHOuJdJnPs9lvkDT6TjjwqCQrxzK13Wdx0mbbxzHPx8Y2xTuiqkiMlNshAX3x6-2VK1o4Ya0sLkwrbd03Z5GgyNFfDOwwp6Tp0Ggu2czTV92FDvQpefHS4vzPPfSJTXjJ5iXaiTxAhPzzeFG1G312ZFez57Qx4MwsFiILYoa0fDKwn0_hQGUL5NCp_XWh1xPRLVA_9m8oUEijYtsEQlBpNQX', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2575, N'1sbAqXh5n2wEJB3xFsrv5xzCiSS43Biv2ZveyLyeIwhgiYK0wrGcKwz3Z949GZY77SS7lMdAByYxybapJ56wTdEeljt8JYudCRPVmOJDYDZvw4nERwnYM7sVdUN77RwaT-VUng-DJsYeJWdP025qldhH13W2TwurjOqzUiAxlUn_a8v9NMJEuMBoMo5Kc5M0VwFAwtLQPrqwIHPwXUBVXrCBCpP9OdCQoqIWuA5L655ZBJQycr68KgLviWDeA6FT', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2576, N'5TmE6V3-fi62MGpPbkUxkti743rrEzUmc1BBEJlJO2lF_m50gvilyDCvT3A6-6WKrQhtP44TTYZUwBRF-F0m2xr6q9rOzL-Mf9lafAp2peNmO1Cq62cCChG8d6q7hW3D1lNKlMzV9g1YVzRh_imLiDFqs8I5Da9rkWtV8Zy1CLhhP6vZZzgDVVREmYqRWCIzOk5DoyCV_PmI9vOmiU_1TVb76bqoSIYoEepJ3HE1sIvkR3bRl8U6_5ySj6Ua6fvx', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2577, N'DmINJc4qmsmDBqChBDE9fPX4VT_9jV4K-Z37UwGoLb2mT4VjVu4l6tkIVBugl3WFU-_j-yHyxLw9TqcxuWjRX4R2s-xnIHgClm1yx6BaS7Gw03Ab44jnrzXp5KSps0zJFLGF1KCw7zqjez8YmDc5n7MVehinvrOXQE27mXBcQpeGZUdo-VhvUYVzqNHmOY92PDOZGzl-D7iSjYJCJb-qUtYAkl6tAaz2urP_Nmt31tWFd6JpvXBTKtTgR9OlKgIk', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2578, N'aaDn4V2kPy1eASnYVQW7HquC-krk31e0NkSlLAUFAWzFY4pGxdA0ybLuhIP34LFbQMeXptKLXd21SqHXMchrYQpJPmAiKP-VfMywnxY5V3Ci5yoHiQ181fWKx2nV2HKDCIvctUB7Fhg_xY_K9aNi96BQWK7peEqcDs8ry5U1-IobxkWUKe4pSMrqFrII7gMPdXVeOZ-SeM98dOC4RvcBwziPGWOqIlAuM2GVMfcS3R38PcNbKCv2f71M_0ggsXBH', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2579, N'FmRrQ1r24uz5ZC1g4ExBswDLvpbx6TVn_JDrJW5p3nppd7i16VRksAdstnGTwfDKGXdUmSjxf_fi7u0_kyff3ygwvuCVJDyOm7Bxku2aLvHKOVjGUL2o2k_q2UZhhH2XbBc3XgDLbclY_nIgZ00pCurbakG_Q728xNVPdfJyBAfRjZ7cTnHs5raHa6QlI37KDkHmRHujSmyN3gubzUlxYtv6kUaOnxtxrCf_SyYpuepBtotqMuJTaAB5cxDDu7qW', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2580, N'7XHY4BSm_wRorQRICnM5Fubo4Yb7i2PE0Q7jcXCyUTIf7gFfGOkxfVFcVOqEbwM1f0o-cGeaSnEeK8l8THmK22HePHG4QXljLfO-OyZFsyvh4cHoXzbkVntqoDWLHzm3jWy5KXOoIiCurViTrxaOtS2aVgWGd2fAJcpBrg39sNhVtYYhQ9bLhnERKyVYHpr7PT-P1JvyIKu_4sV2vlMKD9JNz0SXKXB4YJs9eX9uix2hbdskH1ppHIkDRZvuv-BQ', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2581, N'ZEkOMYc_RjrrJikfNlBtI9Gazp3c2LQ_dYLV3GFWNmZF8kXNyYQMkRzUkcOoqJJMJqiZ6YjUbXqNtFnYHomDJdtpatHEa0V9NGaDXlt9n6C1qRGw0ywMdmEAJryz1lG_F_Fr5lyfd1CEZxnLjzNW_wKEJhdnc7ZAxnA1zafvYluVS3FC-J-mNVvEmZN2eki5h4D8lpLO-QI0eelLqyAd_45onTfb_yPDrLgV24skMVOmuBZ6up7AMCBQefY_CAHd', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2582, N'cSMsE-YKqd3zOQ2bKk9Dxjcw2jiHe3DQhF2S-9aglc5ZmCXG2b4dA5loaSpqnVjY6dUJO1mzJWbOtt-qmyFZpcIQTV4lbTlOYf_EL8_Z3E0yZvD41ON7tfDP7Wc73a7EoaWR-izU4Bxag7Eb6Qwu8T-VSvj1EP0GbBxqX61PCyOztkszY_ycm_TAHL2E75MmbS1F2_eveA6umJvfQigQw1WFW0kpxm5WKSPmOrlorQe0XJfY2Kpartpjb7A7XKJF', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2583, N'5ifMeRTIFKnJxSIJjKjR18l4VxHGq-uis1EbM1p4hI6OqxVgxrfkN6AvLjhCBdnmI6YIsq-WBfKpm8vQpmwICo_nH0WUJ6tFRgDZI3xeE2gL0jp1bAipKs4a1BX7lHc_L8KwapIjPtXPotlLt4sM6P5GMATYfc-XwVDfZkVltRpOn_xcVGEi2Ma1EWbFEUttecrbf-fzXdQ3309KcWmGQ4XGHtOCmsAJYcATFiaHDLgFhYkeQ_uSjDD69ePmSSwv', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2584, N'HmQmkRTPX9WE2HZjKc2JFVCxuiVv37WOetsEjo2oUqF3svj30vJqasgtOxyq2bax2IrYr9frwbTHPGKbwRFEPIR2fxBfeoF7b0Z-ricDfpzmLgzx0O04npgIWO54pP5E9QoV6jdmrK_LRyRqTJL0ixatEPpDS2EdFRGZkrkvIlKq_AN4-ceweEIg_D0DvXizHC_Tf00bCp2gXqy2MtekudnFW1Um6B8vEuQ4nGD66W-UYJRCnwmjIAV7qtZWP_ms', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2585, N'eXaMociXGf2bBgPNEveaG6b-YS8SHFqcyiqRNqO3g6U9Pv8e94AIaJTekOxdCryH8D4-qPsPYPANm9hEPTpZWr_54umRpsjpiBPdWh-NsNQN23uohF70jZ_J_13VpB2f2PsLvXeS-H9ebrBQaDJ7A_FhpV-OmV7qRpYhnlT0Eb0zhWm35fIL_o0CLZbf6WoowpV27qHgCTNu8H4sopokt9dmhY3XbjtCpjHKIfuGHIOg1wIy5QWj1y6_eRFaBnuR', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2586, N'jLDIxLDFd1PfwoYVmhZFWlL-oOHIsHKbNMhADErYXsY6rDNoulavOStwH0wOOnOt3pZvuscPmhJnmXMylwS6Ghu5iuBT5W525M6JsyAUOd-tR0yRe6XgCOvD-yVNYIgtIJ_5N_oHq4eSih3uZ33c9_znFWqiNJu-UJmfrs5L1eY-WiYWzaFQlGq3Vhmg9OHSMT2V1Ob6-K6IgRGLXj_STCoLfinFrbwg3OP349-Hp3EF_FcIXAqrR21wTmHEZzVi', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2587, N'I0iZSKtNr2xm0QwpvOsTpb2gLClinD9gmBmgVvIDM3dRVk4r6mR7RSBhpSm4U6BjjLWsLHpA9XMQK5H6GYa2BEtuzEX0Xh2fDpIxJvamzLA1nipDTZ4T2LXoRBuDvxH_q33eG0HnRrychAxAsw3_5cJbmxxX28MmUKtDcdGSPTV_1Il_SgXLb2NNmKNUjSKuRWtMjBHLc8vek3g_BKZZljgL2K-k1CVLvFy2fZMyJUx9r2YCnXGs3FQCebe9K9ia', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2588, N'bh7t184enRDaDdXqlifu8w2yI1hhKbJELXs1-vgMeTD8ymmOm3KJJkJPFp1c4UnjPI9fMnAJ5LAxR5J8uYoeuPSMb5bKYgHUmahYfxmzM1GbOPv9XZoQJoy2gNh2eVdtIkA38aeJZ4TG7_hDlwN8IrrQXhNdRZHJWuAHVLPRpFhPOlImapuTYaKl4glDuQIm9Cy4MyY8Fg9Yt-YIRC6AnrFmVPS-a6TFrXNHCAE_7J_yfQEVyupxm75eaeK0tC5j', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2589, N'GSEB-3SB_LZhTH7tJx_Wp0hg9Wu7AesBidSlTxXlzUvfhuCx8cgCuWvzx0Fk72-8N_M1IqCFfuJwTzEKDomGk9T9SwzUXiLJpNIWnbA0mrazl2iBF-jne_Q_ZJBYbTAD3GJpDT4mJytj7n8QrPByHVatDbilX76ij5ywGAFIqXGrri5baMf-o7Yaceh7pS3AC8u2A1qKGFkKm70cnrrJHd31wmbasgiK80knid44TI1JcdOBkIxemjT5SWduKwBB', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2590, N'yyo4NW2LOQoZBAKA_p65T1dCwOFNOLMCDt9lyQDkEdf7c6zt6AKuM2DJQS8MGVrmnPg9HoihxBFHs7-hSUkllGW86yLA3mIqh8Z7g7XAww33AXX3jTPAcobxvfhLjTl-wrSvJsrFFuKBAu4AI9kdzpfQRV1TV8juFLosLllhBbfuMIlfx3yXfvl6mLeKjj2Rd4gfMoPMtcRN0_veHA2kbHLdFjAevJJAs48bJ6SD0kfkVj1ZPWAs0yyr8DsLJQ-4', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2591, N'NfM_zrMsoMijV5o4c9LFycbGIlhs50dFcHDZAIo1QdeMK_L81YHzcTEAajiDCkvsramOuif8Owy_1y8aT-epQDlGl1tR8loOnbcL64veDdE2tkqfkwlz0jFA8wf1oBtJPcF2oBurZohYbf7jfMuSa1NLZteVA-FlkeMwR5Y8mCiPNUjqx9IoieR98L9ETlps_sjtJmfshFlkyfX3-syxE6qEEKhSVejujW-egcHxfQ0UfOcm3KLvaMn6B7s1XgMK', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2592, N'ZgUxkYU330MLk_-gboLYXzCJEoDty4CHUpWrn7Jk7G7JxxrrmZ2LYnMCV78ZIR7LcHhPCA0jcNWeyFT8tloJguytZmNLnIH7o35Cep1FbELjUR8egdioPssgu1KwK23U3dIadKkE-ILicjEkjJGU4RZP92NMUDzVFLx7QNzVYUc-xTvx4_9pPkjHajuBstm9lLK8yY8gxsh_O1hMXxDvTM2n8OvsVhAPNQQxX4pdeMDDpiktGouHH2k-1sgs4-lv', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2593, N'nXB-K_FSYXY2pV2Mhr8tgthD8sO8O2wHWNRLci5DldEVfLo6KFdQEkrzdUDcQY2efJlMHSSpbLIZ72a_Rebkv_ryFBvjpwCgJ3LmeT_xlyb8vUNJpt6Q-NJy8CnIpFZrxEi6tFNfF5UxP7KwkkOVD-XpTADAahMnBroTZDJVf8IPBC8XdBm42I5TNoYkpb1q136Hcjxatf_JKiyvzbzndtTlQ-8IUA7JqmM38gICfBeVy4zVV3YUWoZgja2XVJtQ', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2594, N'iM8q9I4FY9u7K5U6tIfQer3PlvrKD6NmA2zeYrzTgIqvYx8kQG5V2CIr3m3IsTNrvHja5nDdugm2CcadgkovMt_jeG4WR43Ru1ZwwqmDdZvUTxxsoTi19PLghaseyORnqVeMKH20yPa4SnsHNPiYzzof-HAN7j7Ft83LJJcbS3rwtV_faU9t7l4gp_RwDo-gml5WW6LoJRRGJt_DXdtqV2onFCFftjnVYC339-Zh_c3Jx1BCPFWzFmGy8S-nAxPO', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2595, N'mr0wMbNfv0PrWVm4qi18No06o6O7q_uPDlJ2BSeyrVV84LAKLgt7eSlSUcuwNdQj8j3j2gLztU3fWDpnT5d1bbfJ5fw2UwHNbU7EV1vEOOhFFZEFDJx_Hgeoam7yyhlVb6Frzm-46_K4vw1m1n4NbjSHaawIg1Wze3_cxAQiVY-syMpi4kQXW9DlSgCajMFMfK5TavheOwfktZyjC6-pV8yfhF6gt9GDr0AG3ThcfHNTwah-1QthVO50wXdispRv', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2596, N'HRTrSU-Zvt-Y3XRiz79iFoSQi5FZoibub5vUMEBQJcWWjPWy6v0Z8cecaVDDlVTNChepq8UfcR4t5vCTv1QEogg6WXyzplHZp3_EvpfuKPsaE1AkQDoiICTi7xOdBn7v8Oa1y9PFE8yjWAPfQ6yGCvB28wd3ne5PuY6yYM0_SxjjM5Kb8__F0gjWlYfhHFg7yyPGe6UooNySQwJ6Zn5MzWirko8LfmyD9n01bf-VwmbEv2eIPGxfEfPFexlcQcCz', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2597, N'SfSTx-LcwFIsMAB_E2F2zw8cQvHA1hhY7rqheBNnZBEjlM4JKIE0hPGPY-IR8u_FziHQULgcD5tNFVXeAYdOBJ5Ap5RvVFEJv-Hp7BF6KKj0JBoLN9Smq5TxImOhEAOFwnpM9gubvOE9z_CcR4EbXi7oiLndg6gXlNV5KGDvA4UlaGKbRcbSrYNQIYNKsK0on0plvS9Ns1dgDnRI1vWkaVu_Z_TIFVmnmSQCk4KNXUOqMo7GfnvKxOewRzmgyuYJ', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2598, N'dZ8YTcXjsmIeKZEnVk51ZgDKYzddXTDzGD3iYIfR3cgmTxxFhMr30xLzu_7XIK3s2PJwwUqbTs_RKrECoEjWkk2H_RED6HxGhb-twT1kv6W4pfIPM-w2b6dnrYuMW2Xo7dxxIT4XJ6vpuY9Kqile8x8kUGKr4ZlzTnwQhXch771jz3u8bAc8LRJVeXLxvpHsEVaLaI2ffjy5Pt1_K6Ypqm_5G3snvTzd9Xn1fTgM-bHNBMn1ce96MNyl-hsiwks3', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2599, N'ZiRUoykrEM1KOObOHWq0WSM1gO8jgxqsgQBoaqc9V87wrnrOQQ01g6sNixfXBz03Bcz25f9HoM-D7u2CnleMf_4jmM8oueHfD1E4safeUPAcXR7CkXwe0TyybHk0oHLyMZ_mfm5na9Gj3GixtQFtDJEBwC6KM4q0jrp-kocBu9lLEXlivMaJwmFBoDx29eF8vGYC2PhFnzc02APil7He7nPjS-6DwNLlMw6JF8DclQIp2U54gH88ppAoIdb3isY-', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2600, N'de6cWDow3qjexB7gcIfdELWiU5hFG_ovvSgA-UwslH_oi1uXfa1cvJlzHo_rw5--kfNMKhcjA6KPaQbmrqOkBqtztYDQL9FVpwafiLXi41t14iNvm-GBE6cgF5mrw_eNXeIqKv4Li3U-5i1N4C1SPAVz2PSMq5WotN8sKcm2XqVceiZbFso87ofDdWO0Dc4eMg9_0Q_1J7QkBFLtv83yKunQAyTjRxPCWkSNN2gZ7sVtBv-Md2IOAaNqMc9lWQ4O', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2601, N'SwRr7UoImeeFYi8ejP-LW-r4LVnovpV3nNloi9qGxVvWs7CH56QY-ikPzb4AaVZcCy5q0vvIJtpjTyTsG9cRE-JmW-9oQszVoUF9_gi3GRU-Y3iFcHdwchjyOwsODgHnlimwG0v6EHnbiHzAf02Tzq322yCTE7pvJw2aXrsBj6YZaYtAQOhl61JWY88d07dEpbC0Nef_ag8unGd-KPYOTQGJ4YNIMJs_cVOGvgjtgAbw-IPgqPQyrPPqFGb84Ajg', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2602, N'lIU27PhKJKkXx_cKNErxZ_-03sSdqWTvKDVaibjGNZZasmKM9LDXyPvXikhJ7PWVK24PS5pwEM-jH1ZJjGLmYr5mn8PgYwhgk0PEPdwgsKCPsZSBK4RyESQrYCFXbuzE0ilkdY_3Yoi1iyIJGfkNyyanIsVk9Q4O5nYb79VzogM6o82KWUdNEPeSLiJ4YJ0IrY-NHthiYgG88d00Kvtc1t5lRuBsB8JoCC_HBaI0Kvn6jrdox8Ja3I-YBjSz5LMw', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2603, N'FFl1CqWKJ0dKGK-mGkOl69GvmR2qeDiQqroshQna513gEgPDUGY-gi26AYk5dCERI5y8d3Ie1ywekwFfUVrlomDEuS_qz19RJJn1NlSKmOt1iU6ea5JJ1kU2F2tQQ2URJD2TCuIuIRp8NeigUUG47bO6EucBwcOBLWG11RgyzMBXbFBfhtZx4aTs-zNsBz4NqhfITuNGkqWGRY-5nYrE_BWY4vvKBTdzh8TZ_GsoYq6mbSimM6yavBcH1ELusOdj', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2604, N'2ldltYAXdc_Vu5s2_obvokMlcMb6C1xwGrE_rPn0KkYYN4zSMFBJuyl6XoU8zbgJc8rYgmEXwLtSg_47i3qIO-V2Ga7iYQI69XLAj1j99aeu-O1N7P5BdcF6M_IyGa9CBT6wGVb0wITdUkIZUTdOoVwAW9ZYAY0iwr0Vm1eTV7791KppSPF34_T1726KT2iG92tjNwlDW3AQf_CkBjRNYRHjlKZe4fVioKhxbo0kFTwUsmrkN4Lnd3VXSqFBiWGV', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2605, N'f1vokvGG5yyIbf6Nt8gp2-eTVFGsOebyCW7YleLw3TWtCAEWeGPrZI5Pna_DCmMgRd39b8OaDO_lJvWVEqrvXHWr-QXfY9d67Ooc_LXoDbqrhFCLhtRnsT5KLoAeZYiPdoxxYuDO2Y0w63nKcwZx2DFMtt7rDR9mavFtAqFFTWKJY6ifSjsAicJj4rZJHW3drBKoMa2175OhDdbU17EWoVCc0OiNH9oNdy_XRyzT_A_l_qV1lUQMYORLydJ5UdMm', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2606, N'mIDI7J6Ja9qQiSoi95aqYfVGN9AT-9c7OQRC8pwlFvuPI6u4lqgYlDGQVB8lJF0Vknh1QsZrqYKIdsnIbJk8LY9ROZ0YscgECwvpJowGCLXCSymWRLB7tcKT7666f5MP3AVY9rUAW5bj6uAa8Lc5kYzkMbn6f94us8m79SWepSgp1cBrXKY_geN0LJlChc_bkkT7rbhvCFOCqHHbIrqF1oPPNXRzgY57IL0AiiS4H5HIkSGDUI39dmoVckwItPkq', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2607, N'c_QZkGFri4_4MDk72SGCHqyw_P0A9HD7SWzx-ci-Wxr7Zz1C_MCb_w6Q8vv4dalBFicGl8FQ25m3olMUNAzhpoH4P2a0ahm1zcvOqtQdGx---vuZuzsSk3rco2q57bdsi_r8aOazapwYtimfwjaoR8Q-XAj3i0zeCkP28SqYzgoERrv06v3oM2uEk-z4QdDTplqQKU9R4a_gmqvZpJrDTUF8RK8YwBfkSqbXVNY1WhZuxfTyJ1WlvVnU6R2H-dJq', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2608, N'QODt5bIDo6DyYccMMPmdmBpqVDKvapmpJc_MV8AEZaa1DVraRNuUXCZzpouOjjX4apw3oCHVRFYxM4jpte46T_OGK1mtgrkgrIAoRDKk74vOeTNTx_TmpUEpkG031llttuYCQh9VB8bksbnNkDsunSnv0k7-GztvEW4_ZDptepOnR0yKtFlPqa1Nw01e6n4ISJRVZUOC8ysUoh9z4Cz-qEDsPQEyj2LqkeIFPhHudI_V7O2Ri-Qfz-1sybi7nY5X', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2609, N'MzUDaBsZZxVuhTTHZRPGlouwKGZhY66tCz1J3gz0uHu6pQpUSmm2kRCZhCsgFLRfVFm4bS9qarRCYii_VYYdDgWBuZj0SSqftlxCV_kBT6oJucXxK18JyEmpwiIENZW9D9y5RXpfvTtrGE5hO9QUQLExlHZOh1_GzNLlCrpayBqp_y9By_GqqCbdvvu0i3kx0iKRB26Xcp7uUPbjLi0D2g0eFkveeolKUuedM9ASWryuEexbHnwHmfPOoQTbH2Kc', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2610, N'CpZjNKuTbV43yl_Qm3eBeyqIuXh5olahyIvTDFm3xIdb2uOM8fGARHAqWxLeMfzN9xD7v4m2oV0cD-SCWk9iHfZ3AHbitHDp56f7gDp13kR9Jf9x8itMIAa1qsnQlcK_sdx5lQyatUMaVi9D7MaHQJEO47g7hMHDFOk44hXRfBKARV9kn6XBDGA3Zg_ufa_iQYrAPboIz7i-T74Y3yZ0OsuCOZvX31ZENIjjYH0MqBeLonfSvpdluhew8gam9_NC', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2611, N'-jzH7kK9e_8RchPyWfzTwXMg-eml5xnZasRBFszs92hssw-W-J3yP372aNSTHUBB1u2qQKvifATPzO4a_Gw_xayowpgL1g1aErV83rDeVYeEsdt7CwMPJrb82HTBKume5dTVd8LWydDcuFkAu6IK7vgRmO6_BeubqsL2uhXjc68tkRoGV1tG5goppRYyGVk9fTXaGwgZQq8UNEc3A5ooOpaKy4-kcOh711yvVqDyF-kSI6AgZT7WQgavpvgqcQyg', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2612, N'q8llSlkjz1FM04VbXAD-VI4-2szRqg1Ca79S3xgCjdit5Qi-gRHpE-4tpuQ9O0DwomhGeIQZ7o8rRf7y-iZlVXNG8bm4YVgSFRlOnCWbiubthuCS-NlSft9oMRxJ_oQVs-dER2cksNGdJqc6gwok1GnXntBXHOcqUulq80vNSZNCRJtEAxwn2nFKvl9oIMwIblI3FNZfO6WjXkVz7XGQnjoSFCwkA1986WD4YZKFVe_AMsltvn-lqUX-qa23g7jk', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2613, N'RX1QIojNpJc2QKTkUP411s953tJeH_nKPVqy697W0iwoxVZwF3WUNzYYiQFNyBX4iUZ1VzDdlpSlWyIcK-96s0c3YNfVMGvGVhrKFFU3d2yT-UmNbnb6DUFg6ynoI9Hn8OPqIhIEtbPsl04fMikli9WA1s9guGsOe0Nu_NiHCTSH_pTdCbF2qDpsghx5IuWupdEvNsVkhD_px_6r1u8qE_x3i3K0VqcQFj5llJHX07eRrZRTh67yl74E72n6IfJw', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2614, N'YvktboZw7Yerf2SsOEFdlYuvT9J9SD6Y2uTTV1Or7pDZk7y7z8J5kWMy1KhDIhVu8amXT0r6sXjmPVXxlUhL93O_r7P-qhujcjjKEoipEYqUNG3o29Nid4ShLT0DVGyp0JXWThVrRErYfGeu6MJ1kLNpXjuwioQc_54s7j1CQDjs2W_ZVmN2OGQBTEtbVm6UMPn7L_-0rLkQAFIrLj3-B03CK3hF7dpBx0inSQVY3VKxybCHUTmShdKZ3oGjj-b9', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2615, N'6wB_346luB8eVx6z-dPIXSNRulWQeR4gNprtYftEj0oSlvRcj9yj9DPKiLCtcdo7qCQrZoDFT52MUg35ufJFdHbiUG4DuPntT2xZDmpisUBT3k8unw5wUDksHOjXNdmuHp-fpUN3OIRvS__nxlidU8b8P6Qzcvn1sFhXgZz0G_NAOX4w9WZqfykXyj_seFE8pi02d93_h4qnw6l3hsaIiarhTztX96o_2gqj9Gmw3Req6vwFrglZLstb0QZvxOFt', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2616, N'V7lnzVlyx-NBjErTRamzhsGkDGDqkPI-AkK0D6e5cG7LbMCn9vgWAljfakCb6N7SQsebXb4Dp5V_o9RO52iz5ap1M9BvtXbh-rQqqQbNbCkVkAxa6RQtMYDBtwSyEOiGhulrrMOzKNOUWNrDgbIoOOL5UUMphibZw7qUFLnzp73E1yIQUKQfcFzXjBxrhEGgwifKS_r9mKBOQ9_rUeMXeG2CeTJRd6otEO29nuw6LUDs_HQko_dsgltn5p_AzaZy', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2617, N'YQwEjj9c70G6GxkccSUfj1NBPeGUBBEhcmmc2pFg15u9ROoEH3IO63mqBw7H450_qAWh_J3XENAFBBPPIoP2KJiQdVwnteQzIdQYLw-ar-qqKY9kBkULm0PJx144yU9Hl_qi9RAy2TRi0m_1BQoe5H5OOv7Kg8W-dDpBAK2FiKYLeafvPU1D_zLcOyTmCSxOoGR7MFiqAmgOIrBAlDyONKueiRQ2qy7WVXj8tewLHW2GBdnp-KSY30nManvoCvq_', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2618, N'GEgTbZj7-OX-Jg-R6xXbpNxOtgexHfDEPakYojThJpwUw5fzqtFyX1aGKFQCKPupdY7XthosFZmd5mejmZenU64ZpyarGyxJqa8VlA8bYg1xNLr6Z8twMQH5b0lPh6Re3ONcIHsoUUiABnkUKbsum5ZwhF9cq5XTq2ywcTRAPlb9MAICPb2v7dchQbyTxFXeFfQC0l_7eJTcEIBIqgvQsGawULj2sDBaUAUyRyoJLMzbEe5FBzmWnw1TOnYOq_0j', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2619, N'yTQprYLivC4efhKhsqg_kDmSHAl4TNdqvJIBNTJcsl4SxNa2ELC7TYsZLEakMTh7BqVOXApaA0xg4jyWdW6uNkV5_NApSwBXPi511Zbxoh31nPHparCYbkVVY22QXT69zLPvLNFin04ky7lZo_ZyeDWBI9LHWcHR7xCDoR9MjtvjI91RjFm6iM1alfr9ymtoxmQho_T8Jui4PDYe8vV6usNVDuLo6XyUPPp6xYcdaqjnCfvzB59QxkN9k2_Q-KHz', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2620, N'Un_uQ-IapZYSYlqQkwFEwqIDCMpt-zt9PpoVfVTOZKBeT_xyCJ3NTXXwVfw-G06siMsRCamtYS2uLD4Z5jJfFxHexuyOzgQLWYlUEBv710MkhI8-AXFgEo0PmqGVnp1spUMH-xRtEnBlNKjDbI7pWr8vgC4nlU7lzQhHvXRS_dPZSLS4KIIXMslWVj5vSICnAZPWzDeV56KK5CFrreH6oUD9pu72UUczgU54DryEB4-zR_8vuKBo5pHhhB5fDJRu', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2621, N'AFwcQwsS7fiBl-_wm5zkXOtNNOSnCuda3avlNcVHdunqjkNJ_voTXm83ev2oiiX7YoDB5BVvTi-Zf-A9O2Xrt7VeYrpp-UwgwfkM4Edzz6zyhiPYnQswNSpUssGzyzfAj8KSnzj4pm21eKaHfZdFYkKhuVbZmyXbJESBn0P0kcNnr7D4a_KabwsilPGIFcGL19w-1aflkJEhsL3V8Fg4okFO5dOvGaKDwxGPF9ZW3i0jt3qMT5CoTfLcAmXntW41', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2622, N'YCOWSv2bEJdYSRgMnhr7OoPUJt7ezyKXDZvjlOHobFwxIoinh59s44fOmnQiT2HLBGNPyYjyPkYKD5Rb3iwiGr9j8HMDvbU39XSJlqMaq-D3LskinGwyspb2mNjxBiv-kX4r1q6EF_JhrVCVxef4QGWWiPQUF8m0-4jUToey8KBU0zk-ua_rYmQyZuZbppM4liOW6y-zLTPEIUvEPqYaUBzwo1GYXH-rNzSIdK19400oHD3_O6iXJmjXPzpm3lRW', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2623, N'DIKcw6dyPd_IBSsyfFD7oupRR3iMarBXKgBfEbvlSBqhjXOu7ZlmO_2nByuVIFC_0Hw7hkxQcYou8Ldfy0NkM9c1fl6qSxnw-pxdDVC1uHaYlHod-KqbJEv0czfN1RN767KMIln64xR3Wtlczm9e3YhUE4HsiG-3mZdVEKU-4L045Erg2lRMK065JFLTEN9sPWy0JNeKVbFeYW6K0rIx72N_EunXlF1mLAiHsjI3UGZr6Fl_Qib9d2X_uZYZFRpI', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2624, N'W1nPC7i4bqOffadVoTZfWyN1wVvXdeFuE2T-DJpl5mQDP9MVbO71RO8K6rNumk4IcVuieOffJYmUNsHmGngL3-ZkCFAUI4S0KYTu6YLtVti9CcJ0yd5l98e11ZrF0GFIk5GM6OGU-7QOW8xBS8io_GWvyLTBNTv6gaELSHJoqIrseLhrhjhGyrTuVhdCfKqkQTw3zF5p6qDQTANvrwL8ehFsBQwMmgpundPAaRGM10lZPXnYTXsM1UaEnNFlBJk7', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2625, N'Su95HRKbj1rytoJECeX_zwH08Kkb7rhNqXeTcTAWmKE7QDnSmhmbThsewThVa14KXbeDduFArusg_htM6YXbvYgVKHtlD-0X5MptM61DnEh7Zij3AZf8cVAs6yw-aWJ-a12vPxcomnvkMYr8e1U5EPcUigT28XMGFIx1gPGGz-sjcYbFns0GB0WihBau6R8pGkDNW_VlfXwSUWKlmhpLhczdbNhjuCenjni-AjkgDD3OBGvNOuG83uSN3Kfz7yWl', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2626, N'aDjIYpFEB3q9wwBAnt71kSI98132-DWZAhRmUAVXtc0XUUomN_43UQObKCIdHp-h7Gs-BialkJRmx0ZZc4FhDAlzXt1GXyTjLJ2qtLZ8-8CA1zLvMa0DUxF66MIFnb2-1AwNtf6YzyPSS8horUYbNyvDxe4F4eLnzQpUMcryR9D9FMb4_5OZEr_Q0UBUEqYlpPMaBdCc4YSCltFpRbySDtJRtLIZWO5m_mXFylkTnP7N2k28216-TAyQzE3Z5qnF', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2627, N'8sF9Unk4yi_FAOGkuCBrig-wNZmguWkOmVwNI_r9DHVrgQWQ4u_cJ92fngLsZVHH8b43Xgp2htT333GVdA6ArPmfUpLh9bvHiCzRKrcNcLNPrTcPR_QV9vFB7mCSmh-UjsnPA5duN7FHpVhNv6_FffiekzXnqanc15R2qQzfInIMbAlAJQIWpAuidPnUNZscSrlZp0l6-7oWafdpZAMuTkeZwYa51SFqhLvVIvJHQodTcBuNf_BsgO6ntnc2Wfa8', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2628, N'Hc4nurkQbbCdlfSLN2AvmAq_HG_i44UK3I2UMBNDLIjGC1KasHgcwWzDMAjMJmbPX7TY7RMCvsjblxZce5me89YezYaQsTYxUEPMFZJ2c5X0vX0UKs-rEd8Zb233cFHXMjh_ZryZGDLmjr8cOA93CbDxHkWhnEnwroTaGaeF5nVwn6m0PWNcC-B6dUfyoI2mHC-CF989vulXjQuICQi6Ac34aNzqaQAsJ_BfH2B7v0O_PCoqmnZ2wHqZgCy58IBc', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2629, N'20Tg8xnV0iXm01kECZnFAyv_I07LpouQVLxFmbX8kdWaHxfMcGjIg-WoWXEOV5S3o9JM0Gx-Xm8wXG9jhdwV9YnC6IBiyoFf3aHDLsCR8JEptW8PdVjHM2rBcCfqYjkbyBhYdYovUwgkSWrQ9mxj6e_-CgakOizpLocixowg-daDQnf0ZE1LJIk1Bgp3Ef-Of7k6CUhgLWO3iaAFzkRwfHh8ChvCLDXVx7_Eq5SOxuMS_3ZhM6NwYsVkwNqRw1gL', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2630, N'lGcns1qM5GW8FlYwJ-fiLh_CtwtfrKWyFuKig6wbR5IsXGyauybpDPY-FJ5soPvOSYr7T0Yz0hRrtUIZZUkBn1JtDta77Fs7vMzVuhwNPajcaqq5lCAVUvqTTmGPs_sBbq0eXXrZEmXx_mv4evT5Ofzf6g38_bGw17jL-oglayoxFY-ucJoVRoipXLq-N4SmtoBBFbFIboRwUd0o-f4lfd3OvwHtZslOviQBiKSo-nxi2vvZH2_6ZVOZ4Be6H6e7', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2631, N'xYBEK-zRIW-VC1nyowsdJp72CZRriMMwnokT14hetvjA0kLpni-QrBDRKimgtpq_kuaMxWFh8qzilh4abT9oIFBmas0-FpAckRysLOt_GtKC1w1ECtH1COONetJj3USXEqX3oFfHm2L0ebN9pAF_fAqiRJgo67A7ZT2kjHgjK-TvdvfhS0iAGv7ugFUXBV1hN8Lf6hpkk2NLz14socmnsUna-uZQccurby7QoWJ5C1TxvE0zP_OeH4E4XkFtVgAw', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2632, N'yPPKYTh_g41y6SXOk4ueX4kj9utv4dfq87uQcDPHUXS3cut0kP2ZqfUv_7ktCqYCfnyfy3PpJNkX88Ka-JDoURQ3V7Ax9LRoJLswJvlQ_j7Z7FqMPF4TTceZ8h9-1K1vWHrtXxpkAMdKCeSHaIk7Ag2BfdZr10ZE-r5-UkvikWWV0ReHLix_qHMdnvR0HxWFYB4kqKCWCD4HesF7ateD68BM11jhFARUMJ_QUeVxOZ_WxFRTqZ67jec-MZ9057PF', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2633, N'DfFx8D8R0nWkwC_4xB1Ha8mG09atUiH-8A6L_Y485vkB2qrwA06qKCodoPJqGbedouTExsWS4Dvcp5Ls4lULys2C2WO9QpN_UumUjAMRvphGaNVNRqleuZhIlWNqesE4_yCik_oe2x9ltWItx9Ks7Bchl88BB-bBZ-qyvFwUOGDOdCSA8AgvECe1iYM1-jdDtb3XvKcnxmVUGuY8AOEhE4DI2I1SepL2nHFgtIV2iFuXuWjhYqD-AJja0a_naHCB', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2634, N'3CcJlkT4zSeZ_7sOIHY3S-d7Krmt-bTiQQVU9ktcGbrEYpnIsaLjb1cPAFmAEF4E8o1TwKsFWB1LsMVT6BBiGUpjW4X7LbLMcxR014w6w-s_NXEk3P5W2FbJTkJhVqhdDeU7aHsK9SkqcqWLr2thlXb1wVI9FuzDBrS_qglP184kWp8BLXvgQbIutNfqNYxNWHKlnTc9NgTEUfdUsbhVRzTO3XgsEytaj41BQqyHE6kpBY0GqkC9k_RAQGUGufaE', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2635, N'-nP_BVBwR8UD_Wg3T04TtcmojiZRbTPsY1ATFUqJL1_4kqV7dM0ix1LTAeToSYJBHMAWQ8AoaRfbNPE-MjIpmeVDbEfMAwxvTwZUbUe8UThKwLqdB6CG-Z2oh4Eid1zmemFmyRCwKmZR4gDboZ9OOhT90arOkhTU7IdTz-cPjRs90sWpKwy16Ii0JTNqqQfsew1utoJnHouJvgLOmnMcfDne5vxFDKtS4Il8bLeqQ2iCsF-0Ks_WXGhCPxsW_XpJ', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2636, N'3VdK6zM0RvJXLVBSy91sRc0pgPulzaVYvB-9dhZ4IhCpQG_-7KOxkEXE-lwmY_eXB1LNP9eZT2tVPS-RQxkCzLuYGKHXYBPWo-x68tJoHpJRit7encerF-9BTKG8rjYhp6vDz51yBijd23qkLY-fiBFrWl-FkL5kWcVjcU6OCl0paEm3kO-I4i_Ew5M58st7i56iT-rfIl2kHsUNBFGfg0zFLZW52h5iaSdqvwa-kcThmowPeSL4aFG7xp3uS_JL', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2637, N'oxAkzn9O1qGQX7zzMNSai1o5tgqWopoI-1qdf-Otd-_Kq0Oq3jq1eHFhEcs-PwYwtK6t0gn3CDdH1avQyGPD_TThVIKJFxnAC6X9cCAnpWG-VHQArx6Ezsf_LjNlQ4m_s0rw58j_qG0poFb0KJVLrlR1JWFju4l2vBmCp-KW5pzyMoo0pztrL7jPco7KGsSUFcotlbKm0dmuPDvzXQhGYTbp9g9hvCupf_7Fdv4yOeoLjt2pSJKILyixX7qlhcv3', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2638, N'9wplrd4q-GkPgQL58KJQkmywJY0iqWqmcwkjrIRdht0pde_VLuQYWM7wpqtDbwbGpQiMWtrukiuGmtGwveq0jKeJ4GjIdk5ng5CWMQoq8alrku1p49VPnQKF4k5oeHMC4d6pXgeHxU3agU_yGLznP2nHSaINqgIy5jLwnif-iaXxRLKZUtpJQmB3kpAiBMYnLoOBPr2Q-9KCKTgNEujHXWA0X5cWbcKD6IuB_kaKa10BimhbH4mO1xX4aMbPzYn3', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2639, N'bNtMJzt5iVgbKslAX--NHv_KCnIVr0anDV8gI5ZV8qVbvWJl-TrojjWuWbaNSjB98GOPucPu85Y7RY-OgbRDRyUKVepyWXGyB_MM9ylpwxjgvZnoMrFNtvpGsJru0XzlJamTSDWETySznStAUs-Sn-S8CIlVb9PFid6dpcm1zUHEWjAu3vAd6OcNPFIorfu4zij3lGrDkjjhDJiHsAqUQ-DUUUv6oJF3NUo0a_nudWEbF5S6iuC4NIqyYZ-HFy6B', 2)
GO
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2640, N'teShilBRmEtBjHrBta7f0_ggABV_wrcLPu3ihtxzm3u2sZ0U5xscnWOujCtUwwN6h74x7gPbUbrvlTHcE-HkDhieNTZPLWPb6XEICBYji7M-8IespzhpjsA1g171DUiWQMAFZE5gVxm1JJOMVGQ4XGNdZQheR3i4uuQ2ah8AqfJvFPb1QYslAP9hy-OpdKM-7hKLZCbtAKvGmhgn3lQacK_xUyOkmkqzu2u0bvKsliwNNW-S4CiOTPOFescyFBol', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2641, N'_lNCHh5PllW4OpJhizrNmLsRDvf3THomTx9WVNTFnAKnuySKc_b917QxSiltToqlNTwU649H_eF1btkplN4z6Ft6Uh_UPP2RejKIZUjfB54T9sGwn06nfCFjjpPHaLOa9zN8pvNkIyGGyje67mSoquA_ZYOXYsnJhjkEcWY8terLFJbdfretgLucMyr1fjtopCyb4cRjQwwlA5udG223bNTacSTFVJJ3QPYfnFOHVcjl4UCpAB6DmAqq1Pj_ijQW', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2642, N'745p49pGb-_TgAvxvRxIvBRCbCUwBMpWOYJKz5Krp12zk5_si0M1Q6LKeXbfbsblimDzvYSCJH3ggPwWHieytylohe0qAkKDYL8-SIQf7JIXyXpR-0uCGfDe6FQZyfquiQixC5g34w9AYI_XZ7yzgxmINFhQTWGJQhMsUiECUVq5GJBkVSz3xSu0j_ISBO-wQm1sJLhHFMJKM7qnd6EoXaHYsaN-ivXavUpv3mtvFw0NweaKPFSSgPItlyoMGf0K', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2643, N'-9AAdnymPzL90GKg7HeP_REwNNzBAWRJUeqkhQOMAornWvypZNEBnKCrqkD0WIprWLP0Oe2e-MQQBPthezunOxf6atEd0GkIhb3kLIpvcgwKOTYjPktMNG5GRAUn4NfhsDmhovqe863aW_2CSFZMYntwYwNnHnpc8Uxy6Irq6Hv6-Fzi1Qoo1lopDBJzLLGKWL53zYWW59gb2HpfknpFhC9mTHXb3_LA_6-NfefgqaaWTlVht5hxclm8eROq0rRy', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2644, N'7reY5QiqsvpVIu0RN573ZQGzi7EE408AtQBSNqR4loLF_PY-7vFRQICHsII0yZ2qEV64YjGLx3P2VkJN9Q3rlGlbIbh1382Xyew-jhmbwUixxGiwHZl8Yt4BQ3kB4RllNWYuVTxhYK0abEyfpd6v-ZsYkJTiLRR-mw8rLndnqgjl4jE9Caawy3LoaokbnENnV4z1Ms2-pK0A9uxx_Poq6B-55IOvKXHVi59XG543uMVb3Xp71YOaDcQkVz-0Ss5oA4ZEWCBfjLQCoGhaLJZZh8mc7fMDcfTUfE6UBbarEAZDsJtzfPwVvKlJUivQ0JAs', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2645, N'uuvN8SLNttX94Q0m1otcc07ISnYxUkBtlOFNIo5rwuBvEyrvcfzHjfCA_VEYGy2VZaKdExlOl9dOAUOU-mu-Qn282GyAiPgN1HMry0axwNG4TjQdZlS569evjHZZzfBvYv54tFfpBLox0UP3PetGsCWCOszu0a5HtwDOS_gCgU4cIQ76US3r-QgWVa-mYamjy_kT0xgutISaBAnfYBqL7QvLwui4BrflE7TwbaBCOU9n1NL6n_K5I7toIm_YwgxCZfDWzZfIM7qAKB5z6sCC6DE0V-vtOHP8R_nOMy0U61kNqskGY8Ez5fSADUijJJrS', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2646, N'FLll-Y1FP-j7NNGRqHe0RCtC_uvPwulJ7Pdsta3en7eBfa4XkiOjKwa04DTh8X7c-SgPjSAsoKxolm57ztiEO1JFoA2QSMkUVYrKR8iE4b757N90qciNRxU8oBEKlRGs_He9KBMcyS9B45lOBlsXWTOjN2ADKyVWsUZVbORSEeX3HhV6QlH2wEtuhbUr5DlT1dRRor-tClpvbOWvC6Xgs0d2i6KBZ7U4VZJWjHEjvs3K8B5j9NT-kxsdb5ypTTt8AJiVULJ4LSsImSwYGQ6lPPTNi8ioG84BD-Ql54rlzp18mzDbrOdydnBgifpLISrU', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2647, N'nrP_OGNe1aiQR9GZ9kB8isd2U4itWPj288mZOzcoxIqSTA_MoDlGcdlT6RikoaWK_c8g8ZQhGkPrZeRWMbD7eydoWuH7z2HJoIBOfZxIhPY1R8dBmkQR-RcbydJjcwIuMd3rlyT6O2bZ0fZWHgOwhfU4dAB--IKYca8K7LGK8u9G996Hx0AbhTAfwE7Ndb4hKmeYa4HV4QgVqdJTLhdn9rPzMtv5RdwKPNvoWE9XD0xpxAIDaY4cpKJ6K8XDQCSucA-J2f7BT4Ep023tkmHOu1dc9reQmfAoDoeQH6snUO4I969VsPGmMo2bUg-Q25KY', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2648, N'YHfdF_yJQJ63ak8zd5b8dXN4Ht1vciXsTV-pNNDF09rdcFHRWIovmPTf3LZEJycwp-mjRALG0eitC2wt9RDWalwNqH2C9CIEHFeDcX21YIZZR2BlkwD6dqepDE50rMwha3WeY2V3265KnYe9A9NJNqcPyUCOXIlwrpYKtg0GTKYnGVXyvQv28pQQ4G_tkMnWMezXar__KpXFzYq2Lpw7nztnguZUY2kdKT7f85ePoW6K7QEIp0WriS-50tYJ0wXwFoRcVeh2DLVxrTHUmH_AHXVDtJE84__CZeQFQyj4r_z_PjSoFZ_iduxotZpTPah1', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2649, N'rpfgvuiIqn3D_hy4aJwFg5zdt2xc0M3wQQxo_qYdtuhZzECgda-wCY5m3IqBWv9__Ee0p5xS5nZsaRGVd9veB_TKePNlIbfI-QFUL9pJlJ8k6Jx9r3i-ybqxiv62sfIqIn6EpBzYt4clTyL7B5rqMiYGK4lWSxj2QR2rirxD26AYrssuDd8FymeAEUFpACbYZfuH50sSwqQFM5kjzWwGrmQ_6ofmjdO467KqBTOKAxkFE_G-yq-A0xeAqJ-eUPTPloL9PB8WIvHmhkIZukAmTRCjvEHQu3FOm7CaHBcqU1c', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2650, N'7OAPSmPH9TmCkzYk3mHLUpPvlEtaPlevF9tPuXFqzmibCqDJSRSPYmmSi8BZFdl52OGAQEd-T4GgVpgtuYYjxaXWarQvfSlQAL-sjMZWQMWhHIu_v30NuXQ60_EM7HCgY_UjYxZRrmC1LLhgS6yekVlR1cppG9mHmyoBmKSjO3_nRpOY5s6hbL_5I7RAeLOHTKnx1WEvB-5FnMQcDLefDoA-a0dsPr7dnUQKfCs5LbY6Xwq0BJiHwKx6qhsN5J7xEWZaCeoo7dJAqZ7REAHgzeSVHVgq1ZXdmAL10pjzdH0', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2651, N'bH9o7IcBdcO-JcgV8z0kDALn2oL0X5LMB2pPKFftZazPp1-OcHso0GltIG-VD77tkYL_jHEijrtrZdeLrRDYz1HVTvcMIe9jW2roulQR9e8i98n9srZMRmjYWTevJ9R2cDWUkP8MDzmQZNP3mvsOhRa0OAqfNWEaDcNqbJ1m2lg_IUcktzzvCLQFLxQDy6eNDz7FI0Gzi8_1CTrTvR01W9wRKn4GZrsd1ceFrBiOTfd7_FemBFac6oVO4irnc6kME0uirNwqVE0A47A-XL-GEV6TBhvXkcfJgWLSCk0gxtU', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2652, N'ULYABTaffZnnQGuYCV-ZYnPDztd7kDI7iVCezbkVV5XwpAmgUKbOH02Hg8_pAqZ8aMVFufl4oSXW9ggXvLAbxQMFrib0_-fS6nYbiMkakazyY2njknZk_jR89jfFUGCNarkn8l2KBp59Pq2bLuvN7byFj5d-VdfPB2PEl6jmER2cTxfFKicNqbg5Sl944E-SMWn2llbQ7EuDZg5kYxBw-fv9RUKeSp-ziUnrlKo4nmYOVppW1alzlGB2gJezFFzaCF_iuuq7PkueffI1oyrh_einlhuN-M0KXzJ1AT0P27I', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2653, N'KcSwpK7pNMdTrC8k2B4JUAn3sFel3U5xNPcJilFRJf0GsxLMEoc7oZTUeOR1zAsCuzn004OAIFxjjilyMjJElHtlm6NrRgsvYxybGfjyzLWO655LFdRs_95P63yFIc5QPccMA_NMrarKcykqxzUHESSK3xKLAqtPUckEbEvg-MPZF-B7lSiPCVy3L6jnKTY06R8nvHnTAkriRVMw8-0vLpKsweRrwsKZwYjh5WqTdZy9bAvozE9XDbV1tZFmjr7xdceK3VV6NBEdosnh4BdirfIbGXRRLKAg1kYPKUQFqHc', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2654, N'Qj0lGwnG2yADtBMq1sDWjoW5R83pCJ-sCO8ZOOYJDljfBtvX99vNgj74IK_PkNm8CQHSG41D5qO_cfei2f1JYIB8nwLwRjp-RxL08KcfwV5KHXCYwstCT-NF5zJx10hJqsl7lQBTQEqdZjUNFEysZX3H3ahr6eQe5eDjEqH3u8F_a6Zuhw8YdVEXHtelB4GlWshb32-euRHYcY64_DNenKh7nkM0S20rzE-OtKkWqhY3Q76P_evonYWFL0qX9PbIni-RrokUCynDPrjjvVaXJ8U6_-q6F08ygOgPMLXG1Wg', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2655, N'HjQlWAHdDwd38TUCuf6hdPRrRsCSkFLXQc14RUEKt7rpk9FD_QKo5UbI_aGuFdQCfElvdpirXPHu5V6Ecxy1WCkVEqsYZqX0S5ZDrgd5UsvkujFSj3yriwhpiVaGuDHOyj3tMWLsiIxJsTedYtqMBeYwFJ1fWvaiZhRvvcrlvPXJZIqV7A2-WLjU3qEqvF39gVYVg1-isc-_Rrdtn5BCwQ2p_Ql8CB7GKvJZug28CTwGXk_mylvS4H0brpdriB31', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2656, N'cZg2iiSnqNWELyPgnABXGEpyONPj4va4ytzpIOQKZ5XFAt5aTTzOLlGCqpWvIcchtFz_RxZAdF_C82tqEm0bTUdQ22bvgwomXiu38CW5SuFU38jzzWqujqmQUcEnMMoVKUMGKVM3ljiIXITkXrk-tCLAHE9Zb_Y4BUgeFodGjt-cMzinILmla5SoOpXai_NXVbwZEVy1hPgS2Hs8tmnKL0-Uyd9lLa-QGK1-xUyGXR7SujPMD7cjNhIRHtbWM5cuflJHKUOQEpI4KSZjBIqfEXPR2k12KSznjsgQMadA-k0', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2658, N'ENtTmvPj5lDRLgqers2NvjIVIOygMbDu08wZVsxCJICvcozL8kFksi6gjMNTODG2JDtlb1TNySYOd67RxG04KVLiTF-AGoUkf5Hw8D8Lh82fXm_4nvGSBHwT6IcB3wjMxjKjYDycSR_d2aqAH4E3VUmSZtTW68X7xF-9WvlilDpVp1E_BJDY3aP5sHP93TAwangFy3rqAu6hOMqBWOjAoDT8SUPSPazllqucZpFzZjg-LUU0M4_SOODnyZEZoNHeBpIwpndDVgSrJPaNUn-6C5aU2tJjFSXYiJVzH_bxT4c', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2659, N'IAlGB3UQzTMqxOGuN4XhHEXvcMDUzmeWaGT4b46Z9N1M_oaon_P5Bj_tRbrfMHVd1uIlKzmiZ7O1eMkhVI9kBNBXi45otmnyH9ce5R216uSQgSsxGc19ghPB6vpDduuXco8pjcfROOhC9UNxcn3RhGElb6H8nwmQkE1q1GFldfADimDu0aC20XYu43rwJPVU9LpDqwY3CQrfKzYPyt8rhGcEYQJkmkpGowpzUejo75DriPbvAxI0-RfnGNAP8qTEZ3Ok41zQeoedJg-Ma8rTxDyEcvRhxAAJ7UiGlcgYAuc', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2660, N'-4eJHszT-vZdsg4CzQOvJTrRCx13g42E9xNULoj6iny5uHdrF7hSLIBU1ncwED_-JqDy7MMNpEmKVEvlIHHKnX1aFLBRCwHWYNnOBcyla1afr9ZwbUplZjzxrPNpeYZYAOAfHgifkXj1-vyuQWvgxiGeB8fgp4QVUp_uP-JVzcTshBOQ_Gxk60sybGq5wjAB8XRcCOEZXrsGIIm2qNddtez-aMzIQ88QAgKi-qdEnzmyc9yEb8QCxD3gKNCQNCUhxpi0IxK3XKeJRCZl9LhPaThY7QyvwWueXvm1bOOp-Vg', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2661, N'bZYXxgJbL_ZFGwpKKA-ZhC6cBQfd07y031O2x1mGBycLEkpIPQwW72b1YaxX_GT-8ztwwR61J--dJ1cQRsfyO3YZdn_I5Pb1y0kBYvf7Mx8SdYMB-ubWh0f-2DsUWbZ8MkQCcmeWnz7b6lw_E4ZOT316MCF6XDNzxrpozj-5_8UH-OcR9JoOD3QtKYpgY5LeklsQZWCef2ij3jKNpkyNHLhX2Lk7ec-hmxUtqOH9wV8hofVjzlLJiNUwWP61QIQIsziebracQnp9MvpwlAO9U48ON10aUIrNsHczT2XYnZU', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2662, N'Cp3aU_6O7yjbA2P1oEp6c2pjR67UKMBZwrVZRnlZDtVsufvNRyiO3m3jTo4NXrW79RNsDoVNINK9uP2jI5n2Su5vcmgyJHmV30woDHUeY4dEUUEIjesRkVxuSD4ktd1lOZw4EiTnUzmDtGJjVNWDVocJFmo7TBm9HUKhAAp5se0CJSZNMakmtAg4J9NcwBZkPHnSr7iwyQcgeLQmPM0N_2vDp6i_LxgAReMbEfx60easbJtNizTWqjIf2TUVOPl7wxNO3-mLzhCnqquokUNJQ-LhBrzUeXcPDs_AnOmDK4Q', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2663, N'NlYunYxLJsh7LZimdpcygsFK8VSuvRyV-lkwo3u7-q0ybqjuLed-4eHThqv1zrYM7WuADDwdtHwP0JTuPFFNlWLm_DQHL71P_fxc8EEI9VCPsgnyxusb4OWa7YVa9TlzJQWWLJo3QWZ-yMwqqkDpcns11uBIzfpsa8kHRuw8QoIkOU7NopTr_zSIMGnRxqqhAqv8f4Lf1aP3aRcPdZR1Jfe_XMtcq9ViossOvOScaFC_8NdD9qCwzxfuOKhVJNy3DKIuhgwAKzOstykyWNKIkBZd9dVAE6bQ6b8_6oFJpVc', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2664, N'YpvSE5UX-rhR2wrEZ9CRjiGyxwkmhXW3QHwglqWr8p5hYjZQOM_CfOqvuXb9fSxZr4nkUw5RfM7brx7v0DFmzd0goA5WfU0MPW7pUgG3lcsAdlT7eMyiovgKK8DtlhaEqzTSR34-p8BpBsg1IJaGut80drpq4ZkzvillnStXIR2eiQk7PCXAnDq67AgYgUMiJ6Mv2UeOS8CV6a5ksRyeIboCKKYK723fRNB4BaXl-Tog40L8VNVmxDoPXOHUZg9jIdksdWYAzukt7CkqZud5fJH1m20GI9IIMOa5dFZAuvo', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2665, N't3zmLaVkLwz50_-DkMme_DgG7qNwTWEyWyCB0-E0rmmtnP9vsWF_iRXo91we2It8Nj04tRyvFChLBVGD_cI9AZC8dlAEuWlgSPOXCTOY56k8zqSjNxhINvRpAGxXqIE_yrRfMWOZ14JK0Gq3ETBVyjQWhkYUDNF8z9NTy4-w7oMCGIqbMQHdWhJL2BZZrBdu-X-lDC_EON3u0qBcNLEMGisl8TR-UG7Ol3zfNVREhoFFOPsgbRWu5711T5lCpFhufvBPc7cov3lC_7yzrL9YoyetCVhFC_PVWz1Cud1tchw', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2666, N'VCDngVFB55xlVywDrHUJWB8S7xZ9I94JWRKqbZ76QGvUN0jEpSRRjTvYCNeyAgmoQ2XvYglzq_bv3ZfLJP63E_fmNFsY7H-GbfQuAbv3ThqYlFhd3zDnmWDtA0gox8gBLpBh_UC0evZWdI4-QqPsTyVUBwuDHAvvYFi63n6_yPEjWdT2LUOUPJ5Goyy2Yy_gAxhjrWkBnQbIwGza7UHWf86ykZvfg39Lh5-hNq4vC9_1csKU5RiAN7mgGgrvHGHWQ_tfSWoeYJFKr0qlgRFIq304nqBpE0bYI0a-_9_CMc4', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2667, N'v-r_LfUqglmzwyL06gPdJOlUn5zeYisv9dGRROOfM4qep842JZNZ0A3Wrh39g7SVLiT1mOJkiBzUPZZb0o_-LVzX8Ity1mm0zZfT_xIf-GIxEWWcEaF_SLF8T27jeOqxO32xjkRFmcKMUKknkc9ShfGO8FWjLJ6LRT-jAH3ut50lXmgM5Osbe1Rvs5p7-jBM553iRmwxMsyzgeU7YWPy0Kf9KO0Ig5DkcEkFRqRjZKtRPa9FUCNd-EflVl_kCozvLHO8SlG0tXYa7ENNiFvIWCesbPDogFjCEJLJaEaYHZI', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2668, N'ShIB7BsbSo7rmkRKZ7lb5XebR4eWKuwQKkn4_9sqNp9-5tIzH-C_Z34xBsW_IXhDC96pT8HZYwBU8apdasc6p3Y8DT8zhr9kHbD1F2KxNrsqL49UZ90U4ZzKGMRXR3bQ7nTVSKbxOCM8Aea__FFxRj-eh4Ywh7YqEAYqQfJwrkaHuPIdfA75IQqCBtk8n_5fYqnsZFc4qJgw6mCvFiBatx3_z7sjAya_wc6Gmug_f1ysRmpWH24uk1PCAMyi-uOj05-Y_VuomyG_dNi6qerjTibMkE6Sx0z8LyMp-QTvWsI', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2669, N'NtaGa7Oy7e49WybB4CtV7xKAbs7xgx9409ZT4V0KmS7R5pVmHMURvEChjgy93cPmyZvC2ftCEsyVA5gi82mpxjbs-hbZoFlFXvyuVqZPbBU81YR7PgAEauTAAcrKN4_OGrG3Qzyn_bBUHGq_OC2TVONwT0biE37DqRr1q-hxzGzBSLAmb5ZI-3mMRwx4wctt9ETisUGD1UBSiuDWuyh1WUneD0eYLUAisCfsB2jJ0W7ANJEZCpI4u-NRC07CFaqQ8dpUJ4a88gx1PPCL1Wj2aIePgCKSnxK_0c_vyDqd138', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2670, N'9u2044kRolQF2SwAdBGQsBCXW_HbpuD460Jyp5ImUtQW9eFv_3RV93Xwha2PCCBAEMbcPY0f2ukW_ZROycMgSRDVqczuNYUBdUJhJc0Qovckz6sJBMs2cxApLblr4hGhOsP1Ja1zDe4Nw0ctH_XecCOoUXIel1JVpSQXcT5U6jenlK1Ck1ELfOenR6T_-vOuJnudL1Jp3D19LiPfKgpu4f6SAsquX-c-ofsM5WjMzrhxVC4UB_yJEOXurzlzJ_WJf8wQqggvVVocJm1SFxqvJEliql4BvcuyTyAvn3ruhp8', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2671, N'jLC7SLxtEQ867L4RnKSPix59SJCGURM8YbBGy_ovsJlUvOHooXAAht1Wd7r4P-gVLBlyFCollMkEltK2ch26L-Xd2Zj9fq7-N-h2IVzy52MH0YYGUaSL0uAkqgOxY5rEI88N_Q64DkKFvqjQ3AgI6K9r54P9oR70EE8czUcg8y1HRKHhM5M1l0QMO-CVpzz-rodHbCms6IkrKO7T7k34GKUReTz6T9bS3VsOVomAkUvHPUekUlGGu39Dw0Vtejot4AfEBRoNlrj-sBuK-HOYsb9BBmVNndtxQAGeVzuEZuA', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2672, N'yJtxj-atM8kuV6lI-l4v-Hc_Mse7ntNcEPkfxdJgL38HMzCeg3VP_cyl7lrlFln0j3w7Z2rfjVry9ZoMHK8L9lvFwLv1v1mycp_mEbbximQhi_3nZFGpB_145QUrdK1S30FyqlsXZ5kktuszb767k9nxi9PTvJmxVJyrYOI2Pq6bt3o-OZiwSGmzJdd8QhNxxrKvicsJvUDUVDKlgd0beQiZ_YPS8mIp_EZTCDwgX_bP41lZp200DkqwaWMPkM2T', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2673, N'gclvrrvXwmXbz3sMRC2FxIC-jneDNKTkCX4tUvGXp0A96BJ0wEBVVuNI8SGZ6zlFSLP82UVJXNso5yVOR77SFwhMRhQ79jcfVqOAIjTlfOhMF4qHetxdnmPOQQSZln6IA_apnDwJFepSvDPX9PwN1-Zqncd78NDxIhLzx2XnZ_v2TmEH0y8GROvoc5oAVeQAPlkMwWI2MxH66EoygzGD_yTulSP0T5p5-lzYMDw7eMOjZkmts-H6fUZiIvGLHkW4', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2674, N'U3DanE95jtdTEAs61wJLhOmwGULDqhWV8Nj3DnbBPA2AJqfqkaSI_5bGl9QOzT-RNIfM8wYx08l3BObjXo3RVpcjxoU9ZklREEubpdo730lJoSlWmI5WQDGjTaEIVtdVWeUym6KtJ9SSuZpKTTHrsYIf0BvVEcG3EdF5EK918aq8KlHOxOTmqla_Gd9Mg21yt1sbswBdOS9EOCa4_AHizAOIZ0H7pawAUubezheFebcRU-1VwFZ8nec-R-14OeYDAek0fb_AKOc5QBnA9tI6gzZXJTk4zo4YXbPggEbb7BA', 67)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2675, N't6G8aFoDEcoSf1fgGUXhcMt4bbSjOlw42JTAmTS3ZlJQKN3h5DLBTa495c8hhy5RV5Jv3dmMixR20fQCSn4zzoFyWIPAZy2tx8YeROworWItyja3mGjeuNvyf9YOgo_Of_ws6yGuRYk33iDWGEqOHt41qF0WaUQkUmqSJbYjeFBx8go947fQhqHxgCHvaUxZjhlj4KFn3bsYvtCFbYSmedXebBbfqB_w8bMjwVf41W6KP4vo--P5ghhLSmEBVMdhrOdPqMYHWvsJ8H4mWRjBk8UInPLVm6610x5HHUO4mqs', 67)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2676, N'kVk_BCw1D_XCfIp1ricNqamlw5_yx5GBXzDT1BuAXc5dQs4_VKP315bKvi0llKjxIjBkm5K1D9bag4X5qlRwojEUePoXEQualrHvsRkmoG7-1OxoJPC8Cmm1YHrjI82kwlj6IRtVJ6eQL8lRd_YLxDY3Yg-E1xq-7zy8IObw6VmAQ66FIU4aq6a2TqncPb1rp_fswZB-OHVC0dFCJvsvvN9a8dmCkEBeD9fYMf6xww5jRwJMVcKD8I9CBrUBKuAYEywmmvqR2la1Q0ZpqDQUnBmp7fFYgjXZDOVEVDpMTzY', 67)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2677, N'iFJthLw-vJhGF2LdvklyR6gb_ArX2ok9qDXlrIowtvwtboKlBXRklGrVLF0FTVrGeL_MlxyJlPRMELqT5i5EG0NdKErUcNbm9_Nv-fcaQF6TgPY1PGfyKQaFqyjdShiwooMD9dMAy9QAHq3_4LOQfGsl36TzHvEjwMcA3iOgxSaQG1BWAauzm2RuRqbK-ixQTZQkcz5s61MFo8ttkD8grVXKLm48zQ9dZiwiyg88vl-1fFpi2CrowHRPydEW5k5z', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2678, N'lcQLS-go1f532H8UuAsxYrPDep6-PxJmeFicaOpSrEXv2IgKz53n7oNVIQv-3SzYgcHZC5bb2tKKzBQGLCvx0A1NmA3Wj7S0NJRzNpaStHVzsN2lqqo4tlOmxA6ltoNOz6u2Ly3OWrM1rTWVQmVXT7zcPNmUTfjPk4w_DOHroO6dM6b8Y8eDwzVBeZ3Ca3MOcpEmh489wlvPphiJ3RQsXYq7ko4FEL1z9FA5gYTFfTHrYqaOb-mya1k_VUY6IoPG', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2679, N'KZ9WzMyTfTGDIFpGM9PXOYI9qzKU4k0Dom1wFuDCXy8Ojc_nr0sL2be5N6KMfaSzjiH5CAU4bvXJfAGKVGyF_majahUY3yiNtcCn0OgrU5dov-zmMLtKU-__lJNg2gv8lPL8-v5AsKH7vU_g_qvMrg937VultLLE31G6Pao5aksVzsEE_ghLikMURGxFBS6Sefk9eAXBrnssgk9s_pEI78kq8wSGvrTQK8XFoiRxw4f7KvFNdO-2e2DIv4G5xZe4MkErTzATnzXjed7OAHMurHLaibgcCbvyZp36G7dkYDjoSnRTtxG9uVfKKm6KHwKc', 91)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2680, N'3-ipJw5KMDIShrAtmfKxEvhyeaamxaZOEWg4ISY_BPLtCmmCh9N-Zo1X7omAaSJ4Oqyp0KMP2sZMZQg_58rLKpO27tyrdP_CiJ1YLrFfM4B3ndKV7H7OjNM91ZMT5zktlUJe4gRzfgImhwdwQW9f9G8RKFoUAjND6dAeIEN9Zr4Wty2VgAZbSfLvo2NS4xbuwzykHAf7oFaAHWUtQ4Sa_2EoFOyLy2YiEFUgIOzwKpOx8MQbJv6udb_O48Emsop9', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2681, N'8QfxhWwLbnUFXczAueeQXCj3wT4e8Y09QvDLLLsJllrIH8C022ji45qhoXtt3ux4pMeI1wvFE5ytHbZiUsH07NLIKnlLGGEbjV6iPpFT34S_okmKZIW8zfNjt9HuOFM-Oa0uUyjFdvTDAgDZ9pnru4B55PxJ_0Z5uGmSLUYxrLuTq360l3ldDJji30Kp_nqVYVC_gZRA-WKpXlXxi2ahzWrxy_QnuSzWiDAlkjeN5w2I_hovAJ92WtfTdApB1C-a', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2682, N'PwIute8cIOWsVRPeAKXwHpOho36t-FdUjEKrzbZN01Xkaj76xC477wq71bU8qM6H2BJsjBrTzBzT286Dv3fLYN3hSl6RnNCT5LpMoWlLK6-ankxrTmVU9q1govZF9f0FJSBirZ7nwoRbgtqm2x1BAmO5eE1OBv2vDvoW53IswV1CMiDc9nPoJvYdMu-egfTG6inSqbyJCbZZ6j65aN9PmgEJDRSBAMkUqyWJIX8n33WWvqUnST-q87jP4nqonuy9', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2683, N'lZvDqUHSFlEBmkhoqJ0OuQEoM-ZiZS6IkXw6cmI2Xk5cfDS1v-21ElTTTZWO4Ma3NL-5en2m6joHEov-jpLhZRqAkBzaNVPZJGgsxB-3fuuKItwqYbNjM_Q0-DhRQ5_L6cLKd4OVb_ApIr9TqRv7o7aU2RtLgHYbsfrxSORhrs91yjsNjtKzbGxVSU4seb2k9qjghG318rQYE8oJ_55MWKH9-jNT-pUNPL4svdi5v6ZKmwU9WOo-uIH2uTCOaMbw', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2684, N'nYfzNsFt08bN3Y_A6fRaaUXdBA6lBzmwB676Ti_gyTNKwd7afjnjc-Djg7nf5IyygygMA2M85d0lvH9Sz3TFbqxGqfIXUSvkCX8KhhXMK-PuSx0EuZCv9icV0lphbqKDBoo329_rMd7NHUrY4NpgX4_kTuMpRz8oHPZ-2Fdk6rPg_GwyKZ3ZkORzPF2j3lru9vXXdmV26RWZS_4SIujeez84-q__Xj__IAvp85TPABumHZut1zpjGmk7EZlG-BmU', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2685, N'9E-gE1R61lqKLNS_qAZM2KIHyKCIH4-7CkIY4cln79LWMgtMhjDIz7Wzbws4Bi_nVVS6u7fh_3t0PDiHYOq1tcSbKsWVI6c5ShIUnniv79ejVtjT4Gy2xwfXQ7G1xuhq9bGiImpGHbaiPn9ZEotQxZncFAADm0gPvrT576Pzhu9o2uYulr9c1-ic-ZepeAENuuRzjRx4Dj0RBmtWtCfM6kQ85IF05GtQyXVUUQzJ64DQJ3ODAM_OKr3KVw3evZLn', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2686, N'Ur-XMbxaKQqaXHK3LYJFK20CMw11IZ3C-6SepSD0gp5ODku6GFedfWTJ1UNzsmGJGww2xvVBkgOQtUhd5xHLu8HjxEALl9ekQoKIS_VN5-gCLU8vhINKTDt38ZlyTFPDENwKlrXSaO4HzK_0VQf4PmPiNNoi1KgQ7T9xeQDZ81xikjbTepA5G4_J-0ynGIS6-T_t3gK98VVL0ORyEqdPufyqHn1FXSCBdwVrfiviegEDzJwiM9E2M7yfGgZgWa8k', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2687, N'UIGyxsSdZm1M1ySxB8JCnNHDkrdDTxDrJyxg3eM-2i8zllLweUskE9dAzdQZa2L2ijkY4oSGECgQi2fz_1PKeU_jkKGr-uWnxza3zaBYoCZuE4C12W6VebTJ5kt6lVaH9-YHLx-QCP9fS-MKbKC5c2ZFsP6KU3Q3TIWTJsMOSJBBj1MYWBdKEA8pVeDpkxVyySPSeVFjq_3EJ1pBKj6xSBGdOfLTBfYBVEzdgQPVvS8ve2Cv6xdYYmXFJxP7r7ME', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2688, N'nK-_XWfT8jZfMdHEf5X80fOdqcTyX6GrjiggxOic9DYNReqePj2-24rxoCUdVOP-_7eLq6eqv331Mlguj2bpYn_5OVfMK5KHVrruHA5WYcypXt_8nC9j2OyyywnN90GdtxALEt_i2vSD6yuV4L9bmBA5axHB1xjlP8jRCVJwPQXfq8G_9UYKd6fgguFVUfXShl6hfZIoajCMdiLuSY2_VPPswEVYRBuagStPtB9RpJYryRUKqmW195V2pyFlRz_7', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2689, N'0hloqaFLCCNs9ki0-kI1A_aPqugMIBsItRSHU1cKSo-AFvB4Smfpvrat16JoFPB9mW93SDcQB2B4RynuZNHYs9ju6YP7nKT6uGcEcIwrClf7HrXuXK7QgfQ9bJPrtYpxqWrEzg14wUHAZg3zHdXui_GioWoRiQRE7g5C4rOO9WJr3IqctTJhAo4kD4LbE6k1wEOOk1Wd___B-Wz4ZG4YJuon6YKuGJUpN5_hel5jig42Okfkddpkzdh0Rdx74CEPu-_PMzFv3EJc9Y-iZF-ECXfDbwp02Au0Q2STSpCxqa3NFBe_5qsQKqlL7cieV5Iw', 91)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2690, N'2fKahIejbQEYunnfBtGpskYOeJ0LdTsh0999pHIrdIlUxqjhGA_uJJckNsbJNkP2QiPQBMzsOqgaNzi4AomkMQkXDuL4KWbdB3-r4ObVGHn_if3FZvt5CADi_P2TSfho4xsl9EFD3jAIrxWLcDJ1qcflcEEQyk7kwz6QtT6yRLRNipW2rfe_vgIqJ7YqFL5jk00wWrITdTlvlDjZoPxX8Fl4VWxv_TAXdbyqC59D0L14klHdHtOI2zQ-hgljGkrW88oCj2kNUSD0N3S_rslD_-CVnyD_bBrpjrpHWQrC4gE', 67)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2691, N'0wrKZxwaVZWvHDkRtrv-eU-H02Fpz5v1TGbt8BPcVTXktTu32wtOc_dfNekoWcRv2BjRXyoG9skoDpRD3D7AyYb9-31w3RYV4GhTVxd2Q_wpVap7K3Bs1AlOttzd4cBDSx8-o-S_vmPEKLPMyace8rwS3wgIZxO4ftlAuG9tsXruqsBk75zwuY4BLbEpHVMVCOlDbmUNJXg_chM-_xVrXZhEjnYiwHjI0fkg5t9tvitzAJ_EX6L8CP8JlZX8KNtxoFrv9bM_pmsr_BcOpO59yKXNoIcdDk51OTrkCSvl7jU', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2692, N'uvOy3xNkt_WivjSB17ZwkEKqNbMG2rT8BOLO8XpkkGsCwI8OhdPu4JbRjgUc_4qIgQoPwQHpR7JCcus_NIr9ubSM0z8HGDi9WexiOZBgE3PxHPd-rMr13yQxAb-GRy_jga_uYwaqQTTNg7nvgQJ_hR0xOSXGlkS-FrqBe3Ay_0lXbipNTZ2-tGt15FVnH4N3zf4vQ4VZEmLxCBLRU3jJvWW9xmwsSvudoxICziU-GNTDu_PTodyz6CUJDPG4n3vWYs_o2ioUbZnQ3RnvQD8zofpLCy1d5CFVmRDMOhT4-kE', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2693, N'KJzvHGIVXONOF3iqgDx31eUqubIufzgbqKI2qHx5BSicW8BhsA0i-XU00WIZSwwgoaHVqwEm4IUN54rxGqGV-fh-VXFeubE7GMGnhXFlETuTnelQkS-fXXYTSonAYYL6giaQkXQkR6qTvHMpR4TbLheKQJLxR-MRJ1rnrBJTdIhrvmXnudrcI2-cSzaELJbl-pUmrmo3M3Taw-mX9sgADWAPoaD2EkfktPPxMssslGJ6LPPuMyshyuqKEqRburjP', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2694, N'swLJyMwvmCkj6nEblNY7Y_-rDF3bZizq8TKq-m3Qd0CigVvk8Lbjk1BQU7yukHypwk0ZaNCcU_zD6lek1fo4aUZ4IINIAWmldqphGvg_0eayKXlKYPnUxkXlsIf2Ununxcn3ynQz_h1UhNUtr1pZX83oaUEiddUEMMlKWOZHaY8LL6VOuToy2JtsnWXszA7sLD8BEFSW1egIcWXD2y86Yp3GUej_A5RA12j89-jr3v-AbhdziPfNt_s8EjNDadd5', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2695, N'hn7OkQbqZncr4AzkU7o62i3BgH4yRUMYs7EQ4beQVwOnFqMbeOyJTdg77vxG7sgQIUSqb1guPW0DEiod2b4Hm67v71HHF-tJI0rZ_N50jWSj09sznULdW-7UFzy279von-QUAa1Q4puzreutQ89TDToFiveUjWyP6ET4Ll6VfTWB6FMt8YWqfyOzjpQpieIlCX1MMGOgZipdW9ZofqCWGL4uo2euiizykLnft-4l3g58hU8xozo-YoOXw61vfA60', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2696, N'6MocN7zyoF512yW46aU1LBVQjR904xqPYxzoQ0xOCDRidIU1PNAq_XlLc9Fs2wpNjNtBXqg3CTqeZslBRgOHAGaw2lbOiiSUoy0DJluxoQoKehXaLFHOJdM0VL5p5DoGg6eE6wGz9XAk92wW-IG6w2k7ZeTiHYSJkbhlJftrls3-z3gmHR9E-z-SOVlzxiQUiF7nA3XdDJ878DEZl1eWarP9zCkSNZ0TWiekTPCIbH3h_ePpq4lWkFcD3dF3aHlToj0iMkGc2UnIiDoKLWvCJlkh5HZ2JCXzXkhPFcLA5FY', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2697, N'bx66j_2vfiFVrDPVOwAn35-zIg72JBzF4QfkZKD1TN7-68m4jBJ0Ry8BbAZfz2hTiHfPl5iemL04Y3aojqCClb1y4Sy-Ss861r08F4RLR-TR0CT9nNFziCT5zGwKOPyhg-ucqzSLL-P7qukrkrpqmm5ylBoQl_W6f_uq2nINyxMbumujlOnQNpgAJfCFk7krgMshVphYMKwcLdxbvU4S-zgg_QSkMOZBt19n2i_t4ZX8ciNGeUD4SGTVZJHZ_49VOAhKVTGtpR25oUmF7EbSt-ynZJWYYahcr01B-dximH4', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2698, N'iKeE2tzaKuJ5plQo6QOG2QBGy7EwnxGiEtO2SuKS1Rwu6hGF69ZZLatohwfblIthsxrRVs9WkjPOFF5UTGgr1Xj4pIapBDmuPA1ZQ1BtdkWXYRtFmLF-WEZLACBGGES30UWXtW9B1YcdCTpOKEoiImMrDoLx5VcA37XXu9K-kxPE5IrthXhVjK5-ABvMUA2BArZzawIJgj8Y_Iz1w9PkdWo5A9hU6-aIDXtd9tok47NyJIXVFOzOqnTU-ISzlHpEdoDfeywKYc7lvwMPSuMrS5WjWdvjfWwkY_d7cecxXo8', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2699, N'lRYLu9cpK8F0uheczAneQa-LHKGSObWVF1hO7MSYkooYCsyTn8j5gUnoScwZ_dj5wIj1SPmidW3Krqyx8MSxam4bj4L4uspDsnP-DQFkXFcAbfHBACnNwtHoMQKq0h4ud8DMHo6rTLRAH8lL_d2nhjpgy0HW7wa9HqC4cOHjrA0rSBfm77bgGkjoQVSy2J2CjbGuCGGnWv_EtnfMviVz1bDo0xN5UKoWuAJBHzALeOSLs8r6yiNCQlhuDpamI4lcuMupN8UtS6HEKg8kbb8HBR5c4kKstJt2wS4XOkHzWwg', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2700, N'XGlshGsMY7zgJ6T30jWsbZ38kAFD-PVRSJ1ieaxWQO3sqz2tIcP-JXAXsZY-uT3J31_ZtAMVKZSHSqktH8DApO20Va4rFdsnvlOS3H3krx0xR6jjaDhuvmjMgpYVLRl0c8qB6cwWP3HGQcZMQP2BrTJwfq5V3U3eKJfNkzI7TxAABUJL-L9sYLFhOa72mkMfYA7qo-T0EQ1axUOEIiC2Jgm9IsDpZlb8Qtp9gQagn08ZpzNHFpRgpe8HRVsd1T-D2Kr8ATN8-sPukQoG6tik7uYaJAhPYEt9oqT6KhQACIw', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2701, N'-h-bx46uospE_c-AsEjb-REP9P873P2xnb0TlaJXFDa5kK7A-6hiA_Oja0avXUpqGMiVLbtKmfcKOerRpAt-ZFDUgeVMP22qXXE2Ysr1oFS2z_AWZrAwlqQ_t4fXDNKxG5Nqqb-4HWh0_KoK8ssSUMD81eHacdv9CWaS_TXYYmNqdN-5uphcfsG7z264v67vpfDSjWLNaI49s7jpNpv5IQyx-CNcj_awyOspMha_Zrhd_SEfE2fZj-PjXhyqdielkEr-bOKoGHDVtwkWPVC1cQ1uySiNnaU6It1-oLbJQdE', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2702, N'uRdQ48lbsKY6mzTcXf6uck9SrCavxeT7EhItOUbeSDFQhraEBPh5hrclW_wRhVOVy3uA6ye2tyR-AhlCRS01F_21o9vpoEWtkLLuMdOxW6MqbByEqzEPe69dIyLlC6OOEr2Y9_axjlKqjrBTQ1H5rFAOqFhuC2jwhzqXfr921-S_bkBRmuOfXxJQVSXotGzXWszL2IrV_J1vmjMWyAyGvgpna1WKuzEzYehBp36GIOa8R1icpaiprR2LPbURut1ea7YdzwVHChxzAc-PQzH2or7rgLqMDI7exyQLh8AlIGQ', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2703, N'cyvuOQRRO6bGNXv2-jSjct5p530FfCaBL3Z3SmhdxkWOqbGjG7slzrnJvn_9GgMT-FfwnGaUQLL0hVwfdsMT2bdT-8Yxm5AId0GeZOthZzTbBjKWWJaYY6g1A1sD-oCjxfhqFTMKsqqwyxkbZUrBOh3ky-4XndYeVrymvyO84n_lxouyXmY-_EEq6OVeCVp1ddX0Wem8OLcsTHH5q1GnHMCjkF6LCTI2vB5XkHiteXp-EusqeQKFBkoprr9o-sh0JOMQY39mYDlCUfNUxDEafCjeH4qhVbkT0wC2qu5LhF0', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2704, N'4rpizNDYbTst5DCbJO0Sd8uLdEceBGbIY_GfG3HudhdxuPExPGxfKlQ7_SBaG5EW_iynl1f2Kvu6hnkCVOyqpK6rJ7-UO_d4QN3x66REE-CuVRFDhtI6jzoBGrXl0gtim7tgag8ugydv9vWGjNZxw54tu07zd3MvIZHO0n4Iao6wGITLBnRS-q5cJ9M6YyjaDu2iDe3hKsBw3AEnhGjLkcjWhnSR3uQUcdrC92oTFeL1GQiXb42ueTp_RsQxsnCaXnAlWeOkdvdtkj9M0rVPzDzXyzEIi0Yc4RbeHH_fvd0', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2705, N'aQJcyIbCJDpXZjRjzOo5T1SEQTHM9rOX1iShDhlCbMajQ1WTAp3do-I8WNAc2j_5WkehLlEKWNmyTpITNZQEE0HoH5ZvkuX9xny2jwIiII-JXgTBoG-xKXXy-TMckXEWbqNKu0xCUBIzFl1bfZyIawHrIuQAQ0Xb1hQUKSHNXKVO_DWBMZPS7mRLdTttLbPcZVBfFboh3_3Jpb6yQTDfSNlvKKgwB-1VC8wtnjhncaUJcyDHwGZR4FXdCvcndC8JHeYwir1Bh-folBGJdTFXT83FNPTRIzfADrvo58QEGPI', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2706, N'324H90xwlzsarI23FGj470tpMxNQnegH0-TCeAGKc8FNleMci-oW7MO8YvFhbS4V0fUfq14EANoBnS5Ee2qc1LruqojbQoJ7P2swyg5OALI-HEwpsZXjcK4ZuT6MpHP4KTg3H6gyGp5F82lxLugBZ0JThs72xoT4EzEW84pWIQJB9rNoNFDMryF5T6dx22Mg3FwseTABwdxQKQHKWp9WPjlbObDfK5ksFYHi4QXSsIyU46yRmom41p_WAQxGh7N6', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2707, N'fbhbPfeWqc3UL6_4TY1BtvRBZVHnvbTFKUIr9HFroghi100EzrkkCfIgKNYlrWQB6LmrgKNo2SJBOgFCBpRi4KUyuvmP4BV680PntCxhFZLGZtDBsAVAdvng9u0HfQcVBeJRM8sqzQOkZ-8R7zUwoSi1paPuQ_aoKJjnJ2BlW1qX9RerL1R62-YoDQVh6eyv_UOlEgqLcXl-IhL7BMHAwH50oZHisTiygl3rkHMK_w4VNo1EDn6aOOEqIgq1ml9t', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2708, N'iIO4kE6HLNVL1e1sYXgpyWbLy2yC6Y0VEo-IScDaXxzlXVQOtmODBHAZC9ydf34u-8cvsv23rLBPECOvSJwqCCIED7_7sKVN8IIwKtqXW4K5vwTUVJR9vkDL6sr5tlGWRbreBDygxqiPZCpjtlWNswvhnGGHaf12ZxjTPXyxEm3UCBdt9_6zOW0HX-a4B-OiZiiF-WA4hW9b9wl4WoFpgDp7cFkcU3yOt3pWYiE3MlahnGrhAJBAIcCyToZn3OuO', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2709, N'NvvpY_zaogaPxMw876xoFMYV5o-OJZK1GwOVYbsxU83Zu13TOiBZ8nTjDgyfR_RDZRPLVWBeIRY-G7LShnLR_WLMJXMLXNsBg_KpWdE7j07x3z4F1atEVUHRfpj4ZyzU91GGenrzwVjXxkZxCOgKgXES22kbC0yJyfZW3DR6PMQCqW6KWrk-jad0p5_sC9_ePFq6SejPpvv_V5jf5Uiw8nQvK5jR1hKNwZOGQVX1HWTwdvoltVS9s1PGLVs2sOpf', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2710, N'PjNOtwB2xrOKQC6bembrZNvAXKvp3ywNa6a29J1AL8PyfyA2qBgaUb03jUCaMGsIJxCCHVFvesBSpmp-noJCbfWd6GBh1w-3JFJ5WUGuF3iSojODZ0NvqYA1daEVLRThV0ur4zsIR_v68s3hOKgl6kPraEWlkrKmg-GElavpRFeR4LJXvI8cbGFA1N_-QJ6L4V1kX2kf8z2P4ydeWHZ4FWIDrJUUAJ5wyepgtAIMEGaUp9w4bSQ_az30U4LS8lni', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2711, N'rCouYsrX2QVkZtfbrItWCC2LZwaoZcIbbW7IHbw99WAWBB3GkyQXIqrWsNK-_JIkonR7xfGq8Kw5kKcqvXh-dVCg2V0L_nlzeexoAkpRsrFVh0izuSdW2eOw9gaWifi-Wc65jYr7USdLSw43VwFNqMzMdmNPYXnpxCg1TqZN43tco6rpDy4LdfzYDdIPXxmcxOMBBpGGX3-ucNDTyFUPlRVQ3i_2Ap0KvwvcZWJXqAsgIztEBRGVYWfO7j1Elo9q', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2712, N'W9UG70ZniyvNgA-fGgVN404Ug6ZXEjbniq_WroNfubS9Uuz0wgXmeIP5WQeLkqdlqXOgUwj5SL30DnmWBIgy10Wjf2znyW4egOuUcJspbUfgX7cWeb-Oz3yXXJrRJJ7N15UG6Tq_OWlP2nhOOeiVYS3braMX5x4r7axY2UTJ8eEYB0nrMGoT2VSPbk3fOHqmRNQ4jikWS1rvH65QA5no7D5v9V01XPD3s97edE7ZZVzrYcte7MarvTb1fOazSvzO', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2713, N'1OcA7ECUoqHdglBvUFubtwaaI-FUHGXeUEXVqcjC70hyNEPTR5zPRBRzV42ec_uZB11PafBERUd_5hMSMlv3C7jJ0VZ0-Cdi-P7MieU1p8-9H-m6J878YGQ05zfgrhj33rHlf3qbOcEHL6eCq4AXPriZhzQ0yNM3rPEUJtY7j_RMrxPC9m7Q0JM2PnCK17xs4JRv09RxyRzkXsRlnh_VhWG1NYXGtwKOfQBFEqAfOsWD7RtE1XRDmoBCYt_L_4zU', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2714, N'qAUtQXGq3bm6TWWkEgFIN_C-K1SnRhKg1YAAoUxAFDtVM0qGinLyHcHHM_oHad0w5zRREGi-6f-MqtBZRyKNBkdxoC68d-IaRfT3-bOjeijq9waMaDeWMKoysBnUgzzS8cHj1EGZYkQQUC-SFpl7vf8--Dk5Ad31pePjb37PFXF91pQDLF7Ne1BdlG4XA6AIBpXRpfFEGN51SjVvkF_s3lADfZXFRvgyDEHYgGpD_Qpgpy483629Oll9rHBduj3-', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2715, N'iMejaxMd6BU7EXiuKFBTKmRIJVLjlUYxxUW8rplUxh6NG4S0wigumCjyH1N-40VOdiIMeTwLwMIe6707uKmvHJyuFwTeFBxQlCeyDkSXagjjWq2Z-NTpxh78qmgbMLIpRCNbsTPb6BASQwVaa2_4E81qFmOVn-adRR0oQOswwlZunLpWSHLLFindFf105c23BfLIfeWjZTXd0za1LPFdA4T6NbR8pc-EUpTgtDscigupfb2DfbRFFW-PANcYatbh', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2716, N'0qh1yEiMyfygpM2sZZJrJsD8cO-UCx5vxLqQFksEmA5AImSMlpaHTFmWPLmz6zuv9NAwFn-peQ-o2rZGx_i7aNbhK0zZK29KHTjvEDy8sZw7slCmKp9X2POjqnN5urSs4X5-D2JhobcMf33REEcdkzHhlHlxtwWEx60Ce8y9w5s8i-8KITIMgSHxsTC2VD962U3q6IuXE1mhBamhN84g-fD5CKYyTbhyqAcFxAUvJLTYFDVrxzaYYXOO_Vz9Mgzw', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2717, N'DWjzu5idP4oSseb3ca5vSwWc9Qh00tz3oAtriDMAVzIEfXqmWEAgOMrLiQnCEzSwV-7LNJ205YgqeC1f05rrFSBk4xZmbBRBrSRwX_zx0QNmF9CLPA1YhGadqrMa_mqjtSxGw1qpZ3w8IWHZBp91cnF5tdJ6JbAaAxberTwxTgQXbJwClA4w6NVanU57N0t2NjKJv2R21QrYZ43hJXlB2PnF__w-fE6WSqc_BKCzpDIaHYZ1SiP4BjEGpO8550W5', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2718, N'mEzSJXY779LM23r7q6ntnOPGT-3ELiwZkDQLGr2hY2KImDVQaq1aE3ikU8WgMDWCuwr34RxNkRh8w5Uj63_cF-pyDkn6MPE4YhieH3vqHnxtlBpn321Ids-yfowhpQuxRr_9jszjqjMjI1Z_u564b0OF4d2wHHNu2XBFsOuYiDdTPCyYp6yFVGWlajMmP8U-p4HJQciDeXyw-Pp1sd5YEOAtRStpe4GSqlb_jglzGH0NDBfn3NDyf_muf3oIHIQx', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2719, N'VoW-i8euZ0J3Iny-mGrwn4oTbZBXTJjaU48fgboJOhZzAzV5EYi01btrkNBUf80c5XCrYCrRve0f0lOGG4BxSTZ-VsFE14sOR9nic8lRzTeNWnsbcVrT4ULeXP_29LqIh-p7sIghKzOIxht8rF6lCp4etz4pjZ-QQe30cbpM7x296b4_ViBAUlJENbZVYricfTJSNEmRAq_kzcHwMs-126F9Ce65QGlQLRwYWcTTdJbDKNHLsp31rSJIkQ0QdWeA', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2720, N'AJaYlbPTx_2P63yYo2e0m01TdgOUtQM8-VGDew2-1UJYo7JK879GSC1I2SEZ-5q865DdVMIM_54lAmb4MW0L3863A-xIkoVdesHlLK41_TxFL-HeCJ6FxWWfKt-V6k9wOIN5Js34PPLPyX4-e2MH3-XfnIlkedE5vriDR_1VSJzBM_ANcUsLvyv-xoEv9MEkTWxid3dBgT6oMwYKwk59nEl2Hu5dXxmUJl2UqjMLJyxL1Db4S2ANAEJwGqH7X2XH', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2721, N'7fp0FA0RDLBbu8GgrEFSViCZnbHQHNGNbr_nNeEA1GXSTcnGlbDV1MNpa4BI1IE9udFOHirZKlQ5EtP8WX3vJ5Rni6N2CkwFFljgxIZKqbfgxUXACCW3kDnbkAi3BKgT7H_Bm76cuk49gF4_UDD4Ad-pbk6TWGCz9i0wOWNv2nEejfP9nMiWkKhcdfVoxX5igMdlOyMDKU754MlWq1rHR2JdwzGXDyPMUKdp30Mw8GA_XqlXIxrhBhUf3YzOjqh7', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2722, N'jEvui_G4MDq5amwNnVZ_TzCPVHoraonlrpJy-VYFyS2gSaZUwYmyblcetmwEKUk4WL2z8WA5ee0B82l2ebU0mS8rI198Rc8JZftWne5SR3GByTehvAcEwsx9QR6xDyOj5WcjK7OeUeoD1Wy0rKMPTqGwWCWyM-mJvGUmgZ4u2QumRepXL9m03I7mY7r5sSYMhKf1aOBHWE4xjVPTqIf3GOvYKoj01PBNfJnqPSSIT3qgKl1Wxi8136swnepiSJpv', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2723, N'kNV7zfX2o47oRk0ru4g5hGRaLWwdnYqTtg3XI7owsjnNUgaS7pEjiEEnRB-Whslc4CaCINES1aE5z5ti8NoovgdngYgI4CZE6HWx7cTNX_wIPlaMzIMXnE4E_Sm_SJdvNI7grRC8yPLbALID7ZsuKh7O02O2fLQsZ7Hc7hpurOAcMwUe2iAnFodLZs35_0b3nx2mNoPZCW5WjEUCW8NPXQ3_40qEUdAzLPE_B7YOEIDDf8winyi-Vqq3rpBGAj4q', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2724, N'LR0NFaLkfsIiprCIAiyYFFaYZZhPG_3Bjrdi4_CMqWqmcLPfjY8NGyp2aplBV6-q-rfkUEi7OTuKz0eGZWDJ-5zagF6aVAMotH4MiWK3L-lYvgAncOtRB-u26QKUHl_pg7w-_CBWD8tx7oSiCEqIQXkOEGSD3mKCNi3j0zyclzY4ygYHHoEo9-iSu_WWu8q613tTx8iqn7QP0OqKUY0EUV1vEU6mitlTa16rgkQeIOSDVoylPjnkyriuN9E-9FoY', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2725, N'ueasMzu3DFcT5rhrjQ8FA8fPhR1fapdJ3GSHO3u_BZs1LCCAoEswxfrJXWBswPaITBGTOylZJiMdy9JrKsPSDLp2ILrk4g543BVUhnwdRt_N7w9fs2J7L6lf9g3reHhiyOezG7SrUFJoWqjthT-64Wo-vw6FJGExp9m8-Ifr7_1pOh27_NGgtGBiYsEpc21oCyLH8wrA9D_aTMo54nizlryGOMKrx1XRTCKFwyLKUpo0vLz2qah6JY6ixK-uh3Ww', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2726, N'ufB5Acntrzr0V40prKGWNkMZmf_gfBvmw1jukNBr2K38g66kIWDc1L5EWwyU7JiZ2LFnks4ggSdug1vAdQtzj_7mCUfeyQVD1lTpgwTumnKMtqN9IsYIdXO7xtKhOKVDvbpbmkbAt_Bsav7o1F3QUnj_LeK6asZqzt5KL-hbiZFw2J4dRaMRQDdYTgISRcmx4KBZgDGp4IhuG7aSRNpbrvhe3qcWy0Hrt9eR1WEFXssUCyqhtqq4XjsXqrfRWQad', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2727, N'n9yg1p4tU2bLlVSmvrnEkG5Hf8sl2co4NrJKNDr0uRW6bbju0PNTEw1D7rvPVoTXOlbYeTbY-jLv6WplYojKdmDLPdbzj5STeSVjg9MhiObjOs8pMd4v62nXO8FfcUndC3b6eScqOm-XqpBlzwbj8ThfOLLpUumvd-UDsIk0eHq4-7NOhIUZccnlUGySDcwh2CV-8qeIV085obBcDm-076G7EzNBABQEYcueAE97q0r6kxZ8rGi5YjHxRhL0fewf', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2728, N'_yx2fRycfPu9pJNvOSZ7hKWyn51G3xb5j7bq0VL3KSc13K2DtRDp0wLb9epUp5F-9BUKCW1E8Vjj9quzSxEQslWB_1p7-3T846zTRGEPxv7_jPd5hStpKM6RhueBlwPOYpAxmkN7B9T3z1XQJg8lBrKOHBYAJl6WwkcGzoHmoWn-6lyg-3lOVugV_Fo_oTwOqlZv5IZfxUzaZu1PP70FEjOcDN_IxPMtfEvvUAMZC6Npm74sUoTBXXo3PDYoh3a2J0ULcRInd_V2cON8aWGoUA7bzlKm_aCt9u_uKaMSGqU', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2729, N'F3w1Gl_Uj_jmF7REHQZmaG02W1In8_btyeZMX-bjN0OQRdFPOLQGWiI8pA33fuQeDC_MvP505iT4G9tdSWuKdte0P2KWTC1F9IZNZlVEKfiA5jQbIZgRwJEeY5QCmVMmbP6Z5Of2yFIJct86VE0LGTubr2xpf8fEa2y9mHga7PCev89MM63TcZ0niOn7FbgM2znfyVEmPZ-5dcGBZzhLDLO7l5uqR_I93qcp-6FfQqVd4Qklax6Xq5NVqSfIjvcCqbRp39kLioRtUUREiOewvh1U6ZreKyitT2ajHFQtWLg', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2730, N'zECR3DWlQpUOvvwQuuFur97vrLbPlbsLcmnA5hZJ8lC4tj63C2iQSN43iaCc_bHoxIxmkJvo00UfnD_THlrX6wptmiOuEU7Czh9lAtS21V8OCyn6ruXkdjTPYkWXYih9bm4eR5OvkzvBgac-PWIhr46Wm4ejeiYbO6uBHUzN6JxsjrlBx_zf_gJ-NNo3wGwj--HQNs5bBxD3QbLy8MV2EURYO39S8sY7PMgFsldHRsi-K9iqb8E03GZ0fYmsHdCR', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2731, N'8XCiMyF3RHsPsVOu6ScwtKLzH5D_vQfNc0pT9evJ1nDFGr1c9Usazb6UvYluzjJG2Gp_I-0JCdZrmMTqZiuQsXbgW8O7pITg8jMGDxzXSum6PV_BjT8STyN1piykhf6baabhh07xfT1wIfVtRLsBIuDa6t8ajrJxwhv8hYDOfQrRZ8ASxCT3gPdfGdp-GLKZFvmSTWsAECy9PQBV_U48YEgaRgWZCN3rtC51bex8OWLStRx9ETGRD_400BKJ7IKL', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2732, N'TdFpfgoT5IcCqwjXQNAi1Xlydxa2sLc4pxmHrJnMb-cZF2uxlaJ6I2JxPDM9AYobRBfj5TREJdh0Mg-hMawOtgDnczIuJETdbS6O4i_R9SiDZuoIprhPfVvvw_dVGQupRlsnaN4r73zgjWO5xICUWF7rZDJW-Cgxop8aAC-_QOqiJ6NIp3ZiwephNzOF917-VmMDnBIJ7bfiKWkzxP-t53_iomU-RPJKzRSR_tiqFuNFU2hkP9NyIMquwH68_9RUgDRMS2g6zl0Z204uZr-HaLfromO-p15K3ocBp3Q6W_M', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2733, N'KzWc_EPmmKJsWf5AcyAYqmiU4QzEEQ0g51Q6IC39XqfmJnux1hQU-QgKCF62wW8lP2LGxlYWiCq2wLONEw9KSr-XhWZQwY4ZA3c6JZjvDLtq4l091eJl-dABy6mV7yicpY0zBPyeJ4zjTSBwxa340yOX4qgwKpW333exEXbfzeZNGx1BF_cfst0jY1pKdXYFQDoDxmULVOtB4F7SwS-ya4FtXNvWIcCpDHwNd44dJl3OlLNh2_hHFDIoTGAFEbhTh2tsAFc0ZbdW9r44QVg2aEf59LkPB27WMNYCaDU3QvA', 98)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2734, N'7-P66yGhAq9E99FapS01A2nd2ZN15BFA9L1Gv2YoavtvhwjnHNJxMrA6GHWJ5gH9U7n7g0_3R6_er3_n_mkUUFo8Z2-D-OgE_N-KwYi9D-Nps6bBN93_Vf7thbEs-_cv_v_mf5ZJhVgePoC-Fdj8h3zhEEa-VplcTb5mYIypdwFMn85EoQe9r7Q3SqBeO0F2Fcy7GD2JZafiRB3i6lCy92ei66OWNAAP352uEIfLzDle8Layjfva_V5Zy-avHOag', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2735, N'3MUBOQ4-JZEoL2thE6XYgDiFQOe0CL3RboyGmIGnUPXoDNIqZhDIvOYV1O-bZtoD5yIhbASFau99hbQGdSP6KDDfm6S_aCqXT9xlzLEixS3GwbrFUDZbYEbAJ5f3EXIZIQpC9W3aRESYdNrBAgsa73I3chtnf9zrRIGanC4mJlBAZ5ypb6uH_IQSpGsmO6RvsR0pCml9HZdIx3nRKYCzvm02EbD7_NgdF_aA4TFCGXntroWU-zYPOTNp2u3ioC_z', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2736, N'WU-ZgBISfPM2-ryHLvjg4dk1Pkg4gLprchtiXYivHqMwcryVCnIm4EQrNJ0sY-6TB-ZceU8agpYXZI_UdtbwakYMp90vD4szDuGZOd5Uc-LarMqr9fifhFN26FUdBbQyjDk8Io8W_LkQ8pXpgMHCHvZOk7WRTx8qSF9Ss9aOyAi4oEZGUNhLnqJSSoaA3MYUoacWBMkPEjTQt5GWpjYI6QoXycHl9yfmtYpGazgNA0OTz-ZSBNk6Tl3Rts6u8cJS', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2737, N'P-JYI6FexL9kMDDtl2XggosKt8XSbDYbIK4dvzie4OMvRawRCebjQoqAP_7oMrfVh_wMG44kywjC04P6zW2C2WG6pRGoy6L9yjzFrYi7jSKy_kO0OPxknpMvAi886uQzaYW0NlAFzNW6YfNdT_Y7GMvDiJ9l0ssFqpm5ExnFzoGw2XwzSrXSTvoZa3BL0RJesuc-7whoyu0KkJ2BjNbGhcHYrWTcMTbLB41E90k2cl0KupaR1785R1_7IkVXBl8a', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2738, N'S786eUOV6a-eSubnXHtgosib0992_thLPw-xAvvxPtcSdyqdY6UEYwNs7BJ0Jrw5NeX75z3P5XSqvyU9YbZj-v9YCEUUfb_gjcvBJODGPwx62KMwzFDrHxiU9KQVQfXazDxb-PV8-VQX9Ww0aA_QoBkXhojNU23pnsMGZr0x2BMpyMVlQGqUgrwNTKHMjxTI5JaMj-SUf6ATPx9LvaDhkVAudLJ_tbkFBIb9AWcHtzUSWKh4KFi0Tqgggd-Uv4jk', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2739, N'kGmJbVKXiUzX-xcYjJ_SBGMA7sILiTyaL4qjKSpqAeH1Mn6DIR2tvSB6wBzhPeQPaUcv-sVAX6zHxwgAQ6faopL7dHpLGJTb2pLl_JZKb5jnciZp43vS8jWp_hv46nTivNB8iZaprHRfTxZKnwIs4p_rMIR8Ir-oc-u0M83OXlL34zK2AgO_Ca_8b16QPNVSpvzeafP51TJfc9RYP6_hUp6y-SGpBaGIEdGrnPFkFtwwY2mQlgs1fU8pyUbWsDAD', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2740, N'-byQ6aluphIN3wQ4Mupz93HOjH5n2ajC4wptv_SsaDh_Goc0sb-C_G3lxavl8DdrM97SwxE5Ii6FpdkCId_qGcvwZ34rKlrNVXHZezZda3X29oaJBkhGJjDn05adC6A8vRqQffpz71ap4ps_WsvDvIDoAr1k-XG0t2URaNUEncnXvmGvGaW-o8h3jC-1dyU2bi_sR-lQE-44MLYajtIpYxb_Bn75Dyj-Sq45BQ62ts9AtwynmotPSCbAsVJeoLaU', 2)
GO
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2741, N'1qkXyavp4tuRWU7pQFkHlDJANjz_Ybx7HgNqeSwmmakEoD4ay1jSPdpgWvXlvRfoOSusoUnqYzUvenAFzmdal5UG-GhRVZqexZkz9DHT1qmmnP86h5R-LQkR3loTYuNKE9HL6N7cvxvhZgGpDTYrSI1QW8-YXNVzv9o1dhUJ9hWs2kjv1DiNVFrUuuSctlDT55cGZ0fs2-TrwOwZJks_P1ugKyyMfpZwxWjgOm-htpTwmBauTndVjzy3cD2yS712', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2742, N'6MjYgUJIwX5dqPb8jA1D4i8WG7VTY-iMYunhRBR1K3ohG_XoCA60BqhH-EcvPk1kGQKJTMFrhs9873mOxzclgWhDuK09dUMOV1nBoFpySviRduns0M03DibhTXhVVRzuptjMb6AALm3bckk4MPrsE9rcyDnmtEnZkOn-XNJSAnfAVbZ1C6d7xbAVzl1kavDLHm5bs8VrWTS4kqWMyb0S-FyLOWHN_UYUKOZeuiqNOr41NbaqoOcwK7XH0mTXjFbJ', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2743, N'7T_pBNUadjC2_71G0P_9x1dYn_IzjL_crxqieDLYqUderKZkUTVx3x0QxiPCvG_KcNMyP4lp7x6_y_MNZUbF2daimZ_1tBPbNHWZzuhjWHuE_QpaW1thUPDEX7wU9UII3v8yNkEG9k5NK7WSdRCaIPbDTgb4T-zyTYsx6uSfs3KiKtHAAT2fYrbLOp2BFpjrzfAGlj_JH8EYx8yYuykvGfcsb1540Sty7Eraob2T6fsgmPnigBSwPakY9sIjPKTa', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2744, N'9sRf-jFSWHIiqnkJ22nl85KoXo5zey0yGW9uPHqyS0JmSHZb8zPSFoprr3crM39OSMFaxQLFwXGi44ENIgGkcleNAqXkz5zokHiru0OLzPHTZbBl_lLkNDQ_Za500KQyz8hr1MQEAmhBK7_ON3rusc0x8le2c3L1gZ26HSvPbNX1MBDGRrdv5RVRaR2f0w7Pp__O08mQ43S0aOljGCorW1IDOx7WlxCkFFE1uAXaNSMHOhRcKN14Wzmtu_123aAG', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2745, N'sw0SZb0SgAuY_AyIz1KsS9y7CiH0hyHGZviBxftn8kjFofII3Zcm0yPQJKA1LS8NEKeABanpTzIGXUm86Ya1_ssLIsMDigelhdlNEJngEixXCVugPJQVCGLDx9XgWOC3p5-1Prwt42kSmlx1PUSViSPlrpHcvw2S1qoT57YTzTjWRdcrRpOqi9qbY7Yebn5c_qOOVJ_0zrJgVhfRIRvdPXEtNxQgvvR8vsHRsbIOrAV1lc_Opefm97xaKZbDyDTb', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2746, N'lW4u5c96KD0_o8ZIMVYwN9j68GNYctK7vM8UyTWhkYdJAOw8BDqrACGslgjKgrxYpNero027Irti8cd4NK4qPjObvu1vKRs_vl2QpQFPI4-qX38ygRlrtYE2YsnBZAe4viEhi-1Ao-WGFEu2NppAp_lV1H8xwhj3FwHGAYIVFMvOhHOXeSxUs-WhRcO2qKLbQdo79zEXa1nR-IUIOXdngJaooMIRYfrBXf7zYY3zVczh7LLRr7FpJOAskNkz3W6y', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2747, N'cgVGbGqIudtvrIiw3X8Ty43auhab-fpWNfjGD2Oly3x4eMcQkDRocZnjC5lWGYNnBmnKZrtBDfPZrggNhkDyA3bOqlt9HmKLTy2TbFB0I1Mzw_45bYpLKfDz6IAPmfc_h096DARNocw2igehFvApCm5OI2XfxouQw_CL0D3rAK0CKaMfTDcG-oRcK55U4Z2O-Cpp2hsFTZXqFwTjX8xBBWTfvEIwVc1aAw-NWT8o4eO8DRjVE1pRUVLEg83ze2ww', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2748, N'OhfqIG8MKVLjRqC1cN4hIjBpMoiOffTIaPvLXOfbGAnBJQwCAcjyseMWSZc9kxQf7Mxbflt79RRI5hZpYEk69OrteOPc8da2Mfps6gcL67Ee5w13azV6otTNpZgXdyg9CXX9fcot4O-PbjM-Cub1h-8h3ki1Jlt0mUvoXF6enBpVXpZqTN6WTT-GiF9_J-IDW-gAgang2eO7b6DUYU38gSxRoqCiQq-r86SjfEFHM3QdVDddnDw-cxo8BoDzosZx', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2749, N'OIyNmjoBVt9uD_ON7l8rT9O_mqchLmkmI__kENwl6CAKyi4gzlaNwanC4Ce6XbkkOz4q2Mld7E9a8BoLPOxKh0SgfnofKfJMp2y4i8vcAmjHjamo_3fndTmUcV097T28GQkFFiSXiKp9OgTEZ6rybmthqDLe_J2GMB5Ez3ATk0Q1PpB0Q1_WeQjzt6NEZs21hINlLmk6Vd_4VY6h_vTa_ztkJtz_MYQTDU8f_YoxOUScmdlTODrC3QiSpa9n2y9E', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2750, N'Zi-yPUruD6Irn4puhicN23GUAbaf_OA4kdax3nHpwUcDrnF3QQx0MRZk1Qb_2mPnpNV8RDuR-M3OQCb5USldfGFO5I8V2x0YJKCsLBJVq6ArsQKpoNExB0nhh_T5uSqZa8EdDltgQVED9ALKVcZrITUFhgv1EA4uhuNRgwRlSkcfc3zhM3T4lMhc0zv0iYl1samTlgerOvs2WvgS0QuMPanX8-sPH9eLh8L1Yu-8PsK9sUI3y98-NmmgVx8iLQEl', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2751, N'ZptzESpqi3MZcJkhlbx17fINrmCqHWAZdponThWJWhLhm1aZvPrb_--ChLTqz6PAflZ8xDb3Mt6nlNLoEMsEr0lD6bfd7IoeInch9l9PgrSqJYpx-LjwAB7dMHTkoLN2ZvE8mNIDA51oduKShqv7sA-gDzVwn_Zv3DavGoLza1heFtTk582gTY4c7EytgWy5iAvSkplCoDhFJc--Z_yVK5wqurCpLa4QxVJH63v7RpS64cBY59r8FgIlr0J4sxqE', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2752, N'f9N0e5bOiOTCQZRJfkZOzJXR1edS5sRI-lLlV9Kqh1Og-muIPgCxJUjLgxfTcdNlH1fZFpLvHPquhgQX8nOIW72APY-LHCcf6FeZc6NnNCl4BsyINzaHCElgMw6rF31gTTweFCpGuHWo-l9Rvg45Hx_QFodlXwNVwKAOhK-y7JHyDqjPAsqG-RUfWtHMOIG2vraIR9bm7cyjq63Hb7N5FQHrHg_R1wN4q1AVPVr9DyaL1Uv4s8diyB7MnvP1ao8o', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2753, N'Jj63XmBy8SUrGc6ta96L9nbTUU5O0uRg7BLsg75Lge8dHd9YkSwCu9MPL3brH0DDOd6I1mQCPNEayM79_3m6JtkHVVbDgiJfKuHpGqk5ncYVFOYA5zrXKpnIzwVKnocaC0cGvBpa9TrAl5Z7E1XP-AFnZUo1K4QWobrQkAoQem5Vdp3_3MaFO9ABoR6o7B8-fOpVNtngd3Wr97CJuzzIbRo6siQ4sB3vDtActxs8s_nEG3BWjqbLJie35oUxNDwY', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2754, N'9o-kGg7L-c4EBswQ4bzfRW6wIsCYKggUOGG9uAY-UUg4D3dYBGAOVj-sXzKaFn0K7MsUGN3BfZb6CEFyH_3qBSs7F0-ArnP_PxDvtSr4A8TuVT7SYSBn9iNSer6anhH0CTxFu_ckcqZtRSpxIolK2X5ps7ou6VkDVm_zxVAfDELVTZJcXrrj_s14Xt6D4IOvjkTX5KGH2pcgK31PS-xwXmliHVJWcQPzImmAyVX0sSCsd-EKmHmJPiov8FLWP_JV', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2755, N'XoMiUwYDdHjF5YFch613VcIN4kw8uR_sC7gFv29dgdpU8fjW3SCtJROf1RMpNsyvRffThCRoSFy4CFrD_6k3aTaptrPlNJOvDHZf7j1MfCP4czEYQnWMojK7J7rj1NffBbDw0-feTfBRre6FnRen-OBz15uibQKOpmp1cFGiz1WD_s1DA_hCWbDs4OUNGaVO62nyreA0DbTxQseHW9g1j-zXevCeTNbu6Z37nxBBD5AZhbs-a3Gfwr-NANAZ5_LP', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2756, N'AJ_REPZ440o3wVMcXx3Kgg6-C4nuYyMZYoBf6BjTWS9w9V0hbz2tPCvhJNByJ6yKlQm289wwDl1km9odULcJNcSNZFRv5wYUT2KSC2KhafDEhSyhybeN4zmuaqml6P9-6IjRr-m_8aabsbqh8gYEgABU8_AOfVxzxBloJaMKGXsQNFaaORswc9jgRjdiRQRYQqLT-bnmRi-laSsJ5PCrcMp1syW-Y7jf4V8goIj-cZiEULMeGIjnwl2zkJhWa6cy', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2757, N'AnBk16QrMz7LcZ1lBl2FiQoPcQjIQSZ1TNhuE178i-FgjW-flPjU_bAB7F-NqWpa4d6ruOmTUENiaMrsvXVN4Ub_iKw6n1rwV1jC9kYjotIwG-A1-09GIQKUwWfA90vqHMKa9mTSXBIlHyRt7n7Xj8CNDGDPsa6d8tA2K1-qtValDqQLP76Ge5VagsaK2eCsvdy_dadT9VLKchw68KCSQNqmO3WexGTYCXO0Y7zHbHLuMcD6Fmcv5qX95CTujhJB', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2758, N'71BMZnbPOngMPLZ1ti8eU_QXbSP0B81P_k0BE7T1Bar9De9hRpILQa02LkWGzo9yX9rYuqN7CG-I2XsU8g16Px6ErDsercABahzQ6wpZbJ4KVtOlPjm26eSTAtiGb8S86ozpzeE-pobsW-jhFbjItkNWS0YS7T8sYG1iZ_0I6cS1sitx9K6NEo-ECJOO4Hr7QqLyegFV3lfNs1Hp6l1qmmTuYy93GpiWadSVG0CJzxI5WIdzFJt6KIquRAvwe9Rd', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2759, N'xGCZgLFTnV_Ekj66eeFZZpIGxczr8qkPFmOWwpwK54iMN1w6Xe2Lwql8M_aJgZfDF_jUpIEVQb_WRURyUBWDQTNWmWxJXGZNxtW5OIScwdYWpE8-FnXSZovJgYoyYfpvtMb0tH_27_aSeEUIYDiC2jTHBkuU-q-81awy8W5mXV_2fFEZ8y6RQVkeTo2N0Tr11V0K74NQcfj1KjYQr6TKgec9tXJI5jODrrrLdjxpA8IHA6GV4reipFvPzy3E5Sl-', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2760, N'nYcalTXCYjzESiZooTrFOfVjCFTjGVVUHwtoP51HsLxVu_3k8IWOE0tJud8BVavfT62KGEkgSbv_FytKRTcW7pRIopAKZF96SFsmI_HHkLb8NapU55rHYe5UotzyImNosH8Tf68Cq1RmxjcaLhzY_5iXEMjXOprWsBq35yr0NUMlEeXfs6LwT4T29vHOoWQR4SC8e4mtY8uXNHKjY7nvQ0Z3Nn8BqV7Igrtss3786e4UGdH-LSRKrHZ-FRAHi9RU', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2761, N'iiBeTBDm-sBkObIyhLmhHl6fmyfFmnOzsHUu-Bsir-OwkA2tBolwIrvzrZSLIvK-eM6sxezR1UrCY-jNI-S63wa3KbZx05nHV9vR0Y2NayxOcWHSiadtVNjZGcrZjOuCXSOHiuJLZCpXzCNbiP0c5mwn1XO4rEfwB8RZUHQRnZxWueMeJaNi5G1_lQvb0dV41KPZDvlfg4yLPGlcA2by3I26zbVMfiiHRcEMbH3HiONI7wKTlrYooXSLA1DMq0b0', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2762, N'3yOWrXZVS5xaF6Ljko371k_mGeqb2LgNVoneQnkVJtuIGopi4d99eF-9wpf-2nK0hTvsvNQZ0Vgsx-moLDQcJnECgHLgByZgF0ILOGBgpCRS1vnowPk6_CzijH6b56KXqe09G45jws5F3TLeoopZHI7WFNapCjQqVmgAnGuP3yU73p7igsoEY8mrutOFXuFqe6EI807Gk2Z-o0zFYZw4YMng3VJrOIdLCHLiM7MGApuFppVGCSCct6kDmnhmaOj4', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2763, N'wC_J77bQp1qnB6y6BrCVC2RgVSXA8Ys-PAKQRjz83wvkgMFZAJdYPhTPV2Mx0hXUfYyUr1DI9VGDNYOHcVfPFA7Gkr9HZWgb0z6iiZCaUWDGP3wCMQkETR2QwoCYLQC8gEq7Prw20s0Zn3sj1K1q5VLlVegGgTToUzRvOk3I0DNV82IaVfcHJUjNYRf_dzQYuJV6Pv1CSm-6287D2FzKIsa5LheDyzXHzQ4KrpmodPp762-hyLDrL_zzf3rfw_eK', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2764, N'GeYAZv_Pf-ktd2I6IhnOlBcFYi1tY6cuZThRuyQjq3CSeMWOhmPuyDr9xOWJlANv3hJXrPUtHXn0Zn9M7CPfCA93bu3CbVLBJPkWlwsM3YnfJ8sRsjCdjG0cOqbXQIEDR7h-VDdHvp1Vsl4fWq5Z6bU8TXtbf-yrYZ0dYlWe_GrofZZ4b6BFtdT0fDtEF5WIhy6ivj8aF4fsg30FCKcfUcyIZDwviFiJskC2FVZPLXokwL4dxgi-aSI1MosKDe8_', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2765, N'XaibmPOvCiJCoR0xbXtACIAylirVhk7F1ZruHap7t2vkqfI6EEEu5IApDIu4XJ2nOWHusFHtFybAD6hERRUx0IzWqLKWnKQQWViB0ttrfDkm4RfeHHh0U9o4KlkAwx9fnmXpvHPITCDVcoQlCePsZSlhbo04G3XcrD7Xcuyv_eJcppSV4hhm4G_1bmhr1njZkxD-BcK3jyBivgIYueMmmxEtYrKzz6R7rF-SMQx39sjOqaxVNktXHHJI-_MJRa5i', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2766, N'DGG9Uj9TkPiTw-Mek_qQUi_66yW62XRtz0JTJ7snp60-HV3vVjioaC-IkCLK7NX0z2o-XU4YV9Wio7xeYyfYkTK0UKkpmnlXTa2x_rFHKgiX9VQ2JuexrzqUZ1TCMsmRelZfqmDnk9gfz3i7LRRBREBCrPmRy2awNy1hPX_B41CLV-FRyqBcfdIHNxTjN8NBP2MXwUV9gAeYhG9NXm0dD9oNLExergIwTtTVvBmYa5fB3xHVR1fNZa3g8OOLXy0V', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2767, N'Pw0MtKpr-UIGihoxvRl7BPVFbvSvlV79S3yjIm5R79sc3lClnLWKcaAPwzJoyWOY8kDknUFt5xyt1RafzrbfV6QxsWdwh8QNnVaP9jgvZSqKthCPoZn8GAfJh-VncclUhCPVonCH5dnDdn8b1cVuHApgdkxSEnKvZ3426M30n3IxXg2MCUATu6okCoaXaizRIVFYNoKFcRS11-8xBVX3V1Qyx_QwgjmBr8ndLn-lUDFZDSh_dWraUbrQbIoQGRy1', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2768, N'7_MC4K1S-7cHFZhSIKARdIPnsN_CrmSmzkPwY97OQuahuu-YMtk4_8DgggmL0P2aP3b4AqVD78MU-Kns9xLrrnyE4A8SsP71gUk6kdG0F9YzTs25fSaoSrth0fvhqi1dyMhoKp4clwHz2RBjuoU5D3ITZ0jlkC-LqPRv0YF0dMDZniIJ6yX2nHc85XyeF9kz5p3pJhERLSSBTJHub9SIAR7cL0vn_kz1gD5iV_9swuBJvPvRiDTQpyXBNGhtfFG0', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2769, N'6iTMyO4_Qaq2V0EAx59sjv3yk5Wd6K41sPdBJcq_S1EUC-bKwLwI4ZdIVKuBdT6brP3F-969r7RfHqOqNFgCdo-NX3QGEIh74vhJGZFplFp3d6-InzmOsPsdBpywwnRfUXkwfrbC9geZyz-Tb4zmy4YoCL0iNugm2VCuuCpWXFC7wxCSLYwOqYWUqb9kSsb_tPt1ZxSzVQtRez5ey_n3L4iLu2CQ5Rp7xhLAWJm688mA1g3nTidkXVzOfjrc0H3m', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2770, N'6nDqbLljOGEj1L0X_6mZ6HzXY1Kc0DmYS3y5eVMQturgoiarDtECfg6x-bBHSZW37_TYtCvYpmEi7GF5A-mlXam95V4jw4QxLu8G16QhIQmJHyMVQ2ZDrxA9SJhSw3D5-P_Y08X6ee8SfRITxMRoV_lLT9ODk0BZfBcmT2FBSTvv7-hhGo-rS1wRc_VyxbyfZnVMLatdo63TFh-Danl1jv9kFolophacXYZ3NK0djm3ntelx1uHmATTop0crZ5zC', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2771, N'UPq7anZDg_q-QyqKiPS9qP0e68q2TTo3u0AKrtT60rjjvYbqUnQrj7ksr5hSM3_hYy-mzbwazhkBDLFw2pwxQXaC7bwwR4S7XjAFbGMjWzbvzK7Ik77WVzsRbL8KA3DNOSGDLv_RBgJOS-vF69NxEFcbugnn6hwLeAi-9I5QNL4wkFK-S_jehBpEYyIBzccxzgjmZZ7DQuaB4ZrY2UMIVNEfTrZ0c1maUL4Pj-6KKheJQxnuYGn_N6ZarBMsW3mI', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2772, N'mH5Je9pWkKkVwwgAhCO2XFMOn_q5C9yPtz_227BAHXaqugjSalbYdIkzYCopHwsNFccmKAYZlqYNVtcLXTMjsGwfiPOjU6y67A9H4Ljhh1-SC7St-8Ix17AGHqYpdoL5jfRZxTlnZ7W6dy-5tp0lfkgTO7no2Zsc_DZLz4n5hzss1Bzpa-matcBFWjofatY7H82VyJG5YANoe6AHicWQMoDNX6XE7NrGcxXyo1SRDF83ThS6tNpvLYzzZs_WQCGb', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2773, N'WQyHb9BO8-x2A9uAomhqVbqMKf8kHNWDIDBw1IalXColHJyUGF33RHdgUrs2VDCmd2P6pLbMA_CEykhXWc9FXnMKXOJ34LnHc8VDLgtNF3NQD9da8QCOSkxRieM4r_3Bd9PCjW-IkqRyxhvS8lXOPsXvVfm1lmpUaQbsLwAdstqzMITpTjD4Y6G_B-8KCCbl3aboIfbne0ihz7UunJFZ6-k1467n15_htCg1qsD5qapnpY-5w6F9Ylq6ZquIDXik', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2774, N'48I1W6PZvWfkOqDaEiJTJBnh42M9XC_U5sInZKoXU5PoX0u_cHDe8ouymxq78JHthswzmUUfazfEtSG42wmIL6QNx1o4XIFx6J078d9hzV2rs84YitbklRP-RnLc7aoCe2Kijy1f9MMW47bYMWEpIx2OdCRUlXZXI0yGgbWqFsJ3S2w3i84lXTJOKFvxpzXU04tl_niarCe5kYQdYTSPuf7jz53C5K_2H9q0u1X5MzbRXFVe_aIuypED3LLHetFy', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2775, N'mm35OOrf09E-Se0hVlO87UQzkDeJ8xTpH6Vbbwy4mzCLm3qUESoj4k9XEK3nV0-WbNH4A5GEURbaUzbUyEMXkQrkc2Bi-_ilEfFoGkhMnICy0pz8W2XqF2RUtB9boFgYZo1Wlm0TClyc386S-7CLpOZsvSWR4zp4HEBkO7alyA1sKfdZe1B_YxEGqa9m58bXw4aG5WSi06E8mGFC4JmeZkuF2q_fLsadrCt5r8Y4sPiJuslR4SLhxoeUzQJyYV57', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2776, N'1DD4cjg5pEdPBKXe-De92WSF4nbjg_CdKjNaBcNK_DvpXyq3uQOorLHxdnbCIejW6AArY7NSw2Kg2_Pvx-CIDYja85lOk__D1GH_jbcD6V7Kqx7pDkBanCYUl0cDXJImSqJY0p08jKG-EBEVAcy42lz6znzulQL0dOFta7SGYysfsNV8rpjasOebj7a351UgYVfw27Vk55_6CFT_ZyJx-YrzUmdvsde3pGwSWKamwO1_74v5-Nxt5umjf9nomISM', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2777, N'jWDk-stFAKODvAXn2R6x9jJli5mxFBB94hvCoZaCqsgAnSJps5PzuqJlblRMTWMr40YAKwAuBUaE1wOn1smQcJq3v41rO8-bjrzyvj4lrSkG9Y-B3YzMvncPYwzSEVEbCPgv6mRaoHLYSYqQNsXSYOYK_JG3LT6aVCU-uoSInGh3XNDmaZUiz6XvR3diSgyGc50BoZlOsafajfHkbUgPKnMM2B5vnBYq_v68cveO-710loQLgo8dzXNpznuatMkD', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2778, N'TgVv4nYIDOh2XXauDXebvA9Ziqj7vMhap-T6CHT8cdYYvnx7bGKrYxgxgKYK3Xa0OPwN6oXpsECJwE1LXnQ-XUvlOu5RbIC0kT_lRUT6dopDyLqg-eLlyHxGOC4t-bOVffFfZf6crv2kLjSe3j89WR-6JSNhbdo1zGpi75yqDegPkLEfPdbjZLZMJRiwF4B4zrAmp9smUWT7HjTPdk_vAw1HViMksou9lR2wVCZsmLTPH1llcagGo01sZimuqmU8', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2779, N'g8w9Yw04ia3zX0bgM_QNYNZHTnBnCMoiIdrjVDL0RRrZf4nLvpPiMQY_2vMDkXSxCyRSX5b1JeAwAjMYutuxUt8IdOeufqo85kQW-7COCay3Yvv8WcT5JBhl2yhxSbsUwVGNQb5hXC7CRQfU5tBH8RaTl213HXsN7x9ry5jyo8D-Gz4X1HTu2khXt-2o9z2XyrbpT1vCv-EcBBbtrqVKgrqf20gdjygBJhaOi3lq37vn54I9K1I7DVXr6aM8P0Xq', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2780, N'p473KCH910LSi839_2s3f_-BVPlwPSdGjVlNP6hDdWzDGOUs9G6jVrl3yrrciTQlxseMIpCaRqZfMHhpUVUNYsETJin0a4IHYLOG5s0BXJsfzJiabqHy-A9V4Vj-XcJtBgfS-WE_PeVA436v3weW_tPVZu2LlUEoTD89kW9qwCCjLuOI3wXoJ6rvXlMhXllwwn231qwsKICiXC0Pknz3WD2J_OgKqb7uhLeUS_viYKnkDVTBX1KuBaVOCzDQolDu', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2781, N'Oh5MZiYnl9KtPPDfUfDjmW6JyCbm1-WVpqGxhx9Upoykgzk2fyHmtAKDDa2v2u7e-m5AOWRXzklH3SPT85K2PNCtfCv36Eu4S0VvUM9GiKpP0N_vzJup5PuPkHuAOVCrmutQ-O2T2BpjfXQjm8Y5Cfah3TOLdWb_UGPYw9FXqmdZpV2p9zQ75nov0ln-qr3Sp76ZRnn3nG25H6oQPZSboSza3MZKRR4DmE1Z_5Yl1e9xGMnXBTm9ZGYj0A-AMppC', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2782, N'guuy-aTquhLDIMuepsX8sXmFzdw1apWqEiCx2pTqD3BMKUb40vLOMHKGrPHbh7H2m46ZKIfRu85GMZ35c16jXamdmxKt8PLgRRa5Wl4hxEZCBWWKUR2v7Vnep9ElB5ece-MMeDe3mWugLC66oBEWCFExXQICeyw5xQcjljRiGnRfNZTNwMN6fR05eIF-DVopPnuiujVGiNPnR1hWg2P9mTZu5J7wKAPg4t39xzGfJ7eK8OzfekZAp9zmRLuUTkvb', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2783, N'vRlP_JJLBmmv87CpX6bTPHcE9Kf7Hh_lDLyqU_x8egCgwbK4S6GtZY-WawVlryVE4Q99GjA7BG4pGrNDr6mAbnbJsv2TuTxloQUmLf24jw_8AXzZbgKnwnKHZrmlPI6cIVMPAvIXxkg4GwZMvKjNaRvh_bDMSE3JhJISPIQToyjwpYwucvSekPsEOw4YAYTqEBihCk3aChuH--Ole6jpnhQp6jw2wiUVazyEs648jthSelwGGO97glPSV1FUoiTo', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2784, N'waqNeuy86U2dgxXDMTkF6LjQV9jQRq6ET4CV0k-bP5zCCag036LXEaMwA5zgHrm3Zwqc1Fpjd7LXvZRu3lMRoftJ81DWytTy5OkLd1bPT6hhqyn2LbVmu1DeU-qav9-CvAcKDBWKf1RXDrHhnqdjhqbhWLEwrAkRIuLeIXBg9oYYUmwJ7CPVf0x6sjFaHfU5sPc22-Btg5EZHxaCXKoOKnvnm8MaEJCsEmo3eGhaxzMMw3ajofuuBgz3ogo8orQf', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2785, N'5OusMaE0g2Dg6n-c_9U-l8Vn00INGfrV5NPtUBFdv-UPlW5itKVedDS6M_VDv__RIJ17QR5YBkJqYUpgAGWRvW1P-RP74eK6ZW_AM4r4KEr-rhT-BTuqqFr_4NJ76GflQYWodJC039uAwKL2Nf5qOHNDkFLaBsp5ETRWXD-MUvAaIp_r41IJFIimIWuaRUHubvb4XYQ10rKwoaDCDBmqDOPKRcpYwo9HlhcdIMkPvAaqcw9T_UolthqJvCVg_KN-', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2786, N'Zb2i2bZqDUsbllKnsKZo1fiQH8o1O-Aq4jVxzJvDgf7fjgqstkOxJktmI606mdtJlh2MiU3YeBCZbFtZ1z6ZM6ZPf5gc6WSKx9DCn8cv_rsJhLTG7jGy_YA0FuYjYfCkpKmwKt-2lXrMJHL4wCRUVkD_GUzoi_Gt4wxPHdY4UD0eY2RTf0UZtjQukH2Aimff7g9g0xrwfhHYniJAfOM6e3zFIuPBfgp_i58kmQCWUSGvcdWHnclECx23ZZj_TCzo', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2787, N'jr_zmvM7KNjJX4F3JV8RNU9ym4Gy47spfqwuV9ZBKwfiEcJk6ljyIY-TYXktyicalgIW42RYi56fT7DeLDlDBKnLlTv7j-0fgPMEY9cgWEuFfg-42gLMP2CF8qcFlwQzBUNhwPUhAsulyD4QQBUJ_KvAAJmPUTMesPKtACXmtLNW1i1QgLMWfzIlY0-4im5dfM4IYWpDmbg8hXnrrxwt8ACdMWMryon0-5W7J94nOwHFmgaZ7Ql5rse2cyMBRTrZ', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2788, N'khaa-A96W_QsJHNYXmX1OQBl0r837tXzgSUN-ZddJ565pa-pU-go8q1KnVwszYAGW9f54OSXOhkhQmU55USTm8hG8T8o_woY9IJJjOLYHiCJo5mxwHeI6pjiirplLg0VGbhykRxvMa3GI0xusjd5LoJ5PdxrRDsnrNJtkdLoQEO5hgamM4znW7thc2GcWFL_Y60_OtdujRqZShJMMW7mqjxezmGDpqAyH9nnwOzXEKTOYhrV8pmh8YAajJemv8_X', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2789, N'a2pyC8d624JQMG1akrb0-zAZeLoViyXPOgygcB0K1Z38iwkmRk1G2VVR8poHrog2VXsU8tC-3lB7sT0JOISfKNZlHZHqzHPTmzmF8_4QYifI_sD5ZnjZ9vOwl1oaz40v7TItiIw27DPSRmBmSJyFsw9f4MtsSxIohnFIRQzqpfI47R_QUxUCRx45IKM9d6Z75tnb2RuuqzwjoYLiW_gIoelNJiuN7oxnoTuIm8ozVsNZLf2GR0OajaNl-bABUOSv', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2790, N'C8phESr0J8WFTmBhIRDUhk1WTZbMzWyCyKNobf4Wm7_Cjc1ZXyzoVlamvyLLepYxLH86LycUreuAtQbHWJfu_X3Zd9YzieQ86GKweKJCsWsOnuwZDoEqidW-wAfTrxt4AMh3r3clBzlenh8yeUNYvQ30KVHKzh3sWvXNIXU0MQFlEtulZy8D63BwkR9yWbqlkdwuijwJLvIM0MQPVtknWqnGEzAj5qSdFxEp1fMWzxR4ncZ9c9rmahDwLXFITo9Z', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2791, N'9jUnUaQFuBM7dZZFNuVouBlIFmNPQkmt4YJXYoALUyYGGXEPi-fCJn5witBaHdnAR8rl45zhPPmSzJBVG8ftJO-Q8c8wJDJGF9xuVA71zKnBs8QhacFAqiLgffRUImj2R5-R88xjtsxhF2nzt0B6YAyfy2xvnUPQK-NqdA5immQ_tdahzjuDXbqZkDVty5uuP3ldKpBZWmanObUnSbg4yv7dtt5dewDRdK30Q-DkVHhYuafsGdMwmm1foxuogFUj', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2792, N'KWSLDdAGSBc_ZL46xgRs6d6dXgnAAcujIhIUHHhPQeA1m-oYP5ndHc_gYhq2xUUaQrhIO4RVEFwzlfd1m23SjficOoR1vaPhrW7sDXV12pdgOlAsTBFsegQrVNXAHVFakxdazCzKw2d4QSs1EuNwZT84NVbkQAnQlV0GcmRQScnC7GokL5IosDy3f6w6YnP5Sg-9ZPW8w7VQkRzMRmT36ZzpWosZKIL6VW0FAUffyEO5SiodfTZLRfhWWRzxthoF', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2793, N'VbMZke4sFuxdN1Uzfu0gSaYea4cr1ZfjjPYK8SLwhfR68nflBOoNExKdfqkXIgYV_sQYsphBtFuyrZgjgZK1CIdqzmYCbqURudIFl8YMGebvEGhUAaz-aYD22qrww-W1ubD64kN0QyURn2j5RvpSNTEReqXhsOkke5fVoIcPriVWr3ViZ_wOhPgIAUyD4LrBPiMJSYC_tzCf7QJ-_jDyRgdEFZBPpH8hQk3AkxWLH60u8614RkGHj-TKEOAu61ww', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2794, N'91yWjZmoy8wP9MjmiNYbPSjhWZ2Pl3ZmiEIsmhZEK9_TVDesd2VSfB5oxJiBK5VRJMaqbsYAJ_22Vcu30Ik4n5dEmnvNRJwToGbkwIIspd7rR1J2zsWpIaVhWvtxeCEFYI7naHpyJTUeUJg3CUCfqnT5IvfanXizYOE83tgM__CI1Fw5ENSGcNc0Oj7rMvBH2O3bScdwbshmif__86mP861TQz8bJtMmyAW-QZUQQZ-wZn9U1reqSQZKupGiqly7', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2795, N'BSMs4lP3jwOkGo11kpg4r4EHGl3CuKJqjyglB1n69QQGFiES3tQqgIhzSI1tHMBn-zXvqlBqYob01q1Irl4LufvxObUwsGI1LmKt6RtzjPJ8H0r6UXTEISQXQdUYBVu7OP_s6wFZ3cVPsAyM8CAEdbUhvXdqiN8Qt4jfyb-nOWxnDdrGX2dS0sUWtW36fC96vcbcO5fJ4osLenlZ8RVXOKBuUBbvmrLjNkKxMncwteR00PZN9tmVdL9ArF-Vmuzw', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2796, N'a6MU_inkMynCSn9Ggo8IMMi0H5iRWZhxHt6kZn1N3nEF4_5hJ7PV3ZedjT17AC2gQZWluhIj-FAQ9tPfMkjyJ3T7f4Q8ZPm5rIeilHucMFAu1T7Zknv0mYBEcC8tOIFCWmH264jJmAm9kljM_ewkUunua7im6XBDG_kL4OZhvGY8GDd5U_VaGduqBKndY8Auiloe1ozE_wn6YFbFRva0EIPWJa1klT397KchTBHIXKJ4l0iJRTIKLA7N7FpTcpwU', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2797, N'Rsc0FOnRtc7qC_MKGotGxTOuJoDUfWDeN0799tOqiybpNKY-IbjiQQHR9ABcx5gH3D2NPOzquttWP43IxUNQonHvw4J-U_c7rLqjN8kgdAtrJlHU0GHqVJpipqCwuNPa80UllVvG-eHaQT19KOMhC_qXgqte1_XFDOMFxILDAwkAkXaALESKPmTGd8D9Dk1px6Gnh0h-FRc9pdxBM_m02Zx14hjauMOla48ZzURwCc79kU3bdEtMgBci9k8CSlqx', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2798, N'5bBj2fKPofDEjtHSKk_kGvLTs_UcOuiZ2KybUQ9j6klEof6oRzvGUGWlTsF9KU7z855nnioAGbWEKpnpq2EwKdGJy6Ebya66x55UYfJ_vcGfsvULnWkuHMp11GbbPCRUVSPgIidLlS5qdi5rAZXOt7zTJJBq_G-fGZrlSPIe9JvCgpwG5StupK-Lszm2n0tj_rVQADxZJGm71Q4z89ytLZhSgLhRoZPFriP--_atwrC1KVyOlDMY6br-wN3nXLCX', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2799, N'grhMQFmAyFpwA6WVhPOw7qdqMzQXC5D8-8hu9R6bOLnTka1e25p24qXy1ymwg56DOzQvgOPbX6VLpg4nzBT0g4pE5pD6V9KvjCDxPyCiL4QwTjdFI8sHhVqIqqLGs9vBahflLGrC7zodjr1lw1PtSImtGzc7lEMvfKfhybuwiMzQ4DCArsjfZO_f1lJECX2wviGtc7uz6LN5PBFKokb3R0oPfoh05oOucxefhvGy4A5FFlOwiXCgcE9qBsOwWef7', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2800, N'hG2YpcAYQrIX3nofw7xp5joDV2p6nsTtfabK_vqs7Y8E39KEAA21u1hhxgYNzV89_AzewH4ILKtTn2uqON4UqrH5uBnZs7vm7vL2Ftvki1dYXvagTdcNXDFl9sCy-COhci4mnNPteSlttYHwQrFP0L8m0GJt1w23duYSn6WEmYVDuq10niWEjOnAw_pvweifaF82JpQG7JasmLPVqd8RTXHH8UY43RgHuJkHK1igtXTTukWRPI2902Db1yUzp6AT', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2801, N'ajLUiM4D3tpzceSVw9LV4WMjeN7Go9kYCVeRrXUImomgKv-EBvxxwlezhBykWkoVur8feaEM36mt7F_hNAy8iNaAZ16ieRe8u2SkSLxl2t0bKCSv86Qvla3-zM7eB9_FqRxwTRcn1vULQec4pNxvtZ5GHx6-yby5DxOrzbEz0D50b8YALYIeYHLm5Op_wuiPN183jySyNFuU7OEzN7UY9hh20JKUomBnO4dGUsUz0wdJrstR9wDlZwPkNS-C84JS', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2802, N'YEf3bhkFwB8mFUhrGpujhD93moSGMhBYbPnxHN9NcphrgQpZ97FOP0RiLoOXQEOWAKTLfZP6UVxXs4AKI2TSrr4QPLYM1QHk-bW7OPLUaRimE1OsFO8WZhelTGlrteXiRlPNnaEbdeMMe6vQI5KwcbqPVZ7ue92hKw3ZUQkWM4k9SPi7S0PT762wTjs2ZRFJ4XcenZUSfjYjvefnaR89Cthgy0gARWCirAOH2PtewrjKV1hPgIW-9udajqbv2skN', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2803, N'JfOJeDW-14GywV5dZWl7OWnHgH59Nr-1-ylWHMCt7RyioI_pvEZp4eMvyQUsChqYWJxWP8nONaAYJ4Ga0iRwPrAf-IMlaMd53TwZ7zHGWiR-AiPyN08hHa6PDenUqfD2K2NyMPULra0FaKAoCVOaPXYHpVL4WmyXIYVLxiUJYF3R0F77cFCcXwIdkUA27PPbL_GWfzC3I17j8IDwSeCOr4PMs9FVEWQEw8KS2H4eNa5DuNYwJi0TjFN8Z-nLeLyM', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2804, N'5U2bnKR6NIBkKwQtzCvdG64Q1EV4Vho-R5QGBYFA39ylynJdBWp03L-QTAG7XASi4P24Lzpinum4qCvlddl-ba8JoirPSHZ_ANdVWthfp3sKrGSXiumFdJObsxzuikb2Bx4eBWlKBKEgSe3YTCKDuQGvm5JzOOfPM2XWIe-r60XiZaVM983mzWb0A6AAQeD1SF2MD4rJCokMEn7XeCTqvKKYquss69VB9y7sfdXRjf6EYNwNwpd4M9DaoTXyRr8C', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2805, N'AwiJsyB33jz0vmQKE-tDx_op7xfkZV7dfOU_Pl07E47McPn2oXepYKjkegbXB1NUZ5IcaA_-WCjIoacWX4YlIeTxVdMXwh5xKNq5h_LaVZl3XQCnE_DvUw-Z42CAKTaemHRKzTCIVwLm4PM1aBVtVASxhIKzHuzWBDXO4fJ9L_F3aiXVET5ddEHzcxtLdtvpx_XKX_XSqC7yU6RUshCKiP3ERkYINTzMcnVRFM-W8ydye6OXxsFP9AZf2ZbIzGhM', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2806, N'gQE5WUpflJ__o58IDprJ6kpH4EoikXC_pAfkFbPYbjJPce7xhjKCLSfoWcXQ6fKZ40oquj7LoVwXQdWqS-ajcVRs3qgqtEWIN2s9PMR2TXjoe3hGcfe4BW1YM1OXZCRCeiSvTjUIXm2aNCTZvAVImJgwLbxHtPSVgV3wvo0beV0a4e5KzyeWtlRSkXpt2rfWWllz0jE-6WknJUx8tuStg5s-ppD-dfdqR7L969frTrbR2V_soWxjw4Yp9GE-cjJy', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2807, N'P1NLjHBFfQtjLXiuOIpDBcu2oKu9hKhOATXxaLwYvMwOhAgnkqhfZFyL0I5xQJCiNEuEMdmxCkosm5sbB0YiuStYuFKbAoVJ4ONtC4KJozJ8GDryLLJDrjbStEt58Ltq-AkswoRtq4Vnr8LIYTSQtPTlUwR8-N0x59TCoiQv1Lb1PXXGAgbCL0DCn3pm30khyrHq497nSV0qB5dgF7TAY3fw8wf6YE9QIKKEDR80AkHMeG7l-eHY-jrw7obgEAfW', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2808, N'Y5Nu-7ciVoVYdRfkyU49vjFqG52bFYgiAujV-JfKfbwTcfhfDcRduNj-q3nlTJAnPwafbwZC91aHHH1M99bLUJmjipOxdbz6hJY7NjAezinsDAbI6NpZD37N5RSK7RjNNZfpbENDHVWuuLGXi3OrXtKILGJq5X4CCdRLENPphIySNfQRlgQ7yIu5eiAd-t4a7UIqnZTCz8vVBlDqlcRgTFjzQB9-6JdVDlElOxrRZRm6loyoKWOk-A_ERc2qvAIA', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2809, N'sg48lOoin0g6KTViHVeohBfDh5nx2iC-FMW9bHnB5UOqZ5HcIz4masafMox3aFHXOut1EJcGDAn03t5mtl9_6LiEHtmvJ39vKjNnGbVLXyUXZNbi1WGXGs5J0H0-DX9XRiTnmMH_sitpOtU-0USFpyCGzWkRH9XLP8GJAC1aX7_A83Z84hhXk29zACYZfPuOdCh7TQYUywy1SawpReRKd8qABnVhzdoNNuMk1wQl6u7BWWZAu53knBiRdGz5Wscs', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2810, N'iJ9IGIS7BOD61ASFtThwXayVZfJPzVU4SkoxVwEJ0fEFU-Be9E5u54pDPjNcYTEf3-m0zxcUp--q6AOBV2GHdcuMlK76iauX4u8NZDBK5A0u4kTrhAmpD-RjgIYdhaADgrstXh21Iqh4LfQI7cjOWB_HPShwAg9-YBvHIaYzXDkF4lUmmW1w3pm1-2FYdmOhbNI6lIJilhnevw9bIkD_YN0ZYAMs5aYRapOhizkdFCV6dd0ZznzFEQpGBSgm3VjW', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2811, N'WB8OaIwApG75u3YNMJVRDvpddLKBCNEZUUPc4-lkKe5TCDcgZbtliDF7_plsrOHMjg67HhYwsVHmtWrcVdsTxb0FGrjsCU3X1mC5KsaqxkHFbM4HikIppNf7YABHIoVQDEyw-kqoEawUEianslXa-nuoCxjs4BE7nGEv4vRLxB3L8-NRvSMNbNpd_8Qo590Yqy7IdD0yoyKF_Huy5L6dDPtOz3KkLucqMVb1511iYBdszK9EP08CssC9ivleag0l', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2812, N'fcyqtlN7P6jf64Id4AXqzXqoKMvx-fBzT6REmHrXkopYdWHrHyJlRognSQbnQz5c9G8fp7-mauL-9l9CRlKG6-ldDsVVgPorzD3-w503z18Tmd8M_9TL5P1vv6D_AHJAaPijPf9aVmmSS3vM2gX9hq1Q2Te6l-WBhYZRJBc1mT_bhCHGYVY2RySabJrfVun8SVv0mwRCErMwLEGWrF86WnOM5Db5X5uKrm6RZrbwthiJt6hFDDblvceGa-t7WHw5', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2813, N'mfsIgdlgBL7udH8F45Eu5NVY5F34omWmVamHazqf_9qdXpG_6XLIkS7ODf_YAGPk1EQn1lHPdLalqxSHHcvKREgYmA5t2Fxp0n2fLHDlO5S5bHm-czE4Fo7EMdALWeXzzlWYTMSPBz3mTcDHCYcX2cX844IRcZ5S0Qzh5HJzKqc4H7fuBHFhek-4BG6jCfIp3WYhhuFmP9B54zstp40QyrNd5inWI48s_R6ukT-O-EfX_9aPBfMesmmwRcLvIY2t', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2814, N'k-o6Dpz8p-MnqfJLAOa6KrX_iATAtYzKaBlM3UYIqk77GznSNcd7sTwfCLRl30yy283NSMgHRZZMLGxpD_q1ubg1TmfuhsJHmr6DrAl908k7_mN0SpH8uFm843fe2xP3ffVXXDIKCECJTGZUmHPUcs34AEtuRU5kIE_U7zzj2gzih7XHJbAVGtfqhK7X0VY5YfnmrFkFNB9Ev7_L2xSmpFZVHW8GbiraJNVNqRfrXts9yhF55FbIho81pcpacc0S', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2815, N'SN7TFGBHuzU0Y_xGhZmS6DJasGLovhDfU_gA_4BYA_cq-pb-WEuM8n1fy6ALXdSJ4V2QB3-KrpRgB4sAZSj1mUZO_e_9x5Fr-kdTsaxxitFjfQSrAu52iiqnNfKUD7a4DeFaeuX0G57KNhXNJVGzs6XaNxpU38j8XT8pxXTxI5UWy-jmJsyQDzcilJ-3q67sh3-odLqS9a658_ZKVfX3FGU4hfWYnqTiwgCNlSDBnwR5fm1WK_jZDkZRlc3ZstIR', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2816, N'iBBZogMhQJi8f01uHgRqC9_uJm6LPu5ws_OUdpeARCS6PsQsNZpCBU0r2wUUcwzrna-Vzhu1LfPJeUL-NS9wQM5mQdQu2QyN2dRuz2f2FhRDYREfwMIahZNAJXGOTXToh1lpp_jQ7fKTZ6ZM1eWr4pjZP4kDhzNPbDQS3YGND2J5lqVZEvu2wjWEA4Q5BHyVDfd0vskW2fB8hD6_Z9n9oVHJm5dvZdLZIs6uRethKIPZtcQlJuSOQWhffcpkqWmj', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2817, N'Wtg4RsT_onDwhdrLldO7SqG3Ne9lkZOt8MGsVTStDuNd7FWtGJJfsTBMdXbySUbOKfg-fC1fY-oT5t-G7_pUQcfmFtaBoJMj3bPcy-wjyTi3e0PTpNAEUuUslUtpOC6ipNHpdnmk1n0semtNuKl37Ya5fOGAbo8GC2K5BjUAf4KfKm16dOetZuC_9tNyj2pNUBTsPYjwJOq504k8FLD_VVBr8OV8B01HxRPsJt_l15M_kGmZrjPIEBQFdndU9BVR', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2818, N'SxhcYEDvclW199k2sdZZg6Xk6nJZdxjoNhzjm09gzC7YNjE7Ih35mGfzzJqWn0WDwDRviMzX812lWGNoctKJ_tTG2f-16eYK0xuGkxiI4sQ1ELagHkoTJb3ZtmCLTDXRFCDFYzwccFlbOGChL9WRZ07K0ZiGbB5Q9fauq7OwSBhYWnzbxt3-HVzK1HINbtvGfuz14fuEhEj5zCQIeTwHD2yY_UszFs5Nkd5ChJM-ku5hmsArvMETBc1gvwPcw2yX', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2819, N'__pvQn0KGbLFljl-4IuPu-zbmvcXXMXUwhoppm6hI5pgCxnaKKE9yo6HyOD31M-fx-btbvDf0_V2a-oURy2Ko2LX5Sks057XZjeeyypIOx0--Oyndkwy0vmMUnMMGvLO_irEff4HyRKKeUyl3uVoj6-Bwd9EEyambYsafX4D39j59IzqUe_DcBeetgJH2wGc3Ff0PKdZpLloVR1bVF1_qhmP2MK6ihUAJ5tsWvCLE-sZxi2YXSTyNfkfpjjdZDEB', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2820, N'GY6CYmslBZZLaQz5Aubpq6QZpar2s7QVjfWSVHOLBu7kT2UFm4w_JIuN8AaxYVgC5Nfgyr0V8UBPEvMTSpQtHmlQwLDxIczmhLstG0SzLQVSZFV9l2NqUJUQEGdvuAThR3IwX2x5JL2W1KIQbP_shBdVWVam3fuWwXYGxYB_JszEvglgfBMVuiMd_9di9Yj14OlR0dleA1Bed1nqGfFuPvrclu3MxepxNv-5nzadWf4FHRnCu8PdrIyFgZ0aYzp0', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2821, N'DG2UVsdV_U37SUzYDwsZEL3pF1GVxNOB3ay8Jzce5oJdR1p2HLG82W7s9pbyBOR-ITOeRwCMJdMlHfyN6AaMur2n0XWrzbgRvek_-jUMCd5IHp67i1FskGRmuputNfa5nNtzhXkvZBHHQhXuOuX0Za87VCCA24U-WAwTKypbjWRgbuOP33GpSLtwVqD5RG0zXrbCjS_w7fa4bTgM_wlMeuYSLThVoCy7ThceAK6kni-s0WMR5Em22BNCyhZYK8g-', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2822, N'XRU9wxaYO4zX4ox0j_E4SYefL8JG2BHetE9B1LT3H5SQUIU01OM0gYEokbIE0yuCk3h9Y5-86chsldN1zc7TMWTbuFQLNRbqg7ZqjkP9NNPeYe-qmUb_Wqr8pDg23cwTo4DOFy-sj7ySoAAEB2gATu0Z1xilybOZYpWWh0d9w-JXJ0wYrXeVgIPO641Q1gOrz4A11zjnkde3DJHLOKNLw4mDMvw3c8i4HJ5XFZlBd20cX0rD49JkMLe4QhWpIMy9', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2823, N'a8ZmCJ85sqJLoeLx15nwTjn-yxHF4dB3qDbfPtlfsdSfLRmwN3Ve6nZx4xKIgchoserr5tA9m-kcPj4KzRN_5nLNOiVoQHqCBTl3AwMV20_Roq5ipd1A14V79GI0_WHd0h2HegZdAS7n7y0cti34woJvvlSJGrJ6TXBl-Yq7zbgvKnRAgjL8yAyUBGPmCkeNe_L6etC1iBXGBGiqcsqgpbM_Z965t8bkTh8Hpv85PfEB5b07pyXZE91UHxC0w0wf', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2824, N'E-zLXX5KH1NEDWHRIYYwdt3PiqznSHHKDrQMMl3BYHK_7_v-lh483x0g7ThYrxnK1JruGGg_nXWwN0noeLBWKgu9s9eL0aDzZpvAtQW_R2uG6vAm_Voycc32ZoIJjcHOC_u7hLG3_WcgtaBrL_Ltw2fzZwvgwAwRyiA5A8LBjgYC6CHKcFLu0uPPCQUfglBNCZXQS1zhlbftSu3ovnpJMYI4qeKdntj7RA3U8ohsjWaV3wC37P1oICVOXJljczKi', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2825, N'OyJX9M9W2MEIuA_1etyHyxwYQB3lnBHUKswnbtHQ5K6ZCTDLNJ5nz4VY_Rba6-cg-ak7zgm_j7dkdtOgQa9da2--Z9U6KqEK0MEpEoP6JO6zwiaoj6ogrq3RFBtDXgXz_XVCWZiERKDsUZFVfP29Y6lJQxBRvDQe1N1ikEVEgxkRNzG187mpfcuyBl37Plbl-BZAuOHOj6UYPdWHgmSDekDIfk_xICT_4V8mDpux_cHhYV08K79DQpWxpx6MgTII', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2826, N'm9cWK5bxRE_Oq6xCOiWHcnQaZMg4HI5fIbkXehavL1swUM2-GG_aFLg_CBZ3SkPy9wjmWKkwLmzaXyXWvyNzQrNjejGS5fd3aaCF7IpXq2GvnCzsiCk9VayFI9xP8pYXWOZQyT0pnAuzCNJgsWxsoAPdWRCMuPyryxSLWWCDEe3qloKxydvnWhY6vXsqXd9hX3Lf0gFqfkZ1dRxYrETv0rN9OCs3uosN-s7zvhpJpItN4bDBvgkxkUfjyexsvTmn', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2827, N'RqbYUP2kNEDqzCsZ_FTNpreaplbELk4etlHPnPsWV74cb2qPDbkEjxiDRtixkGl4yWXN4gYAGcOK-4sXb8ZxpWn8DYfSnvYG5HdzWdozSuSjBFSXsFRGmmv1RVsRSGi9XopjIQXxddCOpEGzfoZNuAtFl-J0M1olFA_oD3-4oXoNpfbJBss9n9pr3MvB8q-lDZk4MSNiePc2Gf2VTxcJISOI8CIYMQY__4wNvAKfV3AqTWspXdOrYAdub8DMjgy4', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2828, N'pZEh1d5L1GjKi2B9qCbVbUFK6gGlE5xT-xybD3MH7yK0Wm30kcAW0GvjR-RSlGGIXBa5Qm3kZBZSw_p1pGgJuVKtlsDYRk1kBbHS3mFs5n6g0arEeslQMBEOUc8qZ_LdG4Cyy6R9kwk5sGrQkI0A_ixhI2Gz7-vAGidZdjh506QjxeYWtTeSfIR3lCzZm-pAlVtmu3M1Kvfk-DdzMDCdKIzBkLhpYzJ-5_18oE3YgWq6Rgf58kMU_pk32JN4SdmA', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2829, N'A98d6MPJBC_2_xQkf85LoMf0HVmEdQJVeDObbfc9z1IDcDmp_EhC6punxacKPNXO_ITPFRX7UsVU1g3OsW_rSsOmRP7__PeWM7P3L7NmcsKfZUPj2bY3D3umfdEVynfcN4zErgZe_SUzeQPwAKVf_GvBQFAH5jqC3riOIiOo6OfjOgbSvBR7hRpth-VOUR0SuGbCWS_xgwcihDoeO0JS0bUvb-oOWcUpuouxmt5FXcIGIrXbKBhLfD5dSkrCkgXl', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2830, N'sgx-1lbeQm0ZufDFaz_W1JwCZbNLdqmiXt59mih4JtagtqsHdS9imvr4TB_jE5LRgMYmeowG69GsaTfPri0lz4FVZ_QQWmfQaY7gm0kLZcaiK0Y6Fs2G-k9D9FEpAy9OWegJjMnEc_E9BYy6VInXURdQqoGqvaZJBxvPsd3GFbOlau0kd4PvwVzbPttHK8lBtri__IUHG-hLrrP6DThSUVab6VvmyID4jVjicbPYEyxFjeQjDdnA2_Zo8FMcsnbs', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2831, N'xJPP-oPoolUCTgiY2413I74ZtEFkW5OegD_CO8otq--x2ZljYpLkeZRECKP1pB4TPVAGGwgPbhVRLSTWimMtuF6PZqxtV_uQNWK4ZtzWF9c5h52FphZKW7RddgZlq8wED2i9RU4ZSSI_YAeYY_4pEMa6J1Rn5Thed4Pvc8C-8OCvOE1C8QA6Wfu-MSUpqXSRytlhhsI764_S-hu-bf3OMu2t5qqI78_e-LOnypI78kN0dR4fvTSLHtTfTHY7gseT', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2832, N'cyNMgOdLL5ABDBMiaewr6ZgalB7uZ-Stf84Tc9jdzIJeaUyYqxDa7BCBMF5mzv1XI8FTVZj5N8TgjDJlTTqKbiUKYUhGsFgOYQ_CGmEtKCMYcthBS3xz6Lj6gWboNyL0pu4jocRBgCfwvsS5O9_Bk6mcofU1bxlzHFGszRdyfsnDdI-63q0xI-C6yGrCUYIItOHD5yLkNY78T8XtoMX-0UstWihgx96pU-avJUsyOzoeAKf77TiO1DMR00HzkYNp', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2833, N'SHD21Yp6paTC8Te1nohlWx4GqAdsnhzPNTZHvFIVJMbVCnOQ467zvjhjdqJ3jUbESiGgybT5gADN7K7I7xzqOagpxjAY3Y1dBYgUFF1dUzW2aNKfd-6z-nszhyiKtggKdcZPL7XIBNAEmWHJ-eqtupRf_3_o90GGlri5oFruVfeSCLF6RyvF5n2LR7hP-0humEHZpuL4fTpDF20Ac78K69r7PRXDxtr37-EAgCCFW8SdgvOkk-PCN-KEjq2-ItlR', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2834, N'tGVMXqQBUnMe_691Aru4N5qxz-56vIVWR44psDV1O2AtHJ9L8qnq0B3tSsUvTrczkP-BvbgEg2CihDwsXe771HXU9AmvGonsq56McTxXjlNAZ48jPCSPHuXJpSy4SlGvAhoyfSB-hRxgtbzsfbtHiEAqOtWUbeIu2JAhq5M6AA4du4OajoSudi9dr3q9io7bVVM5_NpnukjnwuyZ0V-k6UHQ_HlZ44bjRAaUx9dQSJDr0jApwm6Fo5vfMmTMEW-r', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2835, N'mxprkFV6p3Zi5bnYIW_1eywr4RFQ17Ncb6FnOeWriayDWsVAULm6iNxJJPMMIXlpXfiLFQ0KkVLBubMi-Ar_Ehxclh7tKq5ANA4ykCSZf-t1_AeexbxeMYyH44Hdv8xpys-JLkTWHLs849lkJip8Y1PCA2C9X3jLiR-INPBehsXnsqkfze1Q4to0Dm89MN40RlJoOw76WD5CKzAJ_aT-1l06KU3zCM5MOOmb41__p17vTgEWAV4tStfwDuxw5Ofs', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2836, N'8YE12JURYyfIXMpZcJLna2DARjQUZCkGqcNQUuSgzi1d3F22zPyxzRDfz-ywtB0hWpXi9JrSK9NpcXDFct7jsvNiZs1KzxMU9aciiM0M4g2_N0bkjdimuVz8vT2JXv7qa2PEuMfRDMqxcCgzh_L4XLcGp-p_5SCf-iCg5GuH7G5-hdwDyl_J4opFqpyhrKmNvt2FRKxEsDGZ2-N6mXpIrVwrsPu0YX5IGJ2BaBwC119z0Hv-RDNaBcEznOro5zcT', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2837, N'mCU-GxrvtXtZFoVLlNBNpskm1j2i7zYV2iV9z740pJvBPAwEopLgV9rlUv3WipjGMMLVx-H15gfZIGjZ1cEBViz34vPX0MMbnnrEQyByv2nLADAe1Q40qdxkxsK_FHZx_V5l20_f7DLSuSTpGEdMS3EYCyubpNjFYgON83lUBSAtPpZPs3PCArJV47dezCFLPIEuSJZi8r5T7pVUCIT0sA8jITCj2OS9epvoXn7odMAJCjqpjsoXxPz9tcgCQX4f', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2838, N'gEqY49qoC7UEK-sKCCO2hq5eWyncYdeub4rb_zz4waD0_423FzoEN4rJwzJI9KU_K2WvQqaapzuAa5PvdmrnNuugzR5wCTcexQFlXR7ezWI1Wox_ZIQ2a6_S9lW4gwtqln8rGWGcCrY6s8ADHUcMWwgL3n_RzEzGb1f7_JEWDQNGKGawjUq87_D4tRHFiqxmdzpPPHfFjvBpLRDv11gq8QWBogQstn-FXm9weBig_Aa-xca-qSqaeBd_JFccIuNV', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2839, N'nPwg4d9wTDN-HtNTagNfUYoXwDQYiublYatazP2i54bhOjo5NeWL6xxP33SHiuKdS2ba74PqOcsrCpXgC1grER5WPDImem8965VV8CspcCT1sWRzxdGKnp3WEdWtNzP1CEMmcPOru2yFS1U4B4RwS0Alo07-J-Ee0dl8p867zwEOGeM9Us1XEOJ5hmxVSpDmIleEOZBS4RZPex2rZoH-FTGCGMz91YXnhDYFz0KxoIxylAOovHTRQE52-i8dYEQ9', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2840, N'xbIpu6fSww0a4G1_Fw2lWhswmKesdqDJ3PoFLWDnrU8WpbWCE5ISwVbWmWnkVjIJ9X0QnQB9TkSVv2WUUiu5rs2MLDINtvZ67AhNLAqgFIz8LCE3Or0ocKHhUNi2GUi9A1Hj-WgXQVZEAGlWd89-ULfN2pumXztpLRTMvI-8fzpHACVlF22PiwE-Mz2pvhVda8pBDIAN-091NtuY6RIz8WHYnKI7O30nbyqeZDoh6_F9ZajO_ttwBdiEj8dVmCWE', 2)
GO
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2841, N'xIB83yeQ57Asn2Lpk5JmJrX9N8a8K-FPxm5pvX02ZMp1rTAZd9BmLEQ9qBKRJzsno9ss4X9zK0FguYoGCKiBgYwtlY0XaYm9nUSTDZDzFLKUQEWi6c1FoNLsz_k2wPTlpTuuvvleI3TY0vsdPA-tyZRS-GTAPO4AmhRoRk1pN9HycFNozR-lHLLp358MmXbYEGXdtFZbA3DRn3TvEvKbue66sS2Nmz7EiSpqBbhhCK-g-ISviq9nxrmGckEK5zwS', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2842, N'INrnIaubNS7JpflHDJCpcceJnduAXyWRKE2g02jDPVsuLISXaoLO4vpXVfhr_qqtRlwykoMiQCKf2fcSAY5BMYXffvzg86dYoe4pINm7CiYXIC6GmRqfe-yXvoATEPaDF8guQe7Co1dETw91eKzV_tKSNwonR4wo4G6gF-9somZiZbnmSyKHkfHjsRue95y-yo-uopIKq5cCAuHe7_r_FrffHMDnnCCP0PXqPLUF3KFc8yBhByRJX-RQzAavRRhA', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2843, N'5gOLZuxDPUi1w_1HICipST7vOUbGiz93HW_vzSFO2tXNBVTdT8755fpRBUU0-tYE5f3xVwau_xSuP_OrKenlWSmPHXlQzDB5q24JbN6dW_pmF8jTVecuTPgMci68SVkF0RiPIRftRNtR13hEr-6mxEYF8c8ghoAiuj0Apq6THM_7q45UFvzuFnXkvr4JhRXd8T029LhbRSGfYsThvcr_GMUXopkstjoOe8-a2NtfjjZFkL2mQ10ScVsG2-Y3jFsW', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2844, N'B0zphowT8vvWveUaj0RHJuHbApaI8r2MGB6LFb-IoagIC0OCdvNAVrRNaUN7NNPcZ8WP_BUM9ssOgI5KoLWMmyZJcXWe3EyuXbIY6ER0VArRMiWdoraG7F5jmOkPdDkttUATjBW2zY6uKREbH0wFMNvh7T3UUlePkb7p2C-81548z5o9KnD3KKgNm1-zqlMsydvDVrzFeqhW2ds7CnoXCRWwydX58Kg729kQjEDXzHHIHx2topRACkvc9GuuSvwA', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2845, N'JlRCvnsv-ilSGsjIMXgteFMUXYFnTntImjQFeaptgjrJLrACEfAhAscMJf33y1hh3p44fGPsUTGwGESd2xRkMizNH5bcEx1D3rVw7Jg4yaliavaxes5LmOFVBHkk3f91n0YMzKntOD-OPGYs-aLsQ3YCVCNjYUkQfIJxuFjGYEJq1hwuN5nAH9apKxUxWDMCH_T1MIy6stlTzYUIcCJ4l3vWTAkasf8ldFKcXR7x6yRZhPPQUqqUeQ8VK680wpi1', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2846, N'XZ57MZaoLF7wmiKhnrhKabfU_tdTWtT0E4Y0J52I-hfuZjXPBez_s0kRpCatKTQl8Qo8B_v6fMvedXNDCSNwQBCzUT4yvqOqylxUVjrXR4Sq7xPMBhe69FO7PMM7n-vROJhIlBoRVTAMFoSzOY3wrZy8UGvJ40f0VXi71uSft2GRKDUK5NkXAIDc653mHnjv_l0Y6ebfE5wgOdzxPx1vMrPuj8jqxc-E4MtM4Lg389LToPNZqOtbRpOnQ01IGJuI', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2847, N'EoprQwhJttjRIjaRX-EaYBmgDzBqJqyDvIF2XVA1mjp2_RPKFcnCPgiu4CB4OCar6wr4KIlfj4PUinYf7y3JB49qiRky6RY4_G6bJsulaocBq3Q9lKBzCSgYc9IY2hI4Zc1xTHubeYoi50v2GiAwd419AwP_28pkm6c3pxO6q5I5ZtKkHIh_GASw6Y62gnkpD9sNDRNcPhNP0VoAUschFPcunbhkRYkSr0_fUi15QmTEmIsbNyb71tepkzdw7tL1', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2848, N'MCb_yvI0LKT3hLkjF8wFUNuXyxU6z1_ihotZjmNaGWYiUJoF6fwSEz-zsmdkAdN-OFNm_xof3tlXT4rEVHkD1aCZA54yWCWU6pifln2mPSD-2_iUXSNOLNmiokwZJUUqSYDbndlF-D7SqTgtaFIbQopY-d0Hd_7aDuebCmdb8mTVGb607HszfJSpK3ZK5bly5g9ny3mzfH-jR80yP-wKZjjCYblXkyRE6SeYxm2K9JHNU8y0VT4CRPPU2wj5g6wQ', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2849, N'wjAl5vP9u6NOT-DbCE6yiGQdvglJoSsevruHxUv8BXqPYAkyR-G1gYjo7aR6VjEnzSQ6ryjYqI0iwghX_jk-wBKy28YLWSsPichnd7thWlDsDuuTbVRcIfFuAIfsYapyI3AahHPJEgsqtmWatAmp9C8n5yDcpPsmGVV7SQDAoZJcxGB0aqmwbsKSqf7o4XbYOrWLl3ZHLBWvdytm3yckOPEStwhKPF4aY9lbvjDgiuhvzcFWq1uKZxdkpdzWCGqz', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2850, N'k7-AnheEGIUGrs06g5rwYGyqw0yZjpgBmGoA2n9oMvdWXDBId2FDl-YbPolAN-SEs95orrCJUveSJTnGP3ZcXxZrTGsRxZ7_sFFoPVjU6M3D7QJFqmefQSlqiId6fBJEWhPMPaN1-oq3XV0t0-82or1dKgWeN5I97Jq-JPpZcuPSSgICqC8BxNG-DsYWdeLTpCc4Cr4rvKyAgbf5ZQIHp9xd8q7b3kh-gBKgplpXt611eJ1E3SWBIdB8o8ZKSRNU', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2851, N'lNqQhqmBgyhzRW1iUkcAlO_jyWMl4r94Zf41yU-EOKqAP2M_Z6YCe-xkWv9-5skit_DLdkiaTLkdfQJRKJhk7iyfff9-4KF1jDy7E73_Q82njfVeMieSTbKSTgKlV15V1Fn5aOcbOdd9aGNJRb93q8wB47tS2aWCdwFvBD5INi5aTKKXvMLyBtgU5aM8udPUA4FEro4aJHLjXIx-sQOau56ZDtOLCYWWxGXWfNnS4NsJesx8Iss4kQLRTO3XaE6D', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2852, N'E7mSYlDhYCLyVly2Hmp-vjbXx3wuFSZ4nnKCEHeDCmhVH1VOCS3k40VFr5fNqOOwXn2bf1O4WWC2QJsn6LBuCNps8Sxcx4akQoWL16pf94IIiMhfXEoii8p5iXdk06qkaIHpxBbWY-J7Ya7hVPABQyGxKfVwaqF_a3caUN4AAmoXYyccwpPrfM-l4kqmqtJUxKWlyLI7r0nwUmVh_WrmFH1SEhxD3utMuKrPQoLSVITqVO86TqhieG7ONoOF4DMw', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2853, N'6RfFhfQaaCEAslw3HDQfZW67T7nWduyPWrxT6sOMBv6lnjVaeKJMUO6RePwW0fU_wphtkbOsP4pObu2ic6fO1NyZ2wW4Ey9msSb7O8_raQiiwZN7615mEFLLgQYtKUqeIGwjKFfdnZ6fSH8udkp-uBG48xHfLdp2AG49EALFChecJbjKvmPE_d-mfUb-AukQe6w6rTbbbzw1EpZRWKTUXsqtbXqTc-DBBmNujriO4O_4Uih8EUXx84jlPloMV02z', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2854, N'3ab5ubm_oIINW2fG6D37PFNftOgp6lCv3IRoTG7nLykLSm-EYfXr4UD26C1ltgl0V_ecM06ATciry-kNxyuV44UCGWcnzYJO0Gp-dqSH_DUPYxvNnYVtfbQi-MPZ9ku_ZDNDcCi7Nz0BrtY085zcYz8PDDPJNLjp4e8OXM1y4k6Zc4GD46gOtKw0Ds0cQ8rJID01vlGHqBYpQB9jbBYI_eqH__IQl9HA_74U1DtbZU-wND-E9ITJ7x3qmbQ45OAa', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2855, N'vqic47943JDqtEZXjmT1BC6oDoPihLKfC3MGbdtizg1pFeGyvrP85411_hQHb5Jru378ujZ28DIZ37TbLYO4IiBcDVy7YtNNN8nkVurDjFqZBUcLW4pmhBZAAEa-G2oPqagvz03QUz8BGU4IcVZCIofSXg2hCFgN6squwKsN7vOw8d0INKB_eyWI1a6bLnl5BlWZOaxa4cwu4gNxXXv2sQBEyxlFG4PEOIj05ArIwjrXBtVZgnfp9BfxNBgMQPMS', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2856, N'DMY-BOMciSGTG1NmKQW9ETSOs19bq-PQqFQSus6d89TujLJ1IClnk39dxL6cMtQFgYHshfwyCqLP5etlGPNHBTYxVC4yNFZqYaT0rntP7uVTRVzmbYkRW0OWEnovZLyGQD3V5HtUq0QRKSpuUsifMUe36l_qw8B9TzRISy08Vbor-1kNCjIOt_GdDn_t9GNw-lSY--gNr3VEgWtDim-g9BnmnxmROkY4vt_LJz0QnMBG_9Q3tiNeMDBJMI4Umq8U', 2)
INSERT [dbo].[Tokens] ([TKN_ID], [TKN_Token], [TKN_SLOG_ID]) VALUES (2857, N'C85HXSsQ0qulM3JgP6AnWdt3WApuHcd4zOMt6HyCcF5LKHgtpV9bm73_-8COfnBSH2gXwZEAXaEel6sztTC8T8Bb5_z4UVuNQ4zZYy2xvSh5DfTwm6y_0z2NTOZ2qX_dA23e1ncqcKUx6pnA5E7m9doGKugnIojwOgI8dtZQ-r-3Vnhwh-9U6wMhZA2lUqLiXpt-lhd5SFlgB7Z-qi1gAphmUCqLwCmDynxbj2729p8r7-wZAclUvw5ipzAAvqab', 2)
SET IDENTITY_INSERT [dbo].[Tokens] OFF
GO
/****** Object:  Index [IX_Address_Info]    Script Date: 6/1/2023 4:18:14 PM ******/
ALTER TABLE [dbo].[Address_Info] ADD  CONSTRAINT [IX_Address_Info] UNIQUE NONCLUSTERED 
(
	[ADI_PAT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Patient]    Script Date: 6/1/2023 4:18:14 PM ******/
ALTER TABLE [dbo].[Patient] ADD  CONSTRAINT [IX_Patient] UNIQUE NONCLUSTERED 
(
	[PAT_NatID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Staff]    Script Date: 6/1/2023 4:18:14 PM ******/
ALTER TABLE [dbo].[Staff] ADD  CONSTRAINT [IX_Staff] UNIQUE NONCLUSTERED 
(
	[STF_NatID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [idx_STF_Address]    Script Date: 6/1/2023 4:18:14 PM ******/
CREATE NONCLUSTERED INDEX [idx_STF_Address] ON [dbo].[Staff]
(
	[STF_Address] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [idx_STF_BirthDate]    Script Date: 6/1/2023 4:18:14 PM ******/
CREATE NONCLUSTERED INDEX [idx_STF_BirthDate] ON [dbo].[Staff]
(
	[STF_BirthDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [idx_STF_Gender]    Script Date: 6/1/2023 4:18:14 PM ******/
CREATE NONCLUSTERED INDEX [idx_STF_Gender] ON [dbo].[Staff]
(
	[STF_Gender] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [idx_STF_IsMarrid]    Script Date: 6/1/2023 4:18:14 PM ******/
CREATE NONCLUSTERED INDEX [idx_STF_IsMarrid] ON [dbo].[Staff]
(
	[STF_IsMarrid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [idx_STF_Name]    Script Date: 6/1/2023 4:18:14 PM ******/
CREATE NONCLUSTERED INDEX [idx_STF_Name] ON [dbo].[Staff]
(
	[STF_Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [idx_STF_NatID]    Script Date: 6/1/2023 4:18:14 PM ******/
CREATE NONCLUSTERED INDEX [idx_STF_NatID] ON [dbo].[Staff]
(
	[STF_NatID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [idx_STF_ID]    Script Date: 6/1/2023 4:18:14 PM ******/
CREATE NONCLUSTERED INDEX [idx_STF_ID] ON [dbo].[Staff_Department]
(
	[STF_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Staff_Login]    Script Date: 6/1/2023 4:18:14 PM ******/
ALTER TABLE [dbo].[Staff_Login] ADD  CONSTRAINT [IX_Staff_Login] UNIQUE NONCLUSTERED 
(
	[SLOG_STF_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [idx_STT_HOS_ID]    Script Date: 6/1/2023 4:18:14 PM ******/
CREATE NONCLUSTERED INDEX [idx_STT_HOS_ID] ON [dbo].[Staff_Type]
(
	[STT_HOS_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [idx_STT_Type]    Script Date: 6/1/2023 4:18:14 PM ******/
CREATE NONCLUSTERED INDEX [idx_STT_Type] ON [dbo].[Staff_Type]
(
	[STT_Type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [nidx_STT_HOS_ID]    Script Date: 6/1/2023 4:18:14 PM ******/
CREATE NONCLUSTERED INDEX [nidx_STT_HOS_ID] ON [dbo].[Staff_Type]
(
	[STT_HOS_ID] ASC
)
INCLUDE([STT_ID],[STT_Type]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DF_Application_APP_DateTime]  DEFAULT (getdate()) FOR [APP_DateTime]
GO
ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DF_Application_APP_IsOpen]  DEFAULT ((1)) FOR [APP_IsOpen]
GO
ALTER TABLE [dbo].[NoteBlock] ADD  CONSTRAINT [DF_NoteBlock_NOTB_DateTime]  DEFAULT (getdate()) FOR [NOTB_DateTime]
GO
ALTER TABLE [dbo].[RequstBlock] ADD  CONSTRAINT [DF_RequstBlock_REQB_DateTime]  DEFAULT (getdate()) FOR [REQB_DateTime]
GO
ALTER TABLE [dbo].[ResponseBlock] ADD  CONSTRAINT [DF_ResponseBlock_RSPB_Datetime]  DEFAULT (getdate()) FOR [RSPB_Datetime]
GO
ALTER TABLE [dbo].[ResponseBlock] ADD  CONSTRAINT [DF_Response_RSP_Result]  DEFAULT ((0)) FOR [RSPB_Result]
GO
ALTER TABLE [dbo].[Address_Info]  WITH CHECK ADD  CONSTRAINT [FK_Address_Info_Patient] FOREIGN KEY([ADI_PAT_ID])
REFERENCES [dbo].[Patient] ([PAT_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Address_Info] CHECK CONSTRAINT [FK_Address_Info_Patient]
GO
ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FK_Application_Companion_Type] FOREIGN KEY([APP_COT_ID])
REFERENCES [dbo].[Companion_Type] ([COT_ID])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FK_Application_Companion_Type]
GO
ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FK_Application_Hospital] FOREIGN KEY([APP_HOS_ID])
REFERENCES [dbo].[Hospital] ([HOS_ID])
GO
ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FK_Application_Hospital]
GO
ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FK_Application_Patient] FOREIGN KEY([APP_PAT_ID])
REFERENCES [dbo].[Patient] ([PAT_ID])
GO
ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FK_Application_Patient]
GO
ALTER TABLE [dbo].[Department]  WITH CHECK ADD  CONSTRAINT [FK_Department_Hospital] FOREIGN KEY([DEP_HOS_ID])
REFERENCES [dbo].[Hospital] ([HOS_ID])
GO
ALTER TABLE [dbo].[Department] CHECK CONSTRAINT [FK_Department_Hospital]
GO
ALTER TABLE [dbo].[Hospital_Phone]  WITH CHECK ADD  CONSTRAINT [FK_Hospital_Phone_Hospital] FOREIGN KEY([PHO_HOS_ID])
REFERENCES [dbo].[Hospital] ([HOS_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Hospital_Phone] CHECK CONSTRAINT [FK_Hospital_Phone_Hospital]
GO
ALTER TABLE [dbo].[NoteBlock]  WITH CHECK ADD  CONSTRAINT [FK_NoteBlock_Application] FOREIGN KEY([NOTB_APP_ID])
REFERENCES [dbo].[Application] ([APP_ID])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[NoteBlock] CHECK CONSTRAINT [FK_NoteBlock_Application]
GO
ALTER TABLE [dbo].[NoteBlock]  WITH CHECK ADD  CONSTRAINT [FK_NoteBlock_Staff] FOREIGN KEY([NOTB_STF_ID])
REFERENCES [dbo].[Staff] ([STF_ID])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[NoteBlock] CHECK CONSTRAINT [FK_NoteBlock_Staff]
GO
ALTER TABLE [dbo].[Notes]  WITH CHECK ADD  CONSTRAINT [FK_Notes_Message_Type1] FOREIGN KEY([NOT_MSG_ID])
REFERENCES [dbo].[Message_Type] ([MSG_ID])
GO
ALTER TABLE [dbo].[Notes] CHECK CONSTRAINT [FK_Notes_Message_Type1]
GO
ALTER TABLE [dbo].[Notes]  WITH CHECK ADD  CONSTRAINT [FK_Notes_NoteBlock] FOREIGN KEY([NOT_NOTB_ID])
REFERENCES [dbo].[NoteBlock] ([NOTB_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Notes] CHECK CONSTRAINT [FK_Notes_NoteBlock]
GO
ALTER TABLE [dbo].[Patient]  WITH CHECK ADD  CONSTRAINT [FK_Patient_Patient_NID_Type] FOREIGN KEY([PAT_PNT_ID])
REFERENCES [dbo].[Patient_NID_Type] ([PNT_ID])
GO
ALTER TABLE [dbo].[Patient] CHECK CONSTRAINT [FK_Patient_Patient_NID_Type]
GO
ALTER TABLE [dbo].[Requst]  WITH CHECK ADD  CONSTRAINT [FK_Requst_Message_Type] FOREIGN KEY([REQ_MSG_ID])
REFERENCES [dbo].[Message_Type] ([MSG_ID])
GO
ALTER TABLE [dbo].[Requst] CHECK CONSTRAINT [FK_Requst_Message_Type]
GO
ALTER TABLE [dbo].[Requst]  WITH CHECK ADD  CONSTRAINT [FK_Requst_RequstBlock] FOREIGN KEY([REQ_REQB_ID])
REFERENCES [dbo].[RequstBlock] ([REQB_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Requst] CHECK CONSTRAINT [FK_Requst_RequstBlock]
GO
ALTER TABLE [dbo].[RequstBlock]  WITH CHECK ADD  CONSTRAINT [fk_ReqB_ReqB_Status] FOREIGN KEY([REQB_STAT_ID])
REFERENCES [dbo].[ReqB_Status] ([STAT_ID])
GO
ALTER TABLE [dbo].[RequstBlock] CHECK CONSTRAINT [fk_ReqB_ReqB_Status]
GO
ALTER TABLE [dbo].[RequstBlock]  WITH CHECK ADD  CONSTRAINT [FK_RequstBlock_Application] FOREIGN KEY([REQB_APP_ID])
REFERENCES [dbo].[Application] ([APP_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RequstBlock] CHECK CONSTRAINT [FK_RequstBlock_Application]
GO
ALTER TABLE [dbo].[RequstBlock]  WITH CHECK ADD  CONSTRAINT [FK_RequstBlock_Department] FOREIGN KEY([REQB_DEP_ID])
REFERENCES [dbo].[Department] ([DEP_ID])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[RequstBlock] CHECK CONSTRAINT [FK_RequstBlock_Department]
GO
ALTER TABLE [dbo].[RequstBlock]  WITH CHECK ADD  CONSTRAINT [FK_RequstBlock_Staff] FOREIGN KEY([REQB_STF_ID])
REFERENCES [dbo].[Staff] ([STF_ID])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[RequstBlock] CHECK CONSTRAINT [FK_RequstBlock_Staff]
GO
ALTER TABLE [dbo].[Response]  WITH CHECK ADD  CONSTRAINT [FK_Response_Message_Type] FOREIGN KEY([RSP_MSG_ID])
REFERENCES [dbo].[Message_Type] ([MSG_ID])
GO
ALTER TABLE [dbo].[Response] CHECK CONSTRAINT [FK_Response_Message_Type]
GO
ALTER TABLE [dbo].[Response]  WITH CHECK ADD  CONSTRAINT [FK_Response_ResponseBlock] FOREIGN KEY([RSP_RSPB_ID])
REFERENCES [dbo].[ResponseBlock] ([RSPB_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Response] CHECK CONSTRAINT [FK_Response_ResponseBlock]
GO
ALTER TABLE [dbo].[ResponseBlock]  WITH CHECK ADD  CONSTRAINT [FK_ResponseBlock_RequstBlock] FOREIGN KEY([RSPB_REQB_ID])
REFERENCES [dbo].[RequstBlock] ([REQB_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ResponseBlock] CHECK CONSTRAINT [FK_ResponseBlock_RequstBlock]
GO
ALTER TABLE [dbo].[ResponseBlock]  WITH CHECK ADD  CONSTRAINT [FK_ResponseBlock_Staff] FOREIGN KEY([RSPB_STF_ID])
REFERENCES [dbo].[Staff] ([STF_ID])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[ResponseBlock] CHECK CONSTRAINT [FK_ResponseBlock_Staff]
GO
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD  CONSTRAINT [FK_Staff_Staff_Type] FOREIGN KEY([STF_STT_ID])
REFERENCES [dbo].[Staff_Type] ([STT_ID])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Staff] CHECK CONSTRAINT [FK_Staff_Staff_Type]
GO
ALTER TABLE [dbo].[Staff_Department]  WITH CHECK ADD  CONSTRAINT [FK_Staff_Department_Department] FOREIGN KEY([DEP_ID])
REFERENCES [dbo].[Department] ([DEP_ID])
GO
ALTER TABLE [dbo].[Staff_Department] CHECK CONSTRAINT [FK_Staff_Department_Department]
GO
ALTER TABLE [dbo].[Staff_Department]  WITH CHECK ADD  CONSTRAINT [FK_Staff_Department_Staff1] FOREIGN KEY([STF_ID])
REFERENCES [dbo].[Staff] ([STF_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Staff_Department] CHECK CONSTRAINT [FK_Staff_Department_Staff1]
GO
ALTER TABLE [dbo].[Staff_Login]  WITH CHECK ADD  CONSTRAINT [FK_Staff_Login_Staff] FOREIGN KEY([SLOG_STF_ID])
REFERENCES [dbo].[Staff] ([STF_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Staff_Login] CHECK CONSTRAINT [FK_Staff_Login_Staff]
GO
ALTER TABLE [dbo].[Staff_Type]  WITH CHECK ADD  CONSTRAINT [FK_Staff_Type_Hospital] FOREIGN KEY([STT_HOS_ID])
REFERENCES [dbo].[Hospital] ([HOS_ID])
GO
ALTER TABLE [dbo].[Staff_Type] CHECK CONSTRAINT [FK_Staff_Type_Hospital]
GO
ALTER TABLE [dbo].[Tokens]  WITH CHECK ADD  CONSTRAINT [FK_Tokens_Staff_Login] FOREIGN KEY([TKN_SLOG_ID])
REFERENCES [dbo].[Staff_Login] ([SLOG_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Tokens] CHECK CONSTRAINT [FK_Tokens_Staff_Login]
GO
/****** Object:  StoredProcedure [dbo].[Apps_Count]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Apps_Count]
	@APP_HOS_ID INT = NULL,
	@APP_IsOpen BIT = NULL
AS
BEGIN
	SET NOCOUNT ON;

	IF @APP_HOS_ID IS NULL AND @APP_IsOpen IS NULL
	BEGIN
		SELECT COUNT(*) FROM [Application];
	END;
	ELSE IF @APP_HOS_ID IS NOT NULL AND  @APP_IsOpen IS NULL
	BEGIN
		SELECT COUNT(*) FROM [Application] WHERE APP_HOS_ID = @APP_HOS_ID;
	END;
	ELSE IF @APP_HOS_ID IS NULL AND  @APP_IsOpen IS NOT NULL
	BEGIN
		SELECT COUNT(*) FROM [Application] WHERE APP_IsOpen = @APP_IsOpen;
	END;
	ELSE 
	BEGIN
		SELECT COUNT(*) FROM [Application] WHERE 
		APP_HOS_ID = @APP_HOS_ID AND APP_IsOpen = @APP_IsOpen;
	END;
END;
GO
/****** Object:  StoredProcedure [dbo].[Change_Password]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Change_Password]
    @SLOG_STF_Id INT,
    @Current_Password nvarchar(20),
    @New_Password nvarchar(20),
    @IsPasswordChanged BIT OUTPUT
AS
BEGIN
    SET NOCOUNT ON; 
    -- Verify the current password
    DECLARE @IsValidCredentials BIT;
    SET @IsValidCredentials = (SELECT CASE WHEN EXISTS (SELECT 1 FROM Staff_Login WHERE SLOG_STF_ID = @SLOG_STF_Id AND  SLOG_Password = @Current_Password) THEN 1 ELSE 0 END);

 IF @IsValidCredentials = 0
    BEGIN
        -- Invalid current password
        SET @IsPasswordChanged = 0;
        RETURN;
    END
    ELSE
    BEGIN
        -- Update the password
        UPDATE Staff_Login
        SET  SLOG_Password = @New_Password
        WHERE  SLOG_STF_ID = @SLOG_STF_Id;

        SET @IsPasswordChanged = 1;
    END
END
  
 
GO
/****** Object:  StoredProcedure [dbo].[Delete_Address_by_ID]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Delete_Address_by_ID] (@ADI_ID bigint)
AS
BEGIN
SET NOCOUNT ON
DELETE FROM [dbo].[Address_Info]  WHERE ADI_ID = @ADI_ID  ;
END;
GO
/****** Object:  StoredProcedure [dbo].[Delete_All_Addresses_Of_Patient]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Delete_All_Addresses_Of_Patient] (@PAT_ID INT)
AS
BEGIN 
SET NOCOUNT ON
DELETE FROM [dbo].[Address_Info]  WHERE ADI_PAT_ID = @PAT_ID;
END;
GO
/****** Object:  StoredProcedure [dbo].[Delete_All_APPlications_Of_Hospital]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Delete_All_APPlications_Of_Hospital] (@HOS_ID INT)
AS
BEGIN 
SET NOCOUNT ON
DELETE FROM [dbo].[Application] WHERE APP_HOS_ID = @HOS_ID;
END;
GO
/****** Object:  StoredProcedure [dbo].[Delete_All_Departments_Of_Hospital]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Delete_All_Departments_Of_Hospital] (@HOS_ID INT)
AS
BEGIN 
SET NOCOUNT ON
DELETE FROM [dbo].[Department] WHERE DEP_HOS_ID = @HOS_ID;
END;
GO
/****** Object:  StoredProcedure [dbo].[Delete_All_Hospital_Phones]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Delete_All_Hospital_Phones] (@HOS_ID INT)
AS
BEGIN 
SET NOCOUNT ON
DELETE FROM [dbo].[Hospital_Phone] WHERE PHO_HOS_ID = @HOS_ID;
END;
GO
/****** Object:  StoredProcedure [dbo].[Delete_Application_by_APP_Code]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Delete_Application_by_APP_Code] (@App_Code CHAR(12)  )
AS
BEGIN
 
DELETE FROM [dbo].[Application] WHERE APP_Code=@App_Code  ;
END;
GO
/****** Object:  StoredProcedure [dbo].[Delete_APPlication_by_PAT_ID]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Delete_APPlication_by_PAT_ID] (@PAT_ID INT )
AS
BEGIN 
SET NOCOUNT ON
DELETE FROM [dbo].[Application] WHERE APP_PAT_ID = @PAT_ID;
END;
GO
/****** Object:  StoredProcedure [dbo].[Delete_Department]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Delete_Department]
       
       @DEP_ID int
AS
BEGIN
        
      -- SET NOCOUNT ON; 
       DELETE [dbo].[Department]  WHERE DEP_ID =  @DEP_ID  ;
END;
GO
/****** Object:  StoredProcedure [dbo].[Delete_Hospital]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Delete_Hospital] (@HOS_ID INT)
AS
BEGIN 
SET NOCOUNT ON
DELETE FROM [dbo].[Hospital] WHERE HOS_ID = @HOS_ID;
END;
GO
/****** Object:  StoredProcedure [dbo].[Delete_Hospital_Phone_by_PHO_ID]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Delete_Hospital_Phone_by_PHO_ID] (@PHO_ID INT)
AS
BEGIN 
SET NOCOUNT ON
DELETE FROM [dbo].[Hospital_Phone] WHERE PHO_ID = @PHO_ID;
END;
GO
/****** Object:  StoredProcedure [dbo].[Delete_Note]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Delete_Note] (@NOT_ID INT)
AS
BEGIN 
SET NOCOUNT ON
DELETE FROM [dbo].[Notes]  WHERE  NOT_ID = @NOT_ID;
END;
GO
/****** Object:  StoredProcedure [dbo].[Delete_NoteBlock]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Delete_NoteBlock]
	@NOTB_ID BIGINT
AS 
BEGIN
	SET NOCOUNT ON;

	DELETE FROM NoteBlock WHERE NOTB_ID = @NOTB_ID;
END;
GO
/****** Object:  StoredProcedure [dbo].[Delete_Patient]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Delete_Patient] (@PAT_ID INT)
AS
BEGIN 
SET NOCOUNT ON
DELETE FROM  [dbo].[Patient]  WHERE PAT_ID = @PAT_ID;
END;
GO
/****** Object:  StoredProcedure [dbo].[Delete_Req_Block_by_REQB_ID]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Delete_Req_Block_by_REQB_ID] (@REQB_ID INT)
AS
BEGIN 
SET NOCOUNT ON
DELETE FROM  [dbo].[RequstBlock]  WHERE REQB_ID = @REQB_ID;
END;
GO
/****** Object:  StoredProcedure [dbo].[Delete_Request_by_REQ_ID]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Delete_Request_by_REQ_ID] (@REQ_ID BIGINT)
AS
BEGIN 
	SET NOCOUNT ON
	DELETE FROM [dbo].[Requst]  WHERE REQ_ID = @REQ_ID;
END;
GO
/****** Object:  StoredProcedure [dbo].[Delete_Response_by_RES_ID]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Delete_Response_by_RES_ID] (@RSP_ID INT)
AS
BEGIN 
SET NOCOUNT ON
DELETE FROM [dbo].[Response]   WHERE RSP_ID = @RSP_ID;
END;
GO
/****** Object:  StoredProcedure [dbo].[Delete_Rsp_Block_by_RSPB_ID]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Delete_Rsp_Block_by_RSPB_ID] (@RSPB_ID INT)
AS
BEGIN 
SET NOCOUNT ON
DELETE FROM [dbo].[ResponseBlock]  WHERE RSPB_ID = @RSPB_ID;
END;
GO
/****** Object:  StoredProcedure [dbo].[Delete_Staff]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Delete_Staff] (@STF_ID INT)
AS
BEGIN 
SET NOCOUNT ON
DELETE FROM [dbo].[Staff]  WHERE STF_ID = @STF_ID;
END;
GO
/****** Object:  StoredProcedure [dbo].[Delete_Staff_Type]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Delete_Staff_Type] (@STT_ID INT)
AS
BEGIN 
SET NOCOUNT ON
DELETE FROM [dbo].[Staff_Type]   WHERE STT_ID = @STT_ID;
END;
GO
/****** Object:  StoredProcedure [dbo].[Dep_Pat_Count]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Dep_Pat_Count]
	@DEP_ID INT = NULL
AS
BEGIN
	SET NOCOUNT ON;

	IF @DEP_ID IS NULL
	BEGIN
		RETURN;
	END;

	SELECT COUNT(*) FROM [dbo].[Application] WHERE APP_IsOpen = 1 AND 
	APP_ID IN (SELECT REQB_APP_ID FROM RequstBlock WHERE REQB_DEP_ID = @DEP_ID)
END;
GO
/****** Object:  StoredProcedure [dbo].[Filter_Application]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Filter_Application]
	@HOS_ID INT = NULL,
	@Search_Term NVARCHAR(50) = NULL,
	@Page_Number INT,
	@Limit INT
AS
BEGIN
	DECLARE @Query NVARCHAR(MAX) = N'', @Total NVARCHAR(MAX) = N'';

	IF @HOS_ID IS NULL OR @HOS_ID = 0
	BEGIN
		IF @Search_Term IS NULL
		BEGIN
			SELECT APP_ID, APP_DateTime, PAT_Name, PAT_NatID, APP_ComName, APP_ComNatID,
			APP_ComPhone, APP_COT_ID, HOS_Name, APP_Code, APP_IsOpen FROM [Application] 
			RIGHT JOIN Patient ON Patient.PAT_ID = [Application].APP_PAT_ID
			INNER JOIN Hospital ON Hospital.HOS_ID = [Application].APP_HOS_ID
			ORDER BY APP_ID 
			OFFSET ((@Page_Number - 1) * @Limit) ROWS FETCH NEXT @Limit ROWS ONLY;

			SELECT COUNT(*) FROM [Application];
		END;
		ELSE
		BEGIN

			SET @Query = @Query + N'SELECT APP_ID, APP_DateTime, PAT_Name, PAT_NatID, APP_ComName, APP_ComNatID,
			APP_ComPhone, APP_COT_ID, HOS_Name, APP_Code, APP_IsOpen FROM [Application] 
			RIGHT JOIN Patient ON Patient.PAT_ID = [Application].APP_PAT_ID
			INNER JOIN Hospital ON Hospital.HOS_ID = [Application].APP_HOS_ID WHERE ';
			SET @Total = @Total + N'SELECT COUNT(*) FROM [Application] 
			RIGHT JOIN Patient ON Patient.PAT_ID = [Application].APP_PAT_ID
			INNER JOIN Hospital ON Hospital.HOS_ID = [Application].APP_HOS_ID
			WHERE ';

			IF ISDATE(@Search_Term) = 1
			BEGIN
				SET @Query = @Query + N'(DAY(APP_DateTime) = ' + CAST(DAY(@Search_Term) AS CHAR(2)) +
				' AND MONTH(APP_DateTime) = ' + CAST(MONTH(@Search_Term) AS CHAR(2)) +
				' AND YEAR(APP_DateTime) = ' +  CAST(YEAR(@Search_Term) AS CHAR(4)) + ') OR ';

				SET @Total = @Total + N'(DAY(APP_DateTime) = ' + CAST(DAY(@Search_Term) AS CHAR(2)) +
				' AND MONTH(APP_DateTime) = ' + CAST(MONTH(@Search_Term) AS CHAR(2)) +
				' AND YEAR(APP_DateTime) = ' +  CAST(YEAR(@Search_Term) AS CHAR(4)) + ') OR ';
			END;
			IF ISNUMERIC(@Search_Term) = 1 AND LEN(@Search_Term) = 14
			BEGIN
				SET @Query = @Query + N'APP_ComNatID = ''' + @Search_Term + ''' OR Patient.PAT_NatID = ''' + @Search_Term + ''' OR ';
				SET @Total = @Total + N'APP_ComNatID = ''' + @Search_Term + ''' OR Patient.PAT_NatID = ''' + @Search_Term + ''' OR ';
			END;
			IF ISNUMERIC(@Search_Term) = 1 AND LEN(@Search_Term) = 11
			BEGIN
				SET @Query = @Query + N'APP_ComPhone = ''' + @Search_Term + ''' OR ';
				SET @Total = @Total + N'APP_ComPhone = ''' + @Search_Term + ''' OR ';
			END;
			IF ISNUMERIC(@Search_Term) = 1 AND LEN(@Search_Term) = 12
			BEGIN
				SET @Query = @Query + N'APP_Code = ''' + @Search_Term + ''' OR ';
				SET @Total = @Total + N'APP_Code = ''' + @Search_Term + ''' OR ';
			END;
			IF UPPER(@Search_Term) = N'OPEN'
			BEGIN
				SET @Query = @Query + N'APP_IsOpen = 1 OR ';
				SET @Total = @Total + N'APP_IsOpen = 1 OR ';
			END;
			ELSE IF UPPER(@Search_Term) = N'NOT OPEN'
			BEGIN
				SET @Query = @Query + N'APP_IsOpen = 0 OR ';
				SET @Total = @Total + N'APP_IsOpen = 0 OR ';
			END;

			SET @Query = @Query + N'APP_ComName LIKE N''%' + @Search_Term + '%''
			ORDER BY APP_ID 
			OFFSET ((' + CAST(@Page_Number - 1 AS NVARCHAR(6)) + ') * ' 
			+ CAST(@Limit AS NVARCHAR(3)) + ') ROWS FETCH NEXT ' +
			CAST(@Limit AS NVARCHAR(3)) + ' ROWS ONLY';

			SET @Total = @Total + N'APP_ComName LIKE N''%' + @Search_Term + '%''';

			EXEC sp_executesql @Query;
			EXEC sp_executesql @Total;
		END;
	END;

	ELSE
	BEGIN
		IF @Search_Term IS NULL
		BEGIN
			SELECT APP_ID, APP_DateTime, PAT_Name, PAT_NatID, APP_ComName, APP_ComNatID,
			APP_ComPhone, APP_COT_ID, HOS_Name, APP_Code, APP_IsOpen FROM [Application] 
			RIGHT JOIN Patient ON Patient.PAT_ID = [Application].APP_PAT_ID
			INNER JOIN Hospital ON Hospital.HOS_ID = [Application].APP_HOS_ID 
			WHERE APP_HOS_ID = @HOS_ID
			ORDER BY APP_ID 
			OFFSET ((@Page_Number - 1) * @Limit) ROWS FETCH NEXT @Limit ROWS ONLY;

			SELECT COUNT(*) FROM [Application]
			INNER JOIN Hospital ON Hospital.HOS_ID = [Application].APP_HOS_ID 
			WHERE APP_HOS_ID = @HOS_ID;
		END;
		ELSE
		BEGIN

			SET @Query = @Query + N'SELECT APP_ID, APP_DateTime, PAT_Name, PAT_NatID, APP_ComName, APP_ComNatID,
			APP_ComPhone, APP_COT_ID, HOS_Name, APP_Code, APP_IsOpen FROM [Application] 
			RIGHT JOIN Patient ON Patient.PAT_ID = [Application].APP_PAT_ID
			INNER JOIN Hospital ON Hospital.HOS_ID = [Application].APP_HOS_ID WHERE 
			(APP_HOS_ID = ' + CAST(@HOS_ID AS CHAR(6)) + ') AND (';
			SET @Total = @Total + N'SELECT COUNT(*) FROM [Application] 
			RIGHT JOIN Patient ON Patient.PAT_ID = [Application].APP_PAT_ID
			INNER JOIN Hospital ON Hospital.HOS_ID = [Application].APP_HOS_ID
			WHERE (APP_HOS_ID = ' + CAST(@HOS_ID AS CHAR(6)) + ') AND (';

			IF ISDATE(@Search_Term) = 1
			BEGIN
				SET @Query = @Query + N'(DAY(APP_DateTime) = ' + CAST(DAY(@Search_Term) AS CHAR(2)) +
				' AND MONTH(APP_DateTime) = ' + CAST(MONTH(@Search_Term) AS CHAR(2)) +
				' AND YEAR(APP_DateTime) = ' +  CAST(YEAR(@Search_Term) AS CHAR(4)) + ') OR ';

				SET @Total = @Total + N'(DAY(APP_DateTime) = ' + CAST(DAY(@Search_Term) AS CHAR(2)) +
				' AND MONTH(APP_DateTime) = ' + CAST(MONTH(@Search_Term) AS CHAR(2)) +
				' AND YEAR(APP_DateTime) = ' +  CAST(YEAR(@Search_Term) AS CHAR(4)) + ') OR ';
			END;
			IF ISNUMERIC(@Search_Term) = 1 AND LEN(@Search_Term) = 14
			BEGIN
				SET @Query = @Query + N'APP_ComNatID = ''' + @Search_Term + ''' OR Patient.PAT_NatID = ''' + @Search_Term + ''' OR ';
				SET @Total = @Total + N'APP_ComNatID = ''' + @Search_Term + ''' OR Patient.PAT_NatID = ''' + @Search_Term + ''' OR ';
			END;
			IF ISNUMERIC(@Search_Term) = 1 AND LEN(@Search_Term) = 11
			BEGIN
				SET @Query = @Query + N'APP_ComPhone = ''' + @Search_Term + ''' OR ';
				SET @Total = @Total + N'APP_ComPhone = ''' + @Search_Term + ''' OR ';
			END;
			IF ISNUMERIC(@Search_Term) = 1 AND LEN(@Search_Term) = 12
			BEGIN
				SET @Query = @Query + N'APP_Code = ''' + @Search_Term + ''' OR ';
				SET @Total = @Total + N'APP_Code = ''' + @Search_Term + ''' OR ';
			END;
			IF UPPER(@Search_Term) = N'OPEN'
			BEGIN
				SET @Query = @Query + N'APP_IsOpen = 1 OR ';
				SET @Total = @Total + N'APP_IsOpen = 1 OR ';
			END;
			ELSE IF UPPER(@Search_Term) = N'NOT OPEN'
			BEGIN
				SET @Query = @Query + N'APP_IsOpen = 0 OR ';
				SET @Total = @Total + N'APP_IsOpen = 0 OR ';
			END;

			SET @Query = @Query + N'APP_ComName LIKE N''%' + @Search_Term + '%''
			) ORDER BY APP_ID 
			OFFSET ((' + CAST(@Page_Number - 1 AS NVARCHAR(6)) + ') * ' 
			+ CAST(@Limit AS NVARCHAR(3)) + ') ROWS FETCH NEXT ' +
			CAST(@Limit AS NVARCHAR(3)) + ' ROWS ONLY';

			SET @Total = @Total + N'APP_ComName LIKE N''%' + @Search_Term + '%'')';

			EXEC sp_executesql @Query;
			EXEC sp_executesql @Total;
		END;
	END;
END;


GO
/****** Object:  StoredProcedure [dbo].[Filter_Hospital]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Filter_Hospital]
	@Search_Term NVARCHAR(50) = NULL,
	@Page_Number INT,
	@Limit INT
AS
BEGIN
	IF @Search_Term IS NULL 
	BEGIN
		SELECT * FROM Hospital ORDER BY HOS_ID 
		OFFSET ((@Page_Number - 1) * @Limit) ROWS FETCH NEXT @Limit ROWS ONLY;

		SELECT COUNT(*) FROM Hospital
	END;
	ELSE
	BEGIN
		SELECT DISTINCT Hospital.* FROM Hospital 
		LEFT JOIN Hospital_Phone ON Hospital_Phone.PHO_HOS_ID = Hospital.HOS_ID
		WHERE HOS_Name LIKE '%' + @Search_Term + '%' OR 
		HOS_Address LIKE '%' + @Search_Term + '%' OR HOS_Email LIKE '%' + @Search_Term + '%'
		OR PHO_Number = @Search_Term
		ORDER BY HOS_ID 
		OFFSET ((@Page_Number - 1) * @Limit) ROWS FETCH NEXT @Limit ROWS ONLY;

		SELECT COUNT(DISTINCT Hospital.HOS_ID) FROM Hospital 
		LEFT JOIN Hospital_Phone ON Hospital_Phone.PHO_HOS_ID = Hospital.HOS_ID
		WHERE HOS_Name LIKE '%' + @Search_Term + '%' OR 
		HOS_Address LIKE '%' + @Search_Term + '%' OR HOS_Email LIKE '%' + @Search_Term + '%'
		OR PHO_Number = @Search_Term
	END;
END;
GO
/****** Object:  StoredProcedure [dbo].[Filter_Patient]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Filter_Patient]
	@HOS_ID INT = NULL,
	@Search_Term NVARCHAR(50) = NULL,
	@Page_Number INT,
	@Limit INT
AS
BEGIN
	DECLARE @Query NVARCHAR(MAX) = N'', @Total NVARCHAR(MAX) = N'';

	IF @HOS_ID IS NULL OR @HOS_ID = 0
	BEGIN
		IF @Search_Term IS NULL
		BEGIN
			SELECT DISTINCT Patient.*, ADI_ID, ADI_Country AS PAT_Country, ADI_City AS PAT_City,
			ADI_Region AS PAT_Region FROM Patient
			LEFT JOIN Address_Info ON Address_Info.ADI_PAT_ID = Patient.PAT_ID
			ORDER BY PAT_ID 
			OFFSET ((@Page_Number - 1) * @Limit) ROWS FETCH NEXT @Limit ROWS ONLY;

			SELECT COUNT(DISTINCT Patient.PAT_ID) FROM Patient;
		END;
		ELSE
		BEGIN

			SET @Query = @Query + N'SELECT DISTINCT Patient.*, ADI_ID, ADI_Country AS PAT_Country, ADI_City AS PAT_City,
			ADI_Region AS PAT_Region FROM Patient
			LEFT JOIN Address_Info ON Address_Info.ADI_PAT_ID = Patient.PAT_ID WHERE ( ';
			SET @Total = @Total + N'SELECT COUNT(DISTINCT Patient.PAT_ID) FROM Patient 
			LEFT JOIN Address_Info ON Address_Info.ADI_PAT_ID = Patient.PAT_ID WHERE ( ';
		
			IF ISNUMERIC(@Search_Term) = 1 AND LEN(@Search_Term) = 14
			BEGIN
				SET @Query = @Query + N'PAT_NatID = ''' + @Search_Term + ''' OR ';
				SET @Total = @Total + N'PAT_NatID = ''' + @Search_Term + ''' OR ';
			END;
			IF UPPER(@Search_Term) = N'MALE'
			BEGIN
				SET @Query = @Query + N'PAT_Gender = 1 OR ';
				SET @Total = @Total + N'PAT_Gender = 1 OR ';
			END;
			ELSE IF UPPER(@Search_Term) = N'FEMALE'
			BEGIN
				SET @Query = @Query + N'PAT_Gender = 0 OR ';
				SET @Total = @Total + N'PAT_Gender = 0 OR ';
			END;
			IF UPPER(@Search_Term) = N'MARRIED'
			BEGIN
				SET @Query = @Query + N'PAT_IsMarrid = 1 OR ';
				SET @Total = @Total + N'PAT_IsMarrid = 1 OR ';
			END;
			ELSE IF UPPER(@Search_Term) = N'NOT MARRIED'
			BEGIN
				SET @Query = @Query + N'PAT_IsMarrid = 0 OR ';
				SET @Total = @Total + N'PAT_IsMarrid = 0 OR ';
			END;

			SET @Query = @Query + N'PAT_Name LIKE N''%' + @Search_Term + '%''
			OR ADI_Country LIKE N''%' + @Search_Term + '%''
			OR ADI_City LIKE N''%' + @Search_Term + '%''
			OR ADI_Region LIKE N''%' + @Search_Term + '%'')
			ORDER BY PAT_ID 
			OFFSET ((' + CAST(@Page_Number - 1 AS NVARCHAR(6)) + ') * ' 
			+ CAST(@Limit AS NVARCHAR(3)) + ') ROWS FETCH NEXT ' +
			CAST(@Limit AS NVARCHAR(3)) + ' ROWS ONLY';

			SET @Total = @Total + N'PAT_Name LIKE N''%' + @Search_Term + '%''
			OR ADI_Country LIKE N''%' + @Search_Term + '%'' 
			OR ADI_City LIKE N''%' + @Search_Term + '%''
			OR ADI_Region LIKE N''%' + @Search_Term + '%'')';

			EXEC sp_executesql @Query;
			EXEC sp_executesql @Total;
		END;
	END;

	ELSE
	BEGIN
		IF @Search_Term IS NULL
		BEGIN
			SELECT DISTINCT Patient.*, ADI_ID, ADI_Country AS PAT_Country, ADI_City AS PAT_City,
			ADI_Region AS PAT_Region FROM Patient
			LEFT JOIN Address_Info ON Address_Info.ADI_PAT_ID = Patient.PAT_ID
			INNER JOIN [Application] ON [Application].APP_PAT_ID = Patient.PAT_ID
			WHERE APP_HOS_ID = @HOS_ID
			ORDER BY PAT_ID 
			OFFSET ((@Page_Number - 1) * @Limit) ROWS FETCH NEXT @Limit ROWS ONLY;

			SELECT COUNT(DISTINCT Patient.PAT_ID) FROM Patient
			INNER JOIN [Application] ON [Application].APP_PAT_ID = Patient.PAT_ID
			WHERE APP_HOS_ID = @HOS_ID;
		END;
		ELSE
		BEGIN
			SET @Query = @Query + N'SELECT DISTINCT Patient.*, ADI_ID, ADI_Country AS PAT_Country, ADI_City AS PAT_City,
			ADI_Region AS PAT_Region FROM Patient
			LEFT JOIN Address_Info ON Address_Info.ADI_PAT_ID = Patient.PAT_ID
			INNER JOIN [Application] ON [Application].APP_PAT_ID = Patient.PAT_ID WHERE APP_HOS_ID = ' + CAST(@HOS_ID AS NVARCHAR(4)) + ' AND ( ';
			SET @Total = @Total + N'SELECT COUNT(DISTINCT Patient.PAT_ID) FROM Patient 
			LEFT JOIN Address_Info ON Address_Info.ADI_PAT_ID = Patient.PAT_ID 
			INNER JOIN [Application] ON [Application].APP_PAT_ID = Patient.PAT_ID
			WHERE APP_HOS_ID = ' + CAST(@HOS_ID AS NVARCHAR(4)) + ' AND ( ';
		
			IF ISNUMERIC(@Search_Term) = 1 AND LEN(@Search_Term) = 14
			BEGIN
				SET @Query = @Query + N'PAT_NatID = ''' + @Search_Term + ''' OR ';
				SET @Total = @Total + N'PAT_NatID = ''' + @Search_Term + ''' OR ';
			END;
			IF UPPER(@Search_Term) = N'MALE'
			BEGIN
				SET @Query = @Query + N'PAT_Gender = 1 OR ';
				SET @Total = @Total + N'PAT_Gender = 1 OR ';
			END;
			ELSE IF UPPER(@Search_Term) = N'FEMALE'
			BEGIN
				SET @Query = @Query + N'PAT_Gender = 0 OR ';
				SET @Total = @Total + N'PAT_Gender = 0 OR ';
			END;
			IF UPPER(@Search_Term) = N'MARRIED'
			BEGIN
				SET @Query = @Query + N'PAT_IsMarrid = 1 OR ';
				SET @Total = @Total + N'PAT_IsMarrid = 1 OR ';
			END;
			ELSE IF UPPER(@Search_Term) = N'NOT MARRIED'
			BEGIN
				SET @Query = @Query + N'PAT_IsMarrid = 0 OR ';
				SET @Total = @Total + N'PAT_IsMarrid = 0 OR ';
			END;

			SET @Query = @Query + N'PAT_Name LIKE N''%' + @Search_Term + '%''
			OR ADI_Country LIKE N''%' + @Search_Term + '%''
			OR ADI_City LIKE N''%' + @Search_Term + '%''
			OR ADI_Region LIKE N''%' + @Search_Term + '%'')
			ORDER BY PAT_ID 
			OFFSET ((' + CAST(@Page_Number - 1 AS NVARCHAR(6)) + ') * ' 
			+ CAST(@Limit AS NVARCHAR(3)) + ') ROWS FETCH NEXT ' +
			CAST(@Limit AS NVARCHAR(3)) + ' ROWS ONLY';

			SET @Total = @Total + N'PAT_Name LIKE N''%' + @Search_Term + '%''
			OR ADI_Country LIKE N''%' + @Search_Term + '%'' 
			OR ADI_City LIKE N''%' + @Search_Term + '%''
			OR ADI_Region LIKE N''%' + @Search_Term + '%'')';

			EXEC sp_executesql @Query;
			EXEC sp_executesql @Total;
		END;
	END;
END;

GO
/****** Object:  StoredProcedure [dbo].[Filter_Staff]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Filter_Staff]
	@HOS_ID INT,
	@Search_Term NVARCHAR(50) = NULL,
	@Page_Number INT,
	@Limit INT
AS
BEGIN
	IF @HOS_ID IS NULL
	BEGIN
		RETURN;
	END;

	IF @Search_Term IS NULL 
	BEGIN
		SELECT STF_ID, STF_Name, STF_Address, STF_NatID, STF_BirthDate, STF_Gender, STF_IsMarrid, STT_Type AS STF_Type,
		SLOG_Username, SLOG_Password FROM Staff 
		LEFT JOIN Staff_Login ON Staff_Login.SLOG_STF_ID =Staff.STF_ID
		LEFT JOIN Staff_Type WITH(INDEX(idx_STT_HOS_ID)) ON Staff_Type.STT_ID = Staff.STF_STT_ID
		WHERE STT_HOS_ID = @HOS_ID
		ORDER BY STF_ID 
		OFFSET ((@Page_Number - 1) * @Limit) ROWS FETCH NEXT @Limit ROWS ONLY;

		SELECT COUNT(*) FROM Staff 
		LEFT JOIN Staff_Type WITH(INDEX(idx_STT_HOS_ID)) ON Staff_Type.STT_ID = Staff.STF_STT_ID
		WHERE STT_HOS_ID = @HOS_ID
	END;
	ELSE
	BEGIN
		
		DECLARE @Query NVARCHAR(MAX) = N'', @Total NVARCHAR(MAX) = N'';

		SET @Query = @Query + N'SELECT STF_ID, STF_Name, STF_Address, STF_NatID, STF_BirthDate, STF_Gender, STF_IsMarrid,
		STT_Type AS STF_Type, SLOG_Username, SLOG_Password FROM Staff ';

		SET @Total = @Total + N'SELECT COUNT(*) FROM Staff ';

		IF TRY_CONVERT(BIGINT, @Search_Term) IS NOT NULL AND LEN(@Search_Term) = 14
		BEGIN
			SET @Query = @Query + N'WITH(INDEX(idx_STF_NatID)) LEFT JOIN Staff_Login ON Staff_Login.SLOG_STF_ID = Staff.STF_ID
			LEFT JOIN Staff_Type WITH(INDEX(idx_STT_HOS_ID)) ON Staff_Type.STT_ID = Staff.STF_STT_ID
			WHERE STT_HOS_ID = ' + CAST(@HOS_ID AS NVARCHAR(4)) + ' AND (
			STF_NatID = ' + @Search_Term + N') ';

			SET @Total = @Total + N'WITH(INDEX(idx_STF_NatID)) LEFT JOIN Staff_Login ON Staff_Login.SLOG_STF_ID = Staff.STF_ID
			LEFT JOIN Staff_Type WITH(INDEX(idx_STT_HOS_ID)) ON Staff_Type.STT_ID = Staff.STF_STT_ID
			WHERE STT_HOS_ID = ' + CAST(@HOS_ID AS NVARCHAR(4)) + ' AND (
			STF_NatID = ' + @Search_Term + N') ';
		END;
		ELSE IF ISDATE(@Search_Term) = 1
		BEGIN
			SET @Query = @Query + N'WITH(INDEX(idx_STF_BirthDate)) LEFT JOIN Staff_Login ON Staff_Login.SLOG_STF_ID = Staff.STF_ID
			LEFT JOIN Staff_Type WITH(INDEX(idx_STT_HOS_ID)) ON Staff_Type.STT_ID = Staff.STF_STT_ID
			WHERE STT_HOS_ID = ' + CAST(@HOS_ID AS NVARCHAR(4)) + ' AND (
			(DAY(STF_BirthDate) = ' + CAST(DAY(@Search_Term) AS CHAR(2)) +
			N' AND MONTH(STF_BirthDate) = ' + CAST(MONTH(@Search_Term) AS CHAR(2)) + 
			N' AND YEAR(STF_BirthDate) = ' + CAST(YEAR(@Search_Term) AS CHAR(4)) + N')) ';

			SET @Total = @Total + N'WITH(INDEX(idx_STF_BirthDate)) LEFT JOIN Staff_Login ON Staff_Login.SLOG_STF_ID = Staff.STF_ID
			LEFT JOIN Staff_Type WITH(INDEX(idx_STT_HOS_ID)) ON Staff_Type.STT_ID = Staff.STF_STT_ID
			WHERE STT_HOS_ID = ' + CAST(@HOS_ID AS NVARCHAR(4)) + ' AND (
			(DAY(STF_BirthDate) = ' + CAST(DAY(@Search_Term) AS CHAR(2)) +
			N' AND MONTH(STF_BirthDate) = ' + CAST(MONTH(@Search_Term) AS CHAR(2)) + 
			N' AND YEAR(STF_BirthDate) = ' + CAST(YEAR(@Search_Term) AS CHAR(4)) + N')) ';
		END;
		ELSE IF UPPER(@Search_Term) = N'MALE'
		BEGIN
			SET @Query = @Query + N'WITH(INDEX(idx_STF_Gender)) LEFT JOIN Staff_Login ON Staff_Login.SLOG_STF_ID = Staff.STF_ID
			LEFT JOIN Staff_Type WITH(INDEX(idx_STT_HOS_ID)) ON Staff_Type.STT_ID = Staff.STF_STT_ID
			WHERE STT_HOS_ID = ' + CAST(@HOS_ID AS NVARCHAR(4)) + ' AND (
			STF_Gender = 1) ';

			SET @Total = @Total + N'WITH(INDEX(idx_STF_Gender)) LEFT JOIN Staff_Login ON Staff_Login.SLOG_STF_ID = Staff.STF_ID
			LEFT JOIN Staff_Type WITH(INDEX(idx_STT_HOS_ID)) ON Staff_Type.STT_ID = Staff.STF_STT_ID
			WHERE STT_HOS_ID = ' + CAST(@HOS_ID AS NVARCHAR(4)) + ' AND (
			STF_Gender = 1) ';
		END;
		ELSE IF UPPER(@Search_Term) = N'FEMALE'
		BEGIN
			SET @Query = @Query + N'WITH(INDEX(idx_STF_Gender)) LEFT JOIN Staff_Login ON Staff_Login.SLOG_STF_ID = Staff.STF_ID
			LEFT JOIN Staff_Type WITH(INDEX(idx_STT_HOS_ID)) ON Staff_Type.STT_ID = Staff.STF_STT_ID
			WHERE STT_HOS_ID = ' + CAST(@HOS_ID AS NVARCHAR(4)) + ' AND (
			STF_Gender = 0) ';

			SET @Total = @Total + N'WITH(INDEX(idx_STF_Gender)) LEFT JOIN Staff_Login ON Staff_Login.SLOG_STF_ID = Staff.STF_ID
			LEFT JOIN Staff_Type WITH(INDEX(idx_STT_HOS_ID)) ON Staff_Type.STT_ID = Staff.STF_STT_ID
			WHERE STT_HOS_ID = ' + CAST(@HOS_ID AS NVARCHAR(4)) + ' AND (
			STF_Gender = 0) ';
		END;
		ELSE IF UPPER(@Search_Term) = N'MARRID'
		BEGIN
			SET @Query = @Query + N'WITH(INDEX(idx_STF_IsMarrid)) LEFT JOIN Staff_Login ON Staff_Login.SLOG_STF_ID = Staff.STF_ID
			LEFT JOIN Staff_Type WITH(INDEX(idx_STT_HOS_ID)) ON Staff_Type.STT_ID = Staff.STF_STT_ID
			WHERE STT_HOS_ID = ' + CAST(@HOS_ID AS NVARCHAR(4)) + ' AND (
			STF_IsMarrid = 1) ';

			SET @Total = @Total + N'WITH(INDEX(idx_STF_IsMarrid)) LEFT JOIN Staff_Login ON Staff_Login.SLOG_STF_ID = Staff.STF_ID
			LEFT JOIN Staff_Type WITH(INDEX(idx_STT_HOS_ID)) ON Staff_Type.STT_ID = Staff.STF_STT_ID
			WHERE STT_HOS_ID = ' + CAST(@HOS_ID AS NVARCHAR(4)) + ' AND (
			STF_IsMarrid = 1) ';
		END;
		ELSE IF UPPER(@Search_Term) = N'NOT MARRID'
		BEGIN
			SET @Query = @Query + N'WITH(INDEX(idx_STF_IsMarrid)) LEFT JOIN Staff_Login ON Staff_Login.SLOG_STF_ID = Staff.STF_ID
			LEFT JOIN Staff_Type WITH(INDEX(idx_STT_HOS_ID)) ON Staff_Type.STT_ID = Staff.STF_STT_ID
			WHERE STT_HOS_ID = ' + CAST(@HOS_ID AS NVARCHAR(4)) + ' AND (
			STF_IsMarrid = 0) ';

			SET @Total = @Total + N'WITH(INDEX(idx_STF_IsMarrid)) LEFT JOIN Staff_Login ON Staff_Login.SLOG_STF_ID = Staff.STF_ID
			LEFT JOIN Staff_Type WITH(INDEX(idx_STT_HOS_ID)) ON Staff_Type.STT_ID = Staff.STF_STT_ID
			WHERE STT_HOS_ID = ' + CAST(@HOS_ID AS NVARCHAR(4)) + ' AND (
			STF_IsMarrid = 0) ';
		END;
		ELSE IF TRY_CONVERT(INT, @Search_Term) IS NULL
		BEGIN
			SET @Query = @Query + N'WITH(INDEX(idx_STF_Name), INDEX(idx_STF_Address)) 
			LEFT JOIN Staff_Login ON Staff_Login.SLOG_STF_ID = Staff.STF_ID
			LEFT JOIN Staff_Type WITH(INDEX(idx_STT_HOS_ID), INDEX(idx_STT_Type)) ON Staff_Type.STT_ID = Staff.STF_STT_ID
			WHERE STT_HOS_ID = ' + CAST(@HOS_ID AS NVARCHAR(4)) + ' AND (
			STF_Name LIKE N''%' + @Search_Term + '%'' OR
			STF_Address LIKE N''%' + @Search_Term + '%'' OR STT_Type LIKE N''%' + @Search_Term + '%'') ';

			SET @Total = @Total + N'WITH(INDEX(idx_STF_Name), INDEX(idx_STF_Address)) 
			LEFT JOIN Staff_Login ON Staff_Login.SLOG_STF_ID = Staff.STF_ID
			LEFT JOIN Staff_Type WITH(INDEX(idx_STT_HOS_ID), INDEX(idx_STT_Type)) ON Staff_Type.STT_ID = Staff.STF_STT_ID
			WHERE STT_HOS_ID = ' + CAST(@HOS_ID AS NVARCHAR(4)) + ' AND (
			STF_Name LIKE N''%' + @Search_Term + '%'' OR
			STF_Address LIKE N''%' + @Search_Term + '%'' OR STT_Type LIKE N''%' + @Search_Term + '%'') ';
		END;
		ELSE
		BEGIN
			RETURN NULL;
		END;

		SET @Query = @Query + N' ORDER BY STF_ID 
		OFFSET ((' + CAST(@Page_Number - 1 AS NVARCHAR(6)) + ') * ' 
		+ CAST(@Limit AS NVARCHAR(3)) + ') ROWS FETCH NEXT ' +
		CAST(@Limit AS NVARCHAR(3)) + ' ROWS ONLY';
		
		EXEC sp_executesql @Query;
		EXEC sp_executesql @Total;
	END;
END; 


GO
/****** Object:  StoredProcedure [dbo].[Filter_Staff_Type]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Filter_Staff_Type]
	@STT_HOS_ID INT = 0,
	@Page_Number INT,
	@Limit INT
AS
BEGIN
	SET NOCOUNT ON;

	IF @STT_HOS_ID IS NULL OR @STT_HOS_ID = 0
	BEGIN
		SELECT STT_ID, STT_Type FROM Staff_Type ORDER BY STT_ID
		OFFSET((@Page_Number - 1) * @Limit ) ROWS FETCH NEXT @Limit ROWS ONLY;

		SELECT COUNT(*) FROM Staff_Type;
	END;
	ELSE
	BEGIN
		SELECT STT_ID, STT_Type FROM Staff_Type WHERE STT_HOS_ID = @STT_HOS_ID
		ORDER BY STT_ID
		OFFSET((@Page_Number - 1) * @Limit ) ROWS FETCH NEXT @Limit ROWS ONLY;

		SELECT COUNT(*) FROM Staff_Type WHERE STT_HOS_ID = @STT_HOS_ID;
	END;
END;
GO
/****** Object:  StoredProcedure [dbo].[Get_All_Addresses_Of_Patient]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Get_All_Addresses_Of_Patient] (@PAT_ID BIGINT)
AS
BEGIN
SET NOCOUNT ON;
SELECT * FROM [dbo].[Address_Info]  WHERE  ADI_PAT_ID= @PAT_ID; 
END;
GO
/****** Object:  StoredProcedure [dbo].[Get_All_Departments_Of_Hospital]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Get_All_Departments_Of_Hospital] (@HOS_ID INT)
AS
BEGIN
SET NOCOUNT ON;
SELECT DEP_ID, DEP_Name FROM [dbo].[Department] WHERE DEP_HOS_ID= @HOS_ID; 
END;
GO
/****** Object:  StoredProcedure [dbo].[Get_Application]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Get_Application] (@APP_ID BIGINT)
AS
BEGIN 
	SET NOCOUNT ON

	SELECT APP_ID, APP_DateTime, PAT_Name, PAT_NatID, APP_ComName, APP_ComNatID,
		APP_ComPhone, APP_COT_ID, HOS_Name, APP_Code, APP_IsOpen FROM [Application] 
		RIGHT JOIN Patient ON Patient.PAT_ID = [Application].APP_PAT_ID
		INNER JOIN Hospital ON Hospital.HOS_ID = [Application].APP_HOS_ID
		WHERE APP_ID = @APP_ID;
END;
GO
/****** Object:  StoredProcedure [dbo].[Get_Application_Notes_with_pagenation]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Get_Application_Notes_with_pagenation]
(
  @APP_ID BIGINT,
  @Page_Number INT,
  @Limit INT
)
AS
BEGIN
  SET NOCOUNT ON;

  DECLARE @Offset INT = 0
  DECLARE @RowCount INT = 0

  IF @limit IS NOT NULL AND @page_number IS NOT NULL
  BEGIN
    SET @Offset = (@page_number - 1) * @limit
  END

  SELECT * FROM NoteBlock WHERE NOTB_APP_ID = @APP_ID ORDER BY NOTB_ID DESC
  OFFSET @Offset ROWS FETCH NEXT @limit ROWS ONLY
  SELECT count(*) FROM NoteBlock WHERE NOTB_APP_ID = @APP_ID;
END
GO
/****** Object:  StoredProcedure [dbo].[Get_Application_Nots]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Get_Application_Nots]
	@APP_ID BIGINT
AS 
BEGIN
	SET NOCOUNT ON;

	SELECT * FROM NoteBlock WHERE NOTB_APP_ID = @APP_ID ORDER BY NOTB_ID DESC;
END;
GO
/****** Object:  StoredProcedure [dbo].[Get_Application_Reqs]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Get_Application_Reqs]
	@APP_ID BIGINT = NULL
AS
BEGIN
	SET NOCOUNT ON;

	IF @APP_ID IS NULL
	BEGIN
		RETURN;
	END;

	SELECT REQB_ID, REQB_DateTime, STF_Name AS REQB_STF_Name, REQB_DEP_ID FROM RequstBlock 
	INNER JOIN Staff ON RequstBlock.REQB_STF_ID = Staff.STF_ID
	WHERE REQB_APP_ID = @APP_ID ORDER BY REQB_ID DESC;
END;
GO
/****** Object:  StoredProcedure [dbo].[Get_Companion_Types]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Get_Companion_Types]
AS 
BEGIN
	SET NOCOUNT ON;

	SELECT * FROM Companion_Type
END;
GO
/****** Object:  StoredProcedure [dbo].[Get_Department]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Get_Department] (@DEP_ID  INT)
AS
BEGIN 
SET NOCOUNT ON
SELECT * FROM [dbo].[Department] WHERE DEP_ID = @DEP_ID;
END;
GO
/****** Object:  StoredProcedure [dbo].[Get_Department_RequestBlocks]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Get_Department_RequestBlocks]
	@DEP_ID INT,
	@Page_Number INT,
	@Limit INT
AS
BEGIN
	SET NOCOUNT ON;

	SELECT RB.REQB_ID, RB.REQB_DateTime, STF.STF_ID, STF.STF_Name, RB.REQB_DEP_ID, DEP.DEP_Name,
	PAT.PAT_ID, PAT.PAT_Name, PAT.PAT_NatID, RB.REQB_APP_ID, APP.APP_Code 
	FROM RequstBlock RB 
	INNER JOIN [Application] APP ON RB.REQB_APP_ID = APP.APP_ID AND APP_IsOpen = 1
	INNER JOIN Staff STF ON RB.REQB_STF_ID = STF.STF_ID
	INNER JOIN Department DEP ON RB.REQB_DEP_ID = DEP.DEP_ID AND RB.REQB_DEP_ID = @DEP_ID
	INNER JOIN Patient PAT ON APP.APP_PAT_ID = PAT.PAT_ID
	ORDER BY RB.REQB_ID OFFSET ((@Page_Number - 1) * @Limit) ROWS FETCH NEXT @Limit ROWS ONLY;

	SELECT COUNT(*)
	FROM RequstBlock RB 
	INNER JOIN [Application] APP ON RB.REQB_APP_ID = APP.APP_ID AND APP_IsOpen = 1
	INNER JOIN Staff STF ON RB.REQB_STF_ID = STF.STF_ID
	INNER JOIN Department DEP ON RB.REQB_DEP_ID = DEP.DEP_ID AND RB.REQB_DEP_ID = @DEP_ID
	INNER JOIN Patient PAT ON APP.APP_PAT_ID = PAT.PAT_ID;
END;
GO
/****** Object:  StoredProcedure [dbo].[Get_Hospital]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Get_Hospital] (@HOS_ID  INT)
AS
BEGIN 
SET NOCOUNT ON
SELECT * FROM [dbo].[Hospital] WHERE HOS_ID = @HOS_ID;
END;
GO
/****** Object:  StoredProcedure [dbo].[Get_Hospital_Departments]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Get_Hospital_Departments]
	@HOS_ID INT = NULL
AS
BEGIN
	SET NOCOUNT ON;

	SELECT DEP_ID, DEP_Name FROM Department WHERE DEP_HOS_ID = @HOS_ID;
END
GO
/****** Object:  StoredProcedure [dbo].[Get_Hospital_Phones]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Get_Hospital_Phones] (@HOS_ID INT)
AS
BEGIN
SET NOCOUNT ON;
SELECT PHO_ID, PHO_Number FROM  [dbo].[Hospital_Phone]  WHERE  PHO_HOS_ID= @HOS_ID; 
END;
GO
/****** Object:  StoredProcedure [dbo].[Get_Hospital_Staff]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Get_Hospital_Staff] (@HOS_ID INT)
AS
BEGIN 
	SET NOCOUNT ON
	SELECT * FROM [dbo].[Staff]  WHERE STF_ID
	IN (SELECT STF_ID FROM Staff_Department WHERE DEP_ID 
	IN (SELECT DEP_ID FROM Department WHERE DEP_HOS_ID = @HOS_ID));
END;
GO
/****** Object:  StoredProcedure [dbo].[Get_Note]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Get_Note] (@NOT_ID  bigint)
AS
BEGIN 
SET NOCOUNT ON
SELECT * FROM [dbo].[Notes] WHERE NOT_ID = @NOT_ID;
END;
GO
/****** Object:  StoredProcedure [dbo].[Get_NoteBlock]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Get_NoteBlock]
	@NOTB_ID BIGINT
AS 
BEGIN
	SET NOCOUNT ON;

	SELECT * FROM NoteBlock WHERE NOTB_ID = @NOTB_ID;
END;
GO
/****** Object:  StoredProcedure [dbo].[Get_NoteBlock_Nots]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Get_NoteBlock_Nots]
	@NOTB_ID BIGINT
AS 
BEGIN
	SET NOCOUNT ON;

	SELECT * FROM Notes WHERE NOT_NOTB_ID = @NOTB_ID;
END;
GO
/****** Object:  StoredProcedure [dbo].[Get_Patient]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Get_Patient] (@PAT_ID  BIGINT)
AS
BEGIN 
	SET NOCOUNT ON

	SELECT Patient.*, ADI_ID, ADI_Country as PAT_Country, ADI_City as PAT_City, ADI_Region as PAT_Region FROM Patient
			LEFT JOIN Address_Info ON Address_Info.ADI_PAT_ID = Patient.PAT_ID
			WHERE PAT_ID = @PAT_ID;
END;
GO
/****** Object:  StoredProcedure [dbo].[Get_Patient_Apps]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Get_Patient_Apps]
	@PAT_ID BIGINT = NULL
AS
BEGIN
	SET NOCOUNT ON;

	IF @PAT_ID IS NULL
	BEGIN
		RETURN;
	END;

	SELECT * FROM [Application] WHERE APP_PAT_ID = @PAT_ID;
END;
GO
/****** Object:  StoredProcedure [dbo].[Get_Patient_NID_Types]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Get_Patient_NID_Types]
AS
BEGIN
	SET NOCOUNT ON;

	SELECT * FROM Patient_NID_Type
END;
GO
/****** Object:  StoredProcedure [dbo].[Get_Request_By_REQ_ID]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Get_Request_By_REQ_ID] (@REQ_ID BIGINT)
AS
BEGIN 
SET NOCOUNT ON
SELECT * FROM [dbo].[Requst] WHERE REQ_ID = @REQ_ID;
END;
GO
/****** Object:  StoredProcedure [dbo].[Get_Request_Res]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Get_Request_Res]
	@REQB_ID BIGINT = NULL
AS
BEGIN
	SET NOCOUNT ON;

	IF @REQB_ID IS NULL
	BEGIN
		RETURN;
	END;

	SELECT * FROM ResponseBlock WHERE RSPB_REQB_ID = @REQB_ID ORDER BY RSPB_ID DESC;
END;
GO
/****** Object:  StoredProcedure [dbo].[Get_RequestBlock_Reqs]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Get_RequestBlock_Reqs]
	@REQB_ID BIGINT = NULL
AS
BEGIN
	SET NOCOUNT ON;

	IF @REQB_ID IS NULL
	BEGIN
		RETURN;
	END;

	SELECT * FROM Requst WHERE REQ_REQB_ID = @REQB_ID ORDER BY REQ_ID DESC;
END;
GO
/****** Object:  StoredProcedure [dbo].[Get_RequstBlock]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Get_RequstBlock] (@REQB_ID BIGINT)
AS
BEGIN 
SET NOCOUNT ON
 
SELECT rb.REQB_ID,rb.REQB_DateTime,rb.REQB_STF_ID, rb.REQB_DEP_ID, rb.REQB_APP_ID, rs.STAT_Name
    FROM [dbo].[RequstBlock] rb
    JOIN [dbo].[ReqB_Status] rs ON rb.REQB_STAT_ID = rs.STAT_ID
    WHERE rb.REQB_ID = @REQB_ID;
END;
GO
/****** Object:  StoredProcedure [dbo].[Get_Response_By_RSP_ID]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Get_Response_By_RSP_ID] (@RSP_ID BIGINT)
AS
BEGIN 
SET NOCOUNT ON
SELECT * FROM [dbo].[Response] WHERE RSP_ID = @RSP_ID;
END;
GO
/****** Object:  StoredProcedure [dbo].[Get_ResponseBlock_By_RSPB_ID]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Get_ResponseBlock_By_RSPB_ID] (@RSPB_ID BIGINT)
AS
BEGIN 
SET NOCOUNT ON
SELECT * FROM [dbo].[ResponseBlock] WHERE RSPB_ID = @RSPB_ID;
END;
GO
/****** Object:  StoredProcedure [dbo].[Get_ResponseBlock_Res]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Get_ResponseBlock_Res]
	@RSPB_ID BIGINT = NULL
AS
BEGIN
	SET NOCOUNT ON;

	IF @RSPB_ID IS NULL
	BEGIN
		RETURN;
	END;

	SELECT * FROM Response WHERE RSP_RSPB_ID = @RSPB_ID ORDER BY RSP_ID DESC;
END;
GO
/****** Object:  StoredProcedure [dbo].[Get_Staff]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Get_Staff] (@STF_ID BIGINT)
AS
BEGIN 
SET NOCOUNT ON
	SELECT Staff.*, SLOG_Username, SLOG_Password FROM [dbo].[Staff]
	LEFT JOIN Staff_Login ON Staff_Login.SLOG_STF_ID = Staff.STF_ID
	WHERE STF_ID = @STF_ID;
END;
GO
/****** Object:  StoredProcedure [dbo].[Get_Staff_Departments]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Get_Staff_Departments]
	@STF_ID INT
AS
BEGIN
	SET NOCOUNT ON;

	SELECT DEP_ID FROM Staff_Department WITH(INDEX(idx_STF_ID)) WHERE STF_ID = @STF_ID;
END;

GO
/****** Object:  StoredProcedure [dbo].[Get_Staff_DepartmentsNames]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Get_Staff_DepartmentsNames]
	@STF_ID INT
AS
BEGIN
	SET NOCOUNT ON;

	SELECT DEP_Name FROM Staff_Department WITH(INDEX(idx_STF_ID))
	INNER JOIN Department ON Staff_Department.DEP_ID = Department.DEP_ID
	WHERE STF_ID = @STF_ID;
END;
GO
/****** Object:  StoredProcedure [dbo].[Get_Staff_Hospital]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Get_Staff_Hospital]
	@SLOG_Username NVARCHAR(50),
	@SLOG_Password NVARCHAR(20)
AS
BEGIN
	SET NOCOUNT ON;

	SELECT DEP_HOS_ID FROM Department WHERE DEP_ID =
	(SELECT DEP_ID FROM Staff_Department WHERE STF_ID = 
	(SELECT SLOG_STF_ID FROM Staff_Login
	WHERE SLOG_Username = @SLOG_Username AND SLOG_Password = @SLOG_Password))
END;
GO
/****** Object:  StoredProcedure [dbo].[Get_Staff_Type]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Get_Staff_Type]
	@STT_ID INT = NULL
AS
BEGIN
	SET NOCOUNT ON;

	SELECT * FROM Staff_Type WHERE STT_ID = @STT_ID;
END;
GO
/****** Object:  StoredProcedure [dbo].[Hos_Age_Groups]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Hos_Age_Groups]
AS
BEGIN
	CREATE TABLE #Hospital_Age_Groups (HOS_Name NVARCHAR(50), New_Born INT, Child INT, Adolescence INT, Adult INT, Old INT);
	DECLARE @HOS_ID INT;
	DECLARE Hos_Age_Gro CURSOR FOR SELECT HOS_ID FROM Hospital

	OPEN Hos_Age_Gro

	FETCH NEXT FROM Hos_Age_Gro INTO @HOS_ID

	WHILE @@FETCH_STATUS = 0
	BEGIN
		  INSERT INTO #Hospital_Age_Groups VALUES(
				(SELECT HOS_Name FROM Hospital WHERE HOS_ID = @HOS_ID),

				(SELECT COUNT(DISTINCT PAT_ID) FROM Patient INNER JOIN [Application] 
				ON [Application].APP_PAT_ID = Patient.PAT_ID
				WHERE APP_HOS_ID = @HOS_ID AND APP_IsOpen = 1 AND
				CAST(DATEDIFF(YEAR, PAT_BirthDate, GETDATE()) AS INT) BETWEEN 1 AND 3),

				(SELECT COUNT(DISTINCT PAT_ID) FROM Patient INNER JOIN [Application] 
				ON [Application].APP_PAT_ID = Patient.PAT_ID
				WHERE APP_HOS_ID = @HOS_ID AND APP_IsOpen = 1 AND
				CAST(DATEDIFF(YEAR, PAT_BirthDate, GETDATE()) AS INT) BETWEEN 4 AND 12),

				(SELECT COUNT(DISTINCT PAT_ID) FROM Patient INNER JOIN [Application] 
				ON [Application].APP_PAT_ID = Patient.PAT_ID
				WHERE APP_HOS_ID = @HOS_ID AND APP_IsOpen = 1 AND
				CAST(DATEDIFF(YEAR, PAT_BirthDate, GETDATE()) AS INT) BETWEEN 13 AND 21),

				(SELECT COUNT(DISTINCT PAT_ID) FROM Patient INNER JOIN [Application] 
				ON [Application].APP_PAT_ID = Patient.PAT_ID
				WHERE APP_HOS_ID = @HOS_ID AND APP_IsOpen = 1 AND
				CAST(DATEDIFF(YEAR, PAT_BirthDate, GETDATE()) AS INT) BETWEEN 22 AND 40),

				(SELECT COUNT(DISTINCT PAT_ID) FROM Patient INNER JOIN [Application] 
				ON [Application].APP_PAT_ID = Patient.PAT_ID
				WHERE APP_HOS_ID = @HOS_ID AND APP_IsOpen = 1 AND
				CAST(DATEDIFF(YEAR, PAT_BirthDate, GETDATE()) AS INT) > 40)
			)
  
	  FETCH NEXT FROM Hos_Age_Gro INTO @HOS_ID
	END

	CLOSE Hos_Age_Gro
	DEALLOCATE Hos_Age_Gro

	SELECT * FROM #Hospital_Age_Groups;
	DROP TABLE #Hospital_Age_Groups;
END;
GO
/****** Object:  StoredProcedure [dbo].[HOS_Applications_Count]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[HOS_Applications_Count]
	@HOS_ID INT,
	@FROM NVARCHAR(10) = NULL,
	@To NVARCHAR(10) = NULL,
	@Is_Open BIT = NULL,
	@Month_Result NVARCHAR(6) = NULL
AS
BEGIN
	SET NOCOUNT ON;

	IF @HOS_ID IS NULL OR @HOS_ID = 0
	BEGIN
		RETURN
	END;

	ELSE
	BEGIN
		IF @FROM IS NOT NULL AND @To IS NULL
		BEGIN
			IF @Is_Open IS NULL
			BEGIN
				IF LEN(@FROM) = 10
				BEGIN
					DECLARE @Current_Hour NVARCHAR(20) = @FROM + ' 00:00:00';
					CREATE TABLE #Day_Hours_APPs_Count (_Hour INT, APPs_Count INT)
					DECLARE @Counter INT = 0;
					WHILE @Counter < 24
					BEGIN
						INSERT INTO #Day_Hours_APPs_Count VALUES(@Counter, 
						(SELECT COUNT(*) FROM [Application] WHERE APP_HOS_ID = @HOS_ID AND 
						APP_DateTime BETWEEN @Current_Hour AND DATEADD(SECOND, -1, DATEADD(HOUR, 1, @Current_Hour))));
						SET @Current_Hour = DATEADD(HOUR, 1, @Current_Hour);
						SET @Counter = @Counter + 1;
					END;
					SELECT * FROM #Day_Hours_APPs_Count;
					DROP TABLE #Day_Hours_APPs_Count;
				END;
				ELSE IF LEN(@FROM) = 7
				BEGIN
					DECLARE @_Start_Date DATE = CAST(@FROM + '-01' AS DATE);
					DECLARE @Current_Month INT = MONTH(@_Start_Date), @Current_Year INT = YEAR(@_Start_Date);
					IF UPPER(@Month_Result) = N'WEEKS'
					BEGIN
						CREATE TABLE #Month_Weeks_APPs_Count (_Week INT, APPs_Count INT)
						SET @Counter = 1;
						WHILE @Counter < 5
						BEGIN
							IF @Counter < 4
							BEGIN
								INSERT INTO #Month_Weeks_APPs_Count VALUES(@Counter, 
								(SELECT COUNT(*) FROM [Application] WHERE APP_HOS_ID = @HOS_ID AND 
								APP_DateTime BETWEEN CAST(@FROM + '-' + FORMAT((@Counter * 7) - 6, '00') + ' 00:00:00' AS DATETIME) 
								AND CAST(@FROM + '-' + FORMAT(@Counter * 7, '00') + ' 23:59:59' AS DATETIME)));
							END;
							ELSE
							BEGIN
								INSERT INTO #Month_Weeks_APPs_Count VALUES(@Counter, 
								(SELECT COUNT(*) FROM [Application] WHERE APP_HOS_ID = @HOS_ID AND 
								APP_DateTime BETWEEN CAST(@FROM + '-' + FORMAT((@Counter * 7) - 6, '00') + ' 00:00:00' AS DATETIME) 
								AND CAST(EOMONTH(@From + '-01') AS NVARCHAR(10)) + ' 23:59:59'));
							END;
							SET @Counter = @Counter + 1;
						END;
						SELECT * FROM #Month_Weeks_APPs_Count;
						DROP TABLE #Month_Weeks_APPs_Count;
					END;
					ELSE IF UPPER(@Month_Result) = N'DAYS' OR @Month_Result IS NULL
					BEGIN
						CREATE TABLE #Month_Days_APPs_Count (_Day INT, APPs_Count INT)
						SET @Counter = 1;
						WHILE @Counter <= DAY(EOMONTH(@FROM + '-01'))
						BEGIN
							INSERT INTO #Month_Days_APPs_Count VALUES(@Counter, 
							(SELECT COUNT(*) FROM [Application] WHERE APP_HOS_ID = @HOS_ID AND 
							APP_DateTime BETWEEN CAST(@FROM + '-' + FORMAT(@Counter, '00') + ' 00:00:00' AS DATETIME) 
							AND CAST(@FROM + '-' + FORMAT(@Counter, '00') + ' 23:59:59' AS DATETIME)));
							
							SET @Counter = @Counter + 1;
						END;
						SELECT * FROM #Month_Days_APPs_Count;
						DROP TABLE #Month_Days_APPs_Count;
					END;
				END;
				ELSE IF LEN(@FROM) = 4
				BEGIN
					DECLARE @Curr_Mo NVARCHAR(10);
					CREATE TABLE #Year_Month_APPs_Count (_Month INT, APPs_Count INT)
					SET @Counter = 1;
					WHILE @Counter < 13
					BEGIN
						SET @Curr_Mo = @FROM + '-' + FORMAT(@Counter, '00') + '-01';
						INSERT INTO #Year_Month_APPs_Count VALUES(@Counter, 
						(SELECT COUNT(*) FROM [Application] WHERE APP_HOS_ID = @HOS_ID AND 
						APP_DateTime BETWEEN @Curr_Mo + ' 00:00:00' 
						AND CAST(EOMONTH(@Curr_Mo) AS NVARCHAR(10)) + ' 23:59:59'))
						SET @Counter = @Counter + 1;
					END;
					SELECT * FROM #Year_Month_APPs_Count;
					DROP TABLE #Year_Month_APPs_Count;
				END;
				ELSE
				BEGIN
					RETURN;
				END;
			END;
			ELSE -- IS_OPEN IS NOT NULL
			BEGIN
				IF LEN(@FROM) = 10
				BEGIN
					DECLARE @Open_Current_Hour NVARCHAR(20) = @FROM + ' 00:00:00';
					CREATE TABLE #Open_Day_Hours_APPs_Count (_Hour INT, APPs_Count INT)
					DECLARE @Open_Counter INT = 0;
					WHILE @Open_Counter < 24
					BEGIN
						INSERT INTO #Open_Day_Hours_APPs_Count VALUES(@Open_Counter, 
						(SELECT COUNT(*) FROM [Application] WHERE APP_HOS_ID = @HOS_ID AND APP_IsOpen = @Is_Open AND
						APP_DateTime BETWEEN @Open_Current_Hour AND DATEADD(SECOND, -1, DATEADD(HOUR, 1, @Open_Current_Hour))));
						SET @Open_Current_Hour = DATEADD(HOUR, 1, @Open_Current_Hour);
						SET @Open_Counter = @Open_Counter + 1;
					END;
					SELECT * FROM #Open_Day_Hours_APPs_Count;
					DROP TABLE #Open_Day_Hours_APPs_Count;
				END;
				ELSE IF LEN(@FROM) = 7
				BEGIN
					DECLARE @Open_Start_Date DATE = CAST(@FROM + '-01' AS DATE);
					DECLARE @Open_Current_Month INT = MONTH(@Open_Start_Date), @Open_Current_Year INT = YEAR(@Open_Start_Date);
					IF UPPER(@Month_Result) = N'WEEKS'
					BEGIN
						CREATE TABLE #Open_Month_Weeks_APPs_Count (_Week INT, APPs_Count INT)
						SET @Open_Counter = 1;
						WHILE @Open_Counter < 5
						BEGIN
							IF @Open_Counter < 4
							BEGIN
								INSERT INTO #Open_Month_Weeks_APPs_Count VALUES(@Open_Counter, 
								(SELECT COUNT(*) FROM [Application] WHERE APP_HOS_ID = @HOS_ID AND APP_IsOpen = @Is_Open AND
								APP_DateTime BETWEEN CAST(@FROM + '-' + FORMAT((@Open_Counter * 7) - 6, '00') + ' 00:00:00' AS DATETIME) 
								AND CAST(@FROM + '-' + FORMAT(@Open_Counter * 7, '00') + ' 23:59:59' AS DATETIME)));
							END;
							ELSE
							BEGIN
								INSERT INTO #Open_Month_Weeks_APPs_Count VALUES(@Open_Counter, 
								(SELECT COUNT(*) FROM [Application] WHERE APP_HOS_ID = @HOS_ID AND APP_IsOpen = @Is_Open AND
								APP_DateTime BETWEEN CAST(@FROM + '-' + FORMAT((@Open_Counter * 7) - 6, '00') + ' 00:00:00' AS DATETIME) 
								AND CAST(EOMONTH(@From + '-01') AS NVARCHAR(10)) + ' 23:59:59'));
							END;
							SET @Open_Counter = @Open_Counter + 1;
						END;
						SELECT * FROM #Open_Month_Weeks_APPs_Count;
						DROP TABLE #Open_Month_Weeks_APPs_Count;
					END;
					ELSE IF UPPER(@Month_Result) = N'DAYS' OR @Month_Result IS NULL
					BEGIN
						CREATE TABLE #Open_Month_Days_APPs_Count (_Day INT, APPs_Count INT)
						SET @Open_Counter = 1;
						WHILE @Open_Counter <= DAY(EOMONTH(@FROM + '-01'))
						BEGIN
							INSERT INTO #Open_Month_Days_APPs_Count VALUES(@Open_Counter, 
							(SELECT COUNT(*) FROM [Application] WHERE APP_HOS_ID = @HOS_ID AND APP_IsOpen = @Is_Open AND
							APP_DateTime BETWEEN CAST(@FROM + '-' + FORMAT(@Open_Counter, '00') + ' 00:00:00' AS DATETIME) 
							AND CAST(@FROM + '-' + FORMAT(@Open_Counter, '00') + ' 23:59:59' AS DATETIME)));
							
							SET @Open_Counter = @Open_Counter + 1;
						END;
						SELECT * FROM #Open_Month_Days_APPs_Count;
						DROP TABLE #Open_Month_Days_APPs_Count;
					END;
				END;
				ELSE IF LEN(@FROM) = 4
				BEGIN
					DECLARE @Open_Curr_Mo NVARCHAR(10);
					CREATE TABLE #Open_Year_Month_APPs_Count (_Month INT, APPs_Count INT)
					SET @Open_Counter = 1;
					WHILE @Open_Counter < 13
					BEGIN
						SET @Open_Curr_Mo = @FROM + '-' + FORMAT(@Open_Counter, '00') + '-01';
						INSERT INTO #Open_Year_Month_APPs_Count VALUES(@Open_Counter, 
						(SELECT COUNT(*) FROM [Application] WHERE APP_HOS_ID = @HOS_ID AND APP_IsOpen = @Is_Open AND
						APP_DateTime BETWEEN @Open_Curr_Mo + ' 00:00:00' 
						AND CAST(EOMONTH(@Open_Curr_Mo) AS NVARCHAR(10)) + ' 23:59:59'))
						SET @Open_Counter = @Open_Counter + 1;
					END;
					SELECT * FROM #Open_Year_Month_APPs_Count;
					DROP TABLE #Open_Year_Month_APPs_Count;
				END;
				ELSE
				BEGIN
					RETURN;
				END;
			END;
		END;
		ELSE IF @FROM IS NOT NULL AND @To IS NOT NULL
		BEGIN
			DECLARE @ToCounter INT = 0, @Current_Day NVARCHAR(10), @Curr_Month NVARCHAR(10), @Curr_Year NVARCHAR(10);
			IF @Is_Open IS NULL
			BEGIN
				IF LEN(@FROM) = 10 AND LEN(@To) = 10
				BEGIN
					CREATE TABLE #Days_Table (_Day NVARCHAR(10), APPs_Count INT);

					SET @Current_Day = @FROM
					WHILE @ToCounter <= DATEDIFF(DAY, @FROM, @To)
					BEGIN
						INSERT INTO #Days_Table VALUES (@Current_Day, 
						(SELECT COUNT(*) FROM [Application] WHERE APP_HOS_ID = @HOS_ID AND APP_DateTime BETWEEN @Current_Day + ' 00:00:00' AND @Current_Day + ' 23:59:59'));
						SET @Current_Day = CAST((DATEADD(DAY, 1, @Current_Day)) AS DATE)
						SET @ToCounter = @ToCounter + 1;
					END;
					
					SELECT * FROM #Days_Table;
					DROP TABLE #Days_Table;
				END;
				ELSE IF LEN(@FROM) = 7 AND LEN(@To) = 7
				BEGIN
					CREATE TABLE #Month_Table (_Month NVARCHAR(7), APPs_Count INT);

					SET @Curr_Month = @FROM + '-01'
					WHILE @ToCounter <= DATEDIFF(MONTH, @FROM + '-01', @To + '-01')
					BEGIN
						INSERT INTO #Month_Table VALUES ((FORMAT(YEAR(@Curr_Month), '0000') + '-' + FORMAT(Month(@Curr_Month), '00')), 
						(SELECT COUNT(*) FROM [Application] WHERE APP_HOS_ID = @HOS_ID AND APP_DateTime BETWEEN @Curr_Month + ' 00:00:00' AND CAST(EOMONTH(@Curr_Month) AS NVARCHAR(10)) + ' 23:59:59'));
						SET @Curr_Month = CAST((DATEADD(MONTH, 1, @Curr_Month)) AS DATE)
						SET @ToCounter = @ToCounter + 1;
					END;
					
					SELECT * FROM #Month_Table;
					DROP TABLE #Month_Table;
				END;
				ELSE IF LEN(@FROM) = 4 AND LEN(@To) = 4
				BEGIN
					CREATE TABLE #Year_Table (_Year NVARCHAR(4), APPs_Count INT);

					SET @Curr_Year = @FROM + '-01-01'
					WHILE @ToCounter <= DATEDIFF(YEAR, @FROM + '-01-01', @To + '-01-01')
					BEGIN
						INSERT INTO #Year_Table VALUES (YEAR(@Curr_Year), 
						(SELECT COUNT(*) FROM [Application] WHERE APP_HOS_ID = @HOS_ID AND APP_DateTime BETWEEN @Curr_Year + ' 00:00:00' AND CAST(YEAR(@Curr_Year) AS NVARCHAR(4)) + '-12-31 23:59:59'));
						SET @Curr_Year = CAST((DATEADD(YEAR, 1, @Curr_Year)) AS DATE)
						SET @ToCounter = @ToCounter + 1;
					END;
					
					SELECT * FROM #Year_Table;
					DROP TABLE #Year_Table;
				END;
			END;
			ELSE -- IS_OPEN IS NOT NULL
			BEGIN
				IF LEN(@FROM) = 10 AND LEN(@To) = 10
				BEGIN
					CREATE TABLE #Open_Days_Table (_Day NVARCHAR(10), APPs_Count INT);

					SET @Current_Day = @FROM
					WHILE @ToCounter <= DATEDIFF(DAY, @FROM, @To)
					BEGIN
						INSERT INTO #Open_Days_Table VALUES (@Current_Day, 
						(SELECT COUNT(*) FROM [Application] WHERE APP_HOS_ID = @HOS_ID AND APP_IsOpen = @Is_Open AND APP_DateTime BETWEEN @Current_Day + ' 00:00:00' AND @Current_Day + ' 23:59:59'));
						SET @Current_Day = CAST((DATEADD(DAY, 1, @Current_Day)) AS DATE)
						SET @ToCounter = @ToCounter + 1;
					END;
					
					SELECT * FROM #Open_Days_Table;
					DROP TABLE #Open_Days_Table;
				END;
				ELSE IF LEN(@FROM) = 7 AND LEN(@To) = 7
				BEGIN
					CREATE TABLE #Open_Month_Table (_Month NVARCHAR(7), APPs_Count INT);

					SET @Curr_Month = @FROM + '-01'
					WHILE @ToCounter <= DATEDIFF(MONTH, @FROM + '-01', @To + '-01')
					BEGIN
						INSERT INTO #Open_Month_Table VALUES ((FORMAT(YEAR(@Curr_Month), '0000') + '-' + FORMAT(Month(@Curr_Month), '00')), 
						(SELECT COUNT(*) FROM [Application] WHERE APP_HOS_ID = @HOS_ID AND APP_IsOpen = @Is_Open AND APP_DateTime BETWEEN @Curr_Month + ' 00:00:00' AND CAST(EOMONTH(@Curr_Month) AS NVARCHAR(10)) + ' 23:59:59'));
						SET @Curr_Month = CAST((DATEADD(MONTH, 1, @Curr_Month)) AS DATE)
						SET @ToCounter = @ToCounter + 1;
					END;
					
					SELECT * FROM #Open_Month_Table;
					DROP TABLE #Open_Month_Table;
				END;
				ELSE IF LEN(@FROM) = 4 AND LEN(@To) = 4
				BEGIN
					CREATE TABLE #Open_Year_Table (_Year NVARCHAR(4), APPs_Count INT);

					SET @Curr_Year = @FROM + '-01-01'
					WHILE @ToCounter <= DATEDIFF(YEAR, @FROM + '-01-01', @To + '-01-01')
					BEGIN
						INSERT INTO #Open_Year_Table VALUES (YEAR(@Curr_Year), 
						(SELECT COUNT(*) FROM [Application] WHERE APP_HOS_ID = @HOS_ID AND APP_IsOpen = @Is_Open AND APP_DateTime BETWEEN @Curr_Year + ' 00:00:00' AND CAST(YEAR(@Curr_Year) AS NVARCHAR(4)) + '-12-31 23:59:59'));
						SET @Curr_Year = CAST((DATEADD(YEAR, 1, @Curr_Year)) AS DATE)
						SET @ToCounter = @ToCounter + 1;
					END;
					
					SELECT * FROM #Open_Year_Table;
					DROP TABLE #Open_Year_Table;
				END;
			END;
		END;
		ELSE
		BEGIN
			RETURN;
		END;
	END;	
END;


 










 


GO
/****** Object:  StoredProcedure [dbo].[Hos_Dep_Count]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Hos_Dep_Count]
	@HOS_ID INT = NULL
AS
BEGIN
	SET NOCOUNT ON;

	IF @HOS_ID IS NULL
	BEGIN
		SELECT COUNT(*) FROM Department;
	END;
	ELSE
	BEGIN
		SELECT COUNT(*) FROM Department WHERE DEP_HOS_ID = @HOS_ID
	END;
END;
GO
/****** Object:  StoredProcedure [dbo].[Hos_Deps_Age_Groups]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Hos_Deps_Age_Groups]
	@HOS_ID INT
AS
BEGIN
	CREATE TABLE #Hospital_Departments_Age_Groups (DEP_Name NVARCHAR(50), New_Born INT, Child INT, Adolescence INT, Adult INT, Old INT);
	DECLARE @DEP_ID INT;
	DECLARE Hos_Dep_Age_Gro CURSOR FOR SELECT DEP_ID FROM Department WHERE DEP_HOS_ID = @HOS_ID;

	OPEN Hos_Dep_Age_Gro

	FETCH NEXT FROM Hos_Dep_Age_Gro INTO @DEP_ID

	WHILE @@FETCH_STATUS = 0
	BEGIN
		  INSERT INTO #Hospital_Departments_Age_Groups VALUES(
				(SELECT DEP_Name FROM Department WHERE  DEP_ID = @DEP_ID),

				(SELECT COUNT(DISTINCT(APP_PAT_ID)) FROM [Application]
				INNER JOIN Patient ON [Application].APP_PAT_ID = Patient.PAT_ID
				WHERE APP_ID IN
				(SELECT DISTINCT(REQB_APP_ID) FROM RequstBlock WHERE REQB_DEP_ID = @DEP_ID) AND APP_IsOpen = 1 AND
				CAST(DATEDIFF(YEAR, PAT_BirthDate, GETDATE()) AS INT) BETWEEN 1 AND 3),

				(SELECT COUNT(DISTINCT(APP_PAT_ID)) FROM [Application]
				INNER JOIN Patient ON [Application].APP_PAT_ID = Patient.PAT_ID
				WHERE APP_ID IN
				(SELECT DISTINCT(REQB_APP_ID) FROM RequstBlock WHERE REQB_DEP_ID = @DEP_ID) AND APP_IsOpen = 1 AND
				CAST(DATEDIFF(YEAR, PAT_BirthDate, GETDATE()) AS INT) BETWEEN 4 AND 12),

				(SELECT COUNT(DISTINCT(APP_PAT_ID)) FROM [Application]
				INNER JOIN Patient ON [Application].APP_PAT_ID = Patient.PAT_ID
				WHERE APP_ID IN
				(SELECT DISTINCT(REQB_APP_ID) FROM RequstBlock WHERE REQB_DEP_ID = @DEP_ID) AND APP_IsOpen = 1 AND
				CAST(DATEDIFF(YEAR, PAT_BirthDate, GETDATE()) AS INT) BETWEEN 13 AND 21),

				(SELECT COUNT(DISTINCT(APP_PAT_ID)) FROM [Application]
				INNER JOIN Patient ON [Application].APP_PAT_ID = Patient.PAT_ID
				WHERE APP_ID IN
				(SELECT DISTINCT(REQB_APP_ID) FROM RequstBlock WHERE REQB_DEP_ID = @DEP_ID) AND APP_IsOpen = 1 AND
				CAST(DATEDIFF(YEAR, PAT_BirthDate, GETDATE()) AS INT) BETWEEN 22 AND 40),

				(SELECT COUNT(DISTINCT(APP_PAT_ID)) FROM [Application]
				INNER JOIN Patient ON [Application].APP_PAT_ID = Patient.PAT_ID
				WHERE APP_ID IN
				(SELECT DISTINCT(REQB_APP_ID) FROM RequstBlock WHERE REQB_DEP_ID = @DEP_ID) AND APP_IsOpen = 1 AND
				CAST(DATEDIFF(YEAR, PAT_BirthDate, GETDATE()) AS INT) > 40)
			)
  
	  FETCH NEXT FROM Hos_Dep_Age_Gro INTO @DEP_ID
	END

	CLOSE Hos_Dep_Age_Gro
	DEALLOCATE Hos_Dep_Age_Gro

	SELECT * FROM #Hospital_Departments_Age_Groups;
	DROP TABLE #Hospital_Departments_Age_Groups;
END;
GO
/****** Object:  StoredProcedure [dbo].[Hos_Deps_Stf_Types_Count]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Hos_Deps_Stf_Types_Count]
	@HOS_ID INT
AS
BEGIN
	SET NOCOUNT ON; 
	 
	DECLARE @DepartmentNames TABLE (
		Department_Name NVARCHAR(50)
	);
	 
	INSERT INTO @DepartmentNames (Department_Name)
	SELECT DEP_Name FROM Department WHERE DEP_HOS_ID = @HOS_ID;
	 
	DECLARE @StaffTypeCounts TABLE (
		Staff_Type NVARCHAR(50),
		Count INT
	);

	 
	DECLARE @STT_ID INT;
	DECLARE @STT_Type NVARCHAR(50);
	DECLARE @Count INT;

	DECLARE StaffType_Cursor CURSOR FOR SELECT STT_ID, STT_Type FROM Staff_Type WHERE STT_HOS_ID = @HOS_ID;
	OPEN StaffType_Cursor;
	FETCH NEXT FROM StaffType_Cursor INTO @STT_ID, @STT_Type;

	WHILE @@FETCH_STATUS = 0
	BEGIN
		DECLARE Dep_Cursor CURSOR FOR SELECT DEP_ID FROM Department WHERE DEP_HOS_ID = @HOS_ID;
		DECLARE @DEP_ID INT;

		OPEN Dep_Cursor;
		FETCH NEXT FROM Dep_Cursor INTO @DEP_ID;

		WHILE @@FETCH_STATUS = 0
		BEGIN
			SELECT @Count = COUNT(*) FROM Staff
			INNER JOIN Staff_Department ON Staff.STF_ID = Staff_Department.STF_ID
			WHERE DEP_ID = @DEP_ID AND STF_STT_ID = @STT_ID;

			INSERT INTO @StaffTypeCounts (Staff_Type, Count)
			VALUES (@STT_Type, @Count);

			FETCH NEXT FROM Dep_Cursor INTO @DEP_ID;
		END;

		CLOSE Dep_Cursor;
		DEALLOCATE Dep_Cursor;

		FETCH NEXT FROM StaffType_Cursor INTO @STT_ID, @STT_Type;
	END;

	CLOSE StaffType_Cursor;
	DEALLOCATE StaffType_Cursor; 
 
	SELECT Department_Name AS Department_Name
	FROM @DepartmentNames;

	SELECT Staff_Type, Count
	FROM @StaffTypeCounts;
END;
GO
/****** Object:  StoredProcedure [dbo].[Hos_Deps_Stfs_Count]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Hos_Deps_Stfs_Count]
	@HOS_ID INT
AS
BEGIN
	SET NOCOUNT ON;

	CREATE TABLE #Hospital_Deperatments_StaffType_Count (DEP_Name NVARCHAR(50), Staff_Count INT);
	DECLARE @DEP_ID INT;

	DECLARE Hos_Deps_Stts_Cursor CURSOR FOR SELECT DEP_ID FROM Department WHERE DEP_HOS_ID = @HOS_ID;
	OPEN Hos_Deps_Stts_Cursor
		FETCH NEXT FROM Hos_Deps_Stts_Cursor INTO @DEP_ID;

		WHILE @@FETCH_STATUS = 0
		BEGIN
			INSERT INTO #Hospital_Deperatments_StaffType_Count VALUES ((SELECT DEP_Name FROM Department WHERE DEP_ID = @DEP_ID),
			(SELECT COUNT(DISTINCT(STF_ID)) FROM Staff_Department WHERE DEP_ID = @DEP_ID));
			FETCH NEXT FROM Hos_Deps_Stts_Cursor INTO @DEP_ID;
		END;
	CLOSE Hos_Deps_Stts_Cursor
	DEALLOCATE Hos_Deps_Stts_Cursor;

	SELECT * FROM #Hospital_Deperatments_StaffType_Count;
	DROP TABLE #Hospital_Deperatments_StaffType_Count;
END;
GO
/****** Object:  StoredProcedure [dbo].[Hos_Deps_Stts]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Hos_Deps_Stts]
	@HOS_ID INT
AS
BEGIN
	SET NOCOUNT ON;

	-- CREATE TABEL FOR Hospital THAT CONTAIN Department Name AND StaffTypes AS A COLUMNS.
	DECLARE Hospital_StaffTypes CURSOR FOR SELECT STT_Type FROM Staff_Type WHERE STT_HOS_ID = @HOS_ID;
	DECLARE @STT_Type NVARCHAR(50);

	DECLARE @Creare_Tabel NVARCHAR(MAX) = N'CREATE TABLE Hospital_Departments_StaffTypes (DEP_Name NVARCHAR(50), ';

	OPEN Hospital_StaffTypes;

		FETCH NEXT FROM Hospital_StaffTypes INTO @STT_Type;

		WHILE @@FETCH_STATUS = 0
		BEGIN
			SET @Creare_Tabel = @Creare_Tabel + N'[' + @STT_Type + '] NVARCHAR(20), ';
			FETCH NEXT FROM Hospital_StaffTypes INTO @STT_Type;
		END;
		SET @Creare_Tabel = @Creare_Tabel + N')'
	CLOSE Hospital_StaffTypes;
	DEALLOCATE Hospital_StaffTypes;

	EXEC sp_executesql @Creare_Tabel;

	-- INSERT VALUES INTO THE TABLE.
	DECLARE @Insert_Record NVARCHAR(MAX) = N'';

	DECLARE Dep_Cursor CURSOR FOR 
		SELECT DEP_ID FROM Department WHERE DEP_HOS_ID = @HOS_ID ;
	DECLARE @DEP_ID INT;

	OPEN Dep_Cursor;

		FETCH NEXT FROM Dep_Cursor INTO @DEP_ID;

		WHILE @@FETCH_STATUS = 0
		BEGIN
			SET @Insert_Record = N'';

			SET @Insert_Record = @Insert_Record + N'INSERT INTO Hospital_Departments_StaffTypes VALUES(
			(SELECT DEP_Name FROM Department WHERE DEP_ID = ' + CAST(@DEP_ID AS NVARCHAR(6)) + '), ';

			DECLARE StaffType_Cursor CURSOR FOR SELECT STT_ID FROM Staff_Type WHERE STT_HOS_ID = @HOS_ID;
			DECLARE @STT_ID INT;

			OPEN StaffType_Cursor;
				FETCH NEXT FROM StaffType_Cursor INTO @STT_ID;

				WHILE @@FETCH_STATUS = 0
				BEGIN
					SET @Insert_Record = @Insert_Record + N'(SELECT COUNT(*) FROM Staff 
					INNER JOIN Staff_Department ON Staff.STF_ID = Staff_Department.STF_ID
					WHERE DEP_ID = ' + CAST(@DEP_ID AS NVARCHAR(6)) + ' AND STF_STT_ID = ' + CAST(@STT_ID AS NVARCHAR(6)) + '), '
					FETCH NEXT FROM StaffType_Cursor INTO @STT_ID;
				END;
			CLOSE StaffType_Cursor;
			DEALLOCATE StaffType_Cursor;

			SET @Insert_Record = SUBSTRING(@Insert_Record, 1, LEN(@Insert_Record) - 1) + N');';
			
			EXEC sp_executesql @Insert_Record;

			FETCH NEXT FROM Dep_Cursor INTO @DEP_ID;
		END;
	CLOSE Dep_Cursor;
	DEALLOCATE Dep_Cursor;

	SELECT * FROM Hospital_Departments_StaffTypes;
	DROP TABLE Hospital_Departments_StaffTypes;
END;
GO
/****** Object:  StoredProcedure [dbo].[Hos_Pat_Ages]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Hos_Pat_Ages]
	@HOS_ID INT = NULL
AS
BEGIN
	SET NOCOUNT ON;

	IF @HOS_ID IS NULL
	BEGIN
		RETURN;
	END;

	SELECT COUNT(DISTINCT PAT_ID) AS New_Born FROM Patient INNER JOIN [Application] 
	ON [Application].APP_PAT_ID = Patient.PAT_ID
	WHERE APP_HOS_ID = @HOS_ID AND
	CAST(DATEDIFF(YEAR, PAT_BirthDate, GETDATE()) AS INT) BETWEEN 1 AND 3;

	SELECT COUNT(DISTINCT PAT_ID) AS Child FROM Patient INNER JOIN [Application] 
	ON [Application].APP_PAT_ID = Patient.PAT_ID
	WHERE APP_HOS_ID = @HOS_ID AND
	CAST(DATEDIFF(YEAR, PAT_BirthDate, GETDATE()) AS INT) BETWEEN 4 AND 12;

	SELECT COUNT(DISTINCT PAT_ID) AS Adolescence FROM Patient INNER JOIN [Application] 
	ON [Application].APP_PAT_ID = Patient.PAT_ID
	WHERE APP_HOS_ID = @HOS_ID AND
	CAST(DATEDIFF(YEAR, PAT_BirthDate, GETDATE()) AS INT) BETWEEN 13 AND 21;

	SELECT COUNT(DISTINCT PAT_ID) AS Adult FROM Patient INNER JOIN [Application] 
	ON [Application].APP_PAT_ID = Patient.PAT_ID
	WHERE APP_HOS_ID = @HOS_ID AND
	CAST(DATEDIFF(YEAR, PAT_BirthDate, GETDATE()) AS INT) BETWEEN 22 AND 40;

	SELECT COUNT(DISTINCT PAT_ID) AS Old FROM Patient INNER JOIN [Application] 
	ON [Application].APP_PAT_ID = Patient.PAT_ID
	WHERE APP_HOS_ID = @HOS_ID AND
	CAST(DATEDIFF(YEAR, PAT_BirthDate, GETDATE()) AS INT) > 40;
END;
GO
/****** Object:  StoredProcedure [dbo].[Hos_Stf_Count]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Hos_Stf_Count]
	@HOS_ID INT
AS
BEGIN
	SET NOCOUNT ON;

	SELECT COUNT(DISTINCT(STF_ID)) FROM Staff 
	INNER JOIN Staff_Type ON Staff.STF_STT_ID = Staff_Type.STT_ID
	WHERE STT_HOS_ID = @HOS_ID;
END;
GO
/****** Object:  StoredProcedure [dbo].[Hos_Stts_Count]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Hos_Stts_Count]	
	@HOS_ID INT
AS
BEGIN
	SET NOCOUNT ON;

	CREATE TABLE #Hospital_StaffTypes_Count (STT_Type NVARCHAR(50), _Count INT);
	DECLARE @STT_ID INT;

	DECLARE STT_Cursor CURSOR FOR SELECT STT_ID FROM Staff_Type WHERE STT_HOS_ID = @HOS_ID;
	OPEN STT_Cursor;

		FETCH NEXT FROM STT_Cursor INTO @STT_ID;
		WHILE @@FETCH_STATUS = 0
		BEGIN
			INSERT INTO #Hospital_StaffTypes_Count VALUES 
			((SELECT STT_Type FROM Staff_Type WHERE STT_ID = @STT_ID), (SELECT COUNT(*) FROM Staff WHERE STF_STT_ID = @STT_ID));
			FETCH NEXT FROM STT_Cursor INTO @STT_ID;
		END;

	CLOSE STT_Cursor;
	DEALLOCATE STT_Cursor;

	SELECT * FROM #Hospital_StaffTypes_Count;
	DROP TABLE #Hospital_StaffTypes_Count;
END;
GO
/****** Object:  StoredProcedure [dbo].[Hoss_Deps_Count]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Hoss_Deps_Count]
AS
BEGIN
	SET NOCOUNT ON;

	CREATE TABLE #Hospitals_Departments_Count (HOS_Name NVARCHAR(50), DEPs_Count INT);
	DECLARE @HOS_ID INT;
	DECLARE HOSS_DEPS_COUNT CURSOR FOR SELECT HOS_ID FROM Hospital;

	OPEN HOSS_DEPS_COUNT;

		FETCH NEXT FROM HOSS_DEPS_COUNT INTO @HOS_ID;

		WHILE @@FETCH_STATUS = 0
		BEGIN
			INSERT INTO #Hospitals_Departments_Count VALUES (
				(SELECT HOS_Name FROM Hospital WHERE HOS_ID = @HOS_ID),
				(SELECT COUNT(*) FROM Department WHERE DEP_HOS_ID = @HOS_ID)
			);
			FETCH NEXT FROM HOSS_DEPS_COUNT INTO @HOS_ID
		END;

	CLOSE HOSS_DEPS_COUNT;
	DEALLOCATE HOSS_DEPS_COUNT;

	SELECT * FROM #Hospitals_Departments_Count;
	DROP TABLE #Hospitals_Departments_Count;
END;
GO
/****** Object:  StoredProcedure [dbo].[Hoss_Stfs_Count]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Hoss_Stfs_Count]
AS
BEGIN
	SET NOCOUNT ON;

	CREATE TABLE #Hospitals_Staffs_Count (HOS_Name NVARCHAR(50), Staff_Count INT);
	DECLARE @HOS_ID INT;

	DECLARE HOS_Cursor CURSOR FOR SELECT HOS_ID FROM Hospital;
	OPEN HOS_Cursor;

		FETCH NEXT FROM HOS_Cursor INTO @HOS_ID;
		WHILE @@FETCH_STATUS = 0
		BEGIN
			INSERT INTO #Hospitals_Staffs_Count VALUES 
			((SELECT HOS_Name FROM Hospital WHERE HOS_ID = @HOS_ID),
			(SELECT COUNT(DISTINCT(STF_ID)) FROM Staff 
			INNER JOIN Staff_Type ON Staff.STF_STT_ID = Staff_Type.STT_ID
			WHERE STT_HOS_ID = @HOS_ID));

		FETCH NEXT FROM HOS_Cursor INTO @HOS_ID;
		END;

	CLOSE HOS_Cursor;
	DEALLOCATE HOS_Cursor;

	SELECT * FROM #Hospitals_Staffs_Count;
	DROP TABLE #Hospitals_Staffs_Count;
END;
GO
/****** Object:  StoredProcedure [dbo].[Insert_Address_Info]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Insert_Address_Info]
	@ADI_Country NVARCHAR(20) = NULL,
	@ADI_City NVARCHAR(20) = NULL,
	@ADI_Region NVARCHAR(20) = NULL,
	@ADI_PAT_ID BIGINT
AS
BEGIN
	SET NOCOUNT ON;
	INSERT INTO Address_Info (ADI_Country, ADI_City, ADI_Region, ADI_PAT_ID)
	VALUES (@ADI_Country, @ADI_City, @ADI_Region, @ADI_PAT_ID);
END;
GO
/****** Object:  StoredProcedure [dbo].[Insert_Application]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Insert_Application]
	@APP_PAT_ID BIGINT = NULL,
	@APP_ComName NVARCHAR(50) = NULL,
	@APP_ComNatID CHAR(14) = NULL,
	@APP_ComPhone CHAR(11) = NULL,
	@APP_COT_ID TINYINT = NULL,
	@APP_HOS_ID INT = NULL
AS
BEGIN
	SET NOCOUNT ON;
	INSERT INTO [Application]
    (APP_PAT_ID, APP_ComName, APP_ComNatID, APP_ComPhone, APP_COT_ID, APP_HOS_ID)
	VALUES (@APP_PAT_ID, @APP_ComName, @APP_ComNatID, @APP_ComPhone, @APP_COT_ID, @APP_HOS_ID);
END;
GO
/****** Object:  StoredProcedure [dbo].[Insert_Department]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Insert_Department]
	@DEP_Name NVARCHAR(25) = NULL,
	@DEP_HOS_ID INT = NULL
AS
BEGIN
	SET NOCOUNT ON;
	INSERT INTO Department (DEP_Name, DEP_HOS_ID)
	VALUES (@DEP_Name, @DEP_HOS_ID);
END;
GO
/****** Object:  StoredProcedure [dbo].[Insert_Hospital]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Insert_Hospital]
	@HOS_Name NVARCHAR(50) = NULL,
	@HOS_Address NVARCHAR(50) = NULL,
	@HOS_Email NVARCHAR(50) = NULL
AS
BEGIN
	SET NOCOUNT ON;

	INSERT INTO Hospital(HOS_Name, HOS_Address, HOS_Email)
	VALUES (@HOS_Name, @HOS_Address, @HOS_Email);

	DECLARE @inserted_id INT;
	SET @inserted_id = SCOPE_IDENTITY();

	SELECT @inserted_id AS HOS_ID;
END;
GO
/****** Object:  StoredProcedure [dbo].[Insert_Hospital_Phone]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Insert_Hospital_Phone]
	@PHO_Number CHAR(14) = NULL, 
	@PHO_HOS_ID INT = NULL
AS
BEGIN
	SET NOCOUNT ON;
	INSERT INTO Hospital_Phone(PHO_Number, PHO_HOS_ID)
	VALUES (@PHO_Number, @PHO_HOS_ID);
END;
GO
/****** Object:  StoredProcedure [dbo].[Insert_Note]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Insert_Note]
	@NOT_Message NVARCHAR(MAX),
	@NOT_MSG_ID TINYINT,
	@NOT_NOTB_ID BIGINT
	
AS
BEGIN
	SET NOCOUNT ON;
	INSERT INTO Notes(NOT_Message, NOT_MSG_ID,NOT_NOTB_ID)
	VALUES (@NOT_Message, @NOT_MSG_ID,@NOT_NOTB_ID);
END;
GO
/****** Object:  StoredProcedure [dbo].[Insert_NoteBlock]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Insert_NoteBlock]
	@NOTB_APP_ID BIGINT,
	@NOTB_STF_ID INT
AS 
BEGIN
	SET NOCOUNT ON;

	INSERT INTO NoteBlock (NOTB_APP_ID , NOTB_STF_ID) VALUES(@NOTB_APP_ID , @NOTB_STF_ID);
END;
GO
/****** Object:  StoredProcedure [dbo].[Insert_Patient]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Insert_Patient]
	@PAT_Name NVARCHAR(50) = NULL,
	@PAT_NatID CHAR(14) = NULL,
	@PAT_BirthDate Date = NULL,
	@PAT_Gender BIT = 1,
	@PAT_IsMarrid BIT = 0,
	@PAT_PNT_ID tinyint = 1,
	@ADI_Country NVARCHAR(20) = NULL,
	@ADI_City NVARCHAR(20) = NULL,
	@ADI_Region NVARCHAR(20) = NULL
AS
BEGIN
	SET NOCOUNT ON;
	INSERT INTO Patient(PAT_Name, PAT_NatID, PAT_BirthDate, PAT_Gender, PAT_IsMarrid, PAT_PNT_ID)
	VALUES (@PAT_Name, @PAT_NatID, @PAT_BirthDate, @PAT_Gender, @PAT_IsMarrid, @PAT_PNT_ID);

	DECLARE @inserted_id int; 
	set @inserted_id = SCOPE_IDENTITY();

	INSERT INTO Address_Info (ADI_Country, ADI_City, ADI_Region, ADI_PAT_ID)
	VALUES (@ADI_Country, @ADI_City, @ADI_Region, @inserted_id);


	SELECT @inserted_id AS RESULT;
END;
GO
/****** Object:  StoredProcedure [dbo].[Insert_Requst]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Insert_Requst]
	@REQ_Message NVARCHAR(MAX) = NULL,
	@REQ_MSG_ID TINYINT = NULL,
	@REQ_REQB_ID BIGINT = NULL
AS
BEGIN
	SET NOCOUNT ON;
	INSERT INTO Requst(REQ_Message, REQ_MSG_ID, REQ_REQB_ID)
	VALUES (@REQ_Message, @REQ_MSG_ID, @REQ_REQB_ID);
END;
GO
/****** Object:  StoredProcedure [dbo].[Insert_RequstBlock]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Insert_RequstBlock]
	@REQB_STF_ID INT = NULL,
	@REQB_DEP_ID INT = NULL,
	@REQB_APP_ID BIGINT = NULL,
	@REQB_STAT_ID TINYINT = NULL
AS
BEGIN
	SET NOCOUNT ON;
	INSERT INTO RequstBlock(REQB_STF_ID, REQB_DEP_ID, REQB_APP_ID, REQB_STAT_ID)
	VALUES (@REQB_STF_ID, @REQB_DEP_ID, @REQB_APP_ID, @REQB_STAT_ID);
END;
GO
/****** Object:  StoredProcedure [dbo].[Insert_Response]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Insert_Response]
	@RSP_Message NVARCHAR(MAX) = NULL,
	@RSP_MSG_ID  TINYINT = NULL,
	@RSP_RSPB_ID BIGINT = NULL
AS
BEGIN
	SET NOCOUNT ON;
	INSERT INTO Response(RSP_Message, RSP_MSG_ID, RSP_RSPB_ID)
	VALUES (@RSP_Message, @RSP_MSG_ID, @RSP_RSPB_ID);
END;
GO
/****** Object:  StoredProcedure [dbo].[Insert_ResponseBlock]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Insert_ResponseBlock]
	@RSPB_STF_ID INT = NULL,
	@RSPB_REQB_ID  BIGINT = NULL,
	@RSPB_Result BIT = 0
AS
BEGIN
	SET NOCOUNT ON;
	INSERT INTO ResponseBlock(RSPB_STF_ID, RSPB_REQB_ID, RSPB_Result)
	VALUES (@RSPB_STF_ID, @RSPB_REQB_ID, @RSPB_Result);
END;
GO
/****** Object:  StoredProcedure [dbo].[Insert_Staff]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Insert_Staff]
	@STF_Name NVARCHAR(50) = NULL, 
	@STF_Address NVARCHAR(50) = NULL,
	@STF_NatID CHAR(14) = NULL,
	@STF_BirthDate DATETIME = NULL, 
	@STF_Gender BIT = 1,
	@STF_IsMarrid  BIT = 0,
	@STF_STT_ID INT = NULL
AS
BEGIN
	SET NOCOUNT ON;

	BEGIN TRY
		BEGIN TRANSACTION;

			INSERT INTO Staff(STF_Name, STF_Address, STF_NatID, STF_BirthDate, STF_Gender, STF_IsMarrid, STF_STT_ID)
			VALUES (@STF_Name, @STF_Address, @STF_NatID, @STF_BirthDate, @STF_Gender, @STF_IsMarrid, @STF_STT_ID);

			DECLARE @inserted_id INT;
			SET @inserted_id = SCOPE_IDENTITY();

			INSERT INTO Staff_Login(SLOG_Username, SLOG_Password, SLOG_STF_ID)
			VALUES (@STF_Name, @STF_NatID, @inserted_id);

		COMMIT TRANSACTION;

		SELECT @inserted_id AS STF_ID;

	END TRY
	BEGIN CATCH
		IF @@TRANCOUNT > 0
		BEGIN
			ROLLBACK TRANSACTION;
		END;

		THROW;
	END CATCH;
END;
GO
/****** Object:  StoredProcedure [dbo].[Insert_Staff_Department]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Insert_Staff_Department]
	@STF_ID INT = NULL,
	@DEP_ID INT = NULL
AS
BEGIN
	SET NOCOUNT ON;
	INSERT INTO Staff_Department(STF_ID, DEP_ID)
	VALUES (@STF_ID, @DEP_ID)
END;
GO
/****** Object:  StoredProcedure [dbo].[Insert_Staff_Type]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Insert_Staff_Type]
	@STT_Type NVARCHAR(20) = NULL,
	@STT_HOS_ID INT = NULL
AS
BEGIN
	SET NOCOUNT ON;
	INSERT INTO Staff_Type(STT_Type, STT_HOS_ID)
	VALUES (@STT_Type, @STT_HOS_ID)
END;
GO
/****** Object:  StoredProcedure [dbo].[Insert_Token]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Insert_Token]
	@TKN_Token NVARCHAR(MAX),
	@TKN_SLOG_ID INT
AS
BEGIN
	SET NOCOUNT ON;

	INSERT INTO Tokens (TKN_Token, TKN_SLOG_ID) VALUES (@TKN_Token, @TKN_SLOG_ID);
END;
GO
/****** Object:  StoredProcedure [dbo].[Login]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Login]
	@SLOG_Username NVARCHAR(50),
	@SLOG_Password NVARCHAR(20)
AS
BEGIN
	SET NOCOUNT ON;
	SELECT Staff_Login.*, TKN_Token FROM Staff_Login LEFT JOIN Tokens 
	ON Staff_Login.SLOG_ID = Tokens.TKN_SLOG_ID
	WHERE
	(SLOG_Username = @SLOG_Username AND SLOG_Password = @SLOG_Password);
END;
GO
/****** Object:  StoredProcedure [dbo].[Logout]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Logout]
	@TKN_Token NVARCHAR(MAX) = NULL
AS
BEGIN
	SET NOCOUNT ON;

	
	BEGIN TRY

		BEGIN TRANSACTION;

			INSERT INTO Deleted_Tokens(DTKN_Token) VALUES(@TKN_Token);
			DELETE FROM Tokens WHERE TKN_Token = @TKN_Token;

		COMMIT TRANSACTION;

	END TRY
	BEGIN CATCH
		IF @@TRANCOUNT > 0
		BEGIN
			ROLLBACK TRANSACTION;
		END;

		THROW;
	END CATCH;
	
END;
GO
/****** Object:  StoredProcedure [dbo].[Patients_Count]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Patients_Count]
	@HOS_ID INT,
	@Is_Open BIT = NULL
AS
BEGIN
	SET NOCOUNT ON;

	IF @Is_Open IS NULL
	BEGIN
		SELECT COUNT(DISTINCT(APP_PAT_ID)) FROM [Application] WHERE APP_HOS_ID = @HOS_ID;
	END;
	ELSE
	BEGIN
		SELECT COUNT(DISTINCT(APP_PAT_ID)) FROM [Application] WHERE APP_HOS_ID = @HOS_ID AND APP_IsOpen = @Is_Open;
	END;
END;
GO
/****** Object:  StoredProcedure [dbo].[Req_Res_Count]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[Req_Res_Count]
	@HOS_ID INT = NULL,
	@Have_Res BIT = NULL
AS
BEGIN
	SET NOCOUNT ON;

	IF @HOS_ID IS NULL AND @Have_Res IS NULL
	BEGIN
		SELECT COUNT(*) FROM RequstBlock;
	END;
	ELSE IF @HOS_ID IS NOT NULL AND @Have_Res IS NULL
	BEGIN
		SELECT COUNT(*) FROM RequstBlock WHERE REQB_APP_ID IN
		(SELECT APP_ID FROM [Application] WHERE APP_HOS_ID = @HOS_ID)
	END;
	ELSE IF @HOS_ID IS NULL AND @Have_Res IS NOT NULL
	BEGIN
		IF @Have_Res = 1
		BEGIN
			SELECT COUNT(*) FROM RequstBlock
			INNER JOIN ResponseBlock ON ResponseBlock.RSPB_REQB_ID = RequstBlock.REQB_ID
		END;
		ELSE
		BEGIN
			SELECT (SELECT COUNT(*) FROM RequstBlock) - 
			(SELECT COUNT(*) FROM RequstBlock
			INNER JOIN ResponseBlock ON ResponseBlock.RSPB_REQB_ID = RequstBlock.REQB_ID)
		END;
	END;
	ELSE
	BEGIN
		IF @Have_Res = 1
		BEGIN
			SELECT COUNT(*) FROM RequstBlock
			INNER JOIN ResponseBlock ON ResponseBlock.RSPB_REQB_ID = RequstBlock.REQB_ID
			 WHERE REQB_APP_ID IN (SELECT APP_ID FROM [Application] WHERE APP_HOS_ID = @HOS_ID)
		END;
		ELSE
		BEGIN
			SELECT (SELECT COUNT(*) FROM RequstBlock WHERE REQB_APP_ID IN
			(SELECT APP_ID FROM [Application] WHERE APP_HOS_ID = @HOS_ID)) - 
			(SELECT COUNT(*) FROM RequstBlock
			INNER JOIN ResponseBlock ON ResponseBlock.RSPB_REQB_ID = RequstBlock.REQB_ID
			WHERE REQB_APP_ID IN (SELECT APP_ID FROM [Application] WHERE APP_HOS_ID = @HOS_ID))
		END;
	END;
END;
GO
/****** Object:  StoredProcedure [dbo].[Search_Application]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Search_Application]
	@APP_DateTime DATETIME = NULL,
	@APP_ComName NVARCHAR(50) = NULL,
	@APP_ComNatID CHAR(14) = NULL,
	@APP_ComPhone NVARCHAR(11) = NULL,
	@APP_HOS_ID INT = NULL,
	@APP_Code CHAR(12) = NULL,
	@APP_IsOpen BIT = NULL,
	@Page_Number INT,
	@Limit INT
AS
BEGIN
	SET NOCOUNT ON;

	IF @APP_DateTime IS NULL AND @APP_ComName IS NULL AND @APP_ComNatID IS NULL AND
	@APP_ComPhone IS NULL AND @APP_HOS_ID = 0 AND @APP_Code IS NULL AND
	@APP_IsOpen IS NULL
	BEGIN
		SELECT * FROM [Application] ORDER BY APP_ID 
		OFFSET ((@Page_Number - 1) * @Limit) ROWS FETCH NEXT @Limit ROWS ONLY;

		SELECT COUNT(*) FROM [Application];
	END;
	ELSE
	BEGIN
		DECLARE @Query NVARCHAR(MAX), @Total NVARCHAR(MAX);

		SET @Query = N'SELECT * FROM [Application] WHERE ';
		SET @Total = N'SELECT COUNT(*) FROM [Application] WHERE ';

		IF @APP_DateTime IS NOT NULL
		BEGIN
			SET @Query = @Query + N'(DAY(APP_DateTime) = ' + CAST(DAY(@APP_DateTime) AS NVARCHAR(2)) +
			N' AND MONTH(APP_DateTime) = ' + CAST(MONTH(@APP_DateTime) AS NVARCHAR(2)) + 
			N' AND YEAR(APP_DateTime) = ' + CAST(YEAR(@APP_DateTime) AS NVARCHAR(4)) + N') AND ';

			SET @Total = @Total + N'(DAY(APP_DateTime) = ' + CAST(DAY(@APP_DateTime) AS NVARCHAR(2)) +
			N' AND MONTH(APP_DateTime) = ' + CAST(MONTH(@APP_DateTime) AS NVARCHAR(2)) + 
			N' AND YEAR(APP_DateTime) = ' + CAST(YEAR(@APP_DateTime) AS NVARCHAR(4)) + N') AND ';
		END;
		IF @APP_ComName IS NOT NULL
		BEGIN
			SET @Query = @Query + N'APP_ComName LIKE N''%' + @APP_ComName + '%'' AND ';
			SET @Total = @Total + N'APP_ComName LIKE N''%' + @APP_ComName + '%'' AND ';
		END;
		IF @APP_ComNatID IS NOT NULL
		BEGIN
			SET @Query = @Query + N'APP_ComNatID = ' + @APP_ComNatID + ' AND ';
			SET @Total = @Total + N'APP_ComNatID = ' + @APP_ComNatID + ' AND ';
		END;
		IF @APP_ComPhone IS NOT NULL
		BEGIN
			SET @Query = @Query + N'APP_ComPhone = ' + @APP_ComPhone + ' AND ';
			SET @Total = @Total + N'APP_ComPhone = ' + @APP_ComPhone + ' AND ';
		END;
		IF @APP_HOS_ID <> 0
		BEGIN
			SET @Query = @Query + N'APP_HOS_ID = ' + CAST(@APP_HOS_ID AS NVARCHAR(4)) + ' AND ';
			SET @Total = @Total + N'APP_HOS_ID = ' + CAST(@APP_HOS_ID AS NVARCHAR(4)) + ' AND ';
		END;
		IF @APP_Code IS NOT NULL
		BEGIN
			SET @Query = @Query + N'APP_Code = ' + @APP_Code + ' AND ';
			SET @Total = @Total + N'APP_Code = ' + @APP_Code + ' AND ';
		END;
		IF @APP_IsOpen IS NOT NULL
		BEGIN
			SET @Query = @Query + N'APP_IsOpen = ' + CAST(@APP_IsOpen AS CHAR(5)) + ' AND ';
			SET @Total = @Total + N'APP_IsOpen = ' + CAST(@APP_IsOpen AS CHAR(5)) + ' AND ';
		END;

		SET @Query = @Query + N'APP_ID IS NOT NULL 
		ORDER BY APP_ID 
		OFFSET ((' + CAST(@Page_Number - 1 AS NVARCHAR(6)) + ') * ' 
		+ CAST(@Limit AS NVARCHAR(3)) + ') ROWS FETCH NEXT ' +
		CAST(@Limit AS NVARCHAR(3)) + ' ROWS ONLY';

		SET @Total = @Total + N'APP_ID IS NOT NULL';
		
		EXEC sp_executesql @Query;
		EXEC sp_executesql @Total;
	END;

END;
GO
/****** Object:  StoredProcedure [dbo].[Search_DToken]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Search_DToken]
	@TKN_Token NVARCHAR(MAX)
AS
BEGIN
	SET NOCOUNT ON;

	SELECT COUNT(*) FROM Deleted_Tokens WHERE DTKN_Token = @TKN_Token;
END;
GO
/****** Object:  StoredProcedure [dbo].[Search_Hospital]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Search_Hospital]
	@HOS_Name NVARCHAR(50) = NULL,
	@HOS_Address NVARCHAR(50) = NULL,
	@HOS_Email NVARCHAR(50) = NULL,
	@Page_Number INT,
	@Limit INT
AS
BEGIN
	SET NOCOUNT ON;

	IF @HOS_Name IS NULL AND  @HOS_Address IS NULL AND @HOS_Email IS NULL
	BEGIN
		SELECT * FROM Hospital ORDER BY HOS_ID 
		OFFSET ((@Page_Number - 1) * @Limit) ROWS FETCH NEXT @Limit ROWS ONLY;;

		SELECT COUNT(*) FROM Hospital;
	END;
	ELSE
	BEGIN
		DECLARE @Query NVARCHAR(MAX), @Total NVARCHAR(MAX);

		SET @Query = N'SELECT * FROM Hospital WHERE ';
		SET @Total = N'SELECT COUNT(*) FROM Hospital WHERE ';

		IF @HOS_Name IS NOT NULL
		BEGIN
			SET @Query = @Query + N'HOS_Name LIKE N''%' + @HOS_Name + '%'' AND ';
			SET @Total = @Total + N'HOS_Name LIKE N''%' + @HOS_Name + '%'' AND ';
		END;
		IF @HOS_Address IS NOT NULL
		BEGIN
			SET @Query = @Query + N'HOS_Address LIKE N''%' + @HOS_Address + '%'' AND ';
			SET @Total = @Total + N'HOS_Address LIKE N''%' + @HOS_Address + '%'' AND ';
		END;
		IF @HOS_Email IS NOT NULL
		BEGIN
			SET @Query = @Query + N'HOS_Email LIKE N''%' + @HOS_Email + '%'' AND ';
			SET @Total = @Total + N'HOS_Email LIKE N''%' + @HOS_Email + '%'' AND ';
		END;

		SET @Query = @Query + N'HOS_ID IS NOT NULL 
		ORDER BY HOS_ID 
		OFFSET ((' + CAST(@Page_Number - 1 AS NVARCHAR(4)) + ') * ' 
		+ CAST(@Limit AS NVARCHAR(3)) + ') ROWS FETCH NEXT ' +
		CAST(@Limit AS NVARCHAR(3)) + ' ROWS ONLY';

		SET @Total = @Total + N'HOS_ID IS NOT NULL';

		EXEC sp_executesql @Query;
		EXEC sp_executesql @Total;

	END;
END;
GO
/****** Object:  StoredProcedure [dbo].[Search_Patient]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Search_Patient]
	@PAT_Name NVARCHAR(50) = NULL,
	@PAT_NatID CHAR(14) = NULL,
	@PAT_Gender BIT = NULL,
	@PAT_IsMarrid BIT = NULL,
	@Page_Number INT,
	@Limit INT
AS
BEGIN
	SET NOCOUNT ON;

	IF @PAT_Name IS NULL AND @PAT_NatID IS NULL AND @PAT_Gender IS NULL AND @PAT_IsMarrid IS NULL
	BEGIN
		SELECT * FROM Patient ORDER BY PAT_ID 
		OFFSET ((@Page_Number - 1) * @Limit) ROWS FETCH NEXT @Limit ROWS ONLY;

		SELECT COUNT(*) FROM Patient;
	END;
	ELSE
	BEGIN
		DECLARE @Query NVARCHAR(MAX), @Total NVARCHAR(MAX);

		SET @Query = N'SELECT * FROM Patient WHERE ';
		SET @Total = N'SELECT COUNT(*) FROM Patient WHERE ';

		IF @PAT_Name IS NOT NULL
		BEGIN
			SET @Query = @Query + N'PAT_Name LIKE N''%' + @PAT_Name + '%'' AND ';
			SET @Total = @Total + N'PAT_Name LIKE N''%' + @PAT_Name + '%'' AND ';
		END;
		IF @PAT_NatID IS NOT NULL
		BEGIN
			SET @Query = @Query + N'PAT_NatID = '+ @PAT_NatID + ' AND ';
			SET @Total = @Total + N'PAT_NatID = '+ @PAT_NatID + ' AND ';
		END;
		IF @PAT_Gender IS NOT NULL
		BEGIN
			IF UPPER(@PAT_Gender) LIKE N'%MALE%'
			BEGIN
				SET @PAT_Gender = 0
			END;
			ELSE IF UPPER(@PAT_Gender) LIKE N'%FEMALE%'
			BEGIN
				SET @PAT_Gender = 1
			END;
			SET @Query = @Query + N'PAT_Gender = ' + CAST(@PAT_Gender AS CHAR(1)) + ' AND ';
			SET @Total = @Total + N'PAT_Gender = ' + CAST(@PAT_Gender AS CHAR(1)) + ' AND ';
		END;
		IF @PAT_IsMarrid IS NOT NULL
		BEGIN
			IF UPPER(@PAT_IsMarrid) LIKE N'%NO%'
			BEGIN
				SET @PAT_IsMarrid = 0
			END;
			ELSE IF UPPER(@PAT_IsMarrid) LIKE N'%YES%'
			BEGIN
				SET @PAT_Gender = 1
			END;
			SET @Query = @Query + N'PAT_IsMarrid = ' + CAST(@PAT_IsMarrid AS CHAR(1)) + ' AND ';
			SET @Total = @Total + N'PAT_IsMarrid = ' + CAST(@PAT_IsMarrid AS CHAR(1)) + ' AND ';
		END;

		SET @Query = @Query + N'PAT_ID IS NOT NULL ORDER BY PAT_ID 
		OFFSET ((' + CAST(@Page_Number - 1 AS NVARCHAR(6)) + ') * ' 
		+ CAST(@Limit AS NVARCHAR(3)) + ') ROWS FETCH NEXT ' +
		CAST(@Limit AS NVARCHAR(3)) + ' ROWS ONLY';

		SET @Total = @Total + N'PAT_ID IS NOT NULL';

		EXEC sp_executesql @Query;
		EXEC sp_executesql @Total;

	END;
END;

SELECT * FROM Patient
GO
/****** Object:  StoredProcedure [dbo].[Stt_Count]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Stt_Count]
	@STF_STT_ID INT = NULL
AS 
BEGIN
	SET NOCOUNT ON;

	IF @STF_STT_ID IS NULL
	BEGIN
		SELECT COUNT(*) FROM Staff;
	END;
	ELSE
	BEGIN
		SELECT COUNT(*) FROM Staff WHERE STF_STT_ID = @STF_STT_ID;
	END;
END;
GO
/****** Object:  StoredProcedure [dbo].[Update_Address_Info]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Update_Address_Info]
	@ADI_ID BIGINT = NULL,
	@ADI_Country NVARCHAR(20) = NULL,
	@ADI_City NVARCHAR(20) = NULL,
	@ADI_Region NVARCHAR(20) = NULL,
	@ADI_PAT_ID BIGINT
AS
BEGIN
	SET NOCOUNT ON;
	UPDATE Address_Info SET ADI_Country = @ADI_Country, ADI_City = @ADI_City,
	ADI_Region = @ADI_Region, ADI_PAT_ID = @ADI_PAT_ID
	WHERE ADI_ID = @ADI_ID;
END;
GO
/****** Object:  StoredProcedure [dbo].[Update_APP_State]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Update_APP_State]
	@APP_ID BIGINT = NULL,
	@APP_IsOpen BIT = 0
AS
BEGIN
	SET NOCOUNT ON;
	UPDATE [Application] SET APP_IsOpen = @APP_IsOpen WHERE APP_ID = @APP_ID;
END;
GO
/****** Object:  StoredProcedure [dbo].[Update_Application]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Update_Application]
	@APP_ID BIGINT = NULL,
	@APP_PAT_ID BIGINT = NULL,
	@APP_ComName NVARCHAR(50) = NULL,
	@APP_ComNatID CHAR(14) = NULL,
	@APP_ComPhone CHAR(11) = NULL,
	@APP_COT_ID TINYINT = NULL,
	@APP_HOS_ID INT = NULL
AS
BEGIN
	SET NOCOUNT ON;
	UPDATE [Application] SET APP_PAT_ID = @APP_PAT_ID, APP_ComName = @APP_ComName,
	APP_ComNatID = @APP_ComNatID, APP_ComPhone = @APP_ComPhone,
	APP_COT_ID = @APP_COT_ID, APP_HOS_ID = @APP_HOS_ID
	WHERE APP_ID = @APP_ID;
END;
GO
/****** Object:  StoredProcedure [dbo].[Update_Department]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Update_Department]
	@DEP_ID INT = NULL,
	@DEP_Name NVARCHAR(25) = NULL,
	@DEP_HOS_ID INT = NULL
AS
BEGIN
	SET NOCOUNT ON;
	UPDATE Department SET DEP_Name = @DEP_Name, DEP_HOS_ID = @DEP_HOS_ID
	WHERE DEP_ID = @DEP_ID;
END;
GO
/****** Object:  StoredProcedure [dbo].[Update_Hospital]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Update_Hospital]	
	@HOS_ID INT = NULL,
	@HOS_Name NVARCHAR(50) = NULL,
	@HOS_Address NVARCHAR(50) = NULL,
	@HOS_Email NVARCHAR(50) = NULL
AS
BEGIN
	SET NOCOUNT ON;
	UPDATE Hospital SET HOS_Name = @HOS_Name, HOS_Address = @HOS_Address, HOS_Email = @HOS_Email
	WHERE HOS_ID = @HOS_ID;

	SELECT PHO_ID FROM Hospital_Phone WHERE PHO_HOS_ID = @HOS_ID;
END;
GO
/****** Object:  StoredProcedure [dbo].[Update_Hospital_Phone]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Update_Hospital_Phone]
	@PHO_ID INT,
	@PHO_Number CHAR(11),
	@PHO_HOS_ID INT
AS
BEGIN
	SET NOCOUNT ON;

	UPDATE Hospital_Phone SET PHO_Number = @PHO_Number, PHO_HOS_ID = @PHO_HOS_ID
	WHERE PHO_ID = @PHO_ID;
END;
GO
/****** Object:  StoredProcedure [dbo].[Update_Note]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Update_Note]
	@NOT_ID BIGINT = NULL,
	@NOT_Message NVARCHAR(MAX),
	@NOT_MSG_ID TINYINT,
	@NOT_NOTB_ID BIGINT
AS
BEGIN
	SET NOCOUNT ON;
	UPDATE Notes SET NOT_Message = @NOT_Message, NOT_MSG_ID = @NOT_MSG_ID, NOT_NOTB_ID = @NOT_NOTB_ID
	WHERE NOT_ID = @NOT_ID;
END;
GO
/****** Object:  StoredProcedure [dbo].[Update_NoteBlock]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Update_NoteBlock]
	@NOTB_ID BIGINT,
	@NOTB_APP_ID BIGINT,
	@NOTB_STF_ID INT
AS 
BEGIN
	SET NOCOUNT ON;

	UPDATE NoteBlock SET NOTB_APP_ID = @NOTB_APP_ID , NOTB_STF_ID = @NOTB_STF_ID 
	WHERE NOTB_ID = @NOTB_ID;
END;
GO
/****** Object:  StoredProcedure [dbo].[Update_Patient]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Update_Patient]
	@PAT_ID BIGINT = NULL,
	@PAT_Name NVARCHAR(50) = NULL,
	@PAT_NatID CHAR(14) = NULL,
	@PAT_BirthDate Date = NULL,
	@PAT_Gender BIT = 1,
	@PAT_IsMarrid BIT = 0,
	@PAT_PNT_ID tinyint = 1,
	@ADI_ID BIGINT = NULL,
	@ADI_Country NVARCHAR(20) = NULL,
	@ADI_City NVARCHAR(20) = NULL,
	@ADI_Region NVARCHAR(20) = NULL
AS
BEGIN
	SET NOCOUNT ON;
			
	BEGIN TRY
		BEGIN TRANSACTION;
	
			UPDATE Patient SET PAT_Name = @PAT_Name, PAT_NatID = @PAT_NatID,
			PAT_BirthDate = @PAT_BirthDate, PAT_Gender = @PAT_Gender,
			PAT_IsMarrid = @PAT_IsMarrid, PAT_PNT_ID = @PAT_PNT_ID
			WHERE PAT_ID = @PAT_ID;

			EXEC Update_Address_Info @ADI_ID, @ADI_Country, @ADI_City, @ADI_Region, @PAT_ID;
			COMMIT TRANSACTION;
	END TRY
	BEGIN CATCH
		IF @@TRANCOUNT > 0
		BEGIN
			ROLLBACK TRANSACTION;
		END;

		THROW;
	END CATCH;
END;
GO
/****** Object:  StoredProcedure [dbo].[Update_Request]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Update_Request]
	@REQ_ID BIGINT = NULL,
	@REQ_Message NVARCHAR(MAX) = NULL,
	@REQ_MSG_ID TINYINT = NULL,
	@REQ_REQB_ID BIGINT = NULL
AS
BEGIN
	SET NOCOUNT ON;
	UPDATE Requst SET REQ_Message = @REQ_Message, REQ_MSG_ID = @REQ_MSG_ID,
	REQ_REQB_ID = @REQ_REQB_ID WHERE REQ_ID = @REQ_ID;
END;
GO
/****** Object:  StoredProcedure [dbo].[Update_RequestBlock]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Update_RequestBlock]
	@REQB_ID BIGINT = NULL,
	@REQB_STF_ID INT = NULL,
	@REQB_DEP_ID INT = NULL,
	@REQB_APP_ID BIGINT = NULL,
	@REQB_STAT_ID TINYINT = NULL

AS
BEGIN
	SET NOCOUNT ON;
	UPDATE RequstBlock SET REQB_DateTime = GETDATE(), REQB_STF_ID = @REQB_STF_ID, REQB_DEP_ID = @REQB_DEP_ID ,
	REQB_APP_ID = @REQB_APP_ID, REQB_STAT_ID = @REQB_STAT_ID WHERE REQB_ID = @REQB_ID;
END;
GO
/****** Object:  StoredProcedure [dbo].[Update_Response]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Update_Response]
	@RSP_ID BIGINT = NULL,
	@RSP_Message NVARCHAR(MAX) = NULL,
	@RSP_MSG_ID  TINYINT = NULL,
	@RSP_RSPB_ID BIGINT = NULL
AS
BEGIN
	SET NOCOUNT ON;
	UPDATE Response SET 
	RSP_Message = @RSP_Message, RSP_MSG_ID = @RSP_MSG_ID, RSP_RSPB_ID = @RSP_RSPB_ID 
	WHERE RSP_ID = @RSP_ID;
END;
GO
/****** Object:  StoredProcedure [dbo].[Update_ResponseBlock]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Update_ResponseBlock]
	@RSPB_ID BIGINT = NULL,
	@RSPB_STF_ID INT = NULL,
	@RSPB_REQB_ID  BIGINT = NULL,
	@RSPB_Result BIT = 0
AS
BEGIN
	SET NOCOUNT ON;
	UPDATE ResponseBlock SET 
	RSPB_Datetime = GETDATE(), RSPB_STF_ID = @RSPB_STF_ID, RSPB_REQB_ID = @RSPB_REQB_ID, RSPB_Result = @RSPB_Result 
	WHERE RSPB_ID = @RSPB_ID;
END;
GO
/****** Object:  StoredProcedure [dbo].[Update_RSPB_State]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Update_RSPB_State]
	@RSPB_ID BIGINT = NULL,
	@RSPB_Result BIT = 1
AS
BEGIN
	SET NOCOUNT ON;
	UPDATE ResponseBlock SET RSPB_Result = @RSPB_Result WHERE RSPB_ID = @RSPB_ID;
END;
GO
/****** Object:  StoredProcedure [dbo].[Update_Staff]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Update_Staff]
	@STF_ID BIGINT = NULL,
	@STF_Name NVARCHAR(50) = NULL, 
	@STF_Address NVARCHAR(50) = NULL,
	@STF_NatID CHAR(14) = NULL,
	@STF_BirthDate DATE = NULL, 
	@STF_Gender BIT = 1,
	@STF_IsMarrid  BIT = 0,
	@STF_STT_ID INT = NULL
AS
BEGIN
	SET NOCOUNT ON;
	UPDATE Staff SET 
	STF_Name = @STF_Name, STF_Address = @STF_Address, STF_NatID = @STF_NatID, 
	STF_BirthDate = @STF_BirthDate, STF_Gender = @STF_Gender, STF_IsMarrid = @STF_IsMarrid,
	STF_STT_ID = @STF_STT_ID WHERE STF_ID = @STF_ID;
END;
GO
/****** Object:  StoredProcedure [dbo].[Update_Staff_Department]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Update_Staff_Department]
	@STF_ID INT = NULL,
	@DEP_ID INT = NULL
 
AS
BEGIN
	SET NOCOUNT ON;
	UPDATE Staff_Department SET DEP_ID = @DEP_ID
	WHERE (STF_ID = @STF_ID);
END;
GO
/****** Object:  StoredProcedure [dbo].[Update_Staff_Login]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Update_Staff_Login]
	@SLOG_STF_ID INT = NULL,
	@SLOG_Username NVARCHAR(20) = NULL,
	@SLOG_Password NVARCHAR(10) = NULL
AS
BEGIN
	SET NOCOUNT ON;
	UPDATE Staff_Login SET SLOG_Username = @SLOG_Username, SLOG_Password = @SLOG_Password
	WHERE (SLOG_STF_ID = @SLOG_STF_ID);
END;
GO
/****** Object:  StoredProcedure [dbo].[Update_Staff_Type]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Update_Staff_Type]
	@STT_ID INT = NULL,
	@STT_Type NVARCHAR(20) = NULL,
	@STT_HOS_ID INT = NULL
AS
BEGIN
	SET NOCOUNT ON;
	UPDATE Staff_Type SET STT_Type = @STT_Type, STT_HOS_ID = @STT_HOS_ID
	WHERE (STT_ID = @STT_ID);
END;
GO
/****** Object:  StoredProcedure [dbo].[UpdateStaffLogin]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateStaffLogin]
    @STF_ID INT,
    @OldPassword NVARCHAR(100),
    @NewUsername NVARCHAR(100),
    @NewPassword NVARCHAR(100)
AS
BEGIN
    SET NOCOUNT ON;

    -- Check the old password
    DECLARE @IsOldPasswordValid BIT;
    SET @IsOldPasswordValid = (SELECT CASE WHEN  SLOG_Password = @OldPassword THEN 1 ELSE 0 END
                               FROM  Staff_Login
                               WHERE SLOG_STF_ID = @STF_ID);

    IF @IsOldPasswordValid = 0
    BEGIN
        -- Old password is invalid
        RETURN;
    END 
    -- Update the username and password
    
        BEGIN TRANSACTION;

        UPDATE Staff_Login
        SET  SLOG_Username = @NewUsername,
             SLOG_Password = @NewPassword
        WHERE  SLOG_STF_ID = @STF_ID;

        COMMIT TRANSACTION;
     
END
GO
/****** Object:  StoredProcedure [dbo].[User_Login]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[User_Login]
	@SLOG_Username NVARCHAR(50),
	@SLOG_Password NVARCHAR(20)
AS
BEGIN
	SET NOCOUNT ON;

	SELECT DISTINCT(Staff.STF_ID),SLOG_ID, STF_Name, STF_Address, STF_NatID, STF_BirthDate, STF_Gender, STF_IsMarrid, STT_Type AS STF_Type,
	DEP_HOS_ID AS HOS_ID FROM Staff
	INNER JOIN Staff_Login ON Staff.STF_ID = Staff_Login.SLOG_STF_ID
	INNER JOIN Staff_Type ON Staff.STF_STT_ID = Staff_Type.STT_ID
	INNER JOIN Staff_Department ON Staff.STF_ID = Staff_Department.STF_ID
	INNER JOIN Department ON  Staff_Department.DEP_ID = Department.DEP_ID 
	WHERE Staff.STF_ID = (
	SELECT SLOG_STF_ID FROM Staff_Login WHERE
	(SLOG_Username = @SLOG_Username AND SLOG_Password = @SLOG_Password));
END;
GO
/****** Object:  Trigger [dbo].[CreateAPPCode]    Script Date: 6/1/2023 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[CreateAPPCode] ON [dbo].[Application] FOR INSERT
AS
BEGIN
	DECLARE @APP_ID BIGINT, @APP_HOS_ID INT, @APP_Code CHAR(12), @APP_DateTime CHAR(6);
	SELECT @APP_HOS_ID = APP_HOS_ID FROM INSERTED; 
	SELECT @APP_ID = APP_ID FROM INSERTED;
	SELECT @APP_DateTime = FORMAT(APP_DateTime, N'yyMMdd') FROM INSERTED;

	SELECT TOP(1) @APP_Code = APP_Code FROM [dbo].[Application]
	WHERE FORMAT(APP_DateTime, N'yyMMdd') = @APP_DateTime AND APP_HOS_ID = @APP_HOS_ID ORDER BY APP_Code DESC ;
 
	IF @APP_Code IS NULL
		UPDATE [dbo].[Application] SET APP_Code =FORMAT(APP_HOS_ID, '00')+ FORMAT(APP_DateTime, N'yyMMdd') + '0000' WHERE (APP_ID = @APP_ID);
	ELSE
	BEGIN
		DECLARE @Next_APP_Code BIGINT;
		SET @Next_APP_Code = CONVERT(BIGINT, @APP_Code);
		SET @Next_APP_Code = @Next_APP_Code + 1;

		IF @Next_APP_Code <= CONVERT(BIGINT,FORMAT(@APP_HOS_ID, '00')+@APP_DateTime + '9999')
		UPDATE [dbo].[Application] SET APP_Code = FORMAT(@Next_APP_Code, '000000000000') WHERE (APP_ID = @APP_ID);
		ELSE
			RETURN;
	END;
END;
GO
ALTER TABLE [dbo].[Application] ENABLE TRIGGER [CreateAPPCode]
GO
/****** Object:  Trigger [dbo].[CreatePatientNID]    Script Date: 6/1/2023 4:18:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[CreatePatientNID] ON [dbo].[Patient] FOR INSERT
AS
BEGIN
	DECLARE @PAT_NID CHAR(14), @PAT_PNT_ID  TINYINT;
	SELECT @PAT_NID = PAT_NatID FROM inserted;
	SELECT @PAT_PNT_ID = PAT_PNT_ID FROM inserted;

	IF @PAT_PNT_ID <> 3
		RETURN;
	ELSE
	BEGIN
		DECLARE @PAT_ID BIGINT;
		SELECT @PAT_ID = PAT_ID FROM inserted;

		SELECT TOP(1) @PAT_NID = PAT_NatID  FROM Patient WHERE (PAT_PNT_ID = @PAT_PNT_ID)
		ORDER BY PAT_NatID DESC;

		IF @PAT_NID IS NULL
			UPDATE Patient SET PAT_NatID = '00000000000001' WHERE (PAT_ID = @PAT_ID);
		ELSE
		BEGIN
			DECLARE @Next_PAT_NID BIGINT;
			SET @Next_PAT_NID = CONVERT(BIGINT, @PAT_NID);
			UPDATE Patient SET PAT_NatID = FORMAT(@Next_PAT_NID + 1, '00000000000000') WHERE (PAT_ID = @PAT_ID);
		END
	END
END
--/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
GO
ALTER TABLE [dbo].[Patient] ENABLE TRIGGER [CreatePatientNID]
GO
