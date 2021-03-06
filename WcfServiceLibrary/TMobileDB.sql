USE [TMobileDB]
GO
/****** Object:  StoredProcedure [dbo].[sp_ThongKeTonKho]    Script Date: 10/18/2014 16:17:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_ThongKeTonKho]
@Where	nvarchar(200)
AS
	Declare @SQL as nvarchar(500)
	Select @SQL = 'SELECT  TonKho.*,SanPham.TenSanPham as ten_sp FROM [TonKho],[SanPham]'
	if len(@Where) >0 
		BEGIN
			Select @SQL = @SQL + ' Where ' + @Where + ' Order By MaSanPham asc,NgayTon desc '
		END
	EXEC (@SQL)
GO
/****** Object:  StoredProcedure [dbo].[sp_ThongKeDoanhThu]    Script Date: 10/18/2014 16:17:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_ThongKeDoanhThu]
@Where	nvarchar(200)
AS
	Declare @SQL as nvarchar(500)
	Select @SQL = 'SELECT  * FROM [DonDatHang]'
	if len(@Where) >0 
		BEGIN
			Select @SQL = @SQL + ' Where ' + @Where + ' Order by NgayTao desc, NgayGiao desc '
		END
	EXEC (@SQL)
GO
/****** Object:  Table [dbo].[User]    Script Date: 10/18/2014 16:17:22 ******/
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
INSERT [dbo].[User] ([UserID], [TenDangNhap], [MatKhau], [QuyenTaiKhoan], [Email], [SoDT], [DiaChi], [CreditCard], [CMND], [CauHoiBaoMat], [CauTraLoi], [DaKichHoat], [HoTen], [NgaySinh]) VALUES (1, N'trung1992', N'123456', 1, N'tranquoctrung.1610@gmail.com', N'01268616869', N'19 Trịnh Hoài Đức, phường 13, quận 5.', NULL, N'027916529', NULL, NULL, NULL, N'Trần Quốc Trung', CAST(0x0000846300000000 AS DateTime))
INSERT [dbo].[User] ([UserID], [TenDangNhap], [MatKhau], [QuyenTaiKhoan], [Email], [SoDT], [DiaChi], [CreditCard], [CMND], [CauHoiBaoMat], [CauTraLoi], [DaKichHoat], [HoTen], [NgaySinh]) VALUES (2, N'thevinh', N'123456', 1, N'thevinh@gmail.com', N'090123456', N'Phú Yên, Việt Nam', NULL, N'02315489', NULL, NULL, NULL, N'Nguyễn Thế Vinh', CAST(0x0000821600000000 AS DateTime))
INSERT [dbo].[User] ([UserID], [TenDangNhap], [MatKhau], [QuyenTaiKhoan], [Email], [SoDT], [DiaChi], [CreditCard], [CMND], [CauHoiBaoMat], [CauTraLoi], [DaKichHoat], [HoTen], [NgaySinh]) VALUES (3, N'anhthien', N'123456', NULL, N'tranquoctrung_92@yahoo.com', N'01245678954', N'19 Trinh Hoai Duc', NULL, N'144444444', N'Who is your idol?', N'No one', 0, N'Tran Anh Thiện', CAST(0x0000A3C801034700 AS DateTime))
SET IDENTITY_INSERT [dbo].[User] OFF
/****** Object:  Table [dbo].[TrangThaiHoaDon]    Script Date: 10/18/2014 16:17:22 ******/
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
/****** Object:  Table [dbo].[TuVan]    Script Date: 10/18/2014 16:17:22 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_GetAllTrangThai]    Script Date: 10/18/2014 16:17:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_GetAllTrangThai]
AS
BEGIN
select * from TrangThai
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetChiTietDonHangByTOP]    Script Date: 10/18/2014 16:17:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[sp_GetChiTietDonHangByTOP]
@Top	nvarchar(10),
@Where	nvarchar(200),
@Order	nvarchar(200)
AS
	Declare @SQL as nvarchar(500)
	Declare @strTop as nvarchar(100)
	Select @strTop = '(' + @Top + ')'
	if len(@Top) = 0 
		BEGIN
			Select @strTop = '100 percent'
		END
	Select @SQL = 'SELECT top ' + @strTop + ' * FROM [ChiTietDonHang]'
	if len(@Where) >0 
		BEGIN
			Select @SQL = @SQL + ' Where ' + @Where
		END
	if len(@Order) >0
		BEGIN
			Select @SQL = @SQL + ' Order by ' + @Order
		END
	EXEC (@SQL)
GO
/****** Object:  StoredProcedure [dbo].[sp_GetSanPhamByTOP]    Script Date: 10/18/2014 16:17:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_GetSanPhamByTOP]
@Top	nvarchar(10),
@Where	nvarchar(200),
@Order	nvarchar(200)
AS
	Declare @SQL as nvarchar(500)
	Declare @strTop as nvarchar(100)
	Select @strTop = '(' + @Top + ')'
	if len(@Top) = 0 
		BEGIN
			Select @strTop = '100 percent'
		END
	Select @SQL = 'SELECT top ' + @strTop + ' * FROM [SanPham]'
	if len(@Where) >0 
		BEGIN
			Select @SQL = @SQL + ' Where ' + @Where
		END
	if len(@Order) >0
		BEGIN
			Select @SQL = @SQL + ' Order by ' + @Order
		END
	EXEC (@SQL)
GO
/****** Object:  StoredProcedure [dbo].[sp_GetDonHangByTOP]    Script Date: 10/18/2014 16:17:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[sp_GetDonHangByTOP]
@Top	nvarchar(10),
@Where	nvarchar(200),
@Order	nvarchar(200)
AS
	Declare @SQL as nvarchar(500)
	Declare @strTop as nvarchar(100)
	Select @strTop = '(' + @Top + ')'
	if len(@Top) = 0 
		BEGIN
			Select @strTop = '100 percent'
		END
	Select @SQL = 'SELECT top ' + @strTop + ' * FROM [DonDatHang]'
	if len(@Where) >0 
		BEGIN
			Select @SQL = @SQL + ' Where ' + @Where
		END
	if len(@Order) >0
		BEGIN
			Select @SQL = @SQL + ' Order by ' + @Order
		END
	EXEC (@SQL)
GO
/****** Object:  StoredProcedure [dbo].[sp_GetTonKhoByTOP]    Script Date: 10/18/2014 16:17:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
Create PROCEDURE [dbo].[sp_GetTonKhoByTOP]
@Top	nvarchar(10),
@Where	nvarchar(200),
@Order	nvarchar(200)
AS
	Declare @SQL as nvarchar(500)
	Declare @strTop as nvarchar(100)
	Select @strTop = '(' + @Top + ')'
	if len(@Top) = 0 
		BEGIN
			Select @strTop = '100 percent'
		END
	Select @SQL = 'SELECT top ' + @strTop + ' * FROM [TonKho]'
	if len(@Where) >0 
		BEGIN
			Select @SQL = @SQL + ' Where ' + @Where
		END
	if len(@Order) >0
		BEGIN
			Select @SQL = @SQL + ' Order by ' + @Order
		END
	EXEC (@SQL)
GO
/****** Object:  StoredProcedure [dbo].[sp_GetTuVanByTOP]    Script Date: 10/18/2014 16:17:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
Create PROCEDURE [dbo].[sp_GetTuVanByTOP]
@Top	nvarchar(10),
@Where	nvarchar(200),
@Order	nvarchar(200)
AS
	Declare @SQL as nvarchar(500)
	Declare @strTop as nvarchar(100)
	Select @strTop = '(' + @Top + ')'
	if len(@Top) = 0 
		BEGIN
			Select @strTop = '100 percent'
		END
	Select @SQL = 'SELECT top ' + @strTop + ' * FROM [TuVan]'
	if len(@Where) >0 
		BEGIN
			Select @SQL = @SQL + ' Where ' + @Where
		END
	if len(@Order) >0
		BEGIN
			Select @SQL = @SQL + ' Order by ' + @Order
		END
	EXEC (@SQL)
GO
/****** Object:  StoredProcedure [dbo].[sp_SanPham_Paging]    Script Date: 10/18/2014 16:17:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_SanPham_Paging]
	@CurentPage int,
	@PageSize int,
	@Where nvarchar(512),	@Order nvarchar(256)AS
	SET NOCOUNT ON;
	Declare @SQL as nvarchar(1000);
	Declare @strOrder as nvarchar(500);
	SELECT @SQL = 'Declare @RecordCount INT;'
	Select @strOrder = 'MaSanPham'
	if len(@Order) > 0
		BEGIN
			Select @strOrder = @Order
		END
	SELECT @SQL = @SQL + ' SELECT ROW_NUMBER() OVER(ORDER BY ' + @strOrder + ') AS RowNum,* INTO #SanPham FROM [dbo].[SanPham]'
	IF len(@Where) >0 
		BEGIN
			Select @SQL = @SQL + ' Where ' + @Where + ' '
		END
	Select @SQL = @SQL + ' SELECT @RecordCount = COUNT(*) FROM #SanPham'
	Select @SQL = @SQL + ' SELECT @RecordCount as RecordCount,* FROM #SanPham WHERE RowNum BETWEEN (' + cast(@CurentPage as nvarchar(10)) + ' - 1) * ' + cast(@PageSize as nvarchar(10)) + ' + 1 AND ' + cast(@CurentPage as nvarchar(10)) + ' * ' + cast(@PageSize as nvarchar(10))
	 Select @SQL = @SQL + 'DROP TABLE #SanPham'
	EXEC (@SQL)
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 10/18/2014 16:17:22 ******/
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
/****** Object:  Table [dbo].[Menu]    Script Date: 10/18/2014 16:17:22 ******/
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
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 10/18/2014 16:17:22 ******/
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
/****** Object:  Table [dbo].[ChucVu]    Script Date: 10/18/2014 16:17:21 ******/
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
/****** Object:  Table [dbo].[NhaSanXuat]    Script Date: 10/18/2014 16:17:22 ******/
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
/****** Object:  Table [dbo].[NhanVien]    Script Date: 10/18/2014 16:17:22 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_GetAllNSX]    Script Date: 10/18/2014 16:17:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_GetAllNSX]
AS
BEGIN
	select * 
	from NhaSanXuat
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetAllNCC]    Script Date: 10/18/2014 16:17:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_GetAllNCC]
AS
BEGIN
	select * from NhaCungCap
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetAllMenu]    Script Date: 10/18/2014 16:17:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_GetAllMenu]
AS
BEGIN
	Select * from Menu
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetAllLoaiSP]    Script Date: 10/18/2014 16:17:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_GetAllLoaiSP]
AS
BEGIN
	select *
	from LoaiSanPham
END
GO
/****** Object:  StoredProcedure [dbo].[sp_CapNhatUser]    Script Date: 10/18/2014 16:17:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_CapNhatUser]
(	@UserID int,	@HoTen nvarchar(50),	@TenDangNhap nvarchar(50),	@MatKhau nvarchar(50),	@QuyenTaiKhoan nvarchar(50),	@Email nvarchar(50),	@SoDT nvarchar(50),	@DiaChi nvarchar(50),	@DaKichHoat bit,	@CMND nvarchar(50)	)
	as
BEGIN
	UPDATE [User] SET [HoTen] = @HoTen, [TenDangNhap] = @TenDangNhap, [MatKhau] = @MatKhau, [QuyenTaiKhoan] = @QuyenTaiKhoan, [Email] = @Email, [SoDT] = @SoDT, [DiaChi] = @DiaChi, [DaKichHoat]=@DaKichHoat, [CMND]=@CMND	 WHERE UserID = @UserID
END
GO
/****** Object:  StoredProcedure [dbo].[sp_CapNhatNSX]    Script Date: 10/18/2014 16:17:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_CapNhatNSX]
	@MaNSX int,
	@TenNSX nvarchar(50),
	@GioiThieuNSX nvarchar(1000)
AS
	update [NhaSanXuat] set [TenNSX]=@TenNSX, [GioiThieuNSX]=@GioiThieuNSX
	where MaNSX=@MaNSX
GO
/****** Object:  StoredProcedure [dbo].[sp_CapNhatLoaiSP]    Script Date: 10/18/2014 16:17:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_CapNhatLoaiSP]
(
	@MaLoai int,
	@TenLoai nvarchar(50),
	@MoTaLoai nvarchar(1000)
)
AS
BEGIN
	Update [LoaiSanPham] set [TenLoai]=@TenLoai, [MoTaLoai]=@MoTaLoai
	where @MaLoai=MaLoai
END
GO
/****** Object:  StoredProcedure [dbo].[sp_CapNhatTuVan]    Script Date: 10/18/2014 16:17:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_CapNhatTuVan]
(
	@id int,
	@Tieude nvarchar(500),
	@Hinhnho nvarchar(500),
	@Hinhlon nvarchar(500),
	@Chitiet ntext
)
AS
BEGIN
	Update [TuVan] set [Tieude]=@Tieude,[Hinhnho]=@Hinhnho,[Hinhlon]=@Hinhlon,[Chitiet]=@Chitiet
	where id=@id
END
GO
/****** Object:  StoredProcedure [dbo].[sp_CapNhatTaiKhoan]    Script Date: 10/18/2014 16:17:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_CapNhatTaiKhoan]
(	@UserID int,	@MatKhau nvarchar(50),	@Email nvarchar(50),	@SoDT nvarchar(50),	@DiaChi nvarchar(50),	@NgaySinh date,	@CMND nvarchar(50),	@HoTen nvarchar(50)	)
	as
BEGIN
	UPDATE [User] SET [HoTen]=@HoTen,[MatKhau] = @MatKhau,[Email] = @Email, [SoDT] = @SoDT, [DiaChi] = @DiaChi,[NgaySinh]=@NgaySinh, [CMND]=@CMND	 WHERE UserID = @UserID
END
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 10/18/2014 16:17:22 ******/
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
	[TrangThai] [int] NULL,
	[Gia] [float] NULL,
	[TinhNang] [nvarchar](100) NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON
INSERT [dbo].[SanPham] ([MaSanPham], [MaNSX], [MaLoai], [TenSanPham], [MoTaSanPham], [NgayThem], [HinhLon], [HinhNho], [ManHinh], [HDH], [BoXuLy], [BoNho], [3G], [WLan], [Camera], [TrangThai], [Gia], [TinhNang]) VALUES (3, 1, 1, N'Nokia 1020', N'Sử dụng micro sim, tích hợp mạng xã hội, mic chuyên dụng chống ồn, 7Gb lưu trữ Sky drive, lịch tổ chức, xem văn bản...', CAST(0xF5370B00 AS Date), N'Limua-1020.jpg', N'Limua-1020.jpg', N'4.5"', N'Microsoft Windows Phone 8', N'Dual-core 1.5 GHz Krait, Adreno 225 GPU', N'32 GB, 2 GB RAM', N'HSDPA, 42.2 Mbps; HSUPA, 5.76 Mbps', N'Wi-Fi 802.11 a/b/g/n, dual-band, DLNA', N'41 MP, 7152 x 5368 pixels, Carl Zeiss optics, auto', 1, 13990000, N'')
INSERT [dbo].[SanPham] ([MaSanPham], [MaNSX], [MaLoai], [TenSanPham], [MoTaSanPham], [NgayThem], [HinhLon], [HinhNho], [ManHinh], [HDH], [BoXuLy], [BoNho], [3G], [WLan], [Camera], [TrangThai], [Gia], [TinhNang]) VALUES (8, 5, 4, N'HTC DESIRE 200', N'Tích hợp mạng xã hội, nhập liệu đoán trước từ, xem chỉnh sửa ảnh, ghi âm, quay số bằng giọng nói...', CAST(0xF8370B00 AS Date), N'htc-desire-200.jpg', N'htc-desire-200.jpg', N'3.5"', N'Android OS, v4.1.2 (Jelly Bean)', N'1 GHz', N'4 GB, 512 MB RAM', N'HSDPA, 7.2 Mbps; HSUPA, 5.76 Mbps', N'Wi-Fi 802.11 b/g/n, Wi-Fi hotspot', N'5 MP, 2592х1944 pixels', 3, 2590000, N'')
INSERT [dbo].[SanPham] ([MaSanPham], [MaNSX], [MaLoai], [TenSanPham], [MoTaSanPham], [NgayThem], [HinhLon], [HinhNho], [ManHinh], [HDH], [BoXuLy], [BoNho], [3G], [WLan], [Camera], [TrangThai], [Gia], [TinhNang]) VALUES (17, 2, 1, N'SAMSUNG GALAXY NOTE 3 N900', N'Bút S-pen, micro-sim, ra lệnh bằng s-voice, Dropbox 50Gb, TV-out, tích hợp mạng xã hội, mic chống ồn chuyên dụng,...', CAST(0xF8370B00 AS Date), N'Note3.jpg', N'Note3.jpg', N'5.7"', N'Android OS, v4.3 (Jelly Bean)', N'Octa-core 1.9 GHz (Dùng 2 CPU: A15 1.9 GHz ＋ A7 1.', N'32GB, 3 GB RAM', N'HSDPA, 42.2 Mbps; HSUPA, 5.76 Mbps', N'Wi-Fi 802.11 a/b/g/n, dual-band, DLNA, Wi-Fi Direc', N'13 MP, 4128 x 3096 pixels, autofocus, LED flash', 1, 16990000, N'')
INSERT [dbo].[SanPham] ([MaSanPham], [MaNSX], [MaLoai], [TenSanPham], [MoTaSanPham], [NgayThem], [HinhLon], [HinhNho], [ManHinh], [HDH], [BoXuLy], [BoNho], [3G], [WLan], [Camera], [TrangThai], [Gia], [TinhNang]) VALUES (18, 4, 3, N'SONY XPERIA C (2 SIM 2 SÓNG)', N'Tích hợp mạng xã hội, xem văn bản, nhập liệu đoán trước từ, ra lệnh bằng giọng nói,...', CAST(0xF8370B00 AS Date), N'sony-xperia-c.jpg', N'sony-xperia-c.jpg', N'5.0"', N'Android OS, v4.2.2 (Jelly Bean)', N'Quad-core 1.2 GHz, PowerVR SGX544 GPU', N'4 GB, 1 GB RAM', N'HSDPA, 42.2 Mbps; HSUPA, 5.76 Mbps', N'Wi-Fi 802.11 b/g/n, Wi-Fi Direct, Wi-Fi hotspot', N'8 MP, 3264 x 2448 pixels, autofocus, LED flash', 2, 19020000, N'')
INSERT [dbo].[SanPham] ([MaSanPham], [MaNSX], [MaLoai], [TenSanPham], [MoTaSanPham], [NgayThem], [HinhLon], [HinhNho], [ManHinh], [HDH], [BoXuLy], [BoNho], [3G], [WLan], [Camera], [TrangThai], [Gia], [TinhNang]) VALUES (20, 2, 1, N'Samsung Galaxy S4 I9500', N'ra lệnh bằng s-voice, Dropbox 50Gb, TV-out, tích hợp mạng xã hội, mic chống ồn chuyên dụng,...
', CAST(0xFC370B00 AS Date), N'Samsung-Galaxy-S45628.jpg', N'Samsung-Galaxy-S45628.jpg', N'4.99"', N' Android OS, v4.2.2 (Jelly Bean)', N'Octa-core 1.6 GHz Cortex-A15, PowerVR SGX 544MP3 G', N'16 GB, 2GB RAM', N'HSDPA, 42.2 Mbps; HSUPA, 5.76 Mbps', N' Wi-Fi 802.11 a/b/g/n/ac, dual-band, DLNA, Wi-Fi D', N'13 MP, 4128 x 3096 pixels, autofocus, LED flash', 2, 13990000, N'')
INSERT [dbo].[SanPham] ([MaSanPham], [MaNSX], [MaLoai], [TenSanPham], [MoTaSanPham], [NgayThem], [HinhLon], [HinhNho], [ManHinh], [HDH], [BoXuLy], [BoNho], [3G], [WLan], [Camera], [TrangThai], [Gia], [TinhNang]) VALUES (21, 3, 1, N'APPLE IPHONE 5 16GB GLOBAL', N'Sử dụng nano-sim, dịch vụ Icloud, iMaps, iBook, Tv-out, ra lệnh bằng giọng nói Siri,...', CAST(0xFC370B00 AS Date), N'iPhone-5-Black.jpg', N'iPhone-5-Black.jpg', N'4.0"', N'iOS 6', N'Dual-core 1.2 GHz, PowerVR SGX 543MP3 (chip đồ họa', N'16 GB, 1 GB RAM', N'DC-HSDPA, 42 Mbps; HSDPA, 21 Mbps; HSUPA, 5.76 Mbp', N'Wi-Fi 802.11 a/b/g/n, dual-band, Wi-Fi hotspot', N'8 MP, 3264x2448 pixels, autofocus, LED flash', 2, 15490000, N'')
INSERT [dbo].[SanPham] ([MaSanPham], [MaNSX], [MaLoai], [TenSanPham], [MoTaSanPham], [NgayThem], [HinhLon], [HinhNho], [ManHinh], [HDH], [BoXuLy], [BoNho], [3G], [WLan], [Camera], [TrangThai], [Gia], [TinhNang]) VALUES (22, 2, 2, N'SAMSUNG GALAXY WIN I8552', N'ra lệnh bằng s-voice, Dropbox 50Gb, TV-out, tích hợp mạng xã hội, mic chống ồn chuyên dụng,...', CAST(0xFD370B00 AS Date), N'Samsung-Galaxy-Win.jpg', N'Samsung-Galaxy-Win.jpg', N'4,7 inch', N'Android OS, v4.1.2 (Jelly Bean)', N'Quad-core 1.2 GHz Cortex-A5, Adreno 203 GPU', N'8 GB, 1 GB RAM', N'HSDPA, 7.2 Mbps; HSUPA, 5.76 Mbps', N'Wi-Fi 802.11 b/g/n, Wi-Fi hotspot, DLNA', N'5 MP, 2592х1944 pixels, autofocus, LED flash', 2, 5890000, N'')
INSERT [dbo].[SanPham] ([MaSanPham], [MaNSX], [MaLoai], [TenSanPham], [MoTaSanPham], [NgayThem], [HinhLon], [HinhNho], [ManHinh], [HDH], [BoXuLy], [BoNho], [3G], [WLan], [Camera], [TrangThai], [Gia], [TinhNang]) VALUES (23, 1, 2, N'NOKIA LUMIA 720', N'Sử dụng micro sim, tích hợp mạng xã hội, mic chuyên dụng chống ồn, 7Gb lưu trữ Sky drive, lịch tổ chức, xem văn bản...', CAST(0xFD370B00 AS Date), N'Nokia-Lumia-720.jpg', N'Nokia-Lumia-720.jpg', N'4.3"', N'Windows Phone 8', N'Dual-core 1 GHz', N'8 GB, 512 MB RAM', N'HSDPA, 21 Mbps; HSUPA, 5.76 Mbps', N'Wi-Fi 802.11 a/b/g/n, dual-band', N'6.7 MP, Carl Zeiss optics, autofocus, LED flash', 3, 6690000, N'')
INSERT [dbo].[SanPham] ([MaSanPham], [MaNSX], [MaLoai], [TenSanPham], [MoTaSanPham], [NgayThem], [HinhLon], [HinhNho], [ManHinh], [HDH], [BoXuLy], [BoNho], [3G], [WLan], [Camera], [TrangThai], [Gia], [TinhNang]) VALUES (24, 2, 2, N'SAMSUNG GALAXY WIN I8552', N'ra lệnh bằng s-voice, Dropbox 50Gb, TV-out, tích hợp mạng xã hội, mic chống ồn chuyên dụng,...
', CAST(0xFD370B00 AS Date), N'Samsung-Galaxy-Win.jpg', N'Samsung-Galaxy-Win.jpg', N'4,7 inch', N'Android OS, v4.1.2 (Jelly Bean)', N'Quad-core 1.2 GHz Cortex-A5, Adreno 203 GPU', N'8 GB, 1 GB RAM', N'HSDPA, 7.2 Mbps; HSUPA, 5.76 Mbps', N'Wi-Fi 802.11 b/g/n, Wi-Fi hotspot, DLNA', N'5 MP, 2592х1944 pixels, autofocus, LED flash', 2, 5890000, N'')
INSERT [dbo].[SanPham] ([MaSanPham], [MaNSX], [MaLoai], [TenSanPham], [MoTaSanPham], [NgayThem], [HinhLon], [HinhNho], [ManHinh], [HDH], [BoXuLy], [BoNho], [3G], [WLan], [Camera], [TrangThai], [Gia], [TinhNang]) VALUES (25, 4, 2, N'SONY XPERIA L', N'25', CAST(0xFD370B00 AS Date), N'sony-xperia-l (1).jpg', N'sony-xperia-l (1).jpg', N'4.3 inches', N'Android OS, v4.1 (Jelly Bean)', N'Dual-core 1 GHz, Adreno 305 GPU', N'8 GB (5.8 GB sử dụng), 1 GB RAM', N'HSDPA, 21 Mbps; HSUPA, 5.76 Mbps', N'Wi-Fi 802.11 a/b/g/n, dual-band, Wi-Fi Direct, DLN', N'8 MP, 3264 x 2448 pixels, autofocus, LED flash', 3, 6790000, N'')
INSERT [dbo].[SanPham] ([MaSanPham], [MaNSX], [MaLoai], [TenSanPham], [MoTaSanPham], [NgayThem], [HinhLon], [HinhNho], [ManHinh], [HDH], [BoXuLy], [BoNho], [3G], [WLan], [Camera], [TrangThai], [Gia], [TinhNang]) VALUES (26, 5, 2, N'HTC ONE X 16GB', N'Sử dụng micro sim, tích hợp mạng xã hội, mic chuyên dụng chống ồn, 7Gb lưu trữ Sky drive, lịch tổ chức, xem văn bản...', CAST(0xFD370B00 AS Date), N'HTC-One-X-16GB.jpg', N'HTC-One-X-16GB.jpg', N'4.7 inches', N'Android OS, v4.1 (Jelly Bean)', N'Quad-core 1.5 GHz, ULP GeForce GPU', N'16 GB, 1 GB RAM', N'HSDPA, 21 Mbps; HSUPA, 5.76 Mbps', N'Wi-Fi 802.11 a/b/g/n, dual-band, Wi-Fi Direct, DLN', N'8 MP, 3264x2448 pixels, autofocus, LED flash', 2, 7190000, N'')
INSERT [dbo].[SanPham] ([MaSanPham], [MaNSX], [MaLoai], [TenSanPham], [MoTaSanPham], [NgayThem], [HinhLon], [HinhNho], [ManHinh], [HDH], [BoXuLy], [BoNho], [3G], [WLan], [Camera], [TrangThai], [Gia], [TinhNang]) VALUES (27, 2, 4, N'SAMSUNG CORBY II S3850', N'27', CAST(0xFD370B00 AS Date), N'Corby-II_1.jpg', N'Corby-II_1.jpg', N'3.2 inches', N'', N'', N'26 MB microSD (TransFlash) hỗ trợ lên đến 16GB', N'', N'Wi-Fi 802.11 b/g/n', N'2 MP, 1600x1200 pixels', 2, 1490000, N'')
INSERT [dbo].[SanPham] ([MaSanPham], [MaNSX], [MaLoai], [TenSanPham], [MoTaSanPham], [NgayThem], [HinhLon], [HinhNho], [ManHinh], [HDH], [BoXuLy], [BoNho], [3G], [WLan], [Camera], [TrangThai], [Gia], [TinhNang]) VALUES (28, 1, 4, N'NOKIA 515 (2 SIM 2 SÓNG)', N'', CAST(0xFD370B00 AS Date), N'nokia_515.jpg', N'nokia_515.jpg', N'2.4 inches', N'', N'', N'256 MB, 64 MB RAM', N'HSDPA, 7.2 Mbps; HSUPA, 5.76 Mbps', N'Wi-Fi 802.11 b/g/n', N'5 MP, 2592x1944 pixels, LED flash', 3, 3490000, N'')
INSERT [dbo].[SanPham] ([MaSanPham], [MaNSX], [MaLoai], [TenSanPham], [MoTaSanPham], [NgayThem], [HinhLon], [HinhNho], [ManHinh], [HDH], [BoXuLy], [BoNho], [3G], [WLan], [Camera], [TrangThai], [Gia], [TinhNang]) VALUES (29, 1, 4, N'NOKIA 106', N'29', CAST(0xFD370B00 AS Date), N'nokia-106.jpg', N'nokia-106.jpg', N'1.8 inches', N'', N'', N'384 kB RAM', N'', N'', N'', 3, 499000, N'')
INSERT [dbo].[SanPham] ([MaSanPham], [MaNSX], [MaLoai], [TenSanPham], [MoTaSanPham], [NgayThem], [HinhLon], [HinhNho], [ManHinh], [HDH], [BoXuLy], [BoNho], [3G], [WLan], [Camera], [TrangThai], [Gia], [TinhNang]) VALUES (30, 1, 4, N'NOKIA ASHA 210 (2 SIM 2 SÓNG)', N'30', CAST(0xFD370B00 AS Date), N'Nokia-Asha-210-Dual-Sim.jpg', N'Nokia-Asha-210-Dual-Sim.jpg', N'2.4 inches', N'Nokia S.40', N'', N'64 MB, 32 MB RAM', N'', N'Wi-Fi 802.11 b/g', N'2 MP, 1600x1200 pixels', 3, 1640000, N'')
INSERT [dbo].[SanPham] ([MaSanPham], [MaNSX], [MaLoai], [TenSanPham], [MoTaSanPham], [NgayThem], [HinhLon], [HinhNho], [ManHinh], [HDH], [BoXuLy], [BoNho], [3G], [WLan], [Camera], [TrangThai], [Gia], [TinhNang]) VALUES (31, 1, 3, N'NOKIA LUMIA 520', N'31', CAST(0xFD370B00 AS Date), N'Nokia-Lumia-520.jpg', N'Nokia-Lumia-520.jpg', N'4.0 inches', N'Microsoft Windows Phone 8', N'Dual-core 1 GHz', N'8 GB, 512 MB RAM', N'HSDPA, 21 Mbps; HSUPA, 5.76 Mbps', N'Wi-Fi 802.11 b/g', N'5 MP, 2592х1944 pixels, autofocus', 2, 2999000, N'')
INSERT [dbo].[SanPham] ([MaSanPham], [MaNSX], [MaLoai], [TenSanPham], [MoTaSanPham], [NgayThem], [HinhLon], [HinhNho], [ManHinh], [HDH], [BoXuLy], [BoNho], [3G], [WLan], [Camera], [TrangThai], [Gia], [TinhNang]) VALUES (32, 5, 3, N'HTC DESIRE V (2 SIM 2 SÓNG)', N'32', CAST(0xFD370B00 AS Date), N'HTC-DesireV.jpg', N'HTC-DesireV.jpg', N'4.0 inches', N'Android OS, v4.0 (Ice Cream Sandwich)', N'1 GHz Cortex-A5, Adreno 200 GPU', N'4 GB, 512 MB RAM', N'HSDPA, 21 Mbps; HSUPA, 5.76 Mbps', N'Wi-Fi 802.11 b/g/n, Wi-Fi hotspot', N'5 MP, 2592х1944 pixels, autofocus, LED flash', 3, 3399000, N'')
INSERT [dbo].[SanPham] ([MaSanPham], [MaNSX], [MaLoai], [TenSanPham], [MoTaSanPham], [NgayThem], [HinhLon], [HinhNho], [ManHinh], [HDH], [BoXuLy], [BoNho], [3G], [WLan], [Camera], [TrangThai], [Gia], [TinhNang]) VALUES (33, 2, 3, N'SAMSUNG GALAXY TREND S7560', N'33', CAST(0xFD370B00 AS Date), N'Samsung-Galaxy-Trend-S7560.jpg', N'Samsung-Galaxy-Trend-S7560.jpg', N'4.0 inches', N'Android OS, v4.0 (Ice Cream Sandwich)', N'1 GHz Cortex-A5, Adreno 200 GPU', N'4 GB, 512 MB RAM', N'HSDPA, 21 Mbps; HSUPA, 5.76 Mbps', N'Wi-Fi 802.11 b/g/n, Wi-Fi hotspot', N'5 MP, 2592 x 1944 pixels, autofocus, LED flash', 3, 3190000, N'')
INSERT [dbo].[SanPham] ([MaSanPham], [MaNSX], [MaLoai], [TenSanPham], [MoTaSanPham], [NgayThem], [HinhLon], [HinhNho], [ManHinh], [HDH], [BoXuLy], [BoNho], [3G], [WLan], [Camera], [TrangThai], [Gia], [TinhNang]) VALUES (34, 2, 3, N'SAMSUNG GALAXY Y S5360', N'34', CAST(0xFD370B00 AS Date), N'Samsung-Galaxy-Y_1.jpg', N'Samsung-Galaxy-Y_1.jpg', N'3.0 inches', N'Android OS, v2.3.5 (Gingerbread)', N'832 MHz', N'160 MB', N'HSDPA, 21 Mbps; HSUPA, 5.76 Mbps', N'Wi-Fi 802.11 b/g/n', N'2 MP, 1600x1200 pixels', 3, 1990000, N'')
INSERT [dbo].[SanPham] ([MaSanPham], [MaNSX], [MaLoai], [TenSanPham], [MoTaSanPham], [NgayThem], [HinhLon], [HinhNho], [ManHinh], [HDH], [BoXuLy], [BoNho], [3G], [WLan], [Camera], [TrangThai], [Gia], [TinhNang]) VALUES (35, 1, 2, N'NOKIA LUMIA 525', N'35', CAST(0x02380B00 AS Date), N'nokia-lumia-525.jpg', N'nokia-lumia-525.jpg', N'4"', N'Windows Phone 8', N'Dual-core 1 GHz', N'8 GB, 1GB RAM', N'HSDPA, 21 Mbps; HSUPA, 5.76 Mbps', N'Wi-Fi 802.11 a/b/g/n, dual-band', N'5 MP, Carl Zeiss optics, autofocus, LED flash', 1, 3499000, N'')
INSERT [dbo].[SanPham] ([MaSanPham], [MaNSX], [MaLoai], [TenSanPham], [MoTaSanPham], [NgayThem], [HinhLon], [HinhNho], [ManHinh], [HDH], [BoXuLy], [BoNho], [3G], [WLan], [Camera], [TrangThai], [Gia], [TinhNang]) VALUES (38, 4, 1, N'Sony Xperia Z Ultra', N'38', CAST(0x03380B00 AS Date), N'Z_Ultra.jpg', N'Z_Ultra.jpg', N'6.44"', N'Android OS, v4.2 (Jelly Bean)', N'Quad-core 2.2 GHz Krait 400, Adreno 330 GPU', N'16 GB, 2 GB RAM', N' HSDPA, 42.2 Mbps; HSUPA, 5.76 Mbps', N'Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, ', N'8 MP, 3264 x 2448 pixels, autofocus ...', 1, 13990000, N'')
INSERT [dbo].[SanPham] ([MaSanPham], [MaNSX], [MaLoai], [TenSanPham], [MoTaSanPham], [NgayThem], [HinhLon], [HinhNho], [ManHinh], [HDH], [BoXuLy], [BoNho], [3G], [WLan], [Camera], [TrangThai], [Gia], [TinhNang]) VALUES (39, 3, 1, N'Apple iPhone 5s 64GB', N'Map
Điện toán đám mây Icloud
Tích hợp Tweter và Facebook
TV- out
Sử dụng Nano sim', CAST(0x03380B00 AS Date), N'iPhone-5s.jpg', N'iPhone-5s.jpg', N'4"', N'iOS 7.0.2', N' Dual-core 1.3 GHz Cyclone (ARM v8-based), PowerVR', N'64 GB, 1 GB RAM DDR3', N'DC-HSDPA, 42 Mbps; HSDPA, 21 Mbps; HSUPA, 5.76 Mbp', N'Wi-Fi 802.11 a/b/g/n, dual-band, Wi-Fi hotspot', N'8 MP, 3264x2448 pixels, autofocus, dual-LED (True ', 1, 22290000, N'')
INSERT [dbo].[SanPham] ([MaSanPham], [MaNSX], [MaLoai], [TenSanPham], [MoTaSanPham], [NgayThem], [HinhLon], [HinhNho], [ManHinh], [HDH], [BoXuLy], [BoNho], [3G], [WLan], [Camera], [TrangThai], [Gia], [TinhNang]) VALUES (40, 3, 1, N'Apple iPhone 5c 32GB', N'Map
Điện toán đám mây Icloud
Tích hợp Tweter và Facebook
TV- out
Sử dụng Nano sim', CAST(0x03380B00 AS Date), N'iPhone5c_small3661.jpg', N'iPhone5c_small3661.jpg', N'4"', N'iOS 7.0.2', N' Dual-core 1.3 GHz Cyclone (ARM v8-based), PowerVR', N'16 GB, 1 GB RAM', N'DC-HSDPA, 42 Mbps; HSDPA, 21 Mbps; HSUPA, 5.76 Mbp', N'Wi-Fi 802.11 a/b/g/n, dual-band, Wi-Fi hotspot', N'8 MP, 3264x2448 pixels, autofocus, dual-LED (True ', 1, 14900000, N'')
INSERT [dbo].[SanPham] ([MaSanPham], [MaNSX], [MaLoai], [TenSanPham], [MoTaSanPham], [NgayThem], [HinhLon], [HinhNho], [ManHinh], [HDH], [BoXuLy], [BoNho], [3G], [WLan], [Camera], [TrangThai], [Gia], [TinhNang]) VALUES (42, 2, 2, N'Samsung Galaxy SII', N'', CAST(0x09380B00 AS Date), N'Samsung-Galaxy-Win.jpg', N'Samsung-Galaxy-Win.jpg', N'4.3"', N'Android 4', N'1Ghz X 2 ', N'16Gb', N'', N'', N'8Mpx', 3, 5555555, N'')
INSERT [dbo].[SanPham] ([MaSanPham], [MaNSX], [MaLoai], [TenSanPham], [MoTaSanPham], [NgayThem], [HinhLon], [HinhNho], [ManHinh], [HDH], [BoXuLy], [BoNho], [3G], [WLan], [Camera], [TrangThai], [Gia], [TinhNang]) VALUES (43, 4, 4, N'aaaa', N'zz', CAST(0x09380B00 AS Date), N'Lightroom 4 Catalog.lrcat', N'', N'z', N'z', N'', N'', N'z', N'', N'', 1, 88888888888, N'zz')
SET IDENTITY_INSERT [dbo].[SanPham] OFF
/****** Object:  StoredProcedure [dbo].[sp_ThemNSX]    Script Date: 10/18/2014 16:17:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_ThemNSX]
(
	@TenNSX nvarchar(50),
	@GioiThieuNSX nvarchar(1000)
)
AS
BEGIN
		insert into [NhaSanXuat]([TenNSX],[GioiThieuNSX])
		values (@TenNSX,@GioiThieuNSX)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ThemLoaiSP]    Script Date: 10/18/2014 16:17:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_ThemLoaiSP]
(
	@TenLoai nvarchar(50),
	@MoTaLoai nvarchar(1000)
)
AS
BEGIN
	insert into [LoaiSanPham]([TenLoai],[MoTaLoai]) 
		values (@TenLoai,@MoTaLoai)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetTuVanByID]    Script Date: 10/18/2014 16:17:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
Create PROCEDURE [dbo].[sp_GetTuVanByID]
	@Id int
AS
BEGIN
	select *
	from TuVan
	where Id=@Id
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetTenLoaiSP]    Script Date: 10/18/2014 16:17:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_GetTenLoaiSP]
AS
BEGIN
	select TenLoai
	from LoaiSanPham
END
GO
/****** Object:  StoredProcedure [dbo].[sp_KiemTraDangNhap]    Script Date: 10/18/2014 16:17:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[sp_KiemTraDangNhap]
@username nvarchar(500),
@pw nvarchar(500)
as
Select * 
From [User]
where TenDangNhap=@username and MatKhau=@pw
GO
/****** Object:  StoredProcedure [dbo].[sp_GetUserByID]    Script Date: 10/18/2014 16:17:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[sp_GetUserByID]
@UserID int
AS
BEGIN
	select *
	from [User]
	where UserID=@UserID
END
GO
/****** Object:  StoredProcedure [dbo].[sp_LayThongTinUser]    Script Date: 10/18/2014 16:17:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[sp_LayThongTinUser]
@username nvarchar(500),
@pw nvarchar(500)
as
Select * 
From [User]
where TenDangNhap=@username and MatKhau=@pw
GO
/****** Object:  StoredProcedure [dbo].[sp_GetNSXByID]    Script Date: 10/18/2014 16:17:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_GetNSXByID] 
	@MaNSX int
AS
BEGIN
	select *
	from NhaSanXuat
	where MaNSX=@MaNSX
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetLoaiSPByID]    Script Date: 10/18/2014 16:17:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_GetLoaiSPByID]
	@MaLoai int
AS
BEGIN
	select *
	from LoaiSanPham
	where MaLoai=@MaLoai
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetAllUser]    Script Date: 10/18/2014 16:17:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[sp_GetAllUser]
AS
BEGIN
	select *
	from [User]
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetAllTrangThaiHoaDon]    Script Date: 10/18/2014 16:17:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[sp_GetAllTrangThaiHoaDon]
AS
BEGIN
select * from TrangThaiHoaDon
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetAllTuVan]    Script Date: 10/18/2014 16:17:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
Create PROCEDURE [dbo].[sp_GetAllTuVan]
AS
BEGIN
	select *
	from TuVan
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ThemUser]    Script Date: 10/18/2014 16:17:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_ThemUser]
(
	@HoTen nvarchar(100),
	@TenDangNhap nvarchar(50),
	@MatKhau nvarchar(50),
	@DiaChi nvarchar(50),
	@SoDT nvarchar(50),
	@NgaySinh datetime,
	@Email nvarchar(50),
	@CMND nvarchar(50),	
	@QuyenTaiKhoan nvarchar(50)
)
AS
BEGIN
	Insert into [User]([TenDangNhap],[MatKhau],[HoTen],[DiaChi],[SoDT],[NgaySinh],[Email],[CMND],[QuyenTaiKhoan])
		values(@TenDangNhap,@MatKhau,@HoTen,@DiaChi,@SoDT,@NgaySinh,@Email,@CMND,@QuyenTaiKhoan)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ThemTuVan]    Script Date: 10/18/2014 16:17:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_ThemTuVan]
(
	@Tieude nvarchar(500),
	@Hinhnho nvarchar(500),
	@Hinhlon nvarchar(500),
	@Chitiet ntext
)
AS
BEGIN
		insert into [TuVan]([Tieude],[Hinhnho],[Hinhlon],[Chitiet])
		values (@Tieude,@Hinhnho,@Hinhlon,@Chitiet)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_XoaNSX]    Script Date: 10/18/2014 16:17:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_XoaNSX]
@MaNSX int
AS
	delete from [NhaSanXuat]
	where MaNSX=@MaNSX
GO
/****** Object:  StoredProcedure [dbo].[sp_XoaLoaiSP]    Script Date: 10/18/2014 16:17:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_XoaLoaiSP]
@MaLoai int
AS
BEGIN
	delete from [LoaiSanPham]
	where @MaLoai=Maloai
END
GO
/****** Object:  StoredProcedure [dbo].[sp_XoaUser]    Script Date: 10/18/2014 16:17:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[sp_XoaUser]	@UserID		intAS	DELETE FROM [User]	 WHERE UserID=@UserID
GO
/****** Object:  StoredProcedure [dbo].[sp_XoaTuVan]    Script Date: 10/18/2014 16:17:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
Create PROCEDURE [dbo].[sp_XoaTuVan]
@id int
AS
BEGIN
	Delete [TuVan]
	where id=@id
END
GO
/****** Object:  StoredProcedure [dbo].[sp_XoaSanPham]    Script Date: 10/18/2014 16:17:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_XoaSanPham]
@MaSanPham int
AS
BEGIN
	Delete [SanPham]
	where MaSanPham=@MaSanPham
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ThemSanPham]    Script Date: 10/18/2014 16:17:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_ThemSanPham]
(
	@TenSanPham nvarchar(50),
	@MoTaSanPham nvarchar(1000)=null,
	@MaLoai int,
	@MaNSX int,
	@TrangThai int,
	@Gia float,
	@NgayThem date=null,
	@HinhLon nvarchar(50)=null,
	@HinhNho nvarchar(50)=null,
	@TinhNang nvarchar(1000)=null,
	@ManHinh nvarchar(50)=null,
	@HDH nvarchar(50)=null,
	@BoXuLy nvarchar(50)=null,
	@BoNho nvarchar(50)=null,
	@3G nvarchar(50)=null,
	@Wlan nvarchar(50)=null,
	@Camera nvarchar(50)=null
)
AS
BEGIN
	insert into [SanPham]([TenSanPham],[MoTaSanPham],[MaLoai],[MaNSX],[3G],[BoNho],[BoXuLy],[Camera],[Gia],[HDH],[HinhLon],[HinhNho],[ManHinh],[NgayThem],[TinhNang],[TrangThai],[Wlan]) 
		values (@TenSanPham,@MoTaSanPham,@MaLoai,@MaNSX,@3G,@BoNho,@BoXuLy,@Camera,@Gia,@HDH,@HinhLon,@HinhNho,@ManHinh,@NgayThem,@TinhNang,@TrangThai,@Wlan)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetSanPhamByTrangThai]    Script Date: 10/18/2014 16:17:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_GetSanPhamByTrangThai]
@TinhTrang int
AS
BEGIN
	select *
	from SanPham 
	where TrangThai=@TinhTrang
END
GO
/****** Object:  Table [dbo].[TonKho]    Script Date: 10/18/2014 16:17:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TonKho](
	[MaSanPham] [int] NOT NULL,
	[SoLuongTon] [int] NOT NULL,
	[NgayTon] [datetime] NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon]) VALUES (17, 5, CAST(0x0000A2A700A9151D AS DateTime))
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon]) VALUES (18, 5, CAST(0x0000A2A700A91559 AS DateTime))
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon]) VALUES (17, 10, CAST(0x0000A2A700AD2EDD AS DateTime))
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon]) VALUES (17, 12, CAST(0x0000A2A700B078B3 AS DateTime))
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon]) VALUES (18, 7, CAST(0x0000A2A700B175DF AS DateTime))
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon]) VALUES (31, 5, CAST(0x0000A2A700C55ACF AS DateTime))
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon]) VALUES (31, 4, CAST(0x0000A2A700DF782A AS DateTime))
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon]) VALUES (26, 5, CAST(0x0000A2A700E24A8F AS DateTime))
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon]) VALUES (26, 4, CAST(0x0000A2A700E259EB AS DateTime))
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon]) VALUES (8, 3, CAST(0x0000A2A700E4474C AS DateTime))
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon]) VALUES (31, 3, CAST(0x0000A2A700E45438 AS DateTime))
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon]) VALUES (8, 1, CAST(0x0000A2A700E45445 AS DateTime))
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon]) VALUES (40, 5, CAST(0x0000A2AA00C59B1F AS DateTime))
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon]) VALUES (40, 3, CAST(0x0000A2AA00C5A63E AS DateTime))
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon]) VALUES (3, 1, CAST(0x0000A2AB00ACAE91 AS DateTime))
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon]) VALUES (21, 2, CAST(0x0000A2AB00ACAEB0 AS DateTime))
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon]) VALUES (3, -1, CAST(0x0000A2AB00AD0E6D AS DateTime))
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon]) VALUES (21, 1, CAST(0x0000A2AB00AD0E86 AS DateTime))
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon]) VALUES (32, 2, CAST(0x0000A2AB00AEE43E AS DateTime))
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon]) VALUES (34, 2, CAST(0x0000A2AB00AEE449 AS DateTime))
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon]) VALUES (32, 3, CAST(0x0000A2AB00B2EDEF AS DateTime))
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon]) VALUES (34, 3, CAST(0x0000A2AB00B31CCD AS DateTime))
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon]) VALUES (40, 2, CAST(0x0000A2AB00B327CC AS DateTime))
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon]) VALUES (34, 0, CAST(0x0000A2AB00B327D8 AS DateTime))
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon]) VALUES (32, 1, CAST(0x0000A2AB00B327E1 AS DateTime))
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon]) VALUES (3, 4, CAST(0x0000A2AB00B3A450 AS DateTime))
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon]) VALUES (20, 5, CAST(0x0000A2A700B17602 AS DateTime))
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon]) VALUES (39, 5, CAST(0x0000A2AB01748822 AS DateTime))
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon]) VALUES (29, 6, CAST(0x0000A2AB0174A9A8 AS DateTime))
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon]) VALUES (29, 4, CAST(0x0000A2AB0174B57B AS DateTime))
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon]) VALUES (38, 0, CAST(0x0000A2AB0174B586 AS DateTime))
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon]) VALUES (39, 4, CAST(0x0000A2AD0166094E AS DateTime))
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon]) VALUES (42, 2, CAST(0x0000A2AE0088589C AS DateTime))
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon]) VALUES (42, 0, CAST(0x0000A2AE00889D13 AS DateTime))
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon]) VALUES (43, 5, CAST(0x0000A2AE00C6320C AS DateTime))
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon]) VALUES (43, 2, CAST(0x0000A2AE00C68900 AS DateTime))
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon]) VALUES (29, 1, CAST(0x0000A2AB0108B4B3 AS DateTime))
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon]) VALUES (38, 1, CAST(0x0000A2AB0108B4BF AS DateTime))
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon]) VALUES (35, 2, CAST(0x0000A2AB01793A62 AS DateTime))
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [NgayTon]) VALUES (35, 1, CAST(0x0000A2AB017948AE AS DateTime))
/****** Object:  StoredProcedure [dbo].[sp_GetAllSanPham]    Script Date: 10/18/2014 16:17:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_GetAllSanPham]
AS
BEGIN
	select SanPham.*, LoaiSanPham.TenLoai as ten_loai, NhaSanXuat.TenNSX as ten_nsx, TrangThai.TenTT as ten_tt
	from SanPham,LoaiSanPham, NhaSanXuat, TrangThai
	where SanPham.MaLoai= LoaiSanPham.MaLoai
	and NhaSanXuat.MaNSX = SanPham.MaNSX
	and	TrangThai.MaTT = SanPham.TrangThai
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetSanPhamByNSX]    Script Date: 10/18/2014 16:17:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_GetSanPhamByNSX]
@NSX int
AS
BEGIN
	select *
	from SanPham
	where MaNSX=@NSX
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetSanPhamByLoaiSP]    Script Date: 10/18/2014 16:17:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_GetSanPhamByLoaiSP]
@MaLoai int
AS
BEGIN
	select *
	from SanPham
	where MaLoai=@MaLoai
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetSanPhamByID]    Script Date: 10/18/2014 16:17:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_GetSanPhamByID]
@MaSanPham int
AS
BEGIN
	select *
	from SanPham
	where MaSanPham=@MaSanPham
END
GO
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 10/18/2014 16:17:22 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_CapNhatSanPham]    Script Date: 10/18/2014 16:17:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_CapNhatSanPham]
(
	@MaSanPham int,
	@TenSanPham nvarchar(50),
	@MoTaSanPham nvarchar(1000)=null,
	@MaLoai int,
	@MaNSX int,
	@TrangThai int,
	@Gia float,
	@HinhLon nvarchar(50),
	@HinhNho nvarchar(50),
	@TinhNang nvarchar(1000)=null,
	@ManHinh nvarchar(50)=null,
	@HDH nvarchar(50)=null,
	@BoXuLy nvarchar(50)=null,
	@BoNho nvarchar(50)=null,
	@3G nvarchar(50)=null,
	@Wlan nvarchar(50)=null,
	@Camera nvarchar(50)=null
)
AS
BEGIN
	Update [SanPham] set [TenSanPham]=@TenSanPham,[MoTaSanPham]=@MoTaSanPham,[MaLoai]=@MaLoai,[MaNSX]=@MaNSX,[3G]=@3G,[BoNho]=@BoNho,[BoXuLy]=@BoXuLy,[Camera]=@Camera,[Gia]=@Gia,[HDH]=@HDH,[HinhLon]=@HinhLon,[HinhNho]=@HinhNho,[ManHinh]=@ManHinh,[TinhNang]=@TinhNang,[TrangThai]=@TrangThai,[Wlan]=@Wlan
	where @MaSanPham=MaSanPham
END
GO
/****** Object:  Table [dbo].[DonDatHang]    Script Date: 10/18/2014 16:17:21 ******/
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
 CONSTRAINT [PK_DonDatHang] PRIMARY KEY CLUSTERED 
(
	[MaDonDatHang] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DonDatHang] ON
INSERT [dbo].[DonDatHang] ([MaDonDatHang], [NgayTao], [NgayGiao], [GhiChu], [MaKhachHang], [TenKhachHang], [EmailKhachHang], [TenNguoiTT], [DiaChiTT], [DienThoaiTT], [TenNguoiNhan], [DiaChiNhan], [DienThoaiNhan], [TrangThai], [TongTien], [MaNhanVien]) VALUES (2, CAST(0x0000A2A4017D27F4 AS DateTime), CAST(0x0000A2A500B81945 AS DateTime), N'', 1, N'Trần Quốc Trung', N'tranquoctrung.1610@gmail.com', N'Trần Trung', N'19 Trịnh Hoài Đức, phường 13, quận 5.', N'01268616869', N'Trần Quốc Trung', N'19 Trịnh Hoài Đức, phường 13, quận 5.', N'01268616869', 2, 7190000, NULL)
INSERT [dbo].[DonDatHang] ([MaDonDatHang], [NgayTao], [NgayGiao], [GhiChu], [MaKhachHang], [TenKhachHang], [EmailKhachHang], [TenNguoiTT], [DiaChiTT], [DienThoaiTT], [TenNguoiNhan], [DiaChiNhan], [DienThoaiNhan], [TrangThai], [TongTien], [MaNhanVien]) VALUES (3, CAST(0x0000A2A5009B0FAF AS DateTime), CAST(0x0000A2A801624987 AS DateTime), N'', NULL, N'Đặng Phước Toàn', N'toandang@gmail.com', N'abcd', N'333333', N'0121212346', N'xyz', N'cdddddddd', N'5555555555', 2, 3023690, NULL)
INSERT [dbo].[DonDatHang] ([MaDonDatHang], [NgayTao], [NgayGiao], [GhiChu], [MaKhachHang], [TenKhachHang], [EmailKhachHang], [TenNguoiTT], [DiaChiTT], [DienThoaiTT], [TenNguoiNhan], [DiaChiNhan], [DienThoaiNhan], [TrangThai], [TongTien], [MaNhanVien]) VALUES (4, CAST(0x0000A2AA00B32190 AS DateTime), CAST(0x0000A2AB00AB6923 AS DateTime), N'', 1, N'Trần Quốc Trung', N'tranquoctrung.1610@gmail.com', N'Trần Quốc Trung', N'19 Trịnh Hoài Đức, phường 13, quận 5.', N'01268616869', N'Trần Quốc Trung', N'19 Trịnh Hoài Đức, phường 13, quận 5.', N'01268616869', 2, 29800000, NULL)
INSERT [dbo].[DonDatHang] ([MaDonDatHang], [NgayTao], [NgayGiao], [GhiChu], [MaKhachHang], [TenKhachHang], [EmailKhachHang], [TenNguoiTT], [DiaChiTT], [DienThoaiTT], [TenNguoiNhan], [DiaChiNhan], [DienThoaiNhan], [TrangThai], [TongTien], [MaNhanVien]) VALUES (5, CAST(0x0000A2AB00A82FA5 AS DateTime), CAST(0x0000A2AB00B69128 AS DateTime), N'', 2, N'Nguyễn Thế Vinh', N'thevinh@gmail.com', N'Nguyễn Thế Vinh', N'Phú Yên, Việt Nam', N'090123456', N'Nguyễn Thế Vinh', N'Phú Yên, Việt Nam', N'090123456', 2, 43470000, NULL)
INSERT [dbo].[DonDatHang] ([MaDonDatHang], [NgayTao], [NgayGiao], [GhiChu], [MaKhachHang], [TenKhachHang], [EmailKhachHang], [TenNguoiTT], [DiaChiTT], [DienThoaiTT], [TenNguoiNhan], [DiaChiNhan], [DienThoaiNhan], [TrangThai], [TongTien], [MaNhanVien]) VALUES (6, CAST(0x0000A2AB00AE863E AS DateTime), CAST(0x0000A2AB00B337F3 AS DateTime), N'', 2, N'Nguyễn Thế Vinh', N'thevinh@gmail.com', N'Nguyễn Thế Vinh', N'Phú Yên, Việt Nam', N'090123456', N'Nguyễn Thế Vinh', N'Phú Yên, Việt Nam', N'090123456', 2, 27668000, NULL)
INSERT [dbo].[DonDatHang] ([MaDonDatHang], [NgayTao], [NgayGiao], [GhiChu], [MaKhachHang], [TenKhachHang], [EmailKhachHang], [TenNguoiTT], [DiaChiTT], [DienThoaiTT], [TenNguoiNhan], [DiaChiNhan], [DienThoaiNhan], [TrangThai], [TongTien], [MaNhanVien]) VALUES (7, CAST(0x0000A2AB01082143 AS DateTime), CAST(0x0000A2AB0174C274 AS DateTime), N'', 1, N'Trần Quốc Trung', N'tranquoctrung.1610@gmail.com', N'Trần Quốc Trung', N'19 Trịnh Hoài Đức, phường 13, quận 5.', N'01268616869', N'Trần Quốc Trung', N'19 Trịnh Hoài Đức, phường 13, quận 5.', N'01268616869', 2, 14988000, NULL)
INSERT [dbo].[DonDatHang] ([MaDonDatHang], [NgayTao], [NgayGiao], [GhiChu], [MaKhachHang], [TenKhachHang], [EmailKhachHang], [TenNguoiTT], [DiaChiTT], [DienThoaiTT], [TenNguoiNhan], [DiaChiNhan], [DienThoaiNhan], [TrangThai], [TongTien], [MaNhanVien]) VALUES (8, CAST(0x0000A2AB0178F493 AS DateTime), CAST(0x0000A2AB0179543B AS DateTime), N'', 1, N'Trần Quốc Trung', N'tranquoctrung.1610@gmail.com', N'Trần Quốc Trung', N'19 Trịnh Hoài Đức, phường 13, quận 5.', N'01268616869', N'Trần Quốc Trung', N'19 Trịnh Hoài Đức, phường 13, quận 5.', N'01268616869', 2, 3499000, NULL)
INSERT [dbo].[DonDatHang] ([MaDonDatHang], [NgayTao], [NgayGiao], [GhiChu], [MaKhachHang], [TenKhachHang], [EmailKhachHang], [TenNguoiTT], [DiaChiTT], [DienThoaiTT], [TenNguoiNhan], [DiaChiNhan], [DienThoaiNhan], [TrangThai], [TongTien], [MaNhanVien]) VALUES (9, CAST(0x0000A2AD01655D9F AS DateTime), CAST(0x0000A2AD0166147E AS DateTime), N'', 1, N'Trần Quốc Trung', N'tranquoctrung.1610@gmail.com', N'Trần Quốc Trung', N'19 Trịnh Hoài Đức, phường 13, quận 5.', N'01268616869', N'Trần Quốc Trung', N'19 Trịnh Hoài Đức, phường 13, quận 5.', N'01268616869', 2, 22290000, NULL)
INSERT [dbo].[DonDatHang] ([MaDonDatHang], [NgayTao], [NgayGiao], [GhiChu], [MaKhachHang], [TenKhachHang], [EmailKhachHang], [TenNguoiTT], [DiaChiTT], [DienThoaiTT], [TenNguoiNhan], [DiaChiNhan], [DienThoaiNhan], [TrangThai], [TongTien], [MaNhanVien]) VALUES (10, CAST(0x0000A2AE0087D9C1 AS DateTime), CAST(0x0000A2AE0088AC00 AS DateTime), N'', 1, N'Trần Quốc Trung', N'tranquoctrung.1610@gmail.com', N'Trần Quốc Trung', N'19 Trịnh Hoài Đức, phường 13, quận 5.', N'01268616869', N'Trần Quốc Trung', N'19 Trịnh Hoài Đức, phường 13, quận 5.', N'01268616869', 2, 44444444, NULL)
INSERT [dbo].[DonDatHang] ([MaDonDatHang], [NgayTao], [NgayGiao], [GhiChu], [MaKhachHang], [TenKhachHang], [EmailKhachHang], [TenNguoiTT], [DiaChiTT], [DienThoaiTT], [TenNguoiNhan], [DiaChiNhan], [DienThoaiNhan], [TrangThai], [TongTien], [MaNhanVien]) VALUES (11, CAST(0x0000A2AE00A928ED AS DateTime), NULL, N'', 1, N'Trần Quốc Trung', N'tranquoctrung.1610@gmail.com', N'Trần Quốc Trung', N'19 Trịnh Hoài Đức, phường 13, quận 5.', N'01268616869', N'Trần Quốc Trung', N'19 Trịnh Hoài Đức, phường 13, quận 5.', N'01268616869', 0, 44700000, NULL)
INSERT [dbo].[DonDatHang] ([MaDonDatHang], [NgayTao], [NgayGiao], [GhiChu], [MaKhachHang], [TenKhachHang], [EmailKhachHang], [TenNguoiTT], [DiaChiTT], [DienThoaiTT], [TenNguoiNhan], [DiaChiNhan], [DienThoaiNhan], [TrangThai], [TongTien], [MaNhanVien]) VALUES (12, CAST(0x0000A2AE00C59F01 AS DateTime), CAST(0x0000A2AE00C69847 AS DateTime), N'', 1, N'Trần Quốc Trung', N'tranquoctrung.1610@gmail.com', N'Trần Quốc Trung', N'19 Trịnh Hoài Đức, phường 13, quận 5.', N'01268616869', N'Trần Quốc Trung', N'19 Trịnh Hoài Đức, phường 13, quận 5.', N'01268616869', 2, 3, NULL)
SET IDENTITY_INSERT [dbo].[DonDatHang] OFF
/****** Object:  Table [dbo].[ChiTietPhieuNhap]    Script Date: 10/18/2014 16:17:21 ******/
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
/****** Object:  Table [dbo].[ChiTietDonHang]    Script Date: 10/18/2014 16:17:20 ******/
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
SET IDENTITY_INSERT [dbo].[ChiTietDonHang] OFF
/****** Object:  View [dbo].[BC_TonKho]    Script Date: 10/18/2014 16:17:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[BC_TonKho]
AS
SELECT     dbo.TonKho.MaSanPham, dbo.TonKho.SoLuongTon, dbo.TonKho.NgayTon, dbo.SanPham.TenSanPham
FROM         dbo.SanPham INNER JOIN
                      dbo.TonKho ON dbo.SanPham.MaSanPham = dbo.TonKho.MaSanPham
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "SanPham"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 203
               Right = 202
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TonKho"
            Begin Extent = 
               Top = 6
               Left = 236
               Bottom = 111
               Right = 396
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'BC_TonKho'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'BC_TonKho'
GO
/****** Object:  View [dbo].[BC_PhieuNhap]    Script Date: 10/18/2014 16:17:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[BC_PhieuNhap]
AS
SELECT     dbo.PhieuNhap.MaPhieuNhap, dbo.PhieuNhap.NgayNhap, dbo.PhieuNhap.TongTienNhap, dbo.NhaCungCap.TenNCC
FROM         dbo.PhieuNhap INNER JOIN
                      dbo.NhaCungCap ON dbo.PhieuNhap.MaNCC = dbo.NhaCungCap.MaNCC
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "PhieuNhap"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 175
               Right = 203
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "NhaCungCap"
            Begin Extent = 
               Top = 6
               Left = 236
               Bottom = 168
               Right = 465
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'BC_PhieuNhap'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'BC_PhieuNhap'
GO
/****** Object:  StoredProcedure [dbo].[sp_CapNhatTTXuatKho]    Script Date: 10/18/2014 16:17:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[sp_CapNhatTTXuatKho]
@XuatKho int,
@MaDonDatHang int
AS
	update [DonDatHang] set [XuatKho]=@XuatKho
	where MaDonDatHang= @MaDonDatHang
GO
/****** Object:  StoredProcedure [dbo].[sp_CapNhatTonKho]    Script Date: 10/18/2014 16:17:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_CapNhatTonKho]
@MaSanPham int,
@NgayTon date,
@SoLuongTon int
AS
	update [TonKho] set [NgayTon]=@NgayTon, [SoLuongTon]=@SoLuongTon + [SoLuongTon]
	where MaSanPham=@MaSanPham
GO
/****** Object:  StoredProcedure [dbo].[sp_CapNhatDonHang]    Script Date: 10/18/2014 16:17:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_CapNhatDonHang]
(
@MaDonDatHang int,
@NgayGiao datetime,
@GhiChu nvarchar(100),
@TenNguoiTT nvarchar(50),
@DiaChiTT nvarchar(50),
@DienThoaiTT nvarchar(50),
@TenNguoiNhan nvarchar(50),
@DiaChiNhan nvarchar(50),
@DienThoaiNhan nvarchar(50),
@TrangThai int
)
AS
BEGIN
	update [DonDatHang]
	set [NgayGiao]=@NgayGiao,[GhiChu]=@GhiChu,[TenNguoiTT]=@TenNguoiTT,[DiaChiTT]=@DiaChiTT,[DienThoaiTT]=@DienThoaiTT,[TenNguoiNhan]=@TenNguoiNhan,[DiaChiNhan]=@DiaChiNhan,[DienThoaiNhan]=@DienThoaiNhan,[TrangThai]=@TrangThai
	where @MaDonDatHang=MaDonDatHang
END
GO
/****** Object:  StoredProcedure [dbo].[sp_CapNhatXuatTonKho]    Script Date: 10/18/2014 16:17:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[sp_CapNhatXuatTonKho]
@MaSanPham int,
@NgayTon datetime,
@SoLuongXuat int
as
declare @TongSL int, @SLCu int
BEGIN
	set @SLCu = (Select SoLuongTon From TonKho where MaSanPham=@MaSanPham and NgayTon= (select MAX(NgayTon) from TonKho where MaSanPham=@MaSanPham))
	Set @TongSL =@SLCu - @SoLuongXuat
	insert into TonKho([MaSanPham],[NgayTon],[SoLuongTon])
	values (@MaSanPham,@NgayTon,@TongSL)
END
GO
/****** Object:  View [dbo].[BC_DoanhThu]    Script Date: 10/18/2014 16:17:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[BC_DoanhThu]
AS
SELECT     MaDonDatHang, NgayTao, NgayGiao, TenKhachHang, TongTien
FROM         dbo.DonDatHang
WHERE     (TrangThai = 2)
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "DonDatHang"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 211
               Right = 255
            End
            DisplayFlags = 280
            TopColumn = 7
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'BC_DoanhThu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'BC_DoanhThu'
GO
/****** Object:  StoredProcedure [dbo].[sp_CapNhatThemTonKho]    Script Date: 10/18/2014 16:17:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_CapNhatThemTonKho]
@MaSanPham int,
@NgayTon datetime,
@SoLuongTon int
as
declare @TongSL int, @SLCu int
BEGIN
	set @SLCu = (Select SoLuongTon From TonKho where MaSanPham=@MaSanPham and NgayTon= (select MAX(NgayTon) from TonKho where MaSanPham=@MaSanPham))
	Set @TongSL =@SoLuongTon + @SLCu	
	insert into TonKho([MaSanPham],[NgayTon],[SoLuongTon])
	values (@MaSanPham,@NgayTon,@TongSL)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetAllDonHang]    Script Date: 10/18/2014 16:17:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_GetAllDonHang]
as
BEGIN
	select DonDatHang.*,TrangThaiHoaDon.TenTrangThai as tt_hd, XuatKho.TenXK as ten_xk
	from DonDatHang,TrangThaiHoaDon,XuatKho
	where DonDatHang.TrangThai = TrangThaiHoaDon.TrangThai
	and DonDatHang.XuatKho = XuatKho.ID
	Order By TrangThai asc
		
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetDonHangByID]    Script Date: 10/18/2014 16:17:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_GetDonHangByID]
@MaDonDatHang int
as
BEGIN
	select *
	from DonDatHang
	where MaDonDatHang=@MaDonDatHang
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetAllTonKho]    Script Date: 10/18/2014 16:17:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_GetAllTonKho]
as
begin
	select sp.TenSanPham as ten_sp,tk.MaSanPham,tk.SoLuongTon,tk.NgayTon 
	from SanPham sp, TonKho tk
	where sp.MaSanPham=tk.MaSanPham
	and NgayTon = all
	(select max(NgayTon) from TonKho tk1 where tk1.MaSanPham=sp.MaSanPham group by MaSanPham)
	Order By NgayTon desc
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetAllPhieuNhap]    Script Date: 10/18/2014 16:17:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_GetAllPhieuNhap]
AS
BEGIN
	select PhieuNhap.*,NhaCungCap.TenNCC as ten_ncc  from PhieuNhap,NhaCungCap where PhieuNhap.MaNCC = NhaCungCap.MaNCC order by NgayNhap desc
END
GO
/****** Object:  StoredProcedure [dbo].[sp_KiemTraSPKho]    Script Date: 10/18/2014 16:17:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_KiemTraSPKho]
@MaSP int
AS
BEGIN
 select MaSanPham
 from TonKho
	where @MaSP = MaSanPham
END
GO
/****** Object:  StoredProcedure [dbo].[sp_KiemTraSoLuong]    Script Date: 10/18/2014 16:17:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_KiemTraSoLuong]
@MaSanPham int
AS
BEGIN
	Select SoLuongTon 
	From TonKho 
	where MaSanPham=@MaSanPham 
		and NgayTon= (select MAX(NgayTon) from TonKho where MaSanPham=@MaSanPham)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetSoLuongSanPham]    Script Date: 10/18/2014 16:17:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_GetSoLuongSanPham]
@MaSanPham int
AS
BEGIN
	select *
	from TonKho
	where @MaSanPham = MaSanPham
	Order By NgayTon desc
END
GO
/****** Object:  StoredProcedure [dbo].[sp_MaxIDPhieuNhap]    Script Date: 10/18/2014 16:17:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_MaxIDPhieuNhap]
as
begin
select MAX(MaPhieuNhap)as maxid
from PhieuNhap
end
GO
/****** Object:  StoredProcedure [dbo].[sp_MaxIdDonHang]    Script Date: 10/18/2014 16:17:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_MaxIdDonHang] 
	
AS
BEGIN
	select MAX(MaDonDatHang)as maxid
from DonDatHang
END
GO
/****** Object:  StoredProcedure [dbo].[sp_LocHoaDonTheoTrangThai]    Script Date: 10/18/2014 16:17:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_LocHoaDonTheoTrangThai]
@TrangThai int
AS
BEGIN
	select * 
	from DonDatHang
	where TrangThai=@TrangThai
END
GO
/****** Object:  StoredProcedure [dbo].[sp_LocHoaDonTheoNgayTao]    Script Date: 10/18/2014 16:17:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_LocHoaDonTheoNgayTao]
@NgayTao date
AS
BEGIN
	select * 
	from DonDatHang
	where NgayTao = @NgayTao
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ThemDonHang]    Script Date: 10/18/2014 16:17:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_ThemDonHang]
@NgayTao datetime,
@GhiChu nvarchar(100),
@MaKhachHang int,
@TenKhachHang nvarchar(50),
@EmailKhachHang nvarchar(50),
@TenNguoiTT nvarchar(50),
@DiaChiTT nvarchar(50),
@DienThoaiTT nvarchar(50),
@TenNguoiNhan nvarchar(50),
@DiaChiNhan nvarchar(50),
@DienThoaiNhan nvarchar(50),
@TrangThai int,
@XuatKho int,
@TongTien float
AS
BEGIN
	insert into DonDatHang([TongTien],[NgayTao],[GhiChu],[MaKhachHang],[TenKhachHang],[EmailKhachHang],[TenNguoiTT],[DiaChiTT],[DienThoaiTT],[TenNguoiNhan],[DiaChiNhan],[DienThoaiNhan],[TrangThai],[XuatKho])
	values (@TongTien,@NgayTao,@GhiChu,@MaKhachHang,@TenKhachHang,@EmailKhachHang,@TenNguoiTT,@DiaChiTT,@DienThoaiTT,@TenNguoiNhan,@DiaChiNhan,@DienThoaiNhan,@TrangThai,@XuatKho)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_XemSPTonKho]    Script Date: 10/18/2014 16:17:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_XemSPTonKho]
@MaSanPham int =null,
@NgayTon date =null
AS
BEGIN
	select top 1 SoLuongTon
	from TonKho
	where MaSanPham = @MaSanPham
	and NgayTon <= @NgayTon
	Order by NgayTon desc
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ThemPhieuNhap]    Script Date: 10/18/2014 16:17:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[sp_ThemPhieuNhap]
@MaNCC int,
@NgayNhap date,
@TongTienNhap float
as
BEGIN
	insert into PhieuNhap([MaNCC],[NgayNhap],[TongTienNhap])
	values (@MaNCC,@NgayNhap,@TongTienNhap)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ThemTonKho]    Script Date: 10/18/2014 16:17:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_ThemTonKho]
@MaSanPham int,
@NgayTon datetime,
@SoLuongTon int
as
BEGIN
	insert into TonKho([MaSanPham],[NgayTon],[SoLuongTon])
	values (@MaSanPham,@NgayTon,@SoLuongTon)
END
GO
/****** Object:  View [dbo].[view_TonKho]    Script Date: 10/18/2014 16:17:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[view_TonKho]
as
(
select sp.MaSanPham,sp.TenSanPham,tk.SoLuongTon,tk.NgayTon
from SanPham sp, TonKho tk
where sp.MaSanPham=tk.MaSanPham
and NgayTon = all
(select max(NgayTon) from TonKho tk1 where tk1.MaSanPham=sp.MaSanPham group by MaSanPham))
GO
/****** Object:  StoredProcedure [dbo].[sp_XoaDonHang]    Script Date: 10/18/2014 16:17:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_XoaDonHang]
@MaDonDatHang int
as
BEGIN
	delete DonDatHang
	where MaDonDatHang=@MaDonDatHang
END
GO
/****** Object:  StoredProcedure [dbo].[sp_XoaChiTietDonHang]    Script Date: 10/18/2014 16:17:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_XoaChiTietDonHang]
@ID int
as
BEGIN
	delete ChiTietDonHang
	where ID=@ID
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ThemChiTietPhieuNhap]    Script Date: 10/18/2014 16:17:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_ThemChiTietPhieuNhap]
@MaPhieuNhap int,
@MaSanPham int,
@DonGia float,
@SoLuongNhap int,
@TongCongNhap float
as
BEGIN
	insert into ChiTietPhieuNhap([MaPhieuNhap],[MaSanPham],[SoLuongNhap],[DonGia],[TongCongNhap])
	values (@MaPhieuNhap,@MaSanPham,@SoLuongNhap,@DonGia,@TongCongNhap)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ThemChiTietDonHang]    Script Date: 10/18/2014 16:17:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_ThemChiTietDonHang]
@MaDonDatHang int,
@MaSanPham int,
@Gia float,
@SoLuong int,
@TongCong float
as
BEGIN
	insert into ChiTietDonHang([MaDonDatHang],[MaSanPham],[SoLuong],[Gia],[TongCong])
	values (@MaDonDatHang,@MaSanPham,@SoLuong,@Gia,@TongCong)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetChiTietDonHangByID]    Script Date: 10/18/2014 16:17:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_GetChiTietDonHangByID]
@ID int
as
BEGIN
	select *
	from ChiTietDonHang
	where ID=@ID
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetAllChiTietDonHang]    Script Date: 10/18/2014 16:17:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_GetAllChiTietDonHang]
as
BEGIN
	select *
	from ChiTietDonHang
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ChiTietDonHangID]    Script Date: 10/18/2014 16:17:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_ChiTietDonHangID]
@MaDonDatHang int
AS
BEGIN
	select ChiTietDonHang.*,SanPham.TenSanPham as ten_sp
	from ChiTietDonHang,SanPham
	where @MaDonDatHang=MaDonDatHang and
		ChiTietDonHang.MaSanPham = SanPham.MaSanPham
END
GO
/****** Object:  StoredProcedure [dbo].[sp_CapNhatChiTietDonHang]    Script Date: 10/18/2014 16:17:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_CapNhatChiTietDonHang]
@ID int,
@MaDonDatHang int,
@MaSanPham int,
@Gia float,
@SoLuong int,
@TongCong float
as
BEGIN
	update ChiTietDonHang set [MaDonDatHang]=@MaDonDatHang, [MaSanPham]=@MaSanPham, [SoLuong]=@SoLuong, [Gia]=@Gia, [TongCong]=@TongCong
	where @ID=ID
	
END
GO
/****** Object:  View [dbo].[BC_HoaDon]    Script Date: 10/18/2014 16:17:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[BC_HoaDon]
AS
SELECT     dbo.ChiTietDonHang.SoLuong, dbo.ChiTietDonHang.Gia, dbo.DonDatHang.NgayGiao, dbo.DonDatHang.TongTien, dbo.SanPham.TenSanPham
FROM         dbo.ChiTietDonHang INNER JOIN
                      dbo.DonDatHang ON dbo.ChiTietDonHang.MaDonDatHang = dbo.DonDatHang.MaDonDatHang INNER JOIN
                      dbo.SanPham ON dbo.ChiTietDonHang.MaSanPham = dbo.SanPham.MaSanPham
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "ChiTietDonHang"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 195
               Right = 195
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "DonDatHang"
            Begin Extent = 
               Top = 6
               Left = 240
               Bottom = 211
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 7
         End
         Begin Table = "SanPham"
            Begin Extent = 
               Top = 6
               Left = 445
               Bottom = 211
               Right = 640
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'BC_HoaDon'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'BC_HoaDon'
GO
/****** Object:  ForeignKey [FK_ChiTietDonHang_DonDatHang]    Script Date: 10/18/2014 16:17:21 ******/
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonHang_DonDatHang] FOREIGN KEY([MaDonDatHang])
REFERENCES [dbo].[DonDatHang] ([MaDonDatHang])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_ChiTietDonHang_DonDatHang]
GO
/****** Object:  ForeignKey [FK_ChiTietDonHang_SanPham]    Script Date: 10/18/2014 16:17:21 ******/
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonHang_SanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_ChiTietDonHang_SanPham]
GO
/****** Object:  ForeignKey [FK_ChiTietPhieuNhap_PhieuNhap]    Script Date: 10/18/2014 16:17:21 ******/
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuNhap_PhieuNhap] FOREIGN KEY([MaPhieuNhap])
REFERENCES [dbo].[PhieuNhap] ([MaPhieuNhap])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap] CHECK CONSTRAINT [FK_ChiTietPhieuNhap_PhieuNhap]
GO
/****** Object:  ForeignKey [FK_ChiTietPhieuNhap_SanPham]    Script Date: 10/18/2014 16:17:21 ******/
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuNhap_SanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap] CHECK CONSTRAINT [FK_ChiTietPhieuNhap_SanPham]
GO
/****** Object:  ForeignKey [FK_DonDatHang_NhanVien]    Script Date: 10/18/2014 16:17:22 ******/
ALTER TABLE [dbo].[DonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_DonDatHang_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[DonDatHang] CHECK CONSTRAINT [FK_DonDatHang_NhanVien]
GO
/****** Object:  ForeignKey [FK_DonDatHang_TrangThaiHoaDon]    Script Date: 10/18/2014 16:17:22 ******/
ALTER TABLE [dbo].[DonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_DonDatHang_TrangThaiHoaDon] FOREIGN KEY([TrangThai])
REFERENCES [dbo].[TrangThaiHoaDon] ([TrangThai])
GO
ALTER TABLE [dbo].[DonDatHang] CHECK CONSTRAINT [FK_DonDatHang_TrangThaiHoaDon]
GO
/****** Object:  ForeignKey [FK_DonDatHang_User]    Script Date: 10/18/2014 16:17:22 ******/
ALTER TABLE [dbo].[DonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_DonDatHang_User] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[DonDatHang] CHECK CONSTRAINT [FK_DonDatHang_User]
GO
/****** Object:  ForeignKey [FK_NhanVien_ChucVu]    Script Date: 10/18/2014 16:17:22 ******/
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_ChucVu] FOREIGN KEY([ChucVu])
REFERENCES [dbo].[ChucVu] ([MaChucVu])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_ChucVu]
GO
/****** Object:  ForeignKey [FK_PhieuNhap_NhaCungCap]    Script Date: 10/18/2014 16:17:22 ******/
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhap_NhaCungCap] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[PhieuNhap] CHECK CONSTRAINT [FK_PhieuNhap_NhaCungCap]
GO
/****** Object:  ForeignKey [FK_PhieuNhap_NhanVien]    Script Date: 10/18/2014 16:17:22 ******/
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhap_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[PhieuNhap] CHECK CONSTRAINT [FK_PhieuNhap_NhanVien]
GO
/****** Object:  ForeignKey [FK_SanPham_LoaiSanPham]    Script Date: 10/18/2014 16:17:22 ******/
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSanPham] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[LoaiSanPham] ([MaLoai])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSanPham]
GO
/****** Object:  ForeignKey [FK_SanPham_NhaSanXuat]    Script Date: 10/18/2014 16:17:22 ******/
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NhaSanXuat] FOREIGN KEY([MaNSX])
REFERENCES [dbo].[NhaSanXuat] ([MaNSX])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NhaSanXuat]
GO
/****** Object:  ForeignKey [FK_TonKho_SanPham]    Script Date: 10/18/2014 16:17:22 ******/
ALTER TABLE [dbo].[TonKho]  WITH CHECK ADD  CONSTRAINT [FK_TonKho_SanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[TonKho] CHECK CONSTRAINT [FK_TonKho_SanPham]
GO
