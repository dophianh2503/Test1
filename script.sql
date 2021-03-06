USE [QLTTTHOC]
GO
/****** Object:  Table [dbo].[CHUYENNGANH]    Script Date: 6/14/2020 4:11:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHUYENNGANH](
	[MACN] [char](10) NOT NULL,
	[TENCN] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[MACN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DANGKYMONHOC]    Script Date: 6/14/2020 4:11:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DANGKYMONHOC](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MAHV] [char](10) NULL,
	[HOHV] [nvarchar](30) NULL,
	[TENHV] [nvarchar](30) NULL,
	[MAMH] [char](10) NULL,
	[TENMH] [nvarchar](30) NULL,
	[SOTIET] [int] NULL,
	[NGAYDANGKY] [datetime] NULL,
 CONSTRAINT [PK_DANGKYMONHOC_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOCVIEN]    Script Date: 6/14/2020 4:11:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOCVIEN](
	[MAHV] [char](10) NOT NULL,
	[HOHV] [nvarchar](30) NOT NULL,
	[TENHV] [nvarchar](30) NOT NULL,
	[PHAI] [bit] NULL,
	[NGAYSINH] [date] NULL,
	[NOISINH] [nvarchar](15) NULL,
	[MACN] [char](10) NULL,
	[images] [varchar](max) NULL,
 CONSTRAINT [PK__HOCVIEN__603F20D0527682EE] PRIMARY KEY CLUSTERED 
(
	[MAHV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KETQUA]    Script Date: 6/14/2020 4:11:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KETQUA](
	[MAHV] [char](10) NOT NULL,
	[MAMH] [char](10) NOT NULL,
	[DIEM] [real] NULL,
PRIMARY KEY CLUSTERED 
(
	[MAHV] ASC,
	[MAMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MONHOC]    Script Date: 6/14/2020 4:11:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MONHOC](
	[MAMH] [char](10) NOT NULL,
	[TENMH] [nvarchar](30) NULL,
	[SOTIET] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MAMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TAIKHOAN]    Script Date: 6/14/2020 4:11:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAIKHOAN](
	[USERNAME] [nvarchar](50) NOT NULL,
	[PASS] [nvarchar](50) NOT NULL,
	[ROLE] [varchar](10) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[CHUYENNGANH] ([MACN], [TENCN]) VALUES (N'ADR       ', N'Lập trình Android')
INSERT [dbo].[CHUYENNGANH] ([MACN], [TENCN]) VALUES (N'GAME      ', N'Lập trình game')
INSERT [dbo].[CHUYENNGANH] ([MACN], [TENCN]) VALUES (N'IOS       ', N'Lập trình IOS')
INSERT [dbo].[CHUYENNGANH] ([MACN], [TENCN]) VALUES (N'WEB       ', N'Lập trình Web')
INSERT [dbo].[CHUYENNGANH] ([MACN], [TENCN]) VALUES (N'MMT       ', N'Mạng máy tính')
SET IDENTITY_INSERT [dbo].[DANGKYMONHOC] ON 

INSERT [dbo].[DANGKYMONHOC] ([ID], [MAHV], [HOHV], [TENHV], [MAMH], [TENMH], [SOTIET], [NGAYDANGKY]) VALUES (1, N'A01       ', N'Nguyễn Thu', N'Hương', N'01        ', N'Nhập môn lập trình', 30, CAST(N'2020-06-13T00:00:00.000' AS DateTime))
INSERT [dbo].[DANGKYMONHOC] ([ID], [MAHV], [HOHV], [TENHV], [MAMH], [TENMH], [SOTIET], [NGAYDANGKY]) VALUES (2, N'A01       ', N'Nguyễn Thu', N'Hương', N'02        ', N'Trí tuệ nhân tạo', 45, CAST(N'2020-06-13T00:00:00.000' AS DateTime))
INSERT [dbo].[DANGKYMONHOC] ([ID], [MAHV], [HOHV], [TENHV], [MAMH], [TENMH], [SOTIET], [NGAYDANGKY]) VALUES (4, N'A02       ', N'Trần Văn', N'Chính', N'01        ', N'Nhập môn lập trình', 30, CAST(N'2020-06-13T16:51:42.000' AS DateTime))
INSERT [dbo].[DANGKYMONHOC] ([ID], [MAHV], [HOHV], [TENHV], [MAMH], [TENMH], [SOTIET], [NGAYDANGKY]) VALUES (5, N'A02       ', N'Trần Văn', N'Chính', N'04        ', N'Lập trình Swift', 50, CAST(N'2020-06-13T16:51:50.000' AS DateTime))
INSERT [dbo].[DANGKYMONHOC] ([ID], [MAHV], [HOHV], [TENHV], [MAMH], [TENMH], [SOTIET], [NGAYDANGKY]) VALUES (10, N'B01       ', N'Trần Thanh', N'Mai', N'05        ', N'Lập trinh Web Fullstack', 40, CAST(N'2020-06-14T14:38:55.000' AS DateTime))
INSERT [dbo].[DANGKYMONHOC] ([ID], [MAHV], [HOHV], [TENHV], [MAMH], [TENMH], [SOTIET], [NGAYDANGKY]) VALUES (11, N'B02       ', N'Trần Thị Thu', N'Thủy', N'02        ', N'Trí tuệ nhân tạo', 45, CAST(N'2020-06-14T14:39:00.000' AS DateTime))
INSERT [dbo].[DANGKYMONHOC] ([ID], [MAHV], [HOHV], [TENHV], [MAMH], [TENMH], [SOTIET], [NGAYDANGKY]) VALUES (12, N'A01       ', N'Nguyễn Thu', N'Hương', N'03        ', N'An ninh mạng', 45, CAST(N'2020-06-14T15:14:28.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[DANGKYMONHOC] OFF
INSERT [dbo].[HOCVIEN] ([MAHV], [HOHV], [TENHV], [PHAI], [NGAYSINH], [NOISINH], [MACN], [images]) VALUES (N'A01       ', N'Nguyễn Thu', N'Hương', 0, CAST(N'1980-02-23' AS Date), N'TP.HCM', N'ADR       ', N'anh-1.jpg')
INSERT [dbo].[HOCVIEN] ([MAHV], [HOHV], [TENHV], [PHAI], [NGAYSINH], [NOISINH], [MACN], [images]) VALUES (N'A02       ', N'Trần Văn', N'Chính', 1, CAST(N'1982-12-24' AS Date), N'TP.HCM', N'IOS       ', N'anh-3.jpg')
INSERT [dbo].[HOCVIEN] ([MAHV], [HOHV], [TENHV], [PHAI], [NGAYSINH], [NOISINH], [MACN], [images]) VALUES (N'A03       ', N'Lê Thu Bạch', N'Yến', 0, CAST(N'1982-12-12' AS Date), N'Hà Nội', N'WEB       ', N'anh-2.jpg')
INSERT [dbo].[HOCVIEN] ([MAHV], [HOHV], [TENHV], [PHAI], [NGAYSINH], [NOISINH], [MACN], [images]) VALUES (N'A04       ', N'Trần Anh', N'Tuấn', 1, CAST(N'1984-12-08' AS Date), N'Long An', N'MMT       ', N'hinh-4.jpg')
INSERT [dbo].[HOCVIEN] ([MAHV], [HOHV], [TENHV], [PHAI], [NGAYSINH], [NOISINH], [MACN], [images]) VALUES (N'A05       ', N'Trần Thanh', N'Triều', 1, CAST(N'1980-02-01' AS Date), N'Hà Nội', N'GAME      ', NULL)
INSERT [dbo].[HOCVIEN] ([MAHV], [HOHV], [TENHV], [PHAI], [NGAYSINH], [NOISINH], [MACN], [images]) VALUES (N'B01       ', N'Trần Thanh', N'Mai', 0, CAST(N'1981-12-20' AS Date), N'Bến Tre', N'WEB       ', NULL)
INSERT [dbo].[HOCVIEN] ([MAHV], [HOHV], [TENHV], [PHAI], [NGAYSINH], [NOISINH], [MACN], [images]) VALUES (N'B02       ', N'Trần Thị Thu', N'Thủy', 0, CAST(N'1982-02-13' AS Date), N'TP.HCM', N'ADR       ', NULL)
INSERT [dbo].[HOCVIEN] ([MAHV], [HOHV], [TENHV], [PHAI], [NGAYSINH], [NOISINH], [MACN], [images]) VALUES (N'B03       ', N'Trần Thị', N'Thanh', 0, CAST(N'1982-12-31' AS Date), N'TP.HCM', N'IOS       ', NULL)
INSERT [dbo].[KETQUA] ([MAHV], [MAMH], [DIEM]) VALUES (N'A01       ', N'01        ', 5)
INSERT [dbo].[KETQUA] ([MAHV], [MAMH], [DIEM]) VALUES (N'A01       ', N'02        ', 5)
INSERT [dbo].[KETQUA] ([MAHV], [MAMH], [DIEM]) VALUES (N'A01       ', N'03        ', 5)
INSERT [dbo].[KETQUA] ([MAHV], [MAMH], [DIEM]) VALUES (N'A01       ', N'04        ', 5)
INSERT [dbo].[KETQUA] ([MAHV], [MAMH], [DIEM]) VALUES (N'A02       ', N'01        ', 5)
INSERT [dbo].[KETQUA] ([MAHV], [MAMH], [DIEM]) VALUES (N'A03       ', N'04        ', 10)
INSERT [dbo].[KETQUA] ([MAHV], [MAMH], [DIEM]) VALUES (N'A03       ', N'06        ', 10)
INSERT [dbo].[KETQUA] ([MAHV], [MAMH], [DIEM]) VALUES (N'A04       ', N'04        ', 6)
INSERT [dbo].[KETQUA] ([MAHV], [MAMH], [DIEM]) VALUES (N'B01       ', N'01        ', 0)
INSERT [dbo].[KETQUA] ([MAHV], [MAMH], [DIEM]) VALUES (N'B01       ', N'04        ', 8)
INSERT [dbo].[KETQUA] ([MAHV], [MAMH], [DIEM]) VALUES (N'B02       ', N'03        ', 6)
INSERT [dbo].[KETQUA] ([MAHV], [MAMH], [DIEM]) VALUES (N'B02       ', N'04        ', 8)
INSERT [dbo].[KETQUA] ([MAHV], [MAMH], [DIEM]) VALUES (N'B03       ', N'03        ', 9)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTIET]) VALUES (N'01        ', N'Nhập môn lập trình', 30)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTIET]) VALUES (N'02        ', N'Trí tuệ nhân tạo', 45)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTIET]) VALUES (N'03        ', N'An ninh mạng', 45)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTIET]) VALUES (N'04        ', N'Lập trình Swift', 50)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTIET]) VALUES (N'05        ', N'Lập trinh Web Fullstack', 40)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTIET]) VALUES (N'06        ', N'Moblie Android', 30)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTIET]) VALUES (N'07        ', N'Lập trình game với Unity', 30)
INSERT [dbo].[TAIKHOAN] ([USERNAME], [PASS], [ROLE]) VALUES (N'admin', N'admin', N'admin')
INSERT [dbo].[TAIKHOAN] ([USERNAME], [PASS], [ROLE]) VALUES (N'kiet', N'2502', N'admin')
INSERT [dbo].[TAIKHOAN] ([USERNAME], [PASS], [ROLE]) VALUES (N'an123', N'123', N'member')
INSERT [dbo].[TAIKHOAN] ([USERNAME], [PASS], [ROLE]) VALUES (N'linh', N'123', N'member')
INSERT [dbo].[TAIKHOAN] ([USERNAME], [PASS], [ROLE]) VALUES (N'1', N'1', N'member')
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__CHUYENNG__A58D6F62117214DD]    Script Date: 6/14/2020 4:11:29 PM ******/
ALTER TABLE [dbo].[CHUYENNGANH] ADD UNIQUE NONCLUSTERED 
(
	[TENCN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DANGKYMONHOC] ADD  CONSTRAINT [DF_DANGKYMONHOC_SOTIET]  DEFAULT ((30)) FOR [SOTIET]
GO
ALTER TABLE [dbo].[DANGKYMONHOC] ADD  CONSTRAINT [DF_DANGKYMONHOC_DATECREATE]  DEFAULT (getdate()) FOR [NGAYDANGKY]
GO
ALTER TABLE [dbo].[MONHOC] ADD  DEFAULT ((30)) FOR [SOTIET]
GO
ALTER TABLE [dbo].[HOCVIEN]  WITH CHECK ADD  CONSTRAINT [FK__HOCVIEN__MACN__5165187F] FOREIGN KEY([MACN])
REFERENCES [dbo].[CHUYENNGANH] ([MACN])
GO
ALTER TABLE [dbo].[HOCVIEN] CHECK CONSTRAINT [FK__HOCVIEN__MACN__5165187F]
GO
ALTER TABLE [dbo].[KETQUA]  WITH CHECK ADD  CONSTRAINT [FK__KETQUA__MAHV__5441852A] FOREIGN KEY([MAHV])
REFERENCES [dbo].[HOCVIEN] ([MAHV])
GO
ALTER TABLE [dbo].[KETQUA] CHECK CONSTRAINT [FK__KETQUA__MAHV__5441852A]
GO
ALTER TABLE [dbo].[KETQUA]  WITH CHECK ADD FOREIGN KEY([MAMH])
REFERENCES [dbo].[MONHOC] ([MAMH])
GO
ALTER TABLE [dbo].[HOCVIEN]  WITH CHECK ADD  CONSTRAINT [CK__HOCVIEN__PHAI__5070F446] CHECK  (([PHAI]=(1) OR [PHAI]=(0)))
GO
ALTER TABLE [dbo].[HOCVIEN] CHECK CONSTRAINT [CK__HOCVIEN__PHAI__5070F446]
GO
ALTER TABLE [dbo].[KETQUA]  WITH CHECK ADD CHECK  (([DIEM]>=(0) AND [DIEM]<=(10)))
GO
ALTER TABLE [dbo].[MONHOC]  WITH CHECK ADD CHECK  (([SOTIET]>=(30)))
GO
