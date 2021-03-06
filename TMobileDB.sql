USE [TMobileDB]
GO
/****** Object:  Table [dbo].[User]    Script Date: 11/01/2014 16:26:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[TenDangNhap] [nvarchar](50) NULL,
	[MatKhau] [nvarchar](50) NULL,
	[QuyenTaiKhoan] [int] NULL,
	[Email] [nvarchar](50) NULL,
	[SoDT] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[CreditCard] [nvarchar](50) NULL,
	[CMND] [nvarchar](50) NULL,
	[CauHoiBaoMat] [nvarchar](50) NULL,
	[CauTraLoi] [nvarchar](50) NULL,
	[DaKichHoat] [bit] NULL,
	[HoTen] [nvarchar](100) NULL,
	[NgaySinh] [datetime] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[User] ON
INSERT [dbo].[User] ([UserID], [TenDangNhap], [MatKhau], [QuyenTaiKhoan], [Email], [SoDT], [DiaChi], [CreditCard], [CMND], [CauHoiBaoMat], [CauTraLoi], [DaKichHoat], [HoTen], [NgaySinh]) VALUES (1, N'trung1992', N'123456', 1, N'tranquoctrung.1610@gmail.com', N'01268616869', N'19 Trịnh Hoài Đức, phường 13, quận 5.', NULL, N'027916529', NULL, NULL, 1, N'Trần Quốc Trung', CAST(0x0000846300000000 AS DateTime))
INSERT [dbo].[User] ([UserID], [TenDangNhap], [MatKhau], [QuyenTaiKhoan], [Email], [SoDT], [DiaChi], [CreditCard], [CMND], [CauHoiBaoMat], [CauTraLoi], [DaKichHoat], [HoTen], [NgaySinh]) VALUES (2, N'thevinh', N'123456', 1, N'thevinh@gmail.com', N'090123456', N'Phú Yên, Việt Nam', NULL, N'02315489', NULL, NULL, 1, N'Nguyễn Thế Vinh', CAST(0x0000821600000000 AS DateTime))
INSERT [dbo].[User] ([UserID], [TenDangNhap], [MatKhau], [QuyenTaiKhoan], [Email], [SoDT], [DiaChi], [CreditCard], [CMND], [CauHoiBaoMat], [CauTraLoi], [DaKichHoat], [HoTen], [NgaySinh]) VALUES (3, N'anhthien', N'123456', 1, N'tranquoctrung_92@yahoo.com', N'01245678954', N'19 Trinh Hoai Duc', NULL, N'144444444', N'Who is your idol?', N'No one', 1, N'Tran Anh Thiện', CAST(0x0000A3C801034700 AS DateTime))
INSERT [dbo].[User] ([UserID], [TenDangNhap], [MatKhau], [QuyenTaiKhoan], [Email], [SoDT], [DiaChi], [CreditCard], [CMND], [CauHoiBaoMat], [CauTraLoi], [DaKichHoat], [HoTen], [NgaySinh]) VALUES (6, N'sang123', N'sang123', NULL, N'sang@gmail.com', N'01298653256', N'Bà Hom, Quận 6', NULL, N'01254687', NULL, NULL, NULL, N'Đặng Ngọc Sang', CAST(0x0000846300000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[User] OFF
/****** Object:  Table [dbo].[TrangThaiXuatKho]    Script Date: 11/01/2014 16:26:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrangThaiXuatKho](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ten] [nvarchar](100) NULL,
 CONSTRAINT [PK_TrangThaiXuatKho] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TrangThaiXuatKho] ON
INSERT [dbo].[TrangThaiXuatKho] ([id], [ten]) VALUES (1, N'Chưa xuất')
INSERT [dbo].[TrangThaiXuatKho] ([id], [ten]) VALUES (2, N'Đã xuất')
SET IDENTITY_INSERT [dbo].[TrangThaiXuatKho] OFF
/****** Object:  Table [dbo].[TrangThaiHoaDon]    Script Date: 11/01/2014 16:26:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrangThaiHoaDon](
	[TrangThai] [int] NOT NULL,
	[TenTrangThai] [nvarchar](50) NULL,
 CONSTRAINT [PK_TrangThaiHoaDon] PRIMARY KEY CLUSTERED 
(
	[TrangThai] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[TrangThaiHoaDon] ([TrangThai], [TenTrangThai]) VALUES (0, N'Chưa liên lạc')
INSERT [dbo].[TrangThaiHoaDon] ([TrangThai], [TenTrangThai]) VALUES (1, N'Đã liên lạc')
INSERT [dbo].[TrangThaiHoaDon] ([TrangThai], [TenTrangThai]) VALUES (2, N'Đã giao')
/****** Object:  Table [dbo].[TrangThai_SanPham]    Script Date: 11/01/2014 16:26:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrangThai_SanPham](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ten] [nvarchar](100) NULL,
 CONSTRAINT [PK_TrangThai_SanPham] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TrangThai_SanPham] ON
INSERT [dbo].[TrangThai_SanPham] ([id], [ten]) VALUES (1, N'Mới')
INSERT [dbo].[TrangThai_SanPham] ([id], [ten]) VALUES (2, N'Bán chạy')
INSERT [dbo].[TrangThai_SanPham] ([id], [ten]) VALUES (3, N'Còn hàng')
INSERT [dbo].[TrangThai_SanPham] ([id], [ten]) VALUES (4, N'Hết hàng')
SET IDENTITY_INSERT [dbo].[TrangThai_SanPham] OFF
/****** Object:  Table [dbo].[TuVan]    Script Date: 11/01/2014 16:26:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TuVan](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Tieude] [nvarchar](500) NULL,
	[Hinhnho] [nvarchar](500) NULL,
	[Chitiet] [ntext] NULL,
	[Hinhlon] [nvarchar](500) NULL,
 CONSTRAINT [PK_TuVan] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChucVu]    Script Date: 11/01/2014 16:26:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucVu](
	[MaChucVu] [int] IDENTITY(1,1) NOT NULL,
	[TenChucVu] [nvarchar](max) NULL,
	[MoTa] [nvarchar](max) NULL,
 CONSTRAINT [PK_ChucVu] PRIMARY KEY CLUSTERED 
(
	[MaChucVu] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 11/01/2014 16:26:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNCC] [int] IDENTITY(1,1) NOT NULL,
	[TenNCC] [nvarchar](50) NULL,
	[DiaChiNCC] [nvarchar](50) NULL,
	[SoDTNCC] [nvarchar](50) NULL,
	[EmailNCC] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhaCungCap] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[NhaCungCap] ON
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChiNCC], [SoDTNCC], [EmailNCC]) VALUES (1, N'FPT', N'12 Lê Lai, quận 1, TP', N'38007256', N'fptshop@fpt.com')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChiNCC], [SoDTNCC], [EmailNCC]) VALUES (2, N'Viettel', N'50 Lê Đại Hành, quận 10, TP', N'36048000', N'viettel@vt.com')
SET IDENTITY_INSERT [dbo].[NhaCungCap] OFF
/****** Object:  Table [dbo].[Menu]    Script Date: 11/01/2014 16:26:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[idMenu] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Link] [nvarchar](100) NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[idMenu] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Menu] ON
INSERT [dbo].[Menu] ([idMenu], [Name], [Link]) VALUES (1, N'TRANG CHỦ', N'Default.aspx')
INSERT [dbo].[Menu] ([idMenu], [Name], [Link]) VALUES (2, N'TƯ VẤN', N'TuVan.aspx')
INSERT [dbo].[Menu] ([idMenu], [Name], [Link]) VALUES (3, N'LIÊN HỆ', N'LienHe.aspx')
INSERT [dbo].[Menu] ([idMenu], [Name], [Link]) VALUES (4, N'GIỎ HÀNG', N'GioHang.aspx')
SET IDENTITY_INSERT [dbo].[Menu] OFF
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 11/01/2014 16:26:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLoai] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nchar](50) NULL,
	[MoTaLoai] [nvarchar](1000) NULL,
 CONSTRAINT [PK_LoaiSanPham] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[LoaiSanPham] ON
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai], [MoTaLoai]) VALUES (1, N'Dòng cao cấp                                      ', N'')
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai], [MoTaLoai]) VALUES (2, N'Dòng trung cấp                                    ', NULL)
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai], [MoTaLoai]) VALUES (3, N'Dòng phổ thông                                    ', NULL)
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai], [MoTaLoai]) VALUES (4, N'Điện thoại giá rẻ                                 ', NULL)
SET IDENTITY_INSERT [dbo].[LoaiSanPham] OFF
/****** Object:  Table [dbo].[NhaSanXuat]    Script Date: 11/01/2014 16:26:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaSanXuat](
	[MaNSX] [int] IDENTITY(1,1) NOT NULL,
	[TenNSX] [nvarchar](50) NULL,
	[GioiThieuNSX] [nvarchar](1000) NULL,
 CONSTRAINT [PK_NhaSanXuat] PRIMARY KEY CLUSTERED 
(
	[MaNSX] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[NhaSanXuat] ON
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [GioiThieuNSX]) VALUES (1, N'Nokia', N'Nokia Finland')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [GioiThieuNSX]) VALUES (2, N'Samsung', N'Samsung Korea')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [GioiThieuNSX]) VALUES (3, N'Iphone', N'Apple')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [GioiThieuNSX]) VALUES (4, N'Sony', N'Sony Entertainment')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [GioiThieuNSX]) VALUES (5, N'HTC', N'HTC Taiwan')
SET IDENTITY_INSERT [dbo].[NhaSanXuat] OFF
/****** Object:  Table [dbo].[NhanVien]    Script Date: 11/01/2014 16:26:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNhanVien] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](max) NULL,
	[password] [nvarchar](max) NULL,
	[HoTen] [nvarchar](max) NULL,
	[NgaySinh] [datetime] NULL,
	[SoDT] [nvarchar](max) NULL,
	[DiaChi] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[ChucVu] [int] NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 11/01/2014 16:26:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSanPham] [int] IDENTITY(1,1) NOT NULL,
	[MaNSX] [int] NULL,
	[MaLoai] [int] NULL,
	[TenSanPham] [nvarchar](50) NULL,
	[MoTaSanPham] [nvarchar](1000) NULL,
	[NgayThem] [date] NULL,
	[HinhLon] [nvarchar](50) NULL,
	[HinhNho] [nvarchar](50) NULL,
	[ManHinh] [nvarchar](50) NULL,
	[HDH] [nvarchar](50) NULL,
	[BoXuLy] [nvarchar](50) NULL,
	[BoNho] [nvarchar](50) NULL,
	[3G] [nvarchar](50) NULL,
	[WLan] [nvarchar](50) NULL,
	[Camera] [nvarchar](50) NULL,
	[Gia] [float] NULL,
	[TinhNang] [nvarchar](100) NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON
INSERT [dbo].[SanPham] ([MaSanPham], [MaNSX], [MaLoai], [TenSanPham], [MoTaSanPham], [NgayThem], [HinhLon], [HinhNho], [ManHinh], [HDH], [BoXuLy], [BoNho], [3G], [WLan], [Camera], [Gia], [TinhNang], [TrangThai]) VALUES (3, 1, 1, N'Nokia 1020', N'Sử dụng micro sim, tích hợp mạng xã hội, mic chuyên dụng chống ồn, 7Gb lưu trữ Sky drive, lịch tổ chức, xem văn bản...', CAST(0xF5370B00 AS Date), N'Limua-1020.jpg', N'Limua-1020.jpg', N'4.5"', N'Microsoft Windows Phone 8', N'Dual-core 1.5 GHz Krait, Adreno 225 GPU', N'32 GB, 2 GB RAM', N'HSDPA, 42.2 Mbps; HSUPA, 5.76 Mbps', N'Wi-Fi 802.11 a/b/g/n, dual-band, DLNA', N'41 MP, 7152 x 5368 pixels, Carl Zeiss optics, auto', 13990000, N'', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [MaNSX], [MaLoai], [TenSanPham], [MoTaSanPham], [NgayThem], [HinhLon], [HinhNho], [ManHinh], [HDH], [BoXuLy], [BoNho], [3G], [WLan], [Camera], [Gia], [TinhNang], [TrangThai]) VALUES (8, 5, 4, N'HTC DESIRE 200', N'Tích hợp mạng xã hội, nhập liệu đoán trước từ, xem chỉnh sửa ảnh, ghi âm, quay số bằng giọng nói...', CAST(0xF8370B00 AS Date), N'htc-desire-200.jpg', N'htc-desire-200.jpg', N'3.5"', N'Android OS, v4.1.2 (Jelly Bean)', N'1 GHz', N'4 GB, 512 MB RAM', N'HSDPA, 7.2 Mbps; HSUPA, 5.76 Mbps', N'Wi-Fi 802.11 b/g/n, Wi-Fi hotspot', N'5 MP, 2592х1944 pixels', 2590000, N'', 2)
INSERT [dbo].[SanPham] ([MaSanPham], [MaNSX], [MaLoai], [TenSanPham], [MoTaSanPham], [NgayThem], [HinhLon], [HinhNho], [ManHinh], [HDH], [BoXuLy], [BoNho], [3G], [WLan], [Camera], [Gia], [TinhNang], [TrangThai]) VALUES (17, 2, 1, N'SAMSUNG GALAXY NOTE 3 N900', N'Bút S-pen, micro-sim, ra lệnh bằng s-voice, Dropbox 50Gb, TV-out, tích hợp mạng xã hội, mic chống ồn chuyên dụng,...', CAST(0xF8370B00 AS Date), N'Note3.jpg', N'Note3.jpg', N'5.7"', N'Android OS, v4.3 (Jelly Bean)', N'Octa-core 1.9 GHz (Dùng 2 CPU: A15 1.9 GHz ＋ A7 1.', N'32GB, 3 GB RAM', N'HSDPA, 42.2 Mbps; HSUPA, 5.76 Mbps', N'Wi-Fi 802.11 a/b/g/n, dual-band, DLNA, Wi-Fi Direc', N'13 MP, 4128 x 3096 pixels, autofocus, LED flash', 16990000, N'', 3)
INSERT [dbo].[SanPham] ([MaSanPham], [MaNSX], [MaLoai], [TenSanPham], [MoTaSanPham], [NgayThem], [HinhLon], [HinhNho], [ManHinh], [HDH], [BoXuLy], [BoNho], [3G], [WLan], [Camera], [Gia], [TinhNang], [TrangThai]) VALUES (18, 4, 3, N'SONY XPERIA C (2 SIM 2 SÓNG)', N'Tích hợp mạng xã hội, xem văn bản, nhập liệu đoán trước từ, ra lệnh bằng giọng nói,...', CAST(0xF8370B00 AS Date), N'sony-xperia-c.jpg', N'sony-xperia-c.jpg', N'5.0"', N'Android OS, v4.2.2 (Jelly Bean)', N'Quad-core 1.2 GHz, PowerVR SGX544 GPU', N'4 GB, 1 GB RAM', N'HSDPA, 42.2 Mbps; HSUPA, 5.76 Mbps', N'Wi-Fi 802.11 b/g/n, Wi-Fi Direct, Wi-Fi hotspot', N'8 MP, 3264 x 2448 pixels, autofocus, LED flash', 19020000, N'', 4)
INSERT [dbo].[SanPham] ([MaSanPham], [MaNSX], [MaLoai], [TenSanPham], [MoTaSanPham], [NgayThem], [HinhLon], [HinhNho], [ManHinh], [HDH], [BoXuLy], [BoNho], [3G], [WLan], [Camera], [Gia], [TinhNang], [TrangThai]) VALUES (20, 2, 1, N'Samsung Galaxy S4 I9500', N'ra lệnh bằng s-voice, Dropbox 50Gb, TV-out, tích hợp mạng xã hội, mic chống ồn chuyên dụng,...
', CAST(0xFC370B00 AS Date), N'Samsung-Galaxy-S45628.jpg', N'Samsung-Galaxy-S45628.jpg', N'4.99"', N' Android OS, v4.2.2 (Jelly Bean)', N'Octa-core 1.6 GHz Cortex-A15, PowerVR SGX 544MP3 G', N'16 GB, 2GB RAM', N'HSDPA, 42.2 Mbps; HSUPA, 5.76 Mbps', N' Wi-Fi 802.11 a/b/g/n/ac, dual-band, DLNA, Wi-Fi D', N'13 MP, 4128 x 3096 pixels, autofocus, LED flash', 13990000, N'', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [MaNSX], [MaLoai], [TenSanPham], [MoTaSanPham], [NgayThem], [HinhLon], [HinhNho], [ManHinh], [HDH], [BoXuLy], [BoNho], [3G], [WLan], [Camera], [Gia], [TinhNang], [TrangThai]) VALUES (21, 3, 1, N'APPLE IPHONE 5 16GB GLOBAL', N'Sử dụng nano-sim, dịch vụ Icloud, iMaps, iBook, Tv-out, ra lệnh bằng giọng nói Siri,...', CAST(0xFC370B00 AS Date), N'iPhone-5-Black.jpg', N'iPhone-5-Black.jpg', N'4.0"', N'iOS 6', N'Dual-core 1.2 GHz, PowerVR SGX 543MP3 (chip đồ họa', N'16 GB, 1 GB RAM', N'DC-HSDPA, 42 Mbps; HSDPA, 21 Mbps; HSUPA, 5.76 Mbp', N'Wi-Fi 802.11 a/b/g/n, dual-band, Wi-Fi hotspot', N'8 MP, 3264x2448 pixels, autofocus, LED flash', 15490000, N'', 2)
INSERT [dbo].[SanPham] ([MaSanPham], [MaNSX], [MaLoai], [TenSanPham], [MoTaSanPham], [NgayThem], [HinhLon], [HinhNho], [ManHinh], [HDH], [BoXuLy], [BoNho], [3G], [WLan], [Camera], [Gia], [TinhNang], [TrangThai]) VALUES (22, 2, 2, N'SAMSUNG GALAXY WIN I8552', N'ra lệnh bằng s-voice, Dropbox 50Gb, TV-out, tích hợp mạng xã hội, mic chống ồn chuyên dụng,...', CAST(0xFD370B00 AS Date), N'Samsung-Galaxy-Win.jpg', N'Samsung-Galaxy-Win.jpg', N'4,7 inch', N'Android OS, v4.1.2 (Jelly Bean)', N'Quad-core 1.2 GHz Cortex-A5, Adreno 203 GPU', N'8 GB, 1 GB RAM', N'HSDPA, 7.2 Mbps; HSUPA, 5.76 Mbps', N'Wi-Fi 802.11 b/g/n, Wi-Fi hotspot, DLNA', N'5 MP, 2592х1944 pixels, autofocus, LED flash', 5890000, N'', 3)
INSERT [dbo].[SanPham] ([MaSanPham], [MaNSX], [MaLoai], [TenSanPham], [MoTaSanPham], [NgayThem], [HinhLon], [HinhNho], [ManHinh], [HDH], [BoXuLy], [BoNho], [3G], [WLan], [Camera], [Gia], [TinhNang], [TrangThai]) VALUES (23, 1, 2, N'NOKIA LUMIA 720', N'Sử dụng micro sim, tích hợp mạng xã hội, mic chuyên dụng chống ồn, 7Gb lưu trữ Sky drive, lịch tổ chức, xem văn bản...', CAST(0xFD370B00 AS Date), N'Nokia-Lumia-720.jpg', N'Nokia-Lumia-720.jpg', N'4.3"', N'Windows Phone 8', N'Dual-core 1 GHz', N'8 GB, 512 MB RAM', N'HSDPA, 21 Mbps; HSUPA, 5.76 Mbps', N'Wi-Fi 802.11 a/b/g/n, dual-band', N'6.7 MP, Carl Zeiss optics, autofocus, LED flash', 6690000, N'', 4)
INSERT [dbo].[SanPham] ([MaSanPham], [MaNSX], [MaLoai], [TenSanPham], [MoTaSanPham], [NgayThem], [HinhLon], [HinhNho], [ManHinh], [HDH], [BoXuLy], [BoNho], [3G], [WLan], [Camera], [Gia], [TinhNang], [TrangThai]) VALUES (24, 2, 2, N'SAMSUNG GALAXY WIN I8552', N'ra lệnh bằng s-voice, Dropbox 50Gb, TV-out, tích hợp mạng xã hội, mic chống ồn chuyên dụng,...
', CAST(0xFD370B00 AS Date), N'Samsung-Galaxy-Win.jpg', N'Samsung-Galaxy-Win.jpg', N'4,7 inch', N'Android OS, v4.1.2 (Jelly Bean)', N'Quad-core 1.2 GHz Cortex-A5, Adreno 203 GPU', N'8 GB, 1 GB RAM', N'HSDPA, 7.2 Mbps; HSUPA, 5.76 Mbps', N'Wi-Fi 802.11 b/g/n, Wi-Fi hotspot, DLNA', N'5 MP, 2592х1944 pixels, autofocus, LED flash', 5890000, N'', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [MaNSX], [MaLoai], [TenSanPham], [MoTaSanPham], [NgayThem], [HinhLon], [HinhNho], [ManHinh], [HDH], [BoXuLy], [BoNho], [3G], [WLan], [Camera], [Gia], [TinhNang], [TrangThai]) VALUES (25, 4, 2, N'SONY XPERIA L', N'25', CAST(0xFD370B00 AS Date), N'sony-xperia-l (1).jpg', N'sony-xperia-l (1).jpg', N'4.3 inches', N'Android OS, v4.1 (Jelly Bean)', N'Dual-core 1 GHz, Adreno 305 GPU', N'8 GB (5.8 GB sử dụng), 1 GB RAM', N'HSDPA, 21 Mbps; HSUPA, 5.76 Mbps', N'Wi-Fi 802.11 a/b/g/n, dual-band, Wi-Fi Direct, DLN', N'8 MP, 3264 x 2448 pixels, autofocus, LED flash', 6790000, N'', 2)
INSERT [dbo].[SanPham] ([MaSanPham], [MaNSX], [MaLoai], [TenSanPham], [MoTaSanPham], [NgayThem], [HinhLon], [HinhNho], [ManHinh], [HDH], [BoXuLy], [BoNho], [3G], [WLan], [Camera], [Gia], [TinhNang], [TrangThai]) VALUES (26, 5, 2, N'HTC ONE X 16GB', N'Sử dụng micro sim, tích hợp mạng xã hội, mic chuyên dụng chống ồn, 7Gb lưu trữ Sky drive, lịch tổ chức, xem văn bản...', CAST(0xFD370B00 AS Date), N'HTC-One-X-16GB.jpg', N'HTC-One-X-16GB.jpg', N'4.7 inches', N'Android OS, v4.1 (Jelly Bean)', N'Quad-core 1.5 GHz, ULP GeForce GPU', N'16 GB, 1 GB RAM', N'HSDPA, 21 Mbps; HSUPA, 5.76 Mbps', N'Wi-Fi 802.11 a/b/g/n, dual-band, Wi-Fi Direct, DLN', N'8 MP, 3264x2448 pixels, autofocus, LED flash', 7190000, N'', 3)
INSERT [dbo].[SanPham] ([MaSanPham], [MaNSX], [MaLoai], [TenSanPham], [MoTaSanPham], [NgayThem], [HinhLon], [HinhNho], [ManHinh], [HDH], [BoXuLy], [BoNho], [3G], [WLan], [Camera], [Gia], [TinhNang], [TrangThai]) VALUES (27, 2, 4, N'SAMSUNG CORBY II S3850', N'27', CAST(0xFD370B00 AS Date), N'Corby-II_1.jpg', N'Corby-II_1.jpg', N'3.2 inches', N'', N'', N'26 MB microSD (TransFlash) hỗ trợ lên đến 16GB', N'', N'Wi-Fi 802.11 b/g/n', N'2 MP, 1600x1200 pixels', 1490000, N'', 4)
INSERT [dbo].[SanPham] ([MaSanPham], [MaNSX], [MaLoai], [TenSanPham], [MoTaSanPham], [NgayThem], [HinhLon], [HinhNho], [ManHinh], [HDH], [BoXuLy], [BoNho], [3G], [WLan], [Camera], [Gia], [TinhNang], [TrangThai]) VALUES (28, 1, 4, N'NOKIA 515 (2 SIM 2 SÓNG)', N'', CAST(0xFD370B00 AS Date), N'nokia_515.jpg', N'nokia_515.jpg', N'2.4 inches', N'', N'', N'256 MB, 64 MB RAM', N'HSDPA, 7.2 Mbps; HSUPA, 5.76 Mbps', N'Wi-Fi 802.11 b/g/n', N'5 MP, 2592x1944 pixels, LED flash', 3490000, N'', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [MaNSX], [MaLoai], [TenSanPham], [MoTaSanPham], [NgayThem], [HinhLon], [HinhNho], [ManHinh], [HDH], [BoXuLy], [BoNho], [3G], [WLan], [Camera], [Gia], [TinhNang], [TrangThai]) VALUES (29, 1, 4, N'NOKIA 106', N'29', CAST(0xFD370B00 AS Date), N'nokia-106.jpg', N'nokia-106.jpg', N'1.8 inches', N'', N'', N'384 kB RAM', N'', N'', N'', 499000, N'', 2)
INSERT [dbo].[SanPham] ([MaSanPham], [MaNSX], [MaLoai], [TenSanPham], [MoTaSanPham], [NgayThem], [HinhLon], [HinhNho], [ManHinh], [HDH], [BoXuLy], [BoNho], [3G], [WLan], [Camera], [Gia], [TinhNang], [TrangThai]) VALUES (30, 1, 4, N'NOKIA ASHA 210 (2 SIM 2 SÓNG)', N'30', CAST(0xFD370B00 AS Date), N'Nokia-Asha-210-Dual-Sim.jpg', N'Nokia-Asha-210-Dual-Sim.jpg', N'2.4 inches', N'Nokia S.40', N'', N'64 MB, 32 MB RAM', N'', N'Wi-Fi 802.11 b/g', N'2 MP, 1600x1200 pixels', 1640000, N'', 3)
INSERT [dbo].[SanPham] ([MaSanPham], [MaNSX], [MaLoai], [TenSanPham], [MoTaSanPham], [NgayThem], [HinhLon], [HinhNho], [ManHinh], [HDH], [BoXuLy], [BoNho], [3G], [WLan], [Camera], [Gia], [TinhNang], [TrangThai]) VALUES (31, 1, 3, N'NOKIA LUMIA 520', N'31', CAST(0xFD370B00 AS Date), N'Nokia-Lumia-520.jpg', N'Nokia-Lumia-520.jpg', N'4.0 inches', N'Microsoft Windows Phone 8', N'Dual-core 1 GHz', N'8 GB, 512 MB RAM', N'HSDPA, 21 Mbps; HSUPA, 5.76 Mbps', N'Wi-Fi 802.11 b/g', N'5 MP, 2592х1944 pixels, autofocus', 2999000, N'', 4)
INSERT [dbo].[SanPham] ([MaSanPham], [MaNSX], [MaLoai], [TenSanPham], [MoTaSanPham], [NgayThem], [HinhLon], [HinhNho], [ManHinh], [HDH], [BoXuLy], [BoNho], [3G], [WLan], [Camera], [Gia], [TinhNang], [TrangThai]) VALUES (32, 5, 3, N'HTC DESIRE V (2 SIM 2 SÓNG)', N'32', CAST(0xFD370B00 AS Date), N'HTC-DesireV.jpg', N'HTC-DesireV.jpg', N'4.0 inches', N'Android OS, v4.0 (Ice Cream Sandwich)', N'1 GHz Cortex-A5, Adreno 200 GPU', N'4 GB, 512 MB RAM', N'HSDPA, 21 Mbps; HSUPA, 5.76 Mbps', N'Wi-Fi 802.11 b/g/n, Wi-Fi hotspot', N'5 MP, 2592х1944 pixels, autofocus, LED flash', 3399000, N'', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [MaNSX], [MaLoai], [TenSanPham], [MoTaSanPham], [NgayThem], [HinhLon], [HinhNho], [ManHinh], [HDH], [BoXuLy], [BoNho], [3G], [WLan], [Camera], [Gia], [TinhNang], [TrangThai]) VALUES (33, 2, 3, N'SAMSUNG GALAXY TREND S7560', N'33', CAST(0xFD370B00 AS Date), N'Samsung-Galaxy-Trend-S7560.jpg', N'Samsung-Galaxy-Trend-S7560.jpg', N'4.0 inches', N'Android OS, v4.0 (Ice Cream Sandwich)', N'1 GHz Cortex-A5, Adreno 200 GPU', N'4 GB, 512 MB RAM', N'HSDPA, 21 Mbps; HSUPA, 5.76 Mbps', N'Wi-Fi 802.11 b/g/n, Wi-Fi hotspot', N'5 MP, 2592 x 1944 pixels, autofocus, LED flash', 3190000, N'', 2)
INSERT [dbo].[SanPham] ([MaSanPham], [MaNSX], [MaLoai], [TenSanPham], [MoTaSanPham], [NgayThem], [HinhLon], [HinhNho], [ManHinh], [HDH], [BoXuLy], [BoNho], [3G], [WLan], [Camera], [Gia], [TinhNang], [TrangThai]) VALUES (34, 2, 3, N'SAMSUNG GALAXY Y S5360', N'34', CAST(0xFD370B00 AS Date), N'Samsung-Galaxy-Y_1.jpg', N'Samsung-Galaxy-Y_1.jpg', N'3.0 inches', N'Android OS, v2.3.5 (Gingerbread)', N'832 MHz', N'160 MB', N'HSDPA, 21 Mbps; HSUPA, 5.76 Mbps', N'Wi-Fi 802.11 b/g/n', N'2 MP, 1600x1200 pixels', 1990000, N'', 3)
INSERT [dbo].[SanPham] ([MaSanPham], [MaNSX], [MaLoai], [TenSanPham], [MoTaSanPham], [NgayThem], [HinhLon], [HinhNho], [ManHinh], [HDH], [BoXuLy], [BoNho], [3G], [WLan], [Camera], [Gia], [TinhNang], [TrangThai]) VALUES (35, 1, 2, N'NOKIA LUMIA 525', N'35', CAST(0x02380B00 AS Date), N'nokia-lumia-525.jpg', N'nokia-lumia-525.jpg', N'4"', N'Windows Phone 8', N'Dual-core 1 GHz', N'8 GB, 1GB RAM', N'HSDPA, 21 Mbps; HSUPA, 5.76 Mbps', N'Wi-Fi 802.11 a/b/g/n, dual-band', N'5 MP, Carl Zeiss optics, autofocus, LED flash', 3499000, N'', 4)
INSERT [dbo].[SanPham] ([MaSanPham], [MaNSX], [MaLoai], [TenSanPham], [MoTaSanPham], [NgayThem], [HinhLon], [HinhNho], [ManHinh], [HDH], [BoXuLy], [BoNho], [3G], [WLan], [Camera], [Gia], [TinhNang], [TrangThai]) VALUES (38, 4, 1, N'Sony Xperia Z Ultra', N'38', CAST(0x03380B00 AS Date), N'Z_Ultra.jpg', N'Z_Ultra.jpg', N'6.44"', N'Android OS, v4.2 (Jelly Bean)', N'Quad-core 2.2 GHz Krait 400, Adreno 330 GPU', N'16 GB, 2 GB RAM', N' HSDPA, 42.2 Mbps; HSUPA, 5.76 Mbps', N'Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, ', N'8 MP, 3264 x 2448 pixels, autofocus ...', 13990000, N'', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [MaNSX], [MaLoai], [TenSanPham], [MoTaSanPham], [NgayThem], [HinhLon], [HinhNho], [ManHinh], [HDH], [BoXuLy], [BoNho], [3G], [WLan], [Camera], [Gia], [TinhNang], [TrangThai]) VALUES (39, 3, 1, N'Apple iPhone 5s 64GB', N'Map
Điện toán đám mây Icloud
Tích hợp Tweter và Facebook
TV- out
Sử dụng Nano sim', CAST(0x03380B00 AS Date), N'iPhone-5s.jpg', N'iPhone-5s.jpg', N'4"', N'iOS 7.0.2', N' Dual-core 1.3 GHz Cyclone (ARM v8-based), PowerVR', N'64 GB, 1 GB RAM DDR3', N'DC-HSDPA, 42 Mbps; HSDPA, 21 Mbps; HSUPA, 5.76 Mbp', N'Wi-Fi 802.11 a/b/g/n, dual-band, Wi-Fi hotspot', N'8 MP, 3264x2448 pixels, autofocus, dual-LED (True ', 22290000, N'', 2)
INSERT [dbo].[SanPham] ([MaSanPham], [MaNSX], [MaLoai], [TenSanPham], [MoTaSanPham], [NgayThem], [HinhLon], [HinhNho], [ManHinh], [HDH], [BoXuLy], [BoNho], [3G], [WLan], [Camera], [Gia], [TinhNang], [TrangThai]) VALUES (40, 3, 1, N'Apple iPhone 5c 32GB', N'Map
Điện toán đám mây Icloud
Tích hợp Tweter và Facebook
TV- out
Sử dụng Nano sim', CAST(0x03380B00 AS Date), N'iPhone5c_small3661.jpg', N'iPhone5c_small3661.jpg', N'4"', N'iOS 7.0.2', N' Dual-core 1.3 GHz Cyclone (ARM v8-based), PowerVR', N'16 GB, 1 GB RAM', N'DC-HSDPA, 42 Mbps; HSDPA, 21 Mbps; HSUPA, 5.76 Mbp', N'Wi-Fi 802.11 a/b/g/n, dual-band, Wi-Fi hotspot', N'8 MP, 3264x2448 pixels, autofocus, dual-LED (True ', 14900000, N'', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [MaNSX], [MaLoai], [TenSanPham], [MoTaSanPham], [NgayThem], [HinhLon], [HinhNho], [ManHinh], [HDH], [BoXuLy], [BoNho], [3G], [WLan], [Camera], [Gia], [TinhNang], [TrangThai]) VALUES (42, 2, 2, N'Samsung Galaxy SII', N'', CAST(0x09380B00 AS Date), N'Samsung-Galaxy-Win.jpg', N'Samsung-Galaxy-Win.jpg', N'4.3"', N'Android 4', N'1Ghz X 2 ', N'16Gb', N'', N'', N'8Mpx', 5555555, N'', 3)
INSERT [dbo].[SanPham] ([MaSanPham], [MaNSX], [MaLoai], [TenSanPham], [MoTaSanPham], [NgayThem], [HinhLon], [HinhNho], [ManHinh], [HDH], [BoXuLy], [BoNho], [3G], [WLan], [Camera], [Gia], [TinhNang], [TrangThai]) VALUES (43, 4, 4, N'aaaa', N'zz', CAST(0x31390B00 AS Date), N'samsung-galaxy-note-419-1.jpg', N'samsung-galaxy-note-419-1.jpg', N'z', N'z', N'', N'', N'z', N'', N'', 88888888888, N'zz', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [MaNSX], [MaLoai], [TenSanPham], [MoTaSanPham], [NgayThem], [HinhLon], [HinhNho], [ManHinh], [HDH], [BoXuLy], [BoNho], [3G], [WLan], [Camera], [Gia], [TinhNang], [TrangThai]) VALUES (47, 2, 1, N'aaaaaaaaaaa', N'aaaaaaa', CAST(0x31390B00 AS Date), N'10446991_522798601187468_4353302039663043009_n.jpg', N'10446991_522798601187468_4353302039663043009_n.jpg', N'aaaaaa', N'aaaaaa', N'aaa', N'aaaaaa', NULL, N'aaaa', N'aaa', 50000000, N'aaaaaaaa', 1)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
/****** Object:  Table [dbo].[TonKho]    Script Date: 11/01/2014 16:26:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TonKho](
	[MaSanPham] [int] NOT NULL,
	[SoLuongTon] [int] NOT NULL,
	[NgayTon] [datetime] NOT NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_TonKho] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TonKho] ON
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon], [ID]) VALUES (17, 5, CAST(0x0000A2A700A9151D AS DateTime), 1)
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon], [ID]) VALUES (18, 5, CAST(0x0000A2A700A91559 AS DateTime), 2)
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon], [ID]) VALUES (17, 10, CAST(0x0000A2A700AD2EDD AS DateTime), 3)
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon], [ID]) VALUES (17, 12, CAST(0x0000A2A700B078B3 AS DateTime), 4)
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon], [ID]) VALUES (18, 7, CAST(0x0000A2A700B175DF AS DateTime), 5)
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon], [ID]) VALUES (31, 5, CAST(0x0000A2A700C55ACF AS DateTime), 6)
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon], [ID]) VALUES (31, 4, CAST(0x0000A2A700DF782A AS DateTime), 7)
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon], [ID]) VALUES (26, 5, CAST(0x0000A2A700E24A8F AS DateTime), 8)
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon], [ID]) VALUES (26, 4, CAST(0x0000A2A700E259EB AS DateTime), 9)
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon], [ID]) VALUES (8, 3, CAST(0x0000A2A700E4474C AS DateTime), 10)
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon], [ID]) VALUES (31, 3, CAST(0x0000A2A700E45438 AS DateTime), 11)
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon], [ID]) VALUES (8, 1, CAST(0x0000A2A700E45445 AS DateTime), 12)
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon], [ID]) VALUES (40, 5, CAST(0x0000A2AA00C59B1F AS DateTime), 13)
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon], [ID]) VALUES (40, 3, CAST(0x0000A2AA00C5A63E AS DateTime), 14)
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon], [ID]) VALUES (3, 1, CAST(0x0000A2AB00ACAE91 AS DateTime), 15)
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon], [ID]) VALUES (21, 2, CAST(0x0000A2AB00ACAEB0 AS DateTime), 16)
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon], [ID]) VALUES (3, -1, CAST(0x0000A2AB00AD0E6D AS DateTime), 17)
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon], [ID]) VALUES (21, 1, CAST(0x0000A2AB00AD0E86 AS DateTime), 18)
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon], [ID]) VALUES (32, 2, CAST(0x0000A2AB00AEE43E AS DateTime), 19)
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon], [ID]) VALUES (34, 2, CAST(0x0000A2AB00AEE449 AS DateTime), 20)
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon], [ID]) VALUES (32, 3, CAST(0x0000A2AB00B2EDEF AS DateTime), 21)
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon], [ID]) VALUES (34, 3, CAST(0x0000A2AB00B31CCD AS DateTime), 22)
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon], [ID]) VALUES (40, 2, CAST(0x0000A2AB00B327CC AS DateTime), 23)
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon], [ID]) VALUES (34, 0, CAST(0x0000A2AB00B327D8 AS DateTime), 24)
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon], [ID]) VALUES (32, 1, CAST(0x0000A2AB00B327E1 AS DateTime), 25)
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon], [ID]) VALUES (3, 4, CAST(0x0000A2AB00B3A450 AS DateTime), 26)
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon], [ID]) VALUES (20, 5, CAST(0x0000A2A700B17602 AS DateTime), 27)
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon], [ID]) VALUES (39, 5, CAST(0x0000A2AB01748822 AS DateTime), 28)
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon], [ID]) VALUES (29, 6, CAST(0x0000A2AB0174A9A8 AS DateTime), 29)
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon], [ID]) VALUES (29, 4, CAST(0x0000A2AB0174B57B AS DateTime), 30)
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon], [ID]) VALUES (38, 0, CAST(0x0000A2AB0174B586 AS DateTime), 31)
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon], [ID]) VALUES (39, 4, CAST(0x0000A2AD0166094E AS DateTime), 32)
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon], [ID]) VALUES (42, 2, CAST(0x0000A2AE0088589C AS DateTime), 33)
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon], [ID]) VALUES (42, 0, CAST(0x0000A2AE00889D13 AS DateTime), 34)
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon], [ID]) VALUES (43, 5, CAST(0x0000A2AE00C6320C AS DateTime), 35)
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon], [ID]) VALUES (43, 2, CAST(0x0000A2AE00C68900 AS DateTime), 36)
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon], [ID]) VALUES (29, 1, CAST(0x0000A2AB0108B4B3 AS DateTime), 37)
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon], [ID]) VALUES (38, 1, CAST(0x0000A2AB0108B4BF AS DateTime), 38)
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon], [ID]) VALUES (35, 2, CAST(0x0000A2AB01793A62 AS DateTime), 39)
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon], [ID]) VALUES (35, 1, CAST(0x0000A2AB017948AE AS DateTime), 40)
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon], [ID]) VALUES (43, 5, CAST(0x0000A3D200D6C860 AS DateTime), 41)
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon], [ID]) VALUES (43, 4, CAST(0x0000A3D500D70EB0 AS DateTime), 42)
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon], [ID]) VALUES (43, 9, CAST(0x0000A3D500D827F0 AS DateTime), 43)
SET IDENTITY_INSERT [dbo].[TonKho] OFF
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 11/01/2014 16:26:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhap](
	[MaPhieuNhap] [int] IDENTITY(1,1) NOT NULL,
	[MaNCC] [int] NULL,
	[NgayNhap] [date] NULL,
	[TongTienNhap] [float] NULL,
	[MaNhanVien] [int] NULL,
 CONSTRAINT [PK_PhieuNhap] PRIMARY KEY CLUSTERED 
(
	[MaPhieuNhap] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[PhieuNhap] ON
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNCC], [NgayNhap], [TongTienNhap], [MaNhanVien]) VALUES (1, 1, CAST(0xFC370B00 AS Date), NULL, NULL)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNCC], [NgayNhap], [TongTienNhap], [MaNhanVien]) VALUES (2, 1, CAST(0xFC370B00 AS Date), NULL, NULL)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNCC], [NgayNhap], [TongTienNhap], [MaNhanVien]) VALUES (3, 2, CAST(0xFD370B00 AS Date), 75000000, NULL)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNCC], [NgayNhap], [TongTienNhap], [MaNhanVien]) VALUES (4, 2, CAST(0xFE370B00 AS Date), 2100000, NULL)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNCC], [NgayNhap], [TongTienNhap], [MaNhanVien]) VALUES (5, 1, CAST(0xFD370B00 AS Date), 58, NULL)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNCC], [NgayNhap], [TongTienNhap], [MaNhanVien]) VALUES (6, 1, CAST(0xFD370B00 AS Date), 45, NULL)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNCC], [NgayNhap], [TongTienNhap], [MaNhanVien]) VALUES (7, 1, CAST(0xFD370B00 AS Date), 20, NULL)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNCC], [NgayNhap], [TongTienNhap], [MaNhanVien]) VALUES (8, 1, CAST(0xFD370B00 AS Date), 45, NULL)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNCC], [NgayNhap], [TongTienNhap], [MaNhanVien]) VALUES (9, 2, CAST(0xFD370B00 AS Date), 32, NULL)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNCC], [NgayNhap], [TongTienNhap], [MaNhanVien]) VALUES (10, 1, CAST(0xFD370B00 AS Date), 42, NULL)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNCC], [NgayNhap], [TongTienNhap], [MaNhanVien]) VALUES (11, 1, CAST(0xFD370B00 AS Date), 19, NULL)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNCC], [NgayNhap], [TongTienNhap], [MaNhanVien]) VALUES (12, 1, CAST(0xFD370B00 AS Date), 16, NULL)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNCC], [NgayNhap], [TongTienNhap], [MaNhanVien]) VALUES (13, 1, CAST(0xFD370B00 AS Date), 102, NULL)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNCC], [NgayNhap], [TongTienNhap], [MaNhanVien]) VALUES (14, 1, CAST(0xFD370B00 AS Date), 20, NULL)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNCC], [NgayNhap], [TongTienNhap], [MaNhanVien]) VALUES (15, 1, CAST(0xFD370B00 AS Date), 20, NULL)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNCC], [NgayNhap], [TongTienNhap], [MaNhanVien]) VALUES (16, 1, CAST(0xFD370B00 AS Date), 20, NULL)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNCC], [NgayNhap], [TongTienNhap], [MaNhanVien]) VALUES (17, 2, CAST(0xFF370B00 AS Date), 63500000, NULL)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNCC], [NgayNhap], [TongTienNhap], [MaNhanVien]) VALUES (18, 2, CAST(0xFF370B00 AS Date), 75000000, NULL)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNCC], [NgayNhap], [TongTienNhap], [MaNhanVien]) VALUES (19, 2, CAST(0xF0370B00 AS Date), 23000000, NULL)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNCC], [NgayNhap], [TongTienNhap], [MaNhanVien]) VALUES (20, 1, CAST(0xF0370B00 AS Date), 35500000, NULL)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNCC], [NgayNhap], [TongTienNhap], [MaNhanVien]) VALUES (21, 2, CAST(0xFD370B00 AS Date), 66500000, NULL)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNCC], [NgayNhap], [TongTienNhap], [MaNhanVien]) VALUES (22, 1, CAST(0xFD370B00 AS Date), 30, NULL)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNCC], [NgayNhap], [TongTienNhap], [MaNhanVien]) VALUES (23, 2, CAST(0xFE370B00 AS Date), 56, NULL)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNCC], [NgayNhap], [TongTienNhap], [MaNhanVien]) VALUES (24, 1, CAST(0xFD370B00 AS Date), 37600000, NULL)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNCC], [NgayNhap], [TongTienNhap], [MaNhanVien]) VALUES (25, 1, CAST(0x01380B00 AS Date), 41100000, NULL)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNCC], [NgayNhap], [TongTienNhap], [MaNhanVien]) VALUES (26, 1, CAST(0x01380B00 AS Date), 37550000, NULL)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNCC], [NgayNhap], [TongTienNhap], [MaNhanVien]) VALUES (27, 2, CAST(0x01380B00 AS Date), 75000000, NULL)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNCC], [NgayNhap], [TongTienNhap], [MaNhanVien]) VALUES (28, 2, CAST(0x01380B00 AS Date), 75000000, NULL)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNCC], [NgayNhap], [TongTienNhap], [MaNhanVien]) VALUES (29, 1, CAST(0x01380B00 AS Date), 50, NULL)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNCC], [NgayNhap], [TongTienNhap], [MaNhanVien]) VALUES (30, 1, CAST(0x14380B00 AS Date), 35, NULL)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNCC], [NgayNhap], [TongTienNhap], [MaNhanVien]) VALUES (31, 1, CAST(0x01380B00 AS Date), 75, NULL)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNCC], [NgayNhap], [TongTienNhap], [MaNhanVien]) VALUES (32, 1, CAST(0x01380B00 AS Date), 50, NULL)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNCC], [NgayNhap], [TongTienNhap], [MaNhanVien]) VALUES (33, 1, CAST(0x01380B00 AS Date), 50000, NULL)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNCC], [NgayNhap], [TongTienNhap], [MaNhanVien]) VALUES (34, 1, CAST(0x01380B00 AS Date), 40000, NULL)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNCC], [NgayNhap], [TongTienNhap], [MaNhanVien]) VALUES (35, 1, CAST(0x01380B00 AS Date), 47500000, NULL)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNCC], [NgayNhap], [TongTienNhap], [MaNhanVien]) VALUES (36, 1, CAST(0x01380B00 AS Date), 100, NULL)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNCC], [NgayNhap], [TongTienNhap], [MaNhanVien]) VALUES (37, 1, CAST(0x01380B00 AS Date), 25, NULL)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNCC], [NgayNhap], [TongTienNhap], [MaNhanVien]) VALUES (38, 1, CAST(0x01380B00 AS Date), 100, NULL)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNCC], [NgayNhap], [TongTienNhap], [MaNhanVien]) VALUES (39, 1, CAST(0x01380B00 AS Date), 100, NULL)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNCC], [NgayNhap], [TongTienNhap], [MaNhanVien]) VALUES (40, 1, CAST(0x01380B00 AS Date), 100, NULL)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNCC], [NgayNhap], [TongTienNhap], [MaNhanVien]) VALUES (41, 1, CAST(0x02380B00 AS Date), 105000, NULL)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNCC], [NgayNhap], [TongTienNhap], [MaNhanVien]) VALUES (42, 1, CAST(0x02380B00 AS Date), 45000, NULL)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNCC], [NgayNhap], [TongTienNhap], [MaNhanVien]) VALUES (43, 2, CAST(0x02380B00 AS Date), 50000, NULL)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNCC], [NgayNhap], [TongTienNhap], [MaNhanVien]) VALUES (44, 2, CAST(0x02380B00 AS Date), 50000, NULL)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNCC], [NgayNhap], [TongTienNhap], [MaNhanVien]) VALUES (45, 1, CAST(0x02380B00 AS Date), 16000, NULL)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNCC], [NgayNhap], [TongTienNhap], [MaNhanVien]) VALUES (46, 2, CAST(0x02380B00 AS Date), 31000, NULL)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNCC], [NgayNhap], [TongTienNhap], [MaNhanVien]) VALUES (47, 2, CAST(0x02380B00 AS Date), 25000, NULL)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNCC], [NgayNhap], [TongTienNhap], [MaNhanVien]) VALUES (48, 1, CAST(0x02380B00 AS Date), 32500000, NULL)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNCC], [NgayNhap], [TongTienNhap], [MaNhanVien]) VALUES (49, 1, CAST(0x02380B00 AS Date), 6900000, NULL)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNCC], [NgayNhap], [TongTienNhap], [MaNhanVien]) VALUES (50, 1, CAST(0x05380B00 AS Date), 27000000, NULL)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNCC], [NgayNhap], [TongTienNhap], [MaNhanVien]) VALUES (51, 1, CAST(0x06380B00 AS Date), 19000000, NULL)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNCC], [NgayNhap], [TongTienNhap], [MaNhanVien]) VALUES (52, 2, CAST(0x06380B00 AS Date), 15111000, NULL)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNCC], [NgayNhap], [TongTienNhap], [MaNhanVien]) VALUES (53, 1, CAST(0x06380B00 AS Date), 5000000, NULL)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNCC], [NgayNhap], [TongTienNhap], [MaNhanVien]) VALUES (54, 1, CAST(0x06380B00 AS Date), 6500000, NULL)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNCC], [NgayNhap], [TongTienNhap], [MaNhanVien]) VALUES (55, 1, CAST(0x06380B00 AS Date), 11500000, NULL)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNCC], [NgayNhap], [TongTienNhap], [MaNhanVien]) VALUES (56, 1, CAST(0x06380B00 AS Date), 14000000, NULL)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNCC], [NgayNhap], [TongTienNhap], [MaNhanVien]) VALUES (57, 1, CAST(0x06380B00 AS Date), 19000000, NULL)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNCC], [NgayNhap], [TongTienNhap], [MaNhanVien]) VALUES (58, 1, CAST(0x06380B00 AS Date), 1500000, NULL)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNCC], [NgayNhap], [TongTienNhap], [MaNhanVien]) VALUES (59, 1, CAST(0x06380B00 AS Date), 11200000, NULL)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNCC], [NgayNhap], [TongTienNhap], [MaNhanVien]) VALUES (60, 1, CAST(0x09380B00 AS Date), 1000000, NULL)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNCC], [NgayNhap], [TongTienNhap], [MaNhanVien]) VALUES (61, 1, CAST(0x09380B00 AS Date), 10, NULL)
SET IDENTITY_INSERT [dbo].[PhieuNhap] OFF
/****** Object:  Table [dbo].[DonDatHang]    Script Date: 11/01/2014 16:26:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonDatHang](
	[MaDonDatHang] [int] IDENTITY(1,1) NOT NULL,
	[NgayTao] [datetime] NULL,
	[NgayGiao] [datetime] NULL,
	[GhiChu] [nvarchar](100) NULL,
	[MaKhachHang] [int] NULL,
	[TenKhachHang] [nvarchar](50) NULL,
	[EmailKhachHang] [nvarchar](50) NULL,
	[TenNguoiTT] [nvarchar](50) NULL,
	[DiaChiTT] [nvarchar](50) NULL,
	[DienThoaiTT] [nvarchar](50) NULL,
	[TenNguoiNhan] [nvarchar](50) NULL,
	[DiaChiNhan] [nvarchar](50) NULL,
	[DienThoaiNhan] [nvarchar](50) NULL,
	[TrangThai] [int] NULL,
	[TongTien] [float] NULL,
	[MaNhanVien] [int] NULL,
	[XuatKho] [int] NULL,
 CONSTRAINT [PK_DonDatHang] PRIMARY KEY CLUSTERED 
(
	[MaDonDatHang] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DonDatHang] ON
INSERT [dbo].[DonDatHang] ([MaDonDatHang], [NgayTao], [NgayGiao], [GhiChu], [MaKhachHang], [TenKhachHang], [EmailKhachHang], [TenNguoiTT], [DiaChiTT], [DienThoaiTT], [TenNguoiNhan], [DiaChiNhan], [DienThoaiNhan], [TrangThai], [TongTien], [MaNhanVien], [XuatKho]) VALUES (2, CAST(0x0000A2A4017D27F4 AS DateTime), CAST(0x0000A2A500B81945 AS DateTime), N'', 1, N'Trần Quốc Trung', N'tranquoctrung.1610@gmail.com', N'Trần Trung', N'19 Trịnh Hoài Đức, phường 13, quận 5.', N'01268616869', N'Trần Quốc Trung', N'19 Trịnh Hoài Đức, phường 13, quận 5.', N'01268616869', 2, 7190000, NULL, NULL)
INSERT [dbo].[DonDatHang] ([MaDonDatHang], [NgayTao], [NgayGiao], [GhiChu], [MaKhachHang], [TenKhachHang], [EmailKhachHang], [TenNguoiTT], [DiaChiTT], [DienThoaiTT], [TenNguoiNhan], [DiaChiNhan], [DienThoaiNhan], [TrangThai], [TongTien], [MaNhanVien], [XuatKho]) VALUES (3, CAST(0x0000A2A5009B0FAF AS DateTime), CAST(0x0000A2A801624987 AS DateTime), N'', NULL, N'Đặng Phước Toàn', N'toandang@gmail.com', N'abcd', N'333333', N'0121212346', N'xyz', N'cdddddddd', N'5555555555', 2, 3023690, NULL, NULL)
INSERT [dbo].[DonDatHang] ([MaDonDatHang], [NgayTao], [NgayGiao], [GhiChu], [MaKhachHang], [TenKhachHang], [EmailKhachHang], [TenNguoiTT], [DiaChiTT], [DienThoaiTT], [TenNguoiNhan], [DiaChiNhan], [DienThoaiNhan], [TrangThai], [TongTien], [MaNhanVien], [XuatKho]) VALUES (4, CAST(0x0000A2AA00B32190 AS DateTime), CAST(0x0000A2AB00AB6923 AS DateTime), N'', 1, N'Trần Quốc Trung', N'tranquoctrung.1610@gmail.com', N'Trần Quốc Trung', N'19 Trịnh Hoài Đức, phường 13, quận 5.', N'01268616869', N'Trần Quốc Trung', N'19 Trịnh Hoài Đức, phường 13, quận 5.', N'01268616869', 2, 29800000, NULL, NULL)
INSERT [dbo].[DonDatHang] ([MaDonDatHang], [NgayTao], [NgayGiao], [GhiChu], [MaKhachHang], [TenKhachHang], [EmailKhachHang], [TenNguoiTT], [DiaChiTT], [DienThoaiTT], [TenNguoiNhan], [DiaChiNhan], [DienThoaiNhan], [TrangThai], [TongTien], [MaNhanVien], [XuatKho]) VALUES (5, CAST(0x0000A2AB00A82FA5 AS DateTime), CAST(0x0000A2AB00B69128 AS DateTime), N'', 2, N'Nguyễn Thế Vinh', N'thevinh@gmail.com', N'Nguyễn Thế Vinh', N'Phú Yên, Việt Nam', N'090123456', N'Nguyễn Thế Vinh', N'Phú Yên, Việt Nam', N'090123456', 2, 43470000, NULL, NULL)
INSERT [dbo].[DonDatHang] ([MaDonDatHang], [NgayTao], [NgayGiao], [GhiChu], [MaKhachHang], [TenKhachHang], [EmailKhachHang], [TenNguoiTT], [DiaChiTT], [DienThoaiTT], [TenNguoiNhan], [DiaChiNhan], [DienThoaiNhan], [TrangThai], [TongTien], [MaNhanVien], [XuatKho]) VALUES (6, CAST(0x0000A2AB00AE863E AS DateTime), CAST(0x0000A2AB00B337F3 AS DateTime), N'', 2, N'Nguyễn Thế Vinh', N'thevinh@gmail.com', N'Nguyễn Thế Vinh', N'Phú Yên, Việt Nam', N'090123456', N'Nguyễn Thế Vinh', N'Phú Yên, Việt Nam', N'090123456', 2, 27668000, NULL, NULL)
INSERT [dbo].[DonDatHang] ([MaDonDatHang], [NgayTao], [NgayGiao], [GhiChu], [MaKhachHang], [TenKhachHang], [EmailKhachHang], [TenNguoiTT], [DiaChiTT], [DienThoaiTT], [TenNguoiNhan], [DiaChiNhan], [DienThoaiNhan], [TrangThai], [TongTien], [MaNhanVien], [XuatKho]) VALUES (7, CAST(0x0000A2AB01082143 AS DateTime), CAST(0x0000A2AB0174C274 AS DateTime), N'', 1, N'Trần Quốc Trung', N'tranquoctrung.1610@gmail.com', N'Trần Quốc Trung', N'19 Trịnh Hoài Đức, phường 13, quận 5.', N'01268616869', N'Trần Quốc Trung', N'19 Trịnh Hoài Đức, phường 13, quận 5.', N'01268616869', 2, 14988000, NULL, NULL)
INSERT [dbo].[DonDatHang] ([MaDonDatHang], [NgayTao], [NgayGiao], [GhiChu], [MaKhachHang], [TenKhachHang], [EmailKhachHang], [TenNguoiTT], [DiaChiTT], [DienThoaiTT], [TenNguoiNhan], [DiaChiNhan], [DienThoaiNhan], [TrangThai], [TongTien], [MaNhanVien], [XuatKho]) VALUES (8, CAST(0x0000A2AB0178F493 AS DateTime), CAST(0x0000A2AB0179543B AS DateTime), N'', 1, N'Trần Quốc Trung', N'tranquoctrung.1610@gmail.com', N'Trần Quốc Trung', N'19 Trịnh Hoài Đức, phường 13, quận 5.', N'01268616869', N'Trần Quốc Trung', N'19 Trịnh Hoài Đức, phường 13, quận 5.', N'01268616869', 2, 3499000, NULL, NULL)
INSERT [dbo].[DonDatHang] ([MaDonDatHang], [NgayTao], [NgayGiao], [GhiChu], [MaKhachHang], [TenKhachHang], [EmailKhachHang], [TenNguoiTT], [DiaChiTT], [DienThoaiTT], [TenNguoiNhan], [DiaChiNhan], [DienThoaiNhan], [TrangThai], [TongTien], [MaNhanVien], [XuatKho]) VALUES (9, CAST(0x0000A2AD01655D9F AS DateTime), CAST(0x0000A2AD0166147E AS DateTime), N'', 1, N'Trần Quốc Trung', N'tranquoctrung.1610@gmail.com', N'Trần Quốc Trung', N'19 Trịnh Hoài Đức, phường 13, quận 5.', N'01268616869', N'Trần Quốc Trung', N'19 Trịnh Hoài Đức, phường 13, quận 5.', N'01268616869', 2, 22290000, NULL, NULL)
INSERT [dbo].[DonDatHang] ([MaDonDatHang], [NgayTao], [NgayGiao], [GhiChu], [MaKhachHang], [TenKhachHang], [EmailKhachHang], [TenNguoiTT], [DiaChiTT], [DienThoaiTT], [TenNguoiNhan], [DiaChiNhan], [DienThoaiNhan], [TrangThai], [TongTien], [MaNhanVien], [XuatKho]) VALUES (10, CAST(0x0000A2AE0087D9C1 AS DateTime), CAST(0x0000A2AE0088AC00 AS DateTime), N'', 1, N'Trần Quốc Trung', N'tranquoctrung.1610@gmail.com', N'Trần Quốc Trung', N'19 Trịnh Hoài Đức, phường 13, quận 5.', N'01268616869', N'Trần Quốc Trung', N'19 Trịnh Hoài Đức, phường 13, quận 5.', N'01268616869', 2, 44444444, NULL, NULL)
INSERT [dbo].[DonDatHang] ([MaDonDatHang], [NgayTao], [NgayGiao], [GhiChu], [MaKhachHang], [TenKhachHang], [EmailKhachHang], [TenNguoiTT], [DiaChiTT], [DienThoaiTT], [TenNguoiNhan], [DiaChiNhan], [DienThoaiNhan], [TrangThai], [TongTien], [MaNhanVien], [XuatKho]) VALUES (11, CAST(0x0000A2AE00A928ED AS DateTime), NULL, N'', 1, N'Trần Quốc Trung', N'tranquoctrung.1610@gmail.com', N'Trần Quốc Trung', N'19 Trịnh Hoài Đức, phường 13, quận 5.', N'01268616869', N'Trần Quốc Trung', N'19 Trịnh Hoài Đức, phường 13, quận 5.', N'01268616869', 0, 44700000, NULL, NULL)
INSERT [dbo].[DonDatHang] ([MaDonDatHang], [NgayTao], [NgayGiao], [GhiChu], [MaKhachHang], [TenKhachHang], [EmailKhachHang], [TenNguoiTT], [DiaChiTT], [DienThoaiTT], [TenNguoiNhan], [DiaChiNhan], [DienThoaiNhan], [TrangThai], [TongTien], [MaNhanVien], [XuatKho]) VALUES (12, CAST(0x0000A2AE00C59F01 AS DateTime), CAST(0x0000A2AE00C69847 AS DateTime), N'', 1, N'Trần Quốc Trung', N'tranquoctrung.1610@gmail.com', N'Trần Quốc Trung', N'19 Trịnh Hoài Đức, phường 13, quận 5.', N'01268616869', N'Trần Quốc Trung', N'19 Trịnh Hoài Đức, phường 13, quận 5.', N'01268616869', 2, 3, NULL, NULL)
INSERT [dbo].[DonDatHang] ([MaDonDatHang], [NgayTao], [NgayGiao], [GhiChu], [MaKhachHang], [TenKhachHang], [EmailKhachHang], [TenNguoiTT], [DiaChiTT], [DienThoaiTT], [TenNguoiNhan], [DiaChiNhan], [DienThoaiNhan], [TrangThai], [TongTien], [MaNhanVien], [XuatKho]) VALUES (13, NULL, CAST(0x0000A3D5010B1D70 AS DateTime), N'', NULL, NULL, NULL, N'Trần Quốc Trung', N'19 Trịnh Hoài Đức, phường 13, quận 5.', N'01268616869', N'Trần Quốc Trung', N'19 Trịnh Hoài Đức, phường 13, quận 5.', N'01268616869', 2, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[DonDatHang] OFF
/****** Object:  Table [dbo].[ChiTietPhieuNhap]    Script Date: 11/01/2014 16:26:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPhieuNhap](
	[SoLuongNhap] [int] NULL,
	[DonGia] [float] NULL,
	[TongCongNhap] [float] NULL,
	[MaSanPham] [int] NULL,
	[MaPhieuNhap] [int] NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_ChiTietPhieuNhap] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ChiTietPhieuNhap] ON
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuongNhap], [DonGia], [TongCongNhap], [MaSanPham], [MaPhieuNhap], [ID]) VALUES (6, 5, 30, NULL, NULL, 1)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuongNhap], [DonGia], [TongCongNhap], [MaSanPham], [MaPhieuNhap], [ID]) VALUES (6, 5, 30, NULL, NULL, 2)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuongNhap], [DonGia], [TongCongNhap], [MaSanPham], [MaPhieuNhap], [ID]) VALUES (4, 3, 12, NULL, NULL, 3)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuongNhap], [DonGia], [TongCongNhap], [MaSanPham], [MaPhieuNhap], [ID]) VALUES (4, 5, 20, NULL, NULL, 4)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuongNhap], [DonGia], [TongCongNhap], [MaSanPham], [MaPhieuNhap], [ID]) VALUES (10, 6350000, 63500000, NULL, NULL, 5)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuongNhap], [DonGia], [TongCongNhap], [MaSanPham], [MaPhieuNhap], [ID]) VALUES (10, 6350000, 63500000, NULL, NULL, 6)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuongNhap], [DonGia], [TongCongNhap], [MaSanPham], [MaPhieuNhap], [ID]) VALUES (5, 2300000, 11500000, NULL, NULL, 7)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuongNhap], [DonGia], [TongCongNhap], [MaSanPham], [MaPhieuNhap], [ID]) VALUES (3, 1000000, 3000000, NULL, NULL, 8)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuongNhap], [DonGia], [TongCongNhap], [MaSanPham], [MaPhieuNhap], [ID]) VALUES (4, 5000000, 20000000, NULL, NULL, 9)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuongNhap], [DonGia], [TongCongNhap], [MaSanPham], [MaPhieuNhap], [ID]) VALUES (3, 1000000, 3000000, NULL, NULL, 10)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuongNhap], [DonGia], [TongCongNhap], [MaSanPham], [MaPhieuNhap], [ID]) VALUES (4, 5000000, 20000000, NULL, NULL, 11)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuongNhap], [DonGia], [TongCongNhap], [MaSanPham], [MaPhieuNhap], [ID]) VALUES (5, 2500000, 12500000, NULL, NULL, 12)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuongNhap], [DonGia], [TongCongNhap], [MaSanPham], [MaPhieuNhap], [ID]) VALUES (5, 7500000, 37500000, NULL, NULL, 13)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuongNhap], [DonGia], [TongCongNhap], [MaSanPham], [MaPhieuNhap], [ID]) VALUES (5, 5800000, 29000000, NULL, NULL, 14)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuongNhap], [DonGia], [TongCongNhap], [MaSanPham], [MaPhieuNhap], [ID]) VALUES (5, 6, 30, NULL, NULL, 15)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuongNhap], [DonGia], [TongCongNhap], [MaSanPham], [MaPhieuNhap], [ID]) VALUES (7, 6, 42, NULL, NULL, 16)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuongNhap], [DonGia], [TongCongNhap], [MaSanPham], [MaPhieuNhap], [ID]) VALUES (7, 2, 14, NULL, NULL, 17)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuongNhap], [DonGia], [TongCongNhap], [MaSanPham], [MaPhieuNhap], [ID]) VALUES (5, 2350000, 11750000, NULL, NULL, 18)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuongNhap], [DonGia], [TongCongNhap], [MaSanPham], [MaPhieuNhap], [ID]) VALUES (6, 4300000, 25800000, NULL, NULL, 19)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuongNhap], [DonGia], [TongCongNhap], [MaSanPham], [MaPhieuNhap], [ID]) VALUES (5, 7000000, 35000000, NULL, NULL, 20)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuongNhap], [DonGia], [TongCongNhap], [MaSanPham], [MaPhieuNhap], [ID]) VALUES (5, 5000000, 25000000, NULL, NULL, 21)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuongNhap], [DonGia], [TongCongNhap], [MaSanPham], [MaPhieuNhap], [ID]) VALUES (5, 3000000, 15000000, NULL, NULL, 22)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuongNhap], [DonGia], [TongCongNhap], [MaSanPham], [MaPhieuNhap], [ID]) VALUES (5, 7000000, 35000000, NULL, NULL, 23)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuongNhap], [DonGia], [TongCongNhap], [MaSanPham], [MaPhieuNhap], [ID]) VALUES (5, 5000000, 25000000, NULL, NULL, 24)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuongNhap], [DonGia], [TongCongNhap], [MaSanPham], [MaPhieuNhap], [ID]) VALUES (5, 3000000, 15000000, NULL, NULL, 25)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuongNhap], [DonGia], [TongCongNhap], [MaSanPham], [MaPhieuNhap], [ID]) VALUES (5, 10, 50, NULL, NULL, 26)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuongNhap], [DonGia], [TongCongNhap], [MaSanPham], [MaPhieuNhap], [ID]) VALUES (3, 5, 15, NULL, NULL, 27)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuongNhap], [DonGia], [TongCongNhap], [MaSanPham], [MaPhieuNhap], [ID]) VALUES (4, 5, 20, NULL, NULL, 28)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuongNhap], [DonGia], [TongCongNhap], [MaSanPham], [MaPhieuNhap], [ID]) VALUES (8, 5, 40, NULL, NULL, 29)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuongNhap], [DonGia], [TongCongNhap], [MaSanPham], [MaPhieuNhap], [ID]) VALUES (7, 5, 35, NULL, NULL, 30)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuongNhap], [DonGia], [TongCongNhap], [MaSanPham], [MaPhieuNhap], [ID]) VALUES (5, 10, 50, NULL, NULL, 31)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuongNhap], [DonGia], [TongCongNhap], [MaSanPham], [MaPhieuNhap], [ID]) VALUES (5, 10000, 50000, NULL, NULL, 32)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuongNhap], [DonGia], [TongCongNhap], [MaSanPham], [MaPhieuNhap], [ID]) VALUES (5, 9500000, 47500000, NULL, NULL, 33)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuongNhap], [DonGia], [TongCongNhap], [MaSanPham], [MaPhieuNhap], [ID]) VALUES (10, 10, 100, NULL, NULL, 34)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuongNhap], [DonGia], [TongCongNhap], [MaSanPham], [MaPhieuNhap], [ID]) VALUES (5, 5, 25, NULL, NULL, 35)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuongNhap], [DonGia], [TongCongNhap], [MaSanPham], [MaPhieuNhap], [ID]) VALUES (10, 10, 100, NULL, NULL, 36)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuongNhap], [DonGia], [TongCongNhap], [MaSanPham], [MaPhieuNhap], [ID]) VALUES (10, 10, 100, NULL, NULL, 37)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuongNhap], [DonGia], [TongCongNhap], [MaSanPham], [MaPhieuNhap], [ID]) VALUES (10, 10, 100, NULL, NULL, 38)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuongNhap], [DonGia], [TongCongNhap], [MaSanPham], [MaPhieuNhap], [ID]) VALUES (5, 4000, 20000, NULL, NULL, 39)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuongNhap], [DonGia], [TongCongNhap], [MaSanPham], [MaPhieuNhap], [ID]) VALUES (5, 5000, 25000, NULL, NULL, 40)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuongNhap], [DonGia], [TongCongNhap], [MaSanPham], [MaPhieuNhap], [ID]) VALUES (10, 5000, 50000, NULL, NULL, 41)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuongNhap], [DonGia], [TongCongNhap], [MaSanPham], [MaPhieuNhap], [ID]) VALUES (2, 8000, 16000, NULL, NULL, 42)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuongNhap], [DonGia], [TongCongNhap], [MaSanPham], [MaPhieuNhap], [ID]) VALUES (2, 3000, 6000, NULL, NULL, 43)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuongNhap], [DonGia], [TongCongNhap], [MaSanPham], [MaPhieuNhap], [ID]) VALUES (5, 5000, 25000, NULL, NULL, 44)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuongNhap], [DonGia], [TongCongNhap], [MaSanPham], [MaPhieuNhap], [ID]) VALUES (5, 5000, 25000, NULL, NULL, 45)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuongNhap], [DonGia], [TongCongNhap], [MaSanPham], [MaPhieuNhap], [ID]) VALUES (5, 6500000, 32500000, NULL, NULL, 46)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuongNhap], [DonGia], [TongCongNhap], [MaSanPham], [MaPhieuNhap], [ID]) VALUES (3, 2300000, 6900000, NULL, NULL, 47)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuongNhap], [DonGia], [TongCongNhap], [MaSanPham], [MaPhieuNhap], [ID]) VALUES (5, 5400000, 27000000, NULL, NULL, 48)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuongNhap], [DonGia], [TongCongNhap], [MaSanPham], [MaPhieuNhap], [ID]) VALUES (1, 5000000, 5000000, NULL, NULL, 49)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuongNhap], [DonGia], [TongCongNhap], [MaSanPham], [MaPhieuNhap], [ID]) VALUES (2, 7000000, 14000000, NULL, NULL, 50)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuongNhap], [DonGia], [TongCongNhap], [MaSanPham], [MaPhieuNhap], [ID]) VALUES (2, 2555500, 5111000, NULL, NULL, 51)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuongNhap], [DonGia], [TongCongNhap], [MaSanPham], [MaPhieuNhap], [ID]) VALUES (2, 5000000, 10000000, NULL, NULL, 52)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuongNhap], [DonGia], [TongCongNhap], [MaSanPham], [MaPhieuNhap], [ID]) VALUES (1, 5000000, 5000000, NULL, NULL, 53)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuongNhap], [DonGia], [TongCongNhap], [MaSanPham], [MaPhieuNhap], [ID]) VALUES (1, 6500000, 6500000, NULL, NULL, 54)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuongNhap], [DonGia], [TongCongNhap], [MaSanPham], [MaPhieuNhap], [ID]) VALUES (5, 2300000, 11500000, NULL, NULL, 55)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuongNhap], [DonGia], [TongCongNhap], [MaSanPham], [MaPhieuNhap], [ID]) VALUES (1, 6500000, 6500000, NULL, NULL, 56)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuongNhap], [DonGia], [TongCongNhap], [MaSanPham], [MaPhieuNhap], [ID]) VALUES (1, 7500000, 7500000, NULL, NULL, 57)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuongNhap], [DonGia], [TongCongNhap], [MaSanPham], [MaPhieuNhap], [ID]) VALUES (5, 3800000, 19000000, NULL, NULL, 58)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuongNhap], [DonGia], [TongCongNhap], [MaSanPham], [MaPhieuNhap], [ID]) VALUES (5, 300000, 1500000, NULL, NULL, 59)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuongNhap], [DonGia], [TongCongNhap], [MaSanPham], [MaPhieuNhap], [ID]) VALUES (2, 5600000, 11200000, NULL, NULL, 60)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuongNhap], [DonGia], [TongCongNhap], [MaSanPham], [MaPhieuNhap], [ID]) VALUES (2, 500000, 1000000, NULL, NULL, 61)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuongNhap], [DonGia], [TongCongNhap], [MaSanPham], [MaPhieuNhap], [ID]) VALUES (5, 2, 10, NULL, NULL, 62)
SET IDENTITY_INSERT [dbo].[ChiTietPhieuNhap] OFF
/****** Object:  Table [dbo].[ChiTietDonHang]    Script Date: 11/01/2014 16:26:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonHang](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MaDonDatHang] [int] NOT NULL,
	[MaSanPham] [int] NOT NULL,
	[SoLuong] [int] NULL,
	[Gia] [float] NULL,
	[TongCong] [float] NULL,
 CONSTRAINT [PK_ChiTietDonHang] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ChiTietDonHang] ON
INSERT [dbo].[ChiTietDonHang] ([ID], [MaDonDatHang], [MaSanPham], [SoLuong], [Gia], [TongCong]) VALUES (1, 2, 26, 1, 7190000, 7190000)
INSERT [dbo].[ChiTietDonHang] ([ID], [MaDonDatHang], [MaSanPham], [SoLuong], [Gia], [TongCong]) VALUES (2, 3, 31, 1, 2999000, 2999000)
INSERT [dbo].[ChiTietDonHang] ([ID], [MaDonDatHang], [MaSanPham], [SoLuong], [Gia], [TongCong]) VALUES (3, 3, 8, 2, 12345, 24690)
INSERT [dbo].[ChiTietDonHang] ([ID], [MaDonDatHang], [MaSanPham], [SoLuong], [Gia], [TongCong]) VALUES (4, 4, 40, 2, 14900000, 29800000)
INSERT [dbo].[ChiTietDonHang] ([ID], [MaDonDatHang], [MaSanPham], [SoLuong], [Gia], [TongCong]) VALUES (5, 5, 3, 2, 13990000, 27980000)
INSERT [dbo].[ChiTietDonHang] ([ID], [MaDonDatHang], [MaSanPham], [SoLuong], [Gia], [TongCong]) VALUES (6, 5, 21, 1, 15490000, 15490000)
INSERT [dbo].[ChiTietDonHang] ([ID], [MaDonDatHang], [MaSanPham], [SoLuong], [Gia], [TongCong]) VALUES (7, 6, 40, 1, 14900000, 14900000)
INSERT [dbo].[ChiTietDonHang] ([ID], [MaDonDatHang], [MaSanPham], [SoLuong], [Gia], [TongCong]) VALUES (8, 6, 34, 3, 1990000, 5970000)
INSERT [dbo].[ChiTietDonHang] ([ID], [MaDonDatHang], [MaSanPham], [SoLuong], [Gia], [TongCong]) VALUES (9, 6, 32, 2, 3399000, 6798000)
INSERT [dbo].[ChiTietDonHang] ([ID], [MaDonDatHang], [MaSanPham], [SoLuong], [Gia], [TongCong]) VALUES (10, 7, 29, 2, 499000, 998000)
INSERT [dbo].[ChiTietDonHang] ([ID], [MaDonDatHang], [MaSanPham], [SoLuong], [Gia], [TongCong]) VALUES (11, 7, 38, 1, 13990000, 13990000)
INSERT [dbo].[ChiTietDonHang] ([ID], [MaDonDatHang], [MaSanPham], [SoLuong], [Gia], [TongCong]) VALUES (12, 8, 35, 1, 3499000, 3499000)
INSERT [dbo].[ChiTietDonHang] ([ID], [MaDonDatHang], [MaSanPham], [SoLuong], [Gia], [TongCong]) VALUES (13, 9, 39, 1, 22290000, 22290000)
INSERT [dbo].[ChiTietDonHang] ([ID], [MaDonDatHang], [MaSanPham], [SoLuong], [Gia], [TongCong]) VALUES (14, 10, 42, 2, 22222222, 44444444)
INSERT [dbo].[ChiTietDonHang] ([ID], [MaDonDatHang], [MaSanPham], [SoLuong], [Gia], [TongCong]) VALUES (15, 11, 40, 3, 14900000, 44700000)
INSERT [dbo].[ChiTietDonHang] ([ID], [MaDonDatHang], [MaSanPham], [SoLuong], [Gia], [TongCong]) VALUES (16, 12, 43, 3, 1, 3)
INSERT [dbo].[ChiTietDonHang] ([ID], [MaDonDatHang], [MaSanPham], [SoLuong], [Gia], [TongCong]) VALUES (17, 13, 3, 2, 13990000, 27980000)
INSERT [dbo].[ChiTietDonHang] ([ID], [MaDonDatHang], [MaSanPham], [SoLuong], [Gia], [TongCong]) VALUES (18, 13, 27, 3, 1490000, 4470000)
SET IDENTITY_INSERT [dbo].[ChiTietDonHang] OFF
/****** Object:  ForeignKey [FK_ChiTietDonHang_DonDatHang]    Script Date: 11/01/2014 16:26:26 ******/
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonHang_DonDatHang] FOREIGN KEY([MaDonDatHang])
REFERENCES [dbo].[DonDatHang] ([MaDonDatHang])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_ChiTietDonHang_DonDatHang]
GO
/****** Object:  ForeignKey [FK_ChiTietDonHang_SanPham]    Script Date: 11/01/2014 16:26:26 ******/
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonHang_SanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_ChiTietDonHang_SanPham]
GO
/****** Object:  ForeignKey [FK_ChiTietPhieuNhap_PhieuNhap]    Script Date: 11/01/2014 16:26:26 ******/
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuNhap_PhieuNhap] FOREIGN KEY([MaPhieuNhap])
REFERENCES [dbo].[PhieuNhap] ([MaPhieuNhap])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap] CHECK CONSTRAINT [FK_ChiTietPhieuNhap_PhieuNhap]
GO
/****** Object:  ForeignKey [FK_ChiTietPhieuNhap_SanPham]    Script Date: 11/01/2014 16:26:26 ******/
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuNhap_SanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap] CHECK CONSTRAINT [FK_ChiTietPhieuNhap_SanPham]
GO
/****** Object:  ForeignKey [FK_DonDatHang_NhanVien]    Script Date: 11/01/2014 16:26:26 ******/
ALTER TABLE [dbo].[DonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_DonDatHang_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[DonDatHang] CHECK CONSTRAINT [FK_DonDatHang_NhanVien]
GO
/****** Object:  ForeignKey [FK_DonDatHang_TrangThaiHoaDon]    Script Date: 11/01/2014 16:26:26 ******/
ALTER TABLE [dbo].[DonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_DonDatHang_TrangThaiHoaDon] FOREIGN KEY([TrangThai])
REFERENCES [dbo].[TrangThaiHoaDon] ([TrangThai])
GO
ALTER TABLE [dbo].[DonDatHang] CHECK CONSTRAINT [FK_DonDatHang_TrangThaiHoaDon]
GO
/****** Object:  ForeignKey [FK_DonDatHang_TrangThaiXuatKho]    Script Date: 11/01/2014 16:26:26 ******/
ALTER TABLE [dbo].[DonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_DonDatHang_TrangThaiXuatKho] FOREIGN KEY([XuatKho])
REFERENCES [dbo].[TrangThaiXuatKho] ([id])
GO
ALTER TABLE [dbo].[DonDatHang] CHECK CONSTRAINT [FK_DonDatHang_TrangThaiXuatKho]
GO
/****** Object:  ForeignKey [FK_DonDatHang_User]    Script Date: 11/01/2014 16:26:26 ******/
ALTER TABLE [dbo].[DonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_DonDatHang_User] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[DonDatHang] CHECK CONSTRAINT [FK_DonDatHang_User]
GO
/****** Object:  ForeignKey [FK_NhanVien_ChucVu]    Script Date: 11/01/2014 16:26:26 ******/
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_ChucVu] FOREIGN KEY([ChucVu])
REFERENCES [dbo].[ChucVu] ([MaChucVu])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_ChucVu]
GO
/****** Object:  ForeignKey [FK_PhieuNhap_NhaCungCap]    Script Date: 11/01/2014 16:26:26 ******/
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhap_NhaCungCap] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[PhieuNhap] CHECK CONSTRAINT [FK_PhieuNhap_NhaCungCap]
GO
/****** Object:  ForeignKey [FK_PhieuNhap_NhanVien]    Script Date: 11/01/2014 16:26:26 ******/
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhap_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[PhieuNhap] CHECK CONSTRAINT [FK_PhieuNhap_NhanVien]
GO
/****** Object:  ForeignKey [FK_SanPham_LoaiSanPham]    Script Date: 11/01/2014 16:26:26 ******/
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSanPham] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[LoaiSanPham] ([MaLoai])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSanPham]
GO
/****** Object:  ForeignKey [FK_SanPham_NhaSanXuat]    Script Date: 11/01/2014 16:26:26 ******/
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NhaSanXuat] FOREIGN KEY([MaNSX])
REFERENCES [dbo].[NhaSanXuat] ([MaNSX])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NhaSanXuat]
GO
/****** Object:  ForeignKey [FK_SanPham_TrangThai_SanPham]    Script Date: 11/01/2014 16:26:26 ******/
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_TrangThai_SanPham] FOREIGN KEY([TrangThai])
REFERENCES [dbo].[TrangThai_SanPham] ([id])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_TrangThai_SanPham]
GO
/****** Object:  ForeignKey [FK_TonKho_SanPham]    Script Date: 11/01/2014 16:26:26 ******/
ALTER TABLE [dbo].[TonKho]  WITH CHECK ADD  CONSTRAINT [FK_TonKho_SanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[TonKho] CHECK CONSTRAINT [FK_TonKho_SanPham]
GO
