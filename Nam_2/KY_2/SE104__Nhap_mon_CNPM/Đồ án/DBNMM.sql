
CREATE DATABASE HotelManagementNMCNPM
USE HotelManagementNMCNPM
GO

CREATE TABLE [dbo].[Bill](
	[BillId] [varchar](10) NOT NULL,
	[CustomerName] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[TotalPrice] [float] NULL,
	[CreateDate] [datetime] NULL,
 CONSTRAINT [PK_Bill] PRIMARY KEY CLUSTERED 
(
	[BillId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BillDetail]    Script Date: 6/14/2023 12:02:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BillDetail](
	[BillDetailId] [int] IDENTITY(1,1) NOT NULL,
	[BillId] [varchar](10) NOT NULL,
	[RoomId] [varchar](10) NOT NULL,
	[NumberOfRentalDays] [int] NULL,
	[PricePerDay] [float] NULL,
	[Price] [float] NULL,
 CONSTRAINT [PK_BillDetail] PRIMARY KEY CLUSTERED 
(
	[BillDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerType]    Script Date: 6/14/2023 12:02:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerType](
	[CustomerTypeId] [varchar](10) NOT NULL,
	[CustomerTypeName] [nvarchar](max) NULL,
	[CoefficientSurcharge] [float] NULL,
 CONSTRAINT [PK_CustomerType] PRIMARY KEY CLUSTERED 
(
	[CustomerTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Parameter]    Script Date: 6/14/2023 12:02:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Parameter](
	[ParameterId] [int] IDENTITY(1,1) NOT NULL,
	[ParameterKey] [varchar](max) NULL,
	[ParamaterValue] [float] NULL,
 CONSTRAINT [PK_Parameter] PRIMARY KEY CLUSTERED 
(
	[ParameterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RentalContract]    Script Date: 6/14/2023 12:02:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RentalContract](
	[RentalContractId] [varchar](10) NOT NULL,
	[RoomId] [varchar](10) NOT NULL,
	[CreateDate] [datetime] NULL,
 CONSTRAINT [PK_RentalContract] PRIMARY KEY CLUSTERED 
(
	[RentalContractId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RentalContractDetail]    Script Date: 6/14/2023 12:02:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RentalContractDetail](
	[RentalContractDetailId] [varchar](10) NOT NULL,
	[RentalContractId] [varchar](10) NOT NULL,
	[CustomerName] [nvarchar](max) NULL,
	[CustomerTypeId] [varchar](10) NULL,
	[CCCD] [varchar](12) NULL,
	[Address] [nvarchar](max) NULL,
 CONSTRAINT [PK_RentalContractDetail] PRIMARY KEY CLUSTERED 
(
	[RentalContractDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RevenueReport]    Script Date: 6/14/2023 12:02:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RevenueReport](
	[RevenueReportId] [varchar](10) NOT NULL,
	[MonthReport] [datetime] NULL,
 CONSTRAINT [PK_RevenueReport] PRIMARY KEY CLUSTERED 
(
	[RevenueReportId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RevenueReportDetail]    Script Date: 6/14/2023 12:02:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RevenueReportDetail](
	[RevenueReportDetailId] [int] IDENTITY(1,1) NOT NULL,
	[RevenueReportId] [varchar](10) NOT NULL,
	[RoomTypeId] [varchar](10) NOT NULL,
	[Revenue] [float] NULL,
	[Ratio] [float] NULL,
 CONSTRAINT [PK_RevenueReportDetail] PRIMARY KEY CLUSTERED 
(
	[RevenueReportDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room]    Script Date: 6/14/2023 12:02:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[RoomId] [varchar](10) NOT NULL,
	[RoomNumber] [int] NULL,
	[RoomTypeId] [varchar](10) NOT NULL,
	[RoomStatus] [nvarchar](max) NULL,
	[Note] [nvarchar](max) NULL,
 CONSTRAINT [PK_Room] PRIMARY KEY CLUSTERED 
(
	[RoomId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoomType]    Script Date: 6/14/2023 12:02:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoomType](
	[RoomTypeId] [varchar](10) NOT NULL,
	[RoomTypeName] [nvarchar](max) NULL,
	[Price] [float] NULL,
 CONSTRAINT [PK_RoomType] PRIMARY KEY CLUSTERED 
(
	[RoomTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SurchargeRate]    Script Date: 6/14/2023 12:02:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SurchargeRate](
	[CustomerIndex] [int] NOT NULL,
	[Rate] [float] NULL,
 CONSTRAINT [PK_SurchargeRate] PRIMARY KEY CLUSTERED 
(
	[CustomerIndex] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Bill] ([BillId], [CustomerName], [Address], [TotalPrice], [CreateDate]) VALUES (N'HD001', N'Lê Quang Nhân', N'Quảng Ngãi', 600000, CAST(N'2023-06-14T09:57:46.167' AS DateTime))
INSERT [dbo].[Bill] ([BillId], [CustomerName], [Address], [TotalPrice], [CreateDate]) VALUES (N'HD002', N'Huỳnh Ngọc Quí', N'Quảng Ngãi', 300000, CAST(N'2023-06-14T09:58:52.317' AS DateTime))
INSERT [dbo].[Bill] ([BillId], [CustomerName], [Address], [TotalPrice], [CreateDate]) VALUES (N'HD003', N'Nguyễn Văn Phát', N'Quảng Ngãi', 375000, CAST(N'2023-06-14T10:01:45.643' AS DateTime))
INSERT [dbo].[Bill] ([BillId], [CustomerName], [Address], [TotalPrice], [CreateDate]) VALUES (N'HD004', N'Phan Trọng Tính', N'Cà Mau', 281250, CAST(N'2023-06-14T10:09:08.133' AS DateTime))
INSERT [dbo].[Bill] ([BillId], [CustomerName], [Address], [TotalPrice], [CreateDate]) VALUES (N'HD005', N'Huỳnh Ngọc Tính', N'TP HCM', 281250, CAST(N'2023-06-14T10:15:50.093' AS DateTime))
INSERT [dbo].[Bill] ([BillId], [CustomerName], [Address], [TotalPrice], [CreateDate]) VALUES (N'HD006', N'Phan Trọng Phát', N'Hà Nội', 510000, CAST(N'2023-06-14T10:17:54.850' AS DateTime))
INSERT [dbo].[Bill] ([BillId], [CustomerName], [Address], [TotalPrice], [CreateDate]) VALUES (N'HD007', N'Nguyễn Văn Quí', N'Hà Nội', 281250, CAST(N'2023-06-14T10:20:30.277' AS DateTime))
INSERT [dbo].[Bill] ([BillId], [CustomerName], [Address], [TotalPrice], [CreateDate]) VALUES (N'HD008', N'Nguyễn Văn A', N'Quảng Bình', 150000, CAST(N'2023-06-14T11:52:33.440' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[BillDetail] ON 

INSERT [dbo].[BillDetail] ([BillDetailId], [BillId], [RoomId], [NumberOfRentalDays], [PricePerDay], [Price]) VALUES (1, N'HD001', N'PH001', 1, 281250, 281250)
INSERT [dbo].[BillDetail] ([BillDetailId], [BillId], [RoomId], [NumberOfRentalDays], [PricePerDay], [Price]) VALUES (2, N'HD001', N'PH010', 1, 318750, 318750)
INSERT [dbo].[BillDetail] ([BillDetailId], [BillId], [RoomId], [NumberOfRentalDays], [PricePerDay], [Price]) VALUES (3, N'HD002', N'PH012', 1, 300000, 300000)
INSERT [dbo].[BillDetail] ([BillDetailId], [BillId], [RoomId], [NumberOfRentalDays], [PricePerDay], [Price]) VALUES (4, N'HD003', N'PH013', 1, 375000, 375000)
INSERT [dbo].[BillDetail] ([BillDetailId], [BillId], [RoomId], [NumberOfRentalDays], [PricePerDay], [Price]) VALUES (5, N'HD004', N'PH003', 1, 281250, 281250)
INSERT [dbo].[BillDetail] ([BillDetailId], [BillId], [RoomId], [NumberOfRentalDays], [PricePerDay], [Price]) VALUES (6, N'HD005', N'PH002', 1, 281250, 281250)
INSERT [dbo].[BillDetail] ([BillDetailId], [BillId], [RoomId], [NumberOfRentalDays], [PricePerDay], [Price]) VALUES (7, N'HD006', N'PH007', 1, 255000, 255000)
INSERT [dbo].[BillDetail] ([BillDetailId], [BillId], [RoomId], [NumberOfRentalDays], [PricePerDay], [Price]) VALUES (8, N'HD006', N'PH008', 1, 255000, 255000)
INSERT [dbo].[BillDetail] ([BillDetailId], [BillId], [RoomId], [NumberOfRentalDays], [PricePerDay], [Price]) VALUES (9, N'HD007', N'PH003', 1, 281250, 281250)
INSERT [dbo].[BillDetail] ([BillDetailId], [BillId], [RoomId], [NumberOfRentalDays], [PricePerDay], [Price]) VALUES (10, N'HD008', N'PH001', 1, 150000, 150000)
SET IDENTITY_INSERT [dbo].[BillDetail] OFF
GO
INSERT [dbo].[CustomerType] ([CustomerTypeId], [CustomerTypeName], [CoefficientSurcharge]) VALUES (N'LK001', N'Nội địa', 1)
INSERT [dbo].[CustomerType] ([CustomerTypeId], [CustomerTypeName], [CoefficientSurcharge]) VALUES (N'LK002', N'Nước ngoài', 1.5)
GO
SET IDENTITY_INSERT [dbo].[Parameter] ON 

INSERT [dbo].[Parameter] ([ParameterId], [ParameterKey], [ParamaterValue]) VALUES (1, N'SoKhachKhongTinhPhuPhi', 2)
INSERT [dbo].[Parameter] ([ParameterId], [ParameterKey], [ParamaterValue]) VALUES (2, N'SoKhachToiDa', 3)
SET IDENTITY_INSERT [dbo].[Parameter] OFF
GO
INSERT [dbo].[RentalContract] ([RentalContractId], [RoomId], [CreateDate]) VALUES (N'PT001', N'PH001', CAST(N'2023-06-14T09:53:36.227' AS DateTime))
INSERT [dbo].[RentalContract] ([RentalContractId], [RoomId], [CreateDate]) VALUES (N'PT002', N'PH012', CAST(N'2023-06-14T09:55:03.287' AS DateTime))
INSERT [dbo].[RentalContract] ([RentalContractId], [RoomId], [CreateDate]) VALUES (N'PT003', N'PH010', CAST(N'2023-06-14T09:57:07.077' AS DateTime))
INSERT [dbo].[RentalContract] ([RentalContractId], [RoomId], [CreateDate]) VALUES (N'PT004', N'PH013', CAST(N'2023-06-14T10:01:20.500' AS DateTime))
INSERT [dbo].[RentalContract] ([RentalContractId], [RoomId], [CreateDate]) VALUES (N'PT005', N'PH003', CAST(N'2023-06-14T10:08:40.690' AS DateTime))
INSERT [dbo].[RentalContract] ([RentalContractId], [RoomId], [CreateDate]) VALUES (N'PT006', N'PH002', CAST(N'2023-06-14T10:15:23.807' AS DateTime))
INSERT [dbo].[RentalContract] ([RentalContractId], [RoomId], [CreateDate]) VALUES (N'PT007', N'PH007', CAST(N'2023-06-14T10:16:42.813' AS DateTime))
INSERT [dbo].[RentalContract] ([RentalContractId], [RoomId], [CreateDate]) VALUES (N'PT008', N'PH008', CAST(N'2023-06-14T10:17:34.010' AS DateTime))
INSERT [dbo].[RentalContract] ([RentalContractId], [RoomId], [CreateDate]) VALUES (N'PT009', N'PH003', CAST(N'2023-06-14T10:19:49.830' AS DateTime))
INSERT [dbo].[RentalContract] ([RentalContractId], [RoomId], [CreateDate]) VALUES (N'PT010', N'PH001', CAST(N'2023-06-14T11:51:55.737' AS DateTime))
GO
INSERT [dbo].[RentalContractDetail] ([RentalContractDetailId], [RentalContractId], [CustomerName], [CustomerTypeId], [CCCD], [Address]) VALUES (N'PT001', N'PT001', N'Lê Quang Nhân', N'LK001', N'051203012656', N'Quảng Ngãi')
INSERT [dbo].[RentalContractDetail] ([RentalContractDetailId], [RentalContractId], [CustomerName], [CustomerTypeId], [CCCD], [Address]) VALUES (N'PT002', N'PT001', N'Huỳnh Ngọc Quí', N'LK002', N'051203012653', N'Thái Lan')
INSERT [dbo].[RentalContractDetail] ([RentalContractDetailId], [RentalContractId], [CustomerName], [CustomerTypeId], [CCCD], [Address]) VALUES (N'PT003', N'PT001', N'Phan Trọng Tính', N'LK002', N'051203012659', N'Cà Mau')
INSERT [dbo].[RentalContractDetail] ([RentalContractDetailId], [RentalContractId], [CustomerName], [CustomerTypeId], [CCCD], [Address]) VALUES (N'PT004', N'PT002', N'Lê Quang Nhân', N'LK002', N'005120306265', N'TPHCM')
INSERT [dbo].[RentalContractDetail] ([RentalContractDetailId], [RentalContractId], [CustomerName], [CustomerTypeId], [CCCD], [Address]) VALUES (N'PT005', N'PT003', N'Nguyễn Văn Phát', N'LK001', N'051203012621', N'Hà Nội')
INSERT [dbo].[RentalContractDetail] ([RentalContractDetailId], [RentalContractId], [CustomerName], [CustomerTypeId], [CCCD], [Address]) VALUES (N'PT006', N'PT003', N'Lê Quang Nhân', N'LK002', N'051203015968', N'Campuchia')
INSERT [dbo].[RentalContractDetail] ([RentalContractDetailId], [RentalContractId], [CustomerName], [CustomerTypeId], [CCCD], [Address]) VALUES (N'PT007', N'PT003', N'Huỳnh Ngọc Tính', N'LK002', N'051203012698', N'Lào')
INSERT [dbo].[RentalContractDetail] ([RentalContractDetailId], [RentalContractId], [CustomerName], [CustomerTypeId], [CCCD], [Address]) VALUES (N'PT008', N'PT004', N'Phan Trọng Tính', N'LK001', N'051216594826', N'Cà Mau')
INSERT [dbo].[RentalContractDetail] ([RentalContractDetailId], [RentalContractId], [CustomerName], [CustomerTypeId], [CCCD], [Address]) VALUES (N'PT009', N'PT004', N'Lê Quang Nhân', N'LK002', N'05120659896', N'Malaysia')
INSERT [dbo].[RentalContractDetail] ([RentalContractDetailId], [RentalContractId], [CustomerName], [CustomerTypeId], [CCCD], [Address]) VALUES (N'PT010', N'PT004', N'Nguyễn Văn Phát', N'LK002', N'051203012656', N'Lào')
INSERT [dbo].[RentalContractDetail] ([RentalContractDetailId], [RentalContractId], [CustomerName], [CustomerTypeId], [CCCD], [Address]) VALUES (N'PT011', N'PT005', N'Phan Trọng Tính', N'LK002', N'051203012656', N'Cà Mau')
INSERT [dbo].[RentalContractDetail] ([RentalContractDetailId], [RentalContractId], [CustomerName], [CustomerTypeId], [CCCD], [Address]) VALUES (N'PT012', N'PT005', N'Nguyễn Văn Phát', N'LK002', N'051206896989', N'Quảng Ngãi')
INSERT [dbo].[RentalContractDetail] ([RentalContractDetailId], [RentalContractId], [CustomerName], [CustomerTypeId], [CCCD], [Address]) VALUES (N'PT013', N'PT005', N'Huỳnh Ngọc Quí', N'LK002', N'012345678989', N'Cà Mau')
INSERT [dbo].[RentalContractDetail] ([RentalContractDetailId], [RentalContractId], [CustomerName], [CustomerTypeId], [CCCD], [Address]) VALUES (N'PT014', N'PT006', N'Phan Trọng Nhân', N'LK002', N'051203658965', N'TP. HCM')
INSERT [dbo].[RentalContractDetail] ([RentalContractDetailId], [RentalContractId], [CustomerName], [CustomerTypeId], [CCCD], [Address]) VALUES (N'PT015', N'PT006', N'Phan Văn Quí', N'LK002', N'051203658966', N'TP HCM')
INSERT [dbo].[RentalContractDetail] ([RentalContractDetailId], [RentalContractId], [CustomerName], [CustomerTypeId], [CCCD], [Address]) VALUES (N'PT016', N'PT006', N'Nguyễn Văn Tính', N'LK002', N'051468923656', N'TP HCM')
INSERT [dbo].[RentalContractDetail] ([RentalContractDetailId], [RentalContractId], [CustomerName], [CustomerTypeId], [CCCD], [Address]) VALUES (N'PT017', N'PT007', N'Lê Quang Quí', N'LK002', N'021656983623', N'Hà Nội')
INSERT [dbo].[RentalContractDetail] ([RentalContractDetailId], [RentalContractId], [CustomerName], [CustomerTypeId], [CCCD], [Address]) VALUES (N'PT018', N'PT008', N'Phan Trọng Phát', N'LK002', N'01265986313', N'Hà Nội')
INSERT [dbo].[RentalContractDetail] ([RentalContractDetailId], [RentalContractId], [CustomerName], [CustomerTypeId], [CCCD], [Address]) VALUES (N'PT019', N'PT009', N'Nguyễn Văn Tính', N'LK002', N'051236985632', N'Hà Nội')
INSERT [dbo].[RentalContractDetail] ([RentalContractDetailId], [RentalContractId], [CustomerName], [CustomerTypeId], [CCCD], [Address]) VALUES (N'PT020', N'PT009', N'Huỳnh Ngọc Nhân', N'LK002', N'0123456789', N'Hà Nội')
INSERT [dbo].[RentalContractDetail] ([RentalContractDetailId], [RentalContractId], [CustomerName], [CustomerTypeId], [CCCD], [Address]) VALUES (N'PT021', N'PT009', N'Nguyễn Văn Phát', N'LK002', N'0123469862', N'Hà Nội')
INSERT [dbo].[RentalContractDetail] ([RentalContractDetailId], [RentalContractId], [CustomerName], [CustomerTypeId], [CCCD], [Address]) VALUES (N'PT022', N'PT010', N'Nguyễn Văn A', N'LK001', N'25', N'Quảng Bình')
GO
INSERT [dbo].[RevenueReport] ([RevenueReportId], [MonthReport]) VALUES (N'DT001', CAST(N'2023-06-14T09:57:46.267' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[RevenueReportDetail] ON 

INSERT [dbo].[RevenueReportDetail] ([RevenueReportDetailId], [RevenueReportId], [RoomTypeId], [Revenue], [Ratio]) VALUES (1, N'DT001', N'LP001', 1275000, 0.45883940620782726)
INSERT [dbo].[RevenueReportDetail] ([RevenueReportDetailId], [RevenueReportId], [RoomTypeId], [Revenue], [Ratio]) VALUES (2, N'DT001', N'LP002', 828750, 0.2982456140350877)
INSERT [dbo].[RevenueReportDetail] ([RevenueReportDetailId], [RevenueReportId], [RoomTypeId], [Revenue], [Ratio]) VALUES (3, N'DT001', N'LP003', 675000, 0.242914979757085)
SET IDENTITY_INSERT [dbo].[RevenueReportDetail] OFF
GO
INSERT [dbo].[Room] ([RoomId], [RoomNumber], [RoomTypeId], [RoomStatus], [Note]) VALUES (N'PH001', 101, N'LP001', N'Phòng trống', N'Đây là phòng 101')
INSERT [dbo].[Room] ([RoomId], [RoomNumber], [RoomTypeId], [RoomStatus], [Note]) VALUES (N'PH002', 102, N'LP001', N'Phòng trống', N'Đây là phòng 102')
INSERT [dbo].[Room] ([RoomId], [RoomNumber], [RoomTypeId], [RoomStatus], [Note]) VALUES (N'PH003', 103, N'LP001', N'Phòng trống', N'Đây là phòng 103')
INSERT [dbo].[Room] ([RoomId], [RoomNumber], [RoomTypeId], [RoomStatus], [Note]) VALUES (N'PH004', 104, N'LP001', N'Phòng trống', N'Đây là phòng 104')
INSERT [dbo].[Room] ([RoomId], [RoomNumber], [RoomTypeId], [RoomStatus], [Note]) VALUES (N'PH005', 201, N'LP001', N'Phòng trống', N'Đây là phòng 201')
INSERT [dbo].[Room] ([RoomId], [RoomNumber], [RoomTypeId], [RoomStatus], [Note]) VALUES (N'PH006', 202, N'LP001', N'Phòng trống', N'Đây là phòng 202')
INSERT [dbo].[Room] ([RoomId], [RoomNumber], [RoomTypeId], [RoomStatus], [Note]) VALUES (N'PH007', 203, N'LP002', N'Phòng trống', N'Đây là phòng 203')
INSERT [dbo].[Room] ([RoomId], [RoomNumber], [RoomTypeId], [RoomStatus], [Note]) VALUES (N'PH008', 301, N'LP002', N'Phòng trống', N'Đây là phòng 301')
INSERT [dbo].[Room] ([RoomId], [RoomNumber], [RoomTypeId], [RoomStatus], [Note]) VALUES (N'PH009', 302, N'LP002', N'Phòng trống', N'Đây là phòng 302')
INSERT [dbo].[Room] ([RoomId], [RoomNumber], [RoomTypeId], [RoomStatus], [Note]) VALUES (N'PH010', 303, N'LP002', N'Phòng trống', N'Đây là phòng 303')
INSERT [dbo].[Room] ([RoomId], [RoomNumber], [RoomTypeId], [RoomStatus], [Note]) VALUES (N'PH011', 401, N'LP003', N'Phòng trống', N'Đây là phòng 401')
INSERT [dbo].[Room] ([RoomId], [RoomNumber], [RoomTypeId], [RoomStatus], [Note]) VALUES (N'PH012', 402, N'LP003', N'Phòng trống', N'Đây là phòng 402')
INSERT [dbo].[Room] ([RoomId], [RoomNumber], [RoomTypeId], [RoomStatus], [Note]) VALUES (N'PH013', 501, N'LP003', N'Phòng trống', N'Đây là phòng 501')
GO
INSERT [dbo].[RoomType] ([RoomTypeId], [RoomTypeName], [Price]) VALUES (N'LP001', N'Loại A', 150000)
INSERT [dbo].[RoomType] ([RoomTypeId], [RoomTypeName], [Price]) VALUES (N'LP002', N'Loại B', 170000)
INSERT [dbo].[RoomType] ([RoomTypeId], [RoomTypeName], [Price]) VALUES (N'LP003', N'Loại C', 200000)
GO
INSERT [dbo].[SurchargeRate] ([CustomerIndex], [Rate]) VALUES (3, 0.25)
GO
ALTER TABLE [dbo].[BillDetail]  WITH CHECK ADD  CONSTRAINT [FK_BillDetail_Bill] FOREIGN KEY([BillId])
REFERENCES [dbo].[Bill] ([BillId])
GO
ALTER TABLE [dbo].[BillDetail] CHECK CONSTRAINT [FK_BillDetail_Bill]
GO
ALTER TABLE [dbo].[BillDetail]  WITH CHECK ADD  CONSTRAINT [FK_BillDetail_Room] FOREIGN KEY([RoomId])
REFERENCES [dbo].[Room] ([RoomId])
GO
ALTER TABLE [dbo].[BillDetail] CHECK CONSTRAINT [FK_BillDetail_Room]
GO
ALTER TABLE [dbo].[RentalContract]  WITH CHECK ADD  CONSTRAINT [FK_RentalContract_Room] FOREIGN KEY([RoomId])
REFERENCES [dbo].[Room] ([RoomId])
GO
ALTER TABLE [dbo].[RentalContract] CHECK CONSTRAINT [FK_RentalContract_Room]
GO
ALTER TABLE [dbo].[RentalContractDetail]  WITH CHECK ADD  CONSTRAINT [FK_RentalContractDetail_CustomerType] FOREIGN KEY([CustomerTypeId])
REFERENCES [dbo].[CustomerType] ([CustomerTypeId])
GO
ALTER TABLE [dbo].[RentalContractDetail] CHECK CONSTRAINT [FK_RentalContractDetail_CustomerType]
GO
ALTER TABLE [dbo].[RentalContractDetail]  WITH CHECK ADD  CONSTRAINT [FK_RentalContractDetail_RentalContract] FOREIGN KEY([RentalContractId])
REFERENCES [dbo].[RentalContract] ([RentalContractId])
GO
ALTER TABLE [dbo].[RentalContractDetail] CHECK CONSTRAINT [FK_RentalContractDetail_RentalContract]
GO
ALTER TABLE [dbo].[RevenueReportDetail]  WITH CHECK ADD  CONSTRAINT [FK_RevenueReportDetail_RevenueReport] FOREIGN KEY([RevenueReportId])
REFERENCES [dbo].[RevenueReport] ([RevenueReportId])
GO
ALTER TABLE [dbo].[RevenueReportDetail] CHECK CONSTRAINT [FK_RevenueReportDetail_RevenueReport]
GO
ALTER TABLE [dbo].[RevenueReportDetail]  WITH CHECK ADD  CONSTRAINT [FK_RevenueReportDetail_RoomType] FOREIGN KEY([RoomTypeId])
REFERENCES [dbo].[RoomType] ([RoomTypeId])
GO
ALTER TABLE [dbo].[RevenueReportDetail] CHECK CONSTRAINT [FK_RevenueReportDetail_RoomType]
GO
ALTER TABLE [dbo].[Room]  WITH CHECK ADD  CONSTRAINT [FK_Room_RoomType] FOREIGN KEY([RoomTypeId])
REFERENCES [dbo].[RoomType] ([RoomTypeId])
GO
ALTER TABLE [dbo].[Room] CHECK CONSTRAINT [FK_Room_RoomType]
GO
USE [master]
GO
ALTER DATABASE [HotelManagementNMCNPM] SET  READ_WRITE 
GO
