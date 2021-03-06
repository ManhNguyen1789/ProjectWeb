USE [master]
GO
/****** Object:  Database [Van]    Script Date: 3/24/2021 3:08:20 PM ******/
CREATE DATABASE [Van]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Van', FILENAME = N'D:\download\setup\MSSQL15.MSSQLSERVER\MSSQL\DATA\Van.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Van_log', FILENAME = N'D:\download\setup\MSSQL15.MSSQLSERVER\MSSQL\DATA\Van_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Van] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Van].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Van] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Van] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Van] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Van] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Van] SET ARITHABORT OFF 
GO
ALTER DATABASE [Van] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Van] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Van] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Van] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Van] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Van] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Van] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Van] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Van] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Van] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Van] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Van] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Van] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Van] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Van] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Van] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Van] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Van] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Van] SET  MULTI_USER 
GO
ALTER DATABASE [Van] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Van] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Van] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Van] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Van] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Van', N'ON'
GO
ALTER DATABASE [Van] SET QUERY_STORE = OFF
GO
USE [Van]
GO
/****** Object:  Table [dbo].[Booking]    Script Date: 3/24/2021 3:08:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Booking](
	[MaVe] [int] IDENTITY(1,1) NOT NULL,
	[MaTour] [nvarchar](50) NULL,
	[SLNguoiLon] [int] NULL,
	[SLTreEm] [int] NULL,
	[MaLT] [nvarchar](50) NULL,
	[MaKH] [nvarchar](50) NULL,
	[MaDDDL] [nvarchar](50) NULL,
	[MaNV] [nvarchar](50) NULL,
	[TrangThai] [int] NULL,
	[GiaTien] [int] NULL,
	[NgayBook] [date] NULL,
 CONSTRAINT [PK_Booking] PRIMARY KEY CLUSTERED 
(
	[MaVe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 3/24/2021 3:08:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[ID_Contact] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Subject] [nvarchar](50) NULL,
	[Message] [nvarchar](max) NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[ID_Contact] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTTour]    Script Date: 3/24/2021 3:08:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTTour](
	[MaCTTour] [nvarchar](50) NOT NULL,
	[MaTour] [nvarchar](50) NULL,
	[MaDDDL] [nvarchar](50) NULL,
	[MaKS] [nvarchar](50) NULL,
	[MoTaCT] [nvarchar](50) NULL,
	[GiaveNL] [int] NULL,
	[GiaVeTE] [int] NULL,
	[MaLPT] [nvarchar](50) NULL,
 CONSTRAINT [PK_CTTour] PRIMARY KEY CLUSTERED 
(
	[MaCTTour] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiaDiemDL]    Script Date: 3/24/2021 3:08:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiaDiemDL](
	[MaDDDL] [nvarchar](50) NOT NULL,
	[TenDDDL] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
 CONSTRAINT [PK_DiaDiemDL] PRIMARY KEY CLUSTERED 
(
	[MaDDDL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 3/24/2021 3:08:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [nvarchar](50) NOT NULL,
	[TenKH] [nvarchar](50) NULL,
	[GioiTinh] [nvarchar](50) NULL,
	[QuocTich] [nvarchar](50) NULL,
	[CMND] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SDT] [nvarchar](50) NULL,
	[TaiKhoan] [nvarchar](50) NULL,
	[Matkhau] [nvarchar](50) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachSan]    Script Date: 3/24/2021 3:08:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachSan](
	[MaKS] [nvarchar](50) NOT NULL,
	[TenKS] [nvarchar](50) NULL,
	[SDT] [int] NULL,
	[Email] [nvarchar](50) NULL,
	[MaDDDL] [nvarchar](50) NULL,
 CONSTRAINT [PK_KhachSan] PRIMARY KEY CLUSTERED 
(
	[MaKS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LichTrinh]    Script Date: 3/24/2021 3:08:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichTrinh](
	[MaLT] [nvarchar](50) NOT NULL,
	[NgayBD] [datetime] NULL,
	[NgayKT] [datetime] NULL,
	[MaTour] [nvarchar](50) NULL,
	[MaPT] [nvarchar](50) NULL,
	[Slot] [int] NULL,
 CONSTRAINT [PK_LichTrinh] PRIMARY KEY CLUSTERED 
(
	[MaLT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiPhuongTien]    Script Date: 3/24/2021 3:08:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiPhuongTien](
	[MaLPT] [nvarchar](50) NOT NULL,
	[TenLPT] [nvarchar](50) NULL,
 CONSTRAINT [PK_LoaiPhuongTien] PRIMARY KEY CLUSTERED 
(
	[MaLPT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiTour]    Script Date: 3/24/2021 3:08:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiTour](
	[MaLoaiTour] [nvarchar](50) NOT NULL,
	[TenLoaiTour] [nvarchar](50) NULL,
 CONSTRAINT [PK_LoaiTour] PRIMARY KEY CLUSTERED 
(
	[MaLoaiTour] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Media]    Script Date: 3/24/2021 3:08:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Media](
	[ID_Media] [int] IDENTITY(1,1) NOT NULL,
	[Url] [nvarchar](50) NULL,
	[Main] [bit] NULL,
	[MaTour] [nvarchar](50) NULL,
 CONSTRAINT [PK_Media] PRIMARY KEY CLUSTERED 
(
	[ID_Media] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 3/24/2021 3:08:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [nvarchar](50) NOT NULL,
	[TenNV] [nvarchar](50) NULL,
	[NghiepVu] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[TaiKhoan] [nvarchar](50) NULL,
	[SDT] [int] NULL,
	[PassWord] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhuongTien]    Script Date: 3/24/2021 3:08:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhuongTien](
	[MaPT] [nvarchar](50) NOT NULL,
	[TenPT] [nvarchar](50) NULL,
	[SoCho] [int] NULL,
	[MaLPT] [nvarchar](50) NULL,
 CONSTRAINT [PK_PhuongTien] PRIMARY KEY CLUSTERED 
(
	[MaPT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slide]    Script Date: 3/24/2021 3:08:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slide](
	[ID_Slide] [nvarchar](50) NOT NULL,
	[TenSlide] [nvarchar](50) NULL,
	[Img] [nvarchar](50) NULL,
	[Link] [nvarchar](500) NULL,
 CONSTRAINT [PK_Slide] PRIMARY KEY CLUSTERED 
(
	[ID_Slide] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tour]    Script Date: 3/24/2021 3:08:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tour](
	[MaTour] [nvarchar](50) NOT NULL,
	[TenTour] [nvarchar](50) NULL,
	[MaLoaiTour] [nvarchar](50) NULL,
	[GiaTien] [int] NULL,
	[Minuser] [int] NULL,
	[Maxuser] [int] NULL,
	[MoTa] [nvarchar](max) NULL,
 CONSTRAINT [PK_Tour] PRIMARY KEY CLUSTERED 
(
	[MaTour] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Booking] ON 

INSERT [dbo].[Booking] ([MaVe], [MaTour], [SLNguoiLon], [SLTreEm], [MaLT], [MaKH], [MaDDDL], [MaNV], [TrangThai], [GiaTien], [NgayBook]) VALUES (2, N't002', 12, 4, N'LTR002', N'kh002', N'dl002', N'nv002', 2, 15000000, CAST(N'2021-03-17' AS Date))
INSERT [dbo].[Booking] ([MaVe], [MaTour], [SLNguoiLon], [SLTreEm], [MaLT], [MaKH], [MaDDDL], [MaNV], [TrangThai], [GiaTien], [NgayBook]) VALUES (3, N't003', 5, 2, N'LTR003', N'kh003', N'dl003', N'nv003', 3, 40000000, CAST(N'2021-02-17' AS Date))
INSERT [dbo].[Booking] ([MaVe], [MaTour], [SLNguoiLon], [SLTreEm], [MaLT], [MaKH], [MaDDDL], [MaNV], [TrangThai], [GiaTien], [NgayBook]) VALUES (4, N't003', 5, 1, N'LTR005', N'kh001', N'dl003', N'NV005', 1, 3150000, CAST(N'2021-01-17' AS Date))
INSERT [dbo].[Booking] ([MaVe], [MaTour], [SLNguoiLon], [SLTreEm], [MaLT], [MaKH], [MaDDDL], [MaNV], [TrangThai], [GiaTien], [NgayBook]) VALUES (5, N't005', 5, 1, N'LTR004', N'kh001', N'dl003', N'NV009', 2, 9000000, CAST(N'2021-03-01' AS Date))
INSERT [dbo].[Booking] ([MaVe], [MaTour], [SLNguoiLon], [SLTreEm], [MaLT], [MaKH], [MaDDDL], [MaNV], [TrangThai], [GiaTien], [NgayBook]) VALUES (8, N't003', 10, 3, N'LTR004', N'kh001', N'dl002', N'NV009', 2, 20000000, CAST(N'2021-04-10' AS Date))
INSERT [dbo].[Booking] ([MaVe], [MaTour], [SLNguoiLon], [SLTreEm], [MaLT], [MaKH], [MaDDDL], [MaNV], [TrangThai], [GiaTien], [NgayBook]) VALUES (11, N't002', 6, 0, N'LTR002', N'kh001', N'dl002', N'NV009', 1, 6800000, CAST(N'2021-03-19' AS Date))
INSERT [dbo].[Booking] ([MaVe], [MaTour], [SLNguoiLon], [SLTreEm], [MaLT], [MaKH], [MaDDDL], [MaNV], [TrangThai], [GiaTien], [NgayBook]) VALUES (12, N't002', 4, 0, N'LTR002', N'kh001', N'dl002', N'NV009', 1, 6200000, CAST(N'2021-03-19' AS Date))
SET IDENTITY_INSERT [dbo].[Booking] OFF
SET IDENTITY_INSERT [dbo].[Contact] ON 

INSERT [dbo].[Contact] ([ID_Contact], [Name], [Email], [Subject], [Message]) VALUES (1, N'van', N'van@gmail.com', N'can', N'Hello')
INSERT [dbo].[Contact] ([ID_Contact], [Name], [Email], [Subject], [Message]) VALUES (2, N'nguyễn văn mạnh', N'manhnv@gmail.com', N'ádf', N'ádasd')
SET IDENTITY_INSERT [dbo].[Contact] OFF
INSERT [dbo].[CTTour] ([MaCTTour], [MaTour], [MaDDDL], [MaKS], [MoTaCT], [GiaveNL], [GiaVeTE], [MaLPT]) VALUES (N'ctt001', N't001', N'dl001', N'ks001', N'hello world', 200000, 100000, N'mb200')
INSERT [dbo].[CTTour] ([MaCTTour], [MaTour], [MaDDDL], [MaKS], [MoTaCT], [GiaveNL], [GiaVeTE], [MaLPT]) VALUES (N'ctt002', N't002', N'dl002', N'ks002', N'hello world', 300000, 200000, N'mb200')
INSERT [dbo].[CTTour] ([MaCTTour], [MaTour], [MaDDDL], [MaKS], [MoTaCT], [GiaveNL], [GiaVeTE], [MaLPT]) VALUES (N'ctt003', N't003', N'dl003', N'ks003', N'hello world', 250000, 150000, N'mb200')
INSERT [dbo].[CTTour] ([MaCTTour], [MaTour], [MaDDDL], [MaKS], [MoTaCT], [GiaveNL], [GiaVeTE], [MaLPT]) VALUES (N'CTT004', N't001', N'dl001', N'ks001', N'hello world', 8000000, 4000000, N'mb200')
INSERT [dbo].[CTTour] ([MaCTTour], [MaTour], [MaDDDL], [MaKS], [MoTaCT], [GiaveNL], [GiaVeTE], [MaLPT]) VALUES (N'CTT005', N't005', N'dl003', N'ks003', N'hello world', 2000000, 1500000, N'mb200')
INSERT [dbo].[DiaDiemDL] ([MaDDDL], [TenDDDL], [DiaChi]) VALUES (N'dl001', N'Biển Hải Tiến', N'Thanh Hóa')
INSERT [dbo].[DiaDiemDL] ([MaDDDL], [TenDDDL], [DiaChi]) VALUES (N'dl002', N'Biển Nha Trang', N'Nha Trang')
INSERT [dbo].[DiaDiemDL] ([MaDDDL], [TenDDDL], [DiaChi]) VALUES (N'dl003', N'Biển Phú Quốc', N'Phú Quốc')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [GioiTinh], [QuocTich], [CMND], [DiaChi], [SDT], [TaiKhoan], [Matkhau]) VALUES (N'kh001', N'Nguyễn Văn Mạnh', N'Nam', N'Việt Nam', N'1781320018', N'Bắc Giang', N'37843892', N'khmanh', N'0ee4c76f897ecaea3946d1b103fc7baf')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [GioiTinh], [QuocTich], [CMND], [DiaChi], [SDT], [TaiKhoan], [Matkhau]) VALUES (N'kh002', N'Lê Thị Thủy', N'Nữ', N'Việt Nam', N'03424924394', N'Thanh Hóa', N'34234323', N'khthuy', N'0c5551c1f0080de1579bc00d898db0cd')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [GioiTinh], [QuocTich], [CMND], [DiaChi], [SDT], [TaiKhoan], [Matkhau]) VALUES (N'kh003', N'Nguyễn Thế Vân', N'Nam', N'Việt Nam', N'0394166076', N'Bắc Ninh', N'96834432', N'vansiunhan', N'202cb962ac59075b964b07152d234b70')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [GioiTinh], [QuocTich], [CMND], [DiaChi], [SDT], [TaiKhoan], [Matkhau]) VALUES (N'kh004', N'Nguyễn Văn Long', N'Nam', N'Việt Nam', N'1781320002', N'Hà Nội', N'0383317677', N'khlong', N'0ee4c76f897ecaea3946d1b103fc7baf')
INSERT [dbo].[KhachSan] ([MaKS], [TenKS], [SDT], [Email], [MaDDDL]) VALUES (N'ks001', N'Khách Sạn Anh Phương', 954839543, N'anhphuong@gmail.com', N'dl001')
INSERT [dbo].[KhachSan] ([MaKS], [TenKS], [SDT], [Email], [MaDDDL]) VALUES (N'ks002', N'Khách Sạn Hải Tiến', 543234353, N'haitien@gmail.com', N'dl002')
INSERT [dbo].[KhachSan] ([MaKS], [TenKS], [SDT], [Email], [MaDDDL]) VALUES (N'ks003', N'Khách Sạn Sao Biển', 378923432, N'saobien@gmail.com', N'dl003')
INSERT [dbo].[KhachSan] ([MaKS], [TenKS], [SDT], [Email], [MaDDDL]) VALUES (N'KS004', N'Bình An', 123123123, N'ksbinhan@gmail.com', N'dl003')
INSERT [dbo].[LichTrinh] ([MaLT], [NgayBD], [NgayKT], [MaTour], [MaPT], [Slot]) VALUES (N'LTR001', CAST(N'2021-05-10T07:00:00.000' AS DateTime), CAST(N'2021-05-13T20:00:00.000' AS DateTime), N't001', N'pt001', 20)
INSERT [dbo].[LichTrinh] ([MaLT], [NgayBD], [NgayKT], [MaTour], [MaPT], [Slot]) VALUES (N'LTR002', CAST(N'2021-07-06T14:00:00.000' AS DateTime), CAST(N'2021-07-27T20:00:00.000' AS DateTime), N't002', N'pt002', 25)
INSERT [dbo].[LichTrinh] ([MaLT], [NgayBD], [NgayKT], [MaTour], [MaPT], [Slot]) VALUES (N'LTR003', CAST(N'2021-10-10T00:00:00.000' AS DateTime), CAST(N'2021-10-26T00:00:00.000' AS DateTime), N't004', N'pt003', 10)
INSERT [dbo].[LichTrinh] ([MaLT], [NgayBD], [NgayKT], [MaTour], [MaPT], [Slot]) VALUES (N'LTR004', CAST(N'2021-02-20T00:00:00.000' AS DateTime), CAST(N'2021-02-28T00:00:00.000' AS DateTime), N't005', N'pt003', 11)
INSERT [dbo].[LichTrinh] ([MaLT], [NgayBD], [NgayKT], [MaTour], [MaPT], [Slot]) VALUES (N'LTR005', CAST(N'2021-02-19T07:00:00.000' AS DateTime), CAST(N'2021-02-24T17:00:00.000' AS DateTime), N't003', N'pt003', 13)
INSERT [dbo].[LichTrinh] ([MaLT], [NgayBD], [NgayKT], [MaTour], [MaPT], [Slot]) VALUES (N'LTR007', CAST(N'2021-03-11T00:00:00.000' AS DateTime), CAST(N'2021-03-21T00:00:00.000' AS DateTime), N't002', N'pt002', 35)
INSERT [dbo].[LichTrinh] ([MaLT], [NgayBD], [NgayKT], [MaTour], [MaPT], [Slot]) VALUES (N'LTR008', CAST(N'2020-02-01T00:00:00.000' AS DateTime), CAST(N'2020-02-01T00:00:00.000' AS DateTime), N't002', N'PT005', 20)
INSERT [dbo].[LichTrinh] ([MaLT], [NgayBD], [NgayKT], [MaTour], [MaPT], [Slot]) VALUES (N'LTR009', CAST(N'2020-01-01T00:00:00.000' AS DateTime), CAST(N'2020-01-01T00:00:00.000' AS DateTime), N't001', N'pt001', 10)
INSERT [dbo].[LichTrinh] ([MaLT], [NgayBD], [NgayKT], [MaTour], [MaPT], [Slot]) VALUES (N'LTR010', CAST(N'2015-03-01T00:00:00.000' AS DateTime), CAST(N'2020-03-01T00:00:00.000' AS DateTime), N't003', N'PT005', 20)
INSERT [dbo].[LichTrinh] ([MaLT], [NgayBD], [NgayKT], [MaTour], [MaPT], [Slot]) VALUES (N'LTR011', CAST(N'2020-04-01T00:00:00.000' AS DateTime), CAST(N'2020-04-01T00:00:00.000' AS DateTime), N't001', N'pt001', 15)
INSERT [dbo].[LichTrinh] ([MaLT], [NgayBD], [NgayKT], [MaTour], [MaPT], [Slot]) VALUES (N'LTR012', CAST(N'2021-05-13T05:00:00.000' AS DateTime), CAST(N'2021-05-27T12:00:00.000' AS DateTime), N't004', N'PT005', 78)
INSERT [dbo].[LoaiPhuongTien] ([MaLPT], [TenLPT]) VALUES (N'mb200', N'Máy bay2H')
INSERT [dbo].[LoaiPhuongTien] ([MaLPT], [TenLPT]) VALUES (N'o24', N'Xe ô tô24')
INSERT [dbo].[LoaiPhuongTien] ([MaLPT], [TenLPT]) VALUES (N'o40', N'Xe ô tô40')
INSERT [dbo].[LoaiPhuongTien] ([MaLPT], [TenLPT]) VALUES (N'o60', N'Xe ô tô60')
INSERT [dbo].[LoaiPhuongTien] ([MaLPT], [TenLPT]) VALUES (N'o7', N'Xe ô tô7')
INSERT [dbo].[LoaiPhuongTien] ([MaLPT], [TenLPT]) VALUES (N'th', N'tàu hỏa')
INSERT [dbo].[LoaiTour] ([MaLoaiTour], [TenLoaiTour]) VALUES (N'lt001', N'Miền Bắc')
INSERT [dbo].[LoaiTour] ([MaLoaiTour], [TenLoaiTour]) VALUES (N'lt002', N'Miền Trung')
INSERT [dbo].[LoaiTour] ([MaLoaiTour], [TenLoaiTour]) VALUES (N'lt003', N'Miền Nam')
SET IDENTITY_INSERT [dbo].[Media] ON 

INSERT [dbo].[Media] ([ID_Media], [Url], [Main], [MaTour]) VALUES (3, N'listing5.jpg', 1, N't003')
INSERT [dbo].[Media] ([ID_Media], [Url], [Main], [MaTour]) VALUES (11, N'listing8.jpg', 0, N't003')
INSERT [dbo].[Media] ([ID_Media], [Url], [Main], [MaTour]) VALUES (12, N'listing9.jpg', 0, N't003')
INSERT [dbo].[Media] ([ID_Media], [Url], [Main], [MaTour]) VALUES (14, N'listing11.jpg', 0, N't003')
INSERT [dbo].[Media] ([ID_Media], [Url], [Main], [MaTour]) VALUES (15, N'listing12.jpg', 0, N't003')
INSERT [dbo].[Media] ([ID_Media], [Url], [Main], [MaTour]) VALUES (34, N'phuquoc2.jpg', 0, N't003')
INSERT [dbo].[Media] ([ID_Media], [Url], [Main], [MaTour]) VALUES (35, N'phuquoc1.jpg', 0, N't003')
INSERT [dbo].[Media] ([ID_Media], [Url], [Main], [MaTour]) VALUES (36, N'listing_2.jpg', 0, N't003')
INSERT [dbo].[Media] ([ID_Media], [Url], [Main], [MaTour]) VALUES (37, N'listing_3.jpg', 0, N't003')
INSERT [dbo].[Media] ([ID_Media], [Url], [Main], [MaTour]) VALUES (38, N'listing_4.jpg', 0, N't003')
INSERT [dbo].[Media] ([ID_Media], [Url], [Main], [MaTour]) VALUES (39, N'listing_5.jpg', 0, N't003')
INSERT [dbo].[Media] ([ID_Media], [Url], [Main], [MaTour]) VALUES (40, N'listing_6.jpg', 0, N't003')
INSERT [dbo].[Media] ([ID_Media], [Url], [Main], [MaTour]) VALUES (41, N'listing_7.jpg', 0, N't003')
INSERT [dbo].[Media] ([ID_Media], [Url], [Main], [MaTour]) VALUES (42, N'listing_8.jpg', 0, N't003')
INSERT [dbo].[Media] ([ID_Media], [Url], [Main], [MaTour]) VALUES (43, N'listing_9.jpg', 0, N't003')
INSERT [dbo].[Media] ([ID_Media], [Url], [Main], [MaTour]) VALUES (44, N'listing19.jpg', 1, N't004')
INSERT [dbo].[Media] ([ID_Media], [Url], [Main], [MaTour]) VALUES (45, N'listing9.jpg', 1, N't005')
INSERT [dbo].[Media] ([ID_Media], [Url], [Main], [MaTour]) VALUES (52, N't005_202101170121166523.jpg', 0, N't005')
INSERT [dbo].[Media] ([ID_Media], [Url], [Main], [MaTour]) VALUES (53, N't005_202101170121312033.jpg', 0, N't005')
INSERT [dbo].[Media] ([ID_Media], [Url], [Main], [MaTour]) VALUES (54, N't001_202103030755145771.jpg', 1, N't001')
INSERT [dbo].[Media] ([ID_Media], [Url], [Main], [MaTour]) VALUES (55, N't001_202103030755543387.jpg', 0, N't001')
INSERT [dbo].[Media] ([ID_Media], [Url], [Main], [MaTour]) VALUES (56, N't001_202103030756141634.jpg', 0, N't001')
INSERT [dbo].[Media] ([ID_Media], [Url], [Main], [MaTour]) VALUES (57, N't001_202103030756205435.jpg', 0, N't001')
INSERT [dbo].[Media] ([ID_Media], [Url], [Main], [MaTour]) VALUES (58, N't002_202103030757061418.jpg', 1, N't002')
INSERT [dbo].[Media] ([ID_Media], [Url], [Main], [MaTour]) VALUES (59, N't002_202103030757153346.jpg', 0, N't002')
INSERT [dbo].[Media] ([ID_Media], [Url], [Main], [MaTour]) VALUES (60, N't002_202103030757222046.jpg', 0, N't002')
INSERT [dbo].[Media] ([ID_Media], [Url], [Main], [MaTour]) VALUES (61, N't002_202103030757285746.jfif', 0, N't002')
INSERT [dbo].[Media] ([ID_Media], [Url], [Main], [MaTour]) VALUES (62, N't002_202103030757471215.jpg', 0, N't002')
INSERT [dbo].[Media] ([ID_Media], [Url], [Main], [MaTour]) VALUES (63, N't002_202103030757578709.jpg', 0, N't002')
SET IDENTITY_INSERT [dbo].[Media] OFF
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NghiepVu], [NgaySinh], [GioiTinh], [DiaChi], [TaiKhoan], [SDT], [PassWord]) VALUES (N'nv002', N'Nguyễn Ngọc Tú', N'UserDuyet', CAST(N'1990-12-03' AS Date), N'Nữ', N'Hà Nội', N'ngoctu456@gmail.com', 34435349, N'202cb962ac59075b964b07152d234b70')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NghiepVu], [NgaySinh], [GioiTinh], [DiaChi], [TaiKhoan], [SDT], [PassWord]) VALUES (N'nv003', N'Lê Quỳnh Trang', N'UserDL', CAST(N'1996-01-09' AS Date), N'Nữ', N'Thanh Hóa', N'quynhtrang789@gmail.com', 23422232, N'202cb962ac59075b964b07152d234b70')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NghiepVu], [NgaySinh], [GioiTinh], [DiaChi], [TaiKhoan], [SDT], [PassWord]) VALUES (N'NV005', N'Nguyễn Văn Mạnh', N'Admin', CAST(N'1999-08-17' AS Date), N'Nam', N'Bắc Giang', N'admin', 123456789, N'21232f297a57a5a743894a0e4a801fc3')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NghiepVu], [NgaySinh], [GioiTinh], [DiaChi], [TaiKhoan], [SDT], [PassWord]) VALUES (N'NV007', N'Nguyễn Thế Vân', N'Manager', CAST(N'1970-01-01' AS Date), N'Nam', N'Bắc Ninh', N'van', 456789876, N'957d2fa52c19a5aff4ccf5d9a959adab')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NghiepVu], [NgaySinh], [GioiTinh], [DiaChi], [TaiKhoan], [SDT], [PassWord]) VALUES (N'NV009', N'Lê Thị Thủy', N'SELL', CAST(N'1970-01-01' AS Date), N'Nữ', N'Thanh Hóa', N'thuy', 345678912, N'3cf2b6b121d1726bc2cdc88c39e0b119')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NghiepVu], [NgaySinh], [GioiTinh], [DiaChi], [TaiKhoan], [SDT], [PassWord]) VALUES (N'NV011', N'Nguyễn Văn Long', N'CSKH', CAST(N'1970-01-01' AS Date), N'Nam', N'Hả Dương', N'long', 231231234, N'0f5264038205edfb1ac05fbb0e8c5e94')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NghiepVu], [NgaySinh], [GioiTinh], [DiaChi], [TaiKhoan], [SDT], [PassWord]) VALUES (N'NV013', N't', N'SELL', CAST(N'1888-01-01' AS Date), N'Nam', N't', N't', 123456789, N'e358efa489f58062f10dd7316b65649e')
INSERT [dbo].[PhuongTien] ([MaPT], [TenPT], [SoCho], [MaLPT]) VALUES (N'pt001', N'Xe Khách', 24, N'o24')
INSERT [dbo].[PhuongTien] ([MaPT], [TenPT], [SoCho], [MaLPT]) VALUES (N'pt002', N'Xe hơi', 7, N'o7')
INSERT [dbo].[PhuongTien] ([MaPT], [TenPT], [SoCho], [MaLPT]) VALUES (N'pt003', N'Xe Khách', 40, N'o40')
INSERT [dbo].[PhuongTien] ([MaPT], [TenPT], [SoCho], [MaLPT]) VALUES (N'PT004', N'Xe khách An phương', 60, N'o60')
INSERT [dbo].[PhuongTien] ([MaPT], [TenPT], [SoCho], [MaLPT]) VALUES (N'PT005', N'Việt Nam  Airline', 200, N'mb200')
INSERT [dbo].[Slide] ([ID_Slide], [TenSlide], [Img], [Link]) VALUES (N's01', N'Hello world', N'home_slider.jpg', N'linh tinh')
INSERT [dbo].[Slide] ([ID_Slide], [TenSlide], [Img], [Link]) VALUES (N's02', N'The world', N'wallpapers.jpg', NULL)
INSERT [dbo].[Slide] ([ID_Slide], [TenSlide], [Img], [Link]) VALUES (N's03', N'Dream flying', N'wallpapers1.jpg', NULL)
INSERT [dbo].[Tour] ([MaTour], [TenTour], [MaLoaiTour], [GiaTien], [Minuser], [Maxuser], [MoTa]) VALUES (N't001', N'Thanh Hóa', N'lt001', 1000000, 10, 20, N'Thanh Hoá được mệnh danh là vùng đất “địa linh nhân kiệt” nổi bật với lịch sử lâu đời. Thế nhưng có thể với nhiều bạn, nhắc đến các địa điểm du lịch Thanh Hoá thì chỉ có vài cái tên giới hạn được nhớ đến như Pù Luông hay biển Hải Tiến. Vậy nên, mùa hè này chúng mình cùng nhau du lịch phượt Thanh Hoá nhé? Vùng đất tuyệt vời này đang chờ đón bạn khám phá đấy! Vốn trước nay Thanh Hoá vẫn được xem là mảnh đất huyền thoại. Thế nhưng, bạn có thể “biến hoá” nơi đây trở thành một trang lưu giữ tuổi thanh xuân của mình, với một chuyến đi tuổi trẻ đầy thú vị vào hè này. Và đừng quên chia sẻ trang nhật trình vi vu xứ Thanh của bạn cùng E-Tour nhé!')
INSERT [dbo].[Tour] ([MaTour], [TenTour], [MaLoaiTour], [GiaTien], [Minuser], [Maxuser], [MoTa]) VALUES (N't002', N'Nha Trang', N'lt001', 5000000, 10, 30, N'Đây là tour lý tưởng cho mùa hè Tour này rất hấp dẫn Tour này rất hấp dẫn Tour này rất hấp dẫn Tour này rất hấp dẫn Tour này rất hấp dẫn Tour này rất hấp dẫn Tour này rất hấp dẫn Tour này rất hấp dẫn')
INSERT [dbo].[Tour] ([MaTour], [TenTour], [MaLoaiTour], [GiaTien], [Minuser], [Maxuser], [MoTa]) VALUES (N't003', N'Phú Quốc', N'lt001', 2000000, 10, 35, N'Tour rất phù hợp cho kỳ giáng sinh')
INSERT [dbo].[Tour] ([MaTour], [TenTour], [MaLoaiTour], [GiaTien], [Minuser], [Maxuser], [MoTa]) VALUES (N't004', N'Côn Đảo', N'lt001', 1000000, 10, 20, N'chỗ này để ghi mô tả')
INSERT [dbo].[Tour] ([MaTour], [TenTour], [MaLoaiTour], [GiaTien], [Minuser], [Maxuser], [MoTa]) VALUES (N't005', N'Sapa', N'lt001', 5000000, 10, 25, N'chỗ này để ghi mô tả')
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK_Booking_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK_Booking_KhachHang]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK_Booking_LichTrinh] FOREIGN KEY([MaLT])
REFERENCES [dbo].[LichTrinh] ([MaLT])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK_Booking_LichTrinh]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK_Booking_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK_Booking_NhanVien]
GO
ALTER TABLE [dbo].[CTTour]  WITH CHECK ADD  CONSTRAINT [FK_CTTour_DiaDiemDL] FOREIGN KEY([MaDDDL])
REFERENCES [dbo].[DiaDiemDL] ([MaDDDL])
GO
ALTER TABLE [dbo].[CTTour] CHECK CONSTRAINT [FK_CTTour_DiaDiemDL]
GO
ALTER TABLE [dbo].[CTTour]  WITH CHECK ADD  CONSTRAINT [FK_CTTour_LoaiPhuongTien] FOREIGN KEY([MaLPT])
REFERENCES [dbo].[LoaiPhuongTien] ([MaLPT])
GO
ALTER TABLE [dbo].[CTTour] CHECK CONSTRAINT [FK_CTTour_LoaiPhuongTien]
GO
ALTER TABLE [dbo].[CTTour]  WITH CHECK ADD  CONSTRAINT [FK_CTTour_Tour] FOREIGN KEY([MaTour])
REFERENCES [dbo].[Tour] ([MaTour])
GO
ALTER TABLE [dbo].[CTTour] CHECK CONSTRAINT [FK_CTTour_Tour]
GO
ALTER TABLE [dbo].[KhachSan]  WITH CHECK ADD  CONSTRAINT [FK_KhachSan_DiaDiemDL] FOREIGN KEY([MaDDDL])
REFERENCES [dbo].[DiaDiemDL] ([MaDDDL])
GO
ALTER TABLE [dbo].[KhachSan] CHECK CONSTRAINT [FK_KhachSan_DiaDiemDL]
GO
ALTER TABLE [dbo].[LichTrinh]  WITH CHECK ADD  CONSTRAINT [FK_LichTrinh_PhuongTien] FOREIGN KEY([MaPT])
REFERENCES [dbo].[PhuongTien] ([MaPT])
GO
ALTER TABLE [dbo].[LichTrinh] CHECK CONSTRAINT [FK_LichTrinh_PhuongTien]
GO
ALTER TABLE [dbo].[LichTrinh]  WITH CHECK ADD  CONSTRAINT [FK_LichTrinh_Tour] FOREIGN KEY([MaTour])
REFERENCES [dbo].[Tour] ([MaTour])
GO
ALTER TABLE [dbo].[LichTrinh] CHECK CONSTRAINT [FK_LichTrinh_Tour]
GO
ALTER TABLE [dbo].[Media]  WITH CHECK ADD  CONSTRAINT [FK_Media_Tour] FOREIGN KEY([MaTour])
REFERENCES [dbo].[Tour] ([MaTour])
GO
ALTER TABLE [dbo].[Media] CHECK CONSTRAINT [FK_Media_Tour]
GO
ALTER TABLE [dbo].[PhuongTien]  WITH CHECK ADD  CONSTRAINT [FK_PhuongTien_LoaiPhuongTien] FOREIGN KEY([MaLPT])
REFERENCES [dbo].[LoaiPhuongTien] ([MaLPT])
GO
ALTER TABLE [dbo].[PhuongTien] CHECK CONSTRAINT [FK_PhuongTien_LoaiPhuongTien]
GO
ALTER TABLE [dbo].[Tour]  WITH CHECK ADD  CONSTRAINT [FK_Tour_LoaiTour] FOREIGN KEY([MaLoaiTour])
REFERENCES [dbo].[LoaiTour] ([MaLoaiTour])
GO
ALTER TABLE [dbo].[Tour] CHECK CONSTRAINT [FK_Tour_LoaiTour]
GO
USE [master]
GO
ALTER DATABASE [Van] SET  READ_WRITE 
GO
