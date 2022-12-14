USE [CMS]
GO
/****** Object:  Table [dbo].[Customer1]    Script Date: 11/28/2022 18:54:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer1](
	[CustomerID] [int] NOT NULL,
	[CustomerName] [nvarchar](50) NOT NULL,
	[City] [nvarchar](50) NOT NULL,
	[Age] [int] NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
	[Pincode] [int] NOT NULL,
 CONSTRAINT [PK_Customer1] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Customer1] ([CustomerID], [CustomerName], [City], [Age], [Phone], [Pincode]) VALUES (1, N'Bala', N'Pune', 22, N'7856342187', 560021)
INSERT [dbo].[Customer1] ([CustomerID], [CustomerName], [City], [Age], [Phone], [Pincode]) VALUES (2, N'sam', N'Banglore', 35, N'7856403212', 581115)
INSERT [dbo].[Customer1] ([CustomerID], [CustomerName], [City], [Age], [Phone], [Pincode]) VALUES (3, N'Ram', N'Hubli', 28, N'8960543013', 581521)
INSERT [dbo].[Customer1] ([CustomerID], [CustomerName], [City], [Age], [Phone], [Pincode]) VALUES (4, N'santosh', N'Hydrabad', 27, N'7843675431', 543216)
