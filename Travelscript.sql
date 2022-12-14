USE [Travels]
GO
/****** Object:  Table [dbo].[Bustravel]    Script Date: 11/26/2022 11:04:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Bustravel](
	[BoardingPoint] [varchar](50) NOT NULL,
	[TravelDate] [date] NULL,
	[Amount] [float] NOT NULL,
	[Rating] [int] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Bustravel] ([BoardingPoint], [TravelDate], [Amount], [Rating]) VALUES (N'BGL', CAST(0xC3440B00 AS Date), 450.75, 1)
INSERT [dbo].[Bustravel] ([BoardingPoint], [TravelDate], [Amount], [Rating]) VALUES (N'CHN', CAST(0x42420B00 AS Date), 50, 2)
INSERT [dbo].[Bustravel] ([BoardingPoint], [TravelDate], [Amount], [Rating]) VALUES (N'CHN', CAST(0xAB430B00 AS Date), 768.6, 4)
INSERT [dbo].[Bustravel] ([BoardingPoint], [TravelDate], [Amount], [Rating]) VALUES (N'CHN', CAST(0x6B420B00 AS Date), 675, 3)
INSERT [dbo].[Bustravel] ([BoardingPoint], [TravelDate], [Amount], [Rating]) VALUES (N'CHN', CAST(0x78360B00 AS Date), 564.9, 2)
INSERT [dbo].[Bustravel] ([BoardingPoint], [TravelDate], [Amount], [Rating]) VALUES (N'HYD', CAST(0xB0430B00 AS Date), 280.45, 4)
INSERT [dbo].[Bustravel] ([BoardingPoint], [TravelDate], [Amount], [Rating]) VALUES (N'MUM', CAST(0x3F420B00 AS Date), 567.3, 3)
INSERT [dbo].[Bustravel] ([BoardingPoint], [TravelDate], [Amount], [Rating]) VALUES (N'CHN', CAST(0xF1400B00 AS Date), 345, 1)
/****** Object:  StoredProcedure [dbo].[pro_travel]    Script Date: 11/26/2022 11:05:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pro_travel]
       @BoardingPoint varchar(50),
       @TravelDate date,
       @Amount float,
       @Rating int
       
       AS
BEGIN

       INSERT INTO dbo.Bustravel
              (BoardingPoint, TravelDate, Amount, Rating)
       VALUES
              (@BoardingPoint, @TravelDate, @Amount, @Rating)
END
GO
