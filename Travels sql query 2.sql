

/****** QRY 2 ******/
USE [GTRAVELS]
GO
/****** Object:  Table [dbo].[Travels]    Script Date: 10-May-2020 01:05:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Travels](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[HelpEmail] [varchar](50) NULL,
	[HelpPhone] [varchar](50) NULL,
 CONSTRAINT [PK_Travels] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO


DECLARE @TravelsName varchar(50)
DECLARE @HelpEmail varchar(50)
DECLARE @HelpNumber varchar(50)
SET @TravelsName = 'ABC TRAVELS'
SET @HelpEmail = 'justinjosethottathill@gmail.com'
SET @HelpNumber = '8943634322'

INSERT INTO [dbo].[Travels]([Name],[HelpEmail] ,[HelpPhone])  VALUES( @TravelsName , @HelpEmail, @HelpNumber)
GO




USE [GBILLS]
GO
/****** Object:  Table [dbo].[Bill]    Script Date: 10-May-2020 01:04:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Bill](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [varchar](50) NULL,
	[CustomerNumber] [varchar](50) NULL,
	[TravelId] [int] NULL,
	[BusId] [int] NULL,
	[FromId] [int] NULL,
	[ToId] [int] NULL,
	[JournyDate] [date] NULL,
	[TotalSeats] [int] NULL,
	[SeatNoString] [varchar](50) NULL,
	[TotalAmount] [float] NULL,
	[Income] [float] NULL,
	[OperatorPayment] [float] NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[IsActive] [int] NULL,
	[IsPassengerDet] [int] NULL,
	[IsBusDet] [int] NULL,
	[JournyTime] [varchar](50) NULL,
	[BoardingTime] [varchar](50) NULL,
	[BoardingPoint] [varchar](50) NULL,
	[Type] [varchar](50) NULL,
	[Tax] [float] NULL,
	[Pnr] [varchar](50) NULL,
 CONSTRAINT [PK_Bills] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BusDetails]    Script Date: 10-May-2020 01:04:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BusDetails](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[OperatorId] [int] NULL,
	[Type] [varchar](50) NULL,
	[Name] [varchar](50) NULL,
	[Number] [varchar](50) NULL,
	[ContactNumber] [varchar](50) NULL,
	[OtherDetails] [varchar](50) NULL,
	[IsActive] [int] NULL,
 CONSTRAINT [PK_BusDetails] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OperatorPayment]    Script Date: 10-May-2020 01:04:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OperatorPayment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[OperatorId] [int] NULL,
	[ReceiversName] [varchar](50) NULL,
	[ReceiversNumber] [varchar](50) NULL,
	[Amount] [float] NULL,
	[PaymentMethod] [varchar](50) NULL,
	[PaymentDetails] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[IsActive] [int] NULL,
 CONSTRAINT [PK_OperatorPayment] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Operators]    Script Date: 10-May-2020 01:04:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Operators](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [varchar](50) NULL,
	[OperatorName] [varchar](50) NULL,
	[MobileNumber] [varchar](50) NULL,
	[IsPercentagePerSeat] [int] NULL,
	[IsFixedPerSeat] [int] NULL,
	[Amount] [bigint] NULL,
	[IsActive] [int] NULL,
 CONSTRAINT [PK_Operatorss] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Passenger]    Script Date: 10-May-2020 01:04:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Passenger](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[BillId] [int] NULL,
	[Name] [varchar](50) NULL,
	[Age] [int] NULL,
	[SeatNo] [varchar](50) NULL,
	[SeatType] [varchar](50) NULL,
	[IsActive] [int] NULL,
 CONSTRAINT [PK_Passenger] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PaymentMethod]    Script Date: 10-May-2020 01:04:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PaymentMethod](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[PaymentMethod] [varchar](50) NULL,
 CONSTRAINT [PK_PaymentMethod] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Place]    Script Date: 10-May-2020 01:04:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Place](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[IsActive] [int] NULL,
	[Type] [varchar](50) NULL,
	[BoardingPoint] [varchar](50) NULL,
 CONSTRAINT [PK_Places] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Receipt]    Script Date: 10-May-2020 01:04:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Receipt](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[BillId] [int] NULL,
	[Amount] [float] NULL,
	[PaymentMethod] [varchar](50) NULL,
	[PaymentDetails] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[IsActive] [int] NULL,
	[IsOperatorMarked] [int] NULL,
	[OperatorId] [int] NULL,
 CONSTRAINT [PK_ReceiptS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SeatType]    Script Date: 10-May-2020 01:04:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SeatType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[SeatType] [varchar](50) NULL,
 CONSTRAINT [PK_SeatType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO



USE [GTRAVELS]
GO
/****** Object:  Table [dbo].[CardPrintSettings]    Script Date: 10-May-2020 01:05:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CardPrintSettings](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[VariableName] [varchar](50) NULL,
	[FixedVariable] [varchar](100) NULL,
	[SettingsNo] [int] NULL,
	[IsActive] [int] NULL,
	[FontSize] [int] NULL,
	[Width] [int] NULL,
	[Height] [int] NULL,
	[VariableLeft] [int] NULL,
	[VariableTop] [int] NULL,
 CONSTRAINT [PK_CardPrintSettings] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HtmlPrintSettings]    Script Date: 10-May-2020 01:05:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HtmlPrintSettings](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[VariableName] [varchar](50) NULL,
	[FixedVariable] [varchar](100) NULL,
	[SettingsNo] [int] NULL,
	[IsActive] [int] NULL,
 CONSTRAINT [PK_HtmlPrintSettings] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PassengerDetailsSettings]    Script Date: 10-May-2020 01:05:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PassengerDetailsSettings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SettingsName] [varchar](50) NULL,
	[SettingsNo] [int] NULL,
	[IsActive] [int] NULL,
 CONSTRAINT [PK_PassengerDetailsSettings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PrintType]    Script Date: 10-May-2020 01:05:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PrintType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[PrintName] [varchar](50) NULL,
	[SettingsNo] [int] NULL,
	[IsActive] [int] NULL,
	[IsCard] [int] NULL,
	[IsHtml] [int] NULL,
 CONSTRAINT [PK_PrintType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SMSSettings]    Script Date: 10-May-2020 01:05:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SMSSettings](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[SMSName] [varchar](50) NULL,
	[SettingsNo] [int] NULL,
	[IsActive] [int] NULL,
 CONSTRAINT [PK_SMSSettings] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO


/****** Object:  Table [dbo].[WindowsPositionSettings]    Script Date: 10-May-2020 01:05:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WindowsPositionSettings](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[WindowName] [varchar](50) NULL,
	[SettingsNo] [int] NULL,
	[WindowLeft] [int] NULL,
	[WindowTop] [int] NULL,
 CONSTRAINT [PK_WindowsPositionSettings] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[CardPrintSettings] ON 

GO
INSERT [dbo].[CardPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive], [FontSize], [Width], [Height], [VariableLeft], [VariableTop]) VALUES (1, N'Bill BG image', N'\settings\PRINT\images\BillBg.jpg', 1, 1, 100, 10000, 10000, 0, 0)
GO
INSERT [dbo].[CardPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive], [FontSize], [Width], [Height], [VariableLeft], [VariableTop]) VALUES (2, N'Logo', N'\settings\PRINT\images\BillLogo.jpg', 2, 1, 100, 1000, 1000, 3000, 3000)
GO
INSERT [dbo].[CardPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive], [FontSize], [Width], [Height], [VariableLeft], [VariableTop]) VALUES (3, N'Fixed Text 1', N'ABC Travells', 3, 1, 100, 0, 0, 200, 400)
GO
INSERT [dbo].[CardPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive], [FontSize], [Width], [Height], [VariableLeft], [VariableTop]) VALUES (4, N'Fixed Text 2', N'a', 4, 1, 100, 0, 0, 200, 210)
GO
INSERT [dbo].[CardPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive], [FontSize], [Width], [Height], [VariableLeft], [VariableTop]) VALUES (5, N'Fixed Text 3', N'b', 5, 1, 100, 0, 0, 200, 220)
GO
INSERT [dbo].[CardPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive], [FontSize], [Width], [Height], [VariableLeft], [VariableTop]) VALUES (6, N'Fixed Text 4', N'c', 6, 1, 100, 0, 0, 200, 230)
GO
INSERT [dbo].[CardPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive], [FontSize], [Width], [Height], [VariableLeft], [VariableTop]) VALUES (7, N'Fixed Text 5', N'd', 7, 1, 100, 0, 0, 200, 240)
GO
INSERT [dbo].[CardPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive], [FontSize], [Width], [Height], [VariableLeft], [VariableTop]) VALUES (8, N'Fixed Text 6', N'e', 8, 1, 100, 0, 0, 200, 250)
GO
INSERT [dbo].[CardPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive], [FontSize], [Width], [Height], [VariableLeft], [VariableTop]) VALUES (9, N'Variable Text 7', N'PAYMENT METHOD', 9, 1, 100, 0, 0, 200, 340)
GO
INSERT [dbo].[CardPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive], [FontSize], [Width], [Height], [VariableLeft], [VariableTop]) VALUES (10, N'Variable Text 8', N'PAYMENT DETAILS', 10, 1, 100, 0, 0, 200, 350)
GO
INSERT [dbo].[CardPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive], [FontSize], [Width], [Height], [VariableLeft], [VariableTop]) VALUES (11, N'Variable Text 1', N'ID', 11, 1, 100, 0, 0, 200, 280)
GO
INSERT [dbo].[CardPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive], [FontSize], [Width], [Height], [VariableLeft], [VariableTop]) VALUES (12, N'Variable Text 2', N'CUSTOMER NAME', 12, 1, 100, 0, 0, 200, 290)
GO
INSERT [dbo].[CardPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive], [FontSize], [Width], [Height], [VariableLeft], [VariableTop]) VALUES (13, N'Variable Text 3', N'CUSTOMER NUMBER', 13, 1, 100, 0, 0, 200, 300)
GO
INSERT [dbo].[CardPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive], [FontSize], [Width], [Height], [VariableLeft], [VariableTop]) VALUES (14, N'Variable Text 4', N'TYPE', 14, 1, 100, 0, 0, 200, 310)
GO
INSERT [dbo].[CardPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive], [FontSize], [Width], [Height], [VariableLeft], [VariableTop]) VALUES (15, N'Variable Text 5', N'OPERATOR', 15, 1, 100, 0, 0, 200, 320)
GO
INSERT [dbo].[CardPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive], [FontSize], [Width], [Height], [VariableLeft], [VariableTop]) VALUES (16, N'Variable Text 6', N'PNR', 16, 1, 100, 0, 0, 200, 200)
GO
INSERT [dbo].[CardPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive], [FontSize], [Width], [Height], [VariableLeft], [VariableTop]) VALUES (17, N'Variable Text 7', N'TOTAL AMOUNT', 17, 1, 100, 0, 0, 200, 330)
GO
INSERT [dbo].[CardPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive], [FontSize], [Width], [Height], [VariableLeft], [VariableTop]) VALUES (18, N'Variable Text 8', N'CUSTOMER PAID', 18, 1, 100, 0, 0, 200, 340)
GO
INSERT [dbo].[CardPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive], [FontSize], [Width], [Height], [VariableLeft], [VariableTop]) VALUES (19, N'Variable Text 9', N'CUSTOMER PENDING', 19, 1, 100, 0, 0, 200, 350)
GO
INSERT [dbo].[CardPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive], [FontSize], [Width], [Height], [VariableLeft], [VariableTop]) VALUES (20, N'Variable Text 10', N'MY INCOME', 20, 1, 100, 0, 0, 200, 360)
GO
INSERT [dbo].[CardPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive], [FontSize], [Width], [Height], [VariableLeft], [VariableTop]) VALUES (21, N'Variable Text 11', N'OPERATOR PAYMENT', 21, 1, 100, 0, 0, 200, 370)
GO
INSERT [dbo].[CardPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive], [FontSize], [Width], [Height], [VariableLeft], [VariableTop]) VALUES (22, N'Variable Text 12', N'TAX', 22, 1, 100, 0, 0, 200, 380)
GO
INSERT [dbo].[CardPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive], [FontSize], [Width], [Height], [VariableLeft], [VariableTop]) VALUES (23, N'Variable Text 13', N'FROM', 23, 1, 100, 0, 0, 200, 390)
GO
INSERT [dbo].[CardPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive], [FontSize], [Width], [Height], [VariableLeft], [VariableTop]) VALUES (24, N'Variable Text 14', N'TO', 24, 1, 100, 0, 0, 200, 400)
GO
INSERT [dbo].[CardPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive], [FontSize], [Width], [Height], [VariableLeft], [VariableTop]) VALUES (25, N'Variable Text 15', N'JOURNY DATE', 25, 1, 100, 0, 0, 200, 410)
GO
INSERT [dbo].[CardPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive], [FontSize], [Width], [Height], [VariableLeft], [VariableTop]) VALUES (26, N'Variable Text 16', N'JOURNY TIME', 26, 1, 100, 0, 0, 200, 420)
GO
INSERT [dbo].[CardPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive], [FontSize], [Width], [Height], [VariableLeft], [VariableTop]) VALUES (27, N'Variable Text 17', N'TOTAL SEATS', 27, 1, 100, 0, 0, 200, 430)
GO
INSERT [dbo].[CardPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive], [FontSize], [Width], [Height], [VariableLeft], [VariableTop]) VALUES (28, N'Variable Text 18', N'BUS', 28, 1, 100, 0, 0, 200, 440)
GO
INSERT [dbo].[CardPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive], [FontSize], [Width], [Height], [VariableLeft], [VariableTop]) VALUES (29, N'Variable Text 19', N'BOARDING TIME', 29, 1, 100, 0, 0, 200, 450)
GO
INSERT [dbo].[CardPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive], [FontSize], [Width], [Height], [VariableLeft], [VariableTop]) VALUES (30, N'Variable Text 20', N'BOARDING POINT', 30, 1, 100, 0, 0, 200, 460)
GO
INSERT [dbo].[CardPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive], [FontSize], [Width], [Height], [VariableLeft], [VariableTop]) VALUES (31, N'Variable Text 21', N'CREATED ON', 31, 1, 100, 0, 0, 200, 470)
GO
INSERT [dbo].[CardPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive], [FontSize], [Width], [Height], [VariableLeft], [VariableTop]) VALUES (32, N'Variable Text 22', N'SEAT NO STRING', 32, 1, 100, 0, 0, 200, 480)
GO
INSERT [dbo].[CardPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive], [FontSize], [Width], [Height], [VariableLeft], [VariableTop]) VALUES (33, N'Bill BG image', N'\settings\PRINT\images\ReceiptBg.jpg', 33, 1, 100, 1000, 1000, 0, 0)
GO
INSERT [dbo].[CardPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive], [FontSize], [Width], [Height], [VariableLeft], [VariableTop]) VALUES (34, N'Logo', N'\settings\PRINT\images\ReceiptLogo.jpg', 34, 1, 100, 100, 100, 0, 0)
GO
INSERT [dbo].[CardPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive], [FontSize], [Width], [Height], [VariableLeft], [VariableTop]) VALUES (35, N'Fixed Text 1', N'ABC Travells', 35, 1, 100, 0, 0, 200, 200)
GO
INSERT [dbo].[CardPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive], [FontSize], [Width], [Height], [VariableLeft], [VariableTop]) VALUES (36, N'Fixed Text 2', N'a', 36, 1, 100, 0, 0, 200, 210)
GO
INSERT [dbo].[CardPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive], [FontSize], [Width], [Height], [VariableLeft], [VariableTop]) VALUES (37, N'Fixed Text 3', N'b', 37, 1, 100, 0, 0, 200, 220)
GO
INSERT [dbo].[CardPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive], [FontSize], [Width], [Height], [VariableLeft], [VariableTop]) VALUES (38, N'Fixed Text 4', N'c', 38, 1, 100, 0, 0, 200, 230)
GO
INSERT [dbo].[CardPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive], [FontSize], [Width], [Height], [VariableLeft], [VariableTop]) VALUES (39, N'Fixed Text 5', N'd', 39, 1, 100, 0, 0, 200, 240)
GO
INSERT [dbo].[CardPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive], [FontSize], [Width], [Height], [VariableLeft], [VariableTop]) VALUES (40, N'Fixed Text 6', N'e', 40, 1, 100, 0, 0, 200, 250)
GO
INSERT [dbo].[CardPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive], [FontSize], [Width], [Height], [VariableLeft], [VariableTop]) VALUES (41, N'Fixed Text 7', N'f', 41, 1, 100, 0, 0, 200, 260)
GO
INSERT [dbo].[CardPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive], [FontSize], [Width], [Height], [VariableLeft], [VariableTop]) VALUES (42, N'Fixed Text 8', N'g', 42, 1, 100, 0, 0, 200, 270)
GO
INSERT [dbo].[CardPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive], [FontSize], [Width], [Height], [VariableLeft], [VariableTop]) VALUES (43, N'Variable Text 1', N'RECEIPT ID', 43, 1, 100, 0, 0, 200, 280)
GO
INSERT [dbo].[CardPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive], [FontSize], [Width], [Height], [VariableLeft], [VariableTop]) VALUES (44, N'Variable Text 2', N'BILL ID', 44, 1, 100, 0, 0, 200, 290)
GO
INSERT [dbo].[CardPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive], [FontSize], [Width], [Height], [VariableLeft], [VariableTop]) VALUES (45, N'Variable Text 3', N'CUSTOMER NAME', 45, 1, 100, 0, 0, 200, 300)
GO
INSERT [dbo].[CardPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive], [FontSize], [Width], [Height], [VariableLeft], [VariableTop]) VALUES (46, N'Variable Text 4', N'CUSTOMER NUMBER', 46, 1, 100, 0, 0, 200, 310)
GO
INSERT [dbo].[CardPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive], [FontSize], [Width], [Height], [VariableLeft], [VariableTop]) VALUES (47, N'Variable Text 5', N'BILL TYPE', 47, 1, 100, 0, 0, 200, 320)
GO
INSERT [dbo].[CardPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive], [FontSize], [Width], [Height], [VariableLeft], [VariableTop]) VALUES (48, N'Variable Text 6', N'OPERATOR', 48, 1, 100, 0, 0, 200, 330)
GO
INSERT [dbo].[CardPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive], [FontSize], [Width], [Height], [VariableLeft], [VariableTop]) VALUES (49, N'Variable Text 7', N'PNR', 49, 1, 100, 0, 0, 200, 330)
GO
INSERT [dbo].[CardPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive], [FontSize], [Width], [Height], [VariableLeft], [VariableTop]) VALUES (50, N'Variable Text 8', N'BILL AMOUNT', 50, 1, 100, 0, 0, 200, 340)
GO
INSERT [dbo].[CardPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive], [FontSize], [Width], [Height], [VariableLeft], [VariableTop]) VALUES (51, N'Variable Text 9', N'RECEIPT AMOUNT', 51, 1, 100, 0, 0, 200, 350)
GO
INSERT [dbo].[CardPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive], [FontSize], [Width], [Height], [VariableLeft], [VariableTop]) VALUES (52, N'Variable Text 10', N'PAYMENT METHOD', 52, 1, 100, 0, 0, 200, 360)
GO
INSERT [dbo].[CardPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive], [FontSize], [Width], [Height], [VariableLeft], [VariableTop]) VALUES (53, N'Variable Text 11', N'PAYMENT DETAILS', 53, 1, 100, 0, 0, 200, 370)
GO
INSERT [dbo].[CardPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive], [FontSize], [Width], [Height], [VariableLeft], [VariableTop]) VALUES (54, N'Variable Text 12', N'CREATED ON', 54, 1, 100, 0, 0, 200, 380)
GO
INSERT [dbo].[CardPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive], [FontSize], [Width], [Height], [VariableLeft], [VariableTop]) VALUES (55, N'Bill BG image', N'\settings\PRINT\images\OpPaymentBg.jpg', 55, 1, 100, 1000, 1000, 0, 0)
GO
INSERT [dbo].[CardPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive], [FontSize], [Width], [Height], [VariableLeft], [VariableTop]) VALUES (56, N'Logo', N'\settings\PRINT\images\OpPaymentLogo.jpg', 56, 1, 100, 100, 100, 0, 0)
GO
INSERT [dbo].[CardPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive], [FontSize], [Width], [Height], [VariableLeft], [VariableTop]) VALUES (57, N'Fixed Text 1', N'ABC Travells', 57, 1, 100, 0, 0, 200, 200)
GO
INSERT [dbo].[CardPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive], [FontSize], [Width], [Height], [VariableLeft], [VariableTop]) VALUES (58, N'Fixed Text 2', N'a', 58, 1, 100, 0, 0, 200, 210)
GO
INSERT [dbo].[CardPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive], [FontSize], [Width], [Height], [VariableLeft], [VariableTop]) VALUES (59, N'Fixed Text 3', N'b', 59, 1, 100, 0, 0, 200, 220)
GO
INSERT [dbo].[CardPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive], [FontSize], [Width], [Height], [VariableLeft], [VariableTop]) VALUES (60, N'Fixed Text 4', N'c', 60, 1, 100, 0, 0, 200, 230)
GO
INSERT [dbo].[CardPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive], [FontSize], [Width], [Height], [VariableLeft], [VariableTop]) VALUES (61, N'Fixed Text 5', N'd', 61, 1, 100, 0, 0, 200, 240)
GO
INSERT [dbo].[CardPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive], [FontSize], [Width], [Height], [VariableLeft], [VariableTop]) VALUES (62, N'Fixed Text 6', N'e', 62, 1, 100, 0, 0, 200, 250)
GO
INSERT [dbo].[CardPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive], [FontSize], [Width], [Height], [VariableLeft], [VariableTop]) VALUES (63, N'Fixed Text 7', N'f', 63, 1, 100, 0, 0, 200, 260)
GO
INSERT [dbo].[CardPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive], [FontSize], [Width], [Height], [VariableLeft], [VariableTop]) VALUES (64, N'Fixed Text 8', N'g', 64, 1, 100, 0, 0, 200, 270)
GO
INSERT [dbo].[CardPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive], [FontSize], [Width], [Height], [VariableLeft], [VariableTop]) VALUES (65, N'Variable Text 1', N'OpPayment Id', 65, 1, 100, 0, 0, 200, 280)
GO
INSERT [dbo].[CardPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive], [FontSize], [Width], [Height], [VariableLeft], [VariableTop]) VALUES (66, N'Variable Text 2', N'OPERATOR', 66, 1, 100, 0, 0, 200, 290)
GO
INSERT [dbo].[CardPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive], [FontSize], [Width], [Height], [VariableLeft], [VariableTop]) VALUES (67, N'Variable Text 3', N'TYPE', 67, 1, 100, 0, 0, 200, 300)
GO
INSERT [dbo].[CardPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive], [FontSize], [Width], [Height], [VariableLeft], [VariableTop]) VALUES (68, N'Variable Text 4', N'RECEIVERS NAME', 68, 1, 100, 0, 0, 200, 310)
GO
INSERT [dbo].[CardPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive], [FontSize], [Width], [Height], [VariableLeft], [VariableTop]) VALUES (69, N'Variable Text 5', N'RECEIVERS NUMBER', 69, 1, 100, 0, 0, 200, 320)
GO
INSERT [dbo].[CardPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive], [FontSize], [Width], [Height], [VariableLeft], [VariableTop]) VALUES (70, N'Variable Text 6', N'OPPAYMENT AMOUNT', 70, 1, 100, 0, 0, 200, 330)
GO
INSERT [dbo].[CardPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive], [FontSize], [Width], [Height], [VariableLeft], [VariableTop]) VALUES (71, N'Variable Text 7', N'PAYMENT METHOD', 71, 1, 100, 0, 0, 200, 340)
GO
INSERT [dbo].[CardPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive], [FontSize], [Width], [Height], [VariableLeft], [VariableTop]) VALUES (72, N'Variable Text 8', N'PAYMENT DETAILS', 72, 1, 100, 0, 0, 200, 350)
GO
INSERT [dbo].[CardPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive], [FontSize], [Width], [Height], [VariableLeft], [VariableTop]) VALUES (73, N'Variable Text 9', N'CREATED ON', 73, 1, 100, 0, 0, 200, 360)
GO
SET IDENTITY_INSERT [dbo].[CardPrintSettings] OFF
GO
SET IDENTITY_INSERT [dbo].[HtmlPrintSettings] ON 

GO
INSERT [dbo].[HtmlPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive]) VALUES (2, N'Fixed Text 1', N'ABC Travells', 2, 1)
GO
INSERT [dbo].[HtmlPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive]) VALUES (3, N'Fixed Text 2', N'a', 3, 1)
GO
INSERT [dbo].[HtmlPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive]) VALUES (4, N'Fixed Text 3', N'b', 4, 1)
GO
INSERT [dbo].[HtmlPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive]) VALUES (5, N'Fixed Text 4', N'c', 5, 1)
GO
INSERT [dbo].[HtmlPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive]) VALUES (6, N'Variable Text 1', N'ID', 6, 1)
GO
INSERT [dbo].[HtmlPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive]) VALUES (7, N'Variable Text 2', N'CUSTOMER NAME', 7, 1)
GO
INSERT [dbo].[HtmlPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive]) VALUES (8, N'Variable Text 3', N'CUSTOMER NUMBER', 8, 1)
GO
INSERT [dbo].[HtmlPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive]) VALUES (9, N'Variable Text 4', N'TYPE', 9, 1)
GO
INSERT [dbo].[HtmlPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive]) VALUES (10, N'Variable Text 5', N'OPERATOR', 10, 1)
GO
INSERT [dbo].[HtmlPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive]) VALUES (11, N'Variable Text 6', N'PNR', 11, 1)
GO
INSERT [dbo].[HtmlPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive]) VALUES (12, N'Variable Text 7', N'TOTAL AMOUNT', 12, 1)
GO
INSERT [dbo].[HtmlPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive]) VALUES (13, N'Variable Text 8', N'CUSTOMER PAID', 13, 1)
GO
INSERT [dbo].[HtmlPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive]) VALUES (17, N'Variable Text 12', N'TAX', 17, 1)
GO
INSERT [dbo].[HtmlPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive]) VALUES (18, N'Variable Text 13', N'FROM', 18, 1)
GO
INSERT [dbo].[HtmlPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive]) VALUES (19, N'Variable Text 14', N'TO', 19, 1)
GO
INSERT [dbo].[HtmlPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive]) VALUES (20, N'Variable Text 15', N'JOURNY DATE', 20, 1)
GO
INSERT [dbo].[HtmlPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive]) VALUES (21, N'Variable Text 16', N'JOURNY TIME', 21, 1)
GO
INSERT [dbo].[HtmlPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive]) VALUES (22, N'Variable Text 17', N'TOTAL SEATS', 22, 1)
GO
INSERT [dbo].[HtmlPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive]) VALUES (23, N'Variable Text 18', N'BUS', 23, 1)
GO
INSERT [dbo].[HtmlPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive]) VALUES (24, N'Variable Text 19', N'BOARDING TIME', 24, 1)
GO
INSERT [dbo].[HtmlPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive]) VALUES (25, N'Variable Text 20', N'BOARDING POINT', 25, 1)
GO
INSERT [dbo].[HtmlPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive]) VALUES (26, N'Variable Text 21', N'CREATED ON', 26, 1)
GO
INSERT [dbo].[HtmlPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive]) VALUES (27, N'Variable Text 22', N'SEAT NO STRING', 27, 1)
GO
INSERT [dbo].[HtmlPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive]) VALUES (29, N'Fixed Text 1', N'ABC Travells', 29, 1)
GO
INSERT [dbo].[HtmlPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive]) VALUES (30, N'Fixed Text 2', N'a', 30, 1)
GO
INSERT [dbo].[HtmlPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive]) VALUES (31, N'Fixed Text 3', N'b', 31, 1)
GO
INSERT [dbo].[HtmlPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive]) VALUES (32, N'Fixed Text 4', N'c', 32, 1)
GO
INSERT [dbo].[HtmlPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive]) VALUES (33, N'Variable Text 1', N'RECEIPT ID', 33, 1)
GO
INSERT [dbo].[HtmlPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive]) VALUES (34, N'Variable Text 2', N'BILL ID', 34, 1)
GO
INSERT [dbo].[HtmlPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive]) VALUES (35, N'Variable Text 3', N'CUSTOMER NAME', 35, 1)
GO
INSERT [dbo].[HtmlPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive]) VALUES (36, N'Variable Text 4', N'CUSTOMER NUMBER', 36, 1)
GO
INSERT [dbo].[HtmlPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive]) VALUES (37, N'Variable Text 5', N'BILL TYPE', 37, 1)
GO
INSERT [dbo].[HtmlPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive]) VALUES (38, N'Variable Text 6', N'OPERATOR', 38, 1)
GO
INSERT [dbo].[HtmlPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive]) VALUES (39, N'Variable Text 7', N'PNR', 39, 1)
GO
INSERT [dbo].[HtmlPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive]) VALUES (40, N'Variable Text 8', N'BILL AMOUNT', 40, 1)
GO
INSERT [dbo].[HtmlPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive]) VALUES (41, N'Variable Text 9', N'RECEIPT AMOUNT', 41, 1)
GO
INSERT [dbo].[HtmlPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive]) VALUES (42, N'Variable Text 10', N'PAYMENT METHOD', 42, 1)
GO
INSERT [dbo].[HtmlPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive]) VALUES (43, N'Variable Text 11', N'PAYMENT DETAILS', 43, 1)
GO
INSERT [dbo].[HtmlPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive]) VALUES (44, N'Variable Text 12', N'CREATED ON', 44, 1)
GO
INSERT [dbo].[HtmlPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive]) VALUES (46, N'Fixed Text 1', N'ABC Travells', 46, 1)
GO
INSERT [dbo].[HtmlPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive]) VALUES (47, N'Fixed Text 2', N'a', 47, 1)
GO
INSERT [dbo].[HtmlPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive]) VALUES (48, N'Fixed Text 3', N'b', 48, 1)
GO
INSERT [dbo].[HtmlPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive]) VALUES (49, N'Fixed Text 4', N'c', 49, 1)
GO
INSERT [dbo].[HtmlPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive]) VALUES (50, N'Variable Text 1', N'OpPayment Id', 50, 1)
GO
INSERT [dbo].[HtmlPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive]) VALUES (51, N'Variable Text 2', N'OPERATOR', 51, 1)
GO
INSERT [dbo].[HtmlPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive]) VALUES (52, N'Variable Text 3', N'TYPE', 52, 1)
GO
INSERT [dbo].[HtmlPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive]) VALUES (53, N'Variable Text 4', N'RECEIVERS NAME', 53, 1)
GO
INSERT [dbo].[HtmlPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive]) VALUES (54, N'Variable Text 5', N'RECEIVERS NUMBER', 54, 1)
GO
INSERT [dbo].[HtmlPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive]) VALUES (55, N'Variable Text 6', N'OPPAYMENT AMOUNT', 55, 1)
GO
INSERT [dbo].[HtmlPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive]) VALUES (56, N'Variable Text 7', N'PAYMENT METHOD', 56, 1)
GO
INSERT [dbo].[HtmlPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive]) VALUES (57, N'Variable Text 8', N'PAYMENT DETAILS', 57, 1)
GO
INSERT [dbo].[HtmlPrintSettings] ([id], [VariableName], [FixedVariable], [SettingsNo], [IsActive]) VALUES (58, N'Variable Text 9', N'CREATED ON', 58, 1)
GO
SET IDENTITY_INSERT [dbo].[HtmlPrintSettings] OFF
GO
SET IDENTITY_INSERT [dbo].[PassengerDetailsSettings] ON 

GO
INSERT [dbo].[PassengerDetailsSettings] ([Id], [SettingsName], [SettingsNo], [IsActive]) VALUES (1, N'Enable Passenger details', 1, 0)
GO
SET IDENTITY_INSERT [dbo].[PassengerDetailsSettings] OFF
GO
SET IDENTITY_INSERT [dbo].[PrintType] ON 

GO
INSERT [dbo].[PrintType] ([id], [PrintName], [SettingsNo], [IsActive], [IsCard], [IsHtml]) VALUES (1, N'Bill', 1, 1, 0, 0)
GO
INSERT [dbo].[PrintType] ([id], [PrintName], [SettingsNo], [IsActive], [IsCard], [IsHtml]) VALUES (2, N'Receipt', 2, 1, 0, 0)
GO
INSERT [dbo].[PrintType] ([id], [PrintName], [SettingsNo], [IsActive], [IsCard], [IsHtml]) VALUES (3, N'OperatorPayment', 3, 1, 0, 0)
GO
INSERT [dbo].[PrintType] ([id], [PrintName], [SettingsNo], [IsActive], [IsCard], [IsHtml]) VALUES (4, N'Windows Api print', 4, 0, 0, 0)
GO
SET IDENTITY_INSERT [dbo].[PrintType] OFF
GO
SET IDENTITY_INSERT [dbo].[SMSSettings] ON 

GO
INSERT [dbo].[SMSSettings] ([id], [SMSName], [SettingsNo], [IsActive]) VALUES (1, N'Bill', 1, 1)
GO
INSERT [dbo].[SMSSettings] ([id], [SMSName], [SettingsNo], [IsActive]) VALUES (2, N'Receipt', 2, 1)
GO
INSERT [dbo].[SMSSettings] ([id], [SMSName], [SettingsNo], [IsActive]) VALUES (3, N'OperatorPayment', 3, 1)
GO
SET IDENTITY_INSERT [dbo].[SMSSettings] OFF



GO
SET IDENTITY_INSERT [dbo].[WindowsPositionSettings] ON 

GO
INSERT [dbo].[WindowsPositionSettings] ([id], [WindowName], [SettingsNo], [WindowLeft], [WindowTop]) VALUES (1, N'Bill search', 1, 3000, 2000)
GO
INSERT [dbo].[WindowsPositionSettings] ([id], [WindowName], [SettingsNo], [WindowLeft], [WindowTop]) VALUES (2, N'All windows', 2, 2000, 100)
GO
INSERT [dbo].[WindowsPositionSettings] ([id], [WindowName], [SettingsNo], [WindowLeft], [WindowTop]) VALUES (3, N'Sms window', 3, 2000, 502)
GO
SET IDENTITY_INSERT [dbo].[WindowsPositionSettings] OFF
GO


USE [GUSERS]
GO
/****** Object:  Table [dbo].[PriivilageList]    Script Date: 10-May-2020 01:06:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PriivilageList](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[WindowName] [varchar](50) NULL,
	[Caption] [varchar](50) NULL,
	[PrivilageNumber] [int] NULL,
 CONSTRAINT [PK_PriivilageList] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PrivilageActive]    Script Date: 10-May-2020 01:06:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PrivilageActive](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[PrivilageNumber] [int] NULL,
 CONSTRAINT [PK_PrivilageActive] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserList]    Script Date: 10-May-2020 01:06:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserList](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NULL,
	[Password] [nchar](10) NULL,
	[IsActive] [int] NULL,
	[IsAdmin] [int] NULL,
	[Mobile] [varchar](50) NULL,
 CONSTRAINT [PK_UserList] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[PriivilageList] ON 

GO
INSERT [dbo].[PriivilageList] ([id], [WindowName], [Caption], [PrivilageNumber]) VALUES (1, N'UserCreation', N'Create a new user', 1)
GO
INSERT [dbo].[PriivilageList] ([id], [WindowName], [Caption], [PrivilageNumber]) VALUES (2, N'User privilage', N'Add /Edit user Privilage', 2)
GO
INSERT [dbo].[PriivilageList] ([id], [WindowName], [Caption], [PrivilageNumber]) VALUES (4, N'Add Bus Operator', N'Add /Edit bus operator details', 3)
GO
INSERT [dbo].[PriivilageList] ([id], [WindowName], [Caption], [PrivilageNumber]) VALUES (5, N'Add Bus', N'Add /Edit Bus details', 4)
GO
INSERT [dbo].[PriivilageList] ([id], [WindowName], [Caption], [PrivilageNumber]) VALUES (6, N'Add Airlines', N'Add /Edit Airlines details', 5)
GO
INSERT [dbo].[PriivilageList] ([id], [WindowName], [Caption], [PrivilageNumber]) VALUES (7, N'Add Flight', N'Add / Edit Flight dedtails', 6)
GO
INSERT [dbo].[PriivilageList] ([id], [WindowName], [Caption], [PrivilageNumber]) VALUES (8, N'Bus Ticket Booking', N'Book a bus ticket', 7)
GO
INSERT [dbo].[PriivilageList] ([id], [WindowName], [Caption], [PrivilageNumber]) VALUES (9, N'Reprint Bus Ticket', N'Reprint bus ticket', 8)
GO
INSERT [dbo].[PriivilageList] ([id], [WindowName], [Caption], [PrivilageNumber]) VALUES (10, N'Flight Ticket Booking', N'Book a Flight ticket', 9)
GO
INSERT [dbo].[PriivilageList] ([id], [WindowName], [Caption], [PrivilageNumber]) VALUES (11, N'Reprint Flight Ticket', N'Reprint Flight Ticket', 10)
GO
INSERT [dbo].[PriivilageList] ([id], [WindowName], [Caption], [PrivilageNumber]) VALUES (12, N'Add Bus Location', N'Add /Edit bus Locations', 11)
GO
INSERT [dbo].[PriivilageList] ([id], [WindowName], [Caption], [PrivilageNumber]) VALUES (13, N'Add Flight Location', N'Add /Edit flight Locations', 12)
GO
INSERT [dbo].[PriivilageList] ([id], [WindowName], [Caption], [PrivilageNumber]) VALUES (14, N'Part Payment', N'Create receipts for bills both flight and bus', 13)
GO
INSERT [dbo].[PriivilageList] ([id], [WindowName], [Caption], [PrivilageNumber]) VALUES (15, N'Operator Payment', N'Complete Operator Payment', 14)
GO
INSERT [dbo].[PriivilageList] ([id], [WindowName], [Caption], [PrivilageNumber]) VALUES (16, N'Reprint Part Payment', N'Reprint Part Payment/delete receipts', 15)
GO
INSERT [dbo].[PriivilageList] ([id], [WindowName], [Caption], [PrivilageNumber]) VALUES (17, N'Reprint Operator Payment', N'Reprint OperatorPayment / or delete ', 16)
GO
INSERT [dbo].[PriivilageList] ([id], [WindowName], [Caption], [PrivilageNumber]) VALUES (25, N'Bill Marking', N'Mark bills to operator payment', 18)
GO
INSERT [dbo].[PriivilageList] ([id], [WindowName], [Caption], [PrivilageNumber]) VALUES (1025, N'Todays Bills', N'View todays bilss and details', 19)
GO
INSERT [dbo].[PriivilageList] ([id], [WindowName], [Caption], [PrivilageNumber]) VALUES (1026, N'Todays Receipts', N'View todays all receipt', 20)
GO
INSERT [dbo].[PriivilageList] ([id], [WindowName], [Caption], [PrivilageNumber]) VALUES (1027, N'Todays Operator Payments', N'Todays operator payments', 21)
GO
INSERT [dbo].[PriivilageList] ([id], [WindowName], [Caption], [PrivilageNumber]) VALUES (1028, N'Deleted Bills', N'View deleted Bills', 22)
GO
INSERT [dbo].[PriivilageList] ([id], [WindowName], [Caption], [PrivilageNumber]) VALUES (1029, N'Deleted Receipts', N'View deleted receipts', 23)
GO
INSERT [dbo].[PriivilageList] ([id], [WindowName], [Caption], [PrivilageNumber]) VALUES (1030, N'Deleted Operator Payments', N'View deleted operator payments', 24)
GO
INSERT [dbo].[PriivilageList] ([id], [WindowName], [Caption], [PrivilageNumber]) VALUES (1031, N'All Bills', N'View / Search between all bills', 25)
GO
INSERT [dbo].[PriivilageList] ([id], [WindowName], [Caption], [PrivilageNumber]) VALUES (1032, N'All Receipts', N'View / Search between all receipts', 26)
GO
INSERT [dbo].[PriivilageList] ([id], [WindowName], [Caption], [PrivilageNumber]) VALUES (1033, N'All Operator Payments', N'View /Search between all operator payments', 27)
GO
INSERT [dbo].[PriivilageList] ([id], [WindowName], [Caption], [PrivilageNumber]) VALUES (1034, N'Remainder SMS', N'Send sms to all payment pending bills', 28)
GO
INSERT [dbo].[PriivilageList] ([id], [WindowName], [Caption], [PrivilageNumber]) VALUES (1035, N'Simple SMS', N'Send a simple sms', 29)
GO
INSERT [dbo].[PriivilageList] ([id], [WindowName], [Caption], [PrivilageNumber]) VALUES (1036, N'Advertising SMS', N'Send an advertising sms', 30)
GO
INSERT [dbo].[PriivilageList] ([id], [WindowName], [Caption], [PrivilageNumber]) VALUES (1037, N'Print Settings', N'Change all settings related to Print', 31)
GO
INSERT [dbo].[PriivilageList] ([id], [WindowName], [Caption], [PrivilageNumber]) VALUES (1038, N'Custom Settings', N'Enable or disable all settings', 32)
GO
SET IDENTITY_INSERT [dbo].[PriivilageList] OFF
GO
SET IDENTITY_INSERT [dbo].[UserList] ON 

GO
INSERT [dbo].[UserList] ([id], [UserName], [Password], [IsActive], [IsAdmin], [Mobile]) VALUES (8, N'j', N'j', 1, 1, N'8943634322')
GO







