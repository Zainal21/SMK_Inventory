USE [SMKInventoryDB]
GO
/****** Object:  Table [dbo].[Barang]    Script Date: 1/9/2020 5:33:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Barang](
	[id_barang] [varchar](10) NOT NULL,
	[nama_barang] [varchar](50) NULL,
	[kondisi] [varchar](50) NULL,
	[status_barang] [varchar](50) NULL,
 CONSTRAINT [PK_Barang] PRIMARY KEY CLUSTERED 
(
	[id_barang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Member]    Script Date: 1/9/2020 5:33:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Member](
	[id_user] [int] NOT NULL,
	[username] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[nama] [varchar](50) NULL,
	[role] [varchar](50) NULL,
 CONSTRAINT [PK_Member] PRIMARY KEY CLUSTERED 
(
	[id_user] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[pengambalian]    Script Date: 1/9/2020 5:33:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pengambalian](
	[id_kembali] [int] NOT NULL,
	[id_barang] [varchar](50) NULL,
	[nama_barang] [varchar](50) NULL,
	[nama_peminjam] [varchar](50) NULL,
	[kondisi] [varchar](50) NULL,
	[status] [varchar](50) NULL,
	[tanggal_pinjam] [varchar](50) NULL,
	[tanggal_kembali] [varchar](50) NULL,
 CONSTRAINT [PK_pengambalian] PRIMARY KEY CLUSTERED 
(
	[id_kembali] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[pinjaman]    Script Date: 1/9/2020 5:33:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pinjaman](
	[id_pinjam] [int] NOT NULL,
	[id_barang] [varchar](10) NULL,
	[nama_barang] [varchar](50) NULL,
	[nama_peminjam] [varchar](50) NULL,
	[kondisi] [varchar](50) NULL,
	[status] [varchar](50) NULL,
	[tanggal_pinjam] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[role]    Script Date: 1/9/2020 5:33:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[role](
	[id] [int] NOT NULL,
	[role] [varchar](50) NULL,
 CONSTRAINT [PK_role] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ruang]    Script Date: 1/9/2020 5:33:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ruang](
	[id_ruang] [varchar](10) NOT NULL,
	[nama_ruang] [nchar](10) NULL,
	[id_barang] [varchar](10) NULL,
 CONSTRAINT [PK_Ruang] PRIMARY KEY CLUSTERED 
(
	[id_ruang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Barang] ([id_barang], [nama_barang], [kondisi], [status_barang]) VALUES (N'21739', N'ahsd', N'Bagus', N'Tersedia')
INSERT [dbo].[Barang] ([id_barang], [nama_barang], [kondisi], [status_barang]) VALUES (N'HT8812', N'ajsndka', N'Bagus', N'Tersedia')
INSERT [dbo].[Barang] ([id_barang], [nama_barang], [kondisi], [status_barang]) VALUES (N'KM1', N'Meja KM1', N'Bagus', N'Tersedia')
INSERT [dbo].[Barang] ([id_barang], [nama_barang], [kondisi], [status_barang]) VALUES (N'KM123', N'Kursi', N'Bagus', N'Tersedia')
INSERT [dbo].[Barang] ([id_barang], [nama_barang], [kondisi], [status_barang]) VALUES (N'KMKNA6', N'ksandk', N'Bagus', N'Tersedia')
INSERT [dbo].[Barang] ([id_barang], [nama_barang], [kondisi], [status_barang]) VALUES (N'KOMP123', N'Komputer', N'Bagus', N'Tersedia')
INSERT [dbo].[Barang] ([id_barang], [nama_barang], [kondisi], [status_barang]) VALUES (N'MK123', N'nhsbda', N'Bagus', N'Tersedia')
INSERT [dbo].[Barang] ([id_barang], [nama_barang], [kondisi], [status_barang]) VALUES (N'YT123', N'jsnhflks', N'Bagus', N'Tersedia')
INSERT [dbo].[Member] ([id_user], [username], [password], [nama], [role]) VALUES (1, N'admin', N'admin', N'zainal arifin', N'Adminstrator')
INSERT [dbo].[Member] ([id_user], [username], [password], [nama], [role]) VALUES (2, N'afin', N'afin', N'afin', N'Peminjam')
INSERT [dbo].[Member] ([id_user], [username], [password], [nama], [role]) VALUES (3, N'fajar', N'fajar', N'fajar', N'Operator')
INSERT [dbo].[Member] ([id_user], [username], [password], [nama], [role]) VALUES (4, N'zainal', N'zainal', N'zainal arifin', N'Peminjam')
INSERT [dbo].[Member] ([id_user], [username], [password], [nama], [role]) VALUES (5, N'yusuf', N'yusuf', N'yusuf', N'Operator')
INSERT [dbo].[Member] ([id_user], [username], [password], [nama], [role]) VALUES (6, N'hareza', N'hareza', N'hareza', N'Owner')
INSERT [dbo].[Member] ([id_user], [username], [password], [nama], [role]) VALUES (7, N'hendra', N'hendra', N'hendra', N'Peminjam')
INSERT [dbo].[Member] ([id_user], [username], [password], [nama], [role]) VALUES (8, N'adinda', N'adinda', N'Adinda P', N'Peminjam')
INSERT [dbo].[Member] ([id_user], [username], [password], [nama], [role]) VALUES (9, N'esna', N'esna', N'esna ', N'Operator')
INSERT [dbo].[Member] ([id_user], [username], [password], [nama], [role]) VALUES (11, N'kirun', N'kirun', N'kirun', N'Owner')
INSERT [dbo].[Member] ([id_user], [username], [password], [nama], [role]) VALUES (12, N'fatika', N'tika', N'fatika', N'Owner')
INSERT [dbo].[Member] ([id_user], [username], [password], [nama], [role]) VALUES (15, N'reno', N'reno', N'reno', N'Adminstrator')
INSERT [dbo].[pengambalian] ([id_kembali], [id_barang], [nama_barang], [nama_peminjam], [kondisi], [status], [tanggal_pinjam], [tanggal_kembali]) VALUES (1, N'KM5', N'Meja KM5', N'zainal', N'Bagus', N'Tersedia', N'Wednesday, January 8, 2020', N'Thursday, January 9, 2020')
INSERT [dbo].[pengambalian] ([id_kembali], [id_barang], [nama_barang], [nama_peminjam], [kondisi], [status], [tanggal_pinjam], [tanggal_kembali]) VALUES (128, N'KM82', N'Meja KM8', N'Klik Disini', N'Bagus', N'Tersedia', N'Wednesday, January 8, 2020', N'Wednesday, January 8, 2020')
INSERT [dbo].[pengambalian] ([id_kembali], [id_barang], [nama_barang], [nama_peminjam], [kondisi], [status], [tanggal_pinjam], [tanggal_kembali]) VALUES (156, N'KM1', N'Meja KM1', N'afin', N'Bagus', N'Tersedia', N'Wednesday, January 8, 2020', N'Wednesday, January 8, 2020')
INSERT [dbo].[pengambalian] ([id_kembali], [id_barang], [nama_barang], [nama_peminjam], [kondisi], [status], [tanggal_pinjam], [tanggal_kembali]) VALUES (187, N'KM42', N'Meja KM19', N'zainal arifin', N'Bagus', N'Tersedia', N'Wednesday, January 8, 2020', N'Thursday, January 9, 2020')
INSERT [dbo].[pengambalian] ([id_kembali], [id_barang], [nama_barang], [nama_peminjam], [kondisi], [status], [tanggal_pinjam], [tanggal_kembali]) VALUES (8998, N'KM2', N'Kompuer KM4', N'adinda ', N'Bagus', N'Tersedia', N'Wednesday, January 8, 2020', N'Friday, January 10, 2020')
INSERT [dbo].[pengambalian] ([id_kembali], [id_barang], [nama_barang], [nama_peminjam], [kondisi], [status], [tanggal_pinjam], [tanggal_kembali]) VALUES (19237, N'21739', N'ahsd', N'zainal', N'Bagus', N'Tersedia', N'Thursday, January 9, 2020', N'Thursday, January 9, 2020')
INSERT [dbo].[pengambalian] ([id_kembali], [id_barang], [nama_barang], [nama_peminjam], [kondisi], [status], [tanggal_pinjam], [tanggal_kembali]) VALUES (131435, N'21739', N'ahsd', N'yudis', N'Bagus', N'Tersedia', N'Thursday, January 9, 2020', N'Thursday, January 9, 2020')
INSERT [dbo].[pengambalian] ([id_kembali], [id_barang], [nama_barang], [nama_peminjam], [kondisi], [status], [tanggal_pinjam], [tanggal_kembali]) VALUES (1214234, N'21739', N'ahsd', N'fghfgh', N'Bagus', N'Tersedia', N'Thursday, January 9, 2020', N'Thursday, January 9, 2020')
INSERT [dbo].[pengambalian] ([id_kembali], [id_barang], [nama_barang], [nama_peminjam], [kondisi], [status], [tanggal_pinjam], [tanggal_kembali]) VALUES (1445634, N'YT123', N'jsnhflks', N'zainal', N'Bagus', N'Tersedia', N'Thursday, January 9, 2020', N'Thursday, January 9, 2020')
INSERT [dbo].[pengambalian] ([id_kembali], [id_barang], [nama_barang], [nama_peminjam], [kondisi], [status], [tanggal_pinjam], [tanggal_kembali]) VALUES (6182398, N'KM1', N'Meja KM1', N'askjfdlk', N'Bagus', N'Tersedia', N'Thursday, January 9, 2020', N'Thursday, January 9, 2020')
INSERT [dbo].[pengambalian] ([id_kembali], [id_barang], [nama_barang], [nama_peminjam], [kondisi], [status], [tanggal_pinjam], [tanggal_kembali]) VALUES (8657689, N'YT123', N'jsnhflks', N'Hendra Agil', N'Bagus', N'Tersedia', N'Wednesday, January 8, 2020', N'Wednesday, January 8, 2020')
INSERT [dbo].[pengambalian] ([id_kembali], [id_barang], [nama_barang], [nama_peminjam], [kondisi], [status], [tanggal_pinjam], [tanggal_kembali]) VALUES (63638219, N'KM1', N'Meja KM1', N'Boy', N'Bagus', N'Tersedia', N'Wednesday, January 8, 2020', N'Wednesday, January 8, 2020')
INSERT [dbo].[pengambalian] ([id_kembali], [id_barang], [nama_barang], [nama_peminjam], [kondisi], [status], [tanggal_pinjam], [tanggal_kembali]) VALUES (91283812, N'KM123', N'Kursi', N'Hareza Yoan', N'Bagus', N'Tersedia', N'Wednesday, January 8, 2020', N'Wednesday, January 8, 2020')
INSERT [dbo].[pengambalian] ([id_kembali], [id_barang], [nama_barang], [nama_peminjam], [kondisi], [status], [tanggal_pinjam], [tanggal_kembali]) VALUES (145567192, N'KM1', N'Meja KM1', N'sinta umi maisaroh', N'Bagus', N'Tersedia', N'Wednesday, January 8, 2020', N'Thursday, January 16, 2020')
INSERT [dbo].[pengambalian] ([id_kembali], [id_barang], [nama_barang], [nama_peminjam], [kondisi], [status], [tanggal_pinjam], [tanggal_kembali]) VALUES (655668768, N'HT8812', N'ajsndka', N'nsakjfda', N'Bagus', N'Tersedia', N'Thursday, January 9, 2020', N'Thursday, January 9, 2020')
