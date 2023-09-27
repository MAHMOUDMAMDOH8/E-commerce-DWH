USE [E-Commerce-DWH]
GO

/****** Object:  Table [dbo].[Dim date]    Script Date: 9/26/2023 4:01:18 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Dim date](
	[Date key] [int] IDENTITY(1,1) NOT NULL,
	[Order date] [date] NULL,
	[year] [int] NULL,
	[Quarter] [int] NULL,
	[Month] [int] NULL,
	[Month Name] [varchar](20) NULL,
	[Day] [int] NULL,
	[Day Name] [varchar](20) NULL,
	[day of weak] [int] NULL,
	[weak] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Date key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


