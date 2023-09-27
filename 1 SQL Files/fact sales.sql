USE [E-Commerce-DWH]
GO

/****** Object:  Table [dbo].[Fact sales]    Script Date: 9/26/2023 4:01:55 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Fact sales](
	[order id] [int] NOT NULL,
	[customer key] [int] NOT NULL,
	[product key] [int] NOT NULL,
	[date key] [int] NOT NULL,
	[ship method] [varchar](50) NULL,
	[payment methot] [varchar](50) NULL,
	[sub total] [float] NULL,
	[total tax] [float] NULL,
	[quantity] [int] NULL,
	[line total] [float] NULL,
 CONSTRAINT [PK_Fact sales] PRIMARY KEY CLUSTERED 
(
	[order id] ASC,
	[customer key] ASC,
	[product key] ASC,
	[date key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Fact sales]  WITH CHECK ADD  CONSTRAINT [FK_Fact sales_Dim customer] FOREIGN KEY([customer key])
REFERENCES [dbo].[Dim customer] ([customer key])
GO

ALTER TABLE [dbo].[Fact sales] CHECK CONSTRAINT [FK_Fact sales_Dim customer]
GO

ALTER TABLE [dbo].[Fact sales]  WITH CHECK ADD  CONSTRAINT [FK_Fact sales_Dim date] FOREIGN KEY([date key])
REFERENCES [dbo].[Dim date] ([Date key])
GO

ALTER TABLE [dbo].[Fact sales] CHECK CONSTRAINT [FK_Fact sales_Dim date]
GO

ALTER TABLE [dbo].[Fact sales]  WITH CHECK ADD  CONSTRAINT [FK_Fact sales_DIM product] FOREIGN KEY([product key])
REFERENCES [dbo].[DIM product] ([product key])
GO

ALTER TABLE [dbo].[Fact sales] CHECK CONSTRAINT [FK_Fact sales_DIM product]
GO


