USE [EddyNewHome]
GO
/****** Object:  Table [dbo].[ArticleComments]    Script Date: 2020-03-09 오후 10:08:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArticleComments](
	[MemberID] [varchar](20) NOT NULL,
	[ArticleIDX] [int] NOT NULL,
	[Comments] [nvarchar](1000) NULL,
	[IPAddress] [varchar](20) NULL,
	[RegistDate] [datetime] NULL,
 CONSTRAINT [PK_ArticleComments] PRIMARY KEY CLUSTERED 
(
	[MemberID] ASC,
	[ArticleIDX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ArticleFiles]    Script Date: 2020-03-09 오후 10:08:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArticleFiles](
	[FileIDX] [int] IDENTITY(1,1) NOT NULL,
	[ArticleIDX] [int] NULL,
	[FilePath] [nvarchar](1000) NULL,
	[FileName] [nvarchar](255) NULL,
	[FileSize] [int] NULL,
	[FileFormat] [varchar](50) NULL,
	[UploadDate] [datetime] NULL,
 CONSTRAINT [PK_ArticleFiles] PRIMARY KEY CLUSTERED 
(
	[FileIDX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BoardArticles]    Script Date: 2020-03-09 오후 10:08:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BoardArticles](
	[ArticleIDX] [int] IDENTITY(1,1) NOT NULL,
	[BoardIDX] [int] NULL,
	[ArticleType] [char](1) NULL,
	[Title] [nvarchar](200) NULL,
	[Contents] [ntext] NULL,
	[UserName] [nvarchar](50) NULL,
	[Email] [nvarchar](100) NULL,
	[IPAddress] [nvarchar](20) NULL,
	[ViewCnt] [int] NULL,
	[RegistDate] [datetime] NULL,
	[RegistUserName] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyUserName] [nvarchar](50) NULL,
 CONSTRAINT [PK_BoardArticles] PRIMARY KEY CLUSTERED 
(
	[ArticleIDX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Members]    Script Date: 2020-03-09 오후 10:08:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Members](
	[MemberID] [varchar](20) NOT NULL,
	[MemberPWD] [varchar](20) NULL,
	[MemberName] [nvarchar](20) NULL,
	[Email] [varchar](50) NULL,
	[Telephone] [varchar](20) NULL,
	[EntryDate] [datetime] NULL,
 CONSTRAINT [PK_Members] PRIMARY KEY CLUSTERED 
(
	[MemberID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
