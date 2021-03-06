USE [master]
GO
/****** Object:  Database [Wish]    Script Date: 7/4/2021 5:33:19 PM ******/
CREATE DATABASE [Wish]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Wish', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Wish.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Wish_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Wish_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Wish] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Wish].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Wish] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Wish] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Wish] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Wish] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Wish] SET ARITHABORT OFF 
GO
ALTER DATABASE [Wish] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Wish] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Wish] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Wish] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Wish] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Wish] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Wish] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Wish] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Wish] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Wish] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Wish] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Wish] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Wish] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Wish] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Wish] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Wish] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Wish] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Wish] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Wish] SET  MULTI_USER 
GO
ALTER DATABASE [Wish] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Wish] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Wish] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Wish] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Wish] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Wish] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Wish] SET QUERY_STORE = OFF
GO
USE [Wish]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 7/4/2021 5:33:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[uID] [int] IDENTITY(1,1) NOT NULL,
	[user] [varchar](255) NULL,
	[pass] [varchar](255) NULL,
	[isSell] [int] NULL,
	[isAdmin] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[uID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 7/4/2021 5:33:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[AccountID] [int] NULL,
	[ProductID] [int] NULL,
	[Amount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 7/4/2021 5:33:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[cid] [int] NOT NULL,
	[cname] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 7/4/2021 5:33:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[image] [nvarchar](max) NULL,
	[price] [money] NULL,
	[title] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[cateID] [int] NULL,
	[sell_ID] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (1, N'Van', N'123456', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (2, N'Hoang', N'123456', 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (3, N'Thuy', N'123456', 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (4, N'Phuong', N'123456', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (5, N'Trinh', N'123456', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (6, N'Long', N'WIZ5VZ', 1, 0)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
INSERT [dbo].[Category] ([cid], [cname]) VALUES (1, N'Macbook')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (2, N'Dell')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (3, N'Asus')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (4, N'MSI')
GO
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (1, N'Macbook pro M1 2020 Space Grey', N'https://cdn.tgdd.vn/Products/Images/44/231255/apple-macbook-pro-2020-z11c-3-600x600.jpg', 10000.0000, N'Ram 8BG, SSD 256GB', N'Apple Macbook Pro M1 2020 (Z11C) được nâng cấp với bộ vi xử lý mới cực kỳ mạnh mẽ, con laptop này sẽ phục vụ tốt cho công việc của bạn, đặc biệt bên lĩnh vực đồ họa, kỹ thuật.', 1, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (2, N'Laptop Dell XPS 13 9310 i5 1135G7', N'https://cdn.tgdd.vn/Products/Images/44/232153/Slider/dell-xps-13-9310-i5-70231343-211220-100145-609.jpg', 12000.0000, N'Ram 8GB, SSD 256GB', N'Laptop Dell XPS 13 9310 i5 (70231343) sở hữu một cấu hình mạnh mẽ đáng gờm trong thân máy siêu mỏng nhẹ, màn hình tràn viền cùng với độ sáng 500 nits rực rỡ đáp ứng trọn vẹn mọi nhu cầu của dân văn phòng.', 2, 6)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (8, N'Laptop MSI GF63 10SC i5 10300H', N'https://cdn.tgdd.vn/Products/Images/44/238608/Slider/vi-vn-msi-gf63-10sc-i5-255vn-thumbvideo.jpg', 15000.0000, N'Ram 8GB, SSD 512GB', N'MSI GF63 10SC i5 (255VN) mang vẻ ngoài mạnh mẽ, đậm chất gaming sở hữu chip i5 thế hệ 10 cùng card đồ họa NVIDIA GeForce GTX 1650 mang lại hiệu năng vượt trội, thoải mái chiến các tựa game yêu thích.', 4, 15)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (9, N'Laptop Asus TUF Gaming FX516PM i7 11370H', N'https://cdn.tgdd.vn/Products/Images/44/236769/Slider/vi-vn-asus-tuf-gaming-fx516pm-i7-hn023t-thumbvideo.jpg', 18000.0000, N'Ram 8GB, SSD 256GB', N'Laptop Asus TUF Gaming FX516PM i7 (HN023T) sở hữu dòng chip CPU Intel Core i7 thế hệ 11 mạnh mẽ mang đến hiệu năng ấn tượng cho nhu cầu thiết kế đồ họa, làm việc văn phòng và cả chiến game cực chất.', 3, 14)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (3, N'Macbook pro M1 2020 Silver', N'https://cdn.tgdd.vn/Products/Images/44/239235/macbook-pro-m1-2020-mydc2saa-600x600.jpg', 13000.0000, N'Ram 16BG, SSD 512GB', N'MacBook Pro M1 2020 (MYDC2SA/A) sở hữu sức mạnh vượt trội đến từ chip M1 do chính Apple thiết kế kết hợp với màn hình Retina hiển thị siêu nét cho bạn trải nghiệm làm việc đầy năng suất và sáng tạo.', 1, 7)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (4, N'Laptop Dell G5 15 5500 i7 10750H', N'https://cdn.tgdd.vn/Products/Images/44/232902/Slider/dell-g5-15-5500-i7-70225485-120121-0957112.jpg', 14000.0000, N'Ram 8GB, SSD 512GB', N'Laptop Dell G5 15 5500 i7 (70225485) là mẫu laptop gaming được thiết kế theo phong cách lịch lãm đầy mạnh mẽ. Cấu hình mạnh, hiệu suất đồ họa cao cùng màn hình lý tưởng cho việc chơi game là những ưu điểm khiến chiếc laptop này trở nên nổi bật trong phân khúc. ', 2, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (10, N'Laptop MSI GP76 11UG i7 11800H', N'https://cdn.tgdd.vn/Products/Images/44/242204/msi-gp76-11ug-i7-435vn-1-org.jpg', 18000.0000, N'Ram 16BG, SSD 1TB', N'Laptop MSI GP76 11UG i7 (435VN) thiết kế cực ngầu, cấu hình cực mạnh với bộ vi xử lý Gen 11 từ nhà Intel, không những thoả sức trở thành game thủ trên mọi tựa game mà còn có thể đáp ứng các tác vụ đồ hoạ, kỹ thuật chuyên nghiệp.', 4, 15)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (11, N'Laptop Asus TUF Gaming FX706HE i7 11800H', N'https://cdn.tgdd.vn/Products/Images/44/244567/Slider/vi-vn-asus-tuf-gaming-fx706he-i7-hx011t-1.jpg', 15000.0000, N'Ram 16BG, SSD 512GB', N'Sự đẳng cấp của mẫu laptop Asus TUF Gaming FX706HE i7 11800H (HX011T) không chỉ thể hiện qua cấu hình mạnh mẽ từ CPU Intel Core i7 thế hệ 11 mà còn từ ngoại hình ấn tượng mà nó mang lại, bạn có thể thỏa sức sáng tạo đồ họa, chiến game cực đỉnh cùng nó.', 3, 17)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (5, N'Macbook air M1 2020 Gold', N'https://cdn.tgdd.vn/Products/Images/44/243952/apple-macbook-air-m1-2020-16gb-512gb-gold-600x600.jpg', 15000.0000, N'Ram 8BG, SSD 256GB', N'Laptop Apple MacBook Air M1 2020 (Z12A00050) mang nét thanh lịch sang trọng với thiết kế kim loại nguyên khối cùng hiệu năng vượt trội nhờ chip M1 độc quyền của “nhà Táo” sẽ mang đến cho bạn những trải nghiệm riêng biệt mà chỉ dòng máy MacBook mới có được.', 1, 6)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (6, N'Laptop Dell G3 15 i7 10750H', N'https://cdn.tgdd.vn/Products/Images/44/244385/Slider/vi-vn-dell-g3-15-i7-p89f002bwh-1.jpg', 16000.0000, N'Ram 16BG, SSD 512GB', N'Laptop Dell G3 15 i7 (P89F002BWH) thuộc dòng laptop gaming với cấu hình mạnh mẽ, thiết kế trang nhã và rất sang trọng, dễ lựa chọn cho cả người đi đọc, đi làm, là 1 phiên bản tốt để lựa chọn cho cả nhu cầu làm việc, học tập và chơi game giải trí.', 2, 7)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (12, N'Laptop Asus ZenBook UX425EA i7 1165G7', N'https://cdn.tgdd.vn/Products/Images/44/241722/Slider/vi-vn-asus-zenbook-ux425ea-i7-ki439t-1.jpg', 16500.0000, N'Ram 16BG, SSD 512GB', N'Laptop Asus ZenBook UX425EA i7 (KI439T) sang trọng, thời trang với bộ CPU thế hệ 11 mang đến cấu hình mạnh mẽ lý tưởng cho những tác vụ nặng, đáp ứng tốt từ các ứng dụng văn phòng cơ bản đến đồ phức tạp, chơi game giải trí thật mượt mà, rất đáng để bạn trải nghiệm', 3, 19)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (13, N'Laptop Asus TUF Gaming FX516PE i7 11370H', N'https://cdn.tgdd.vn/Products/Images/44/239463/Slider/vi-vn-asus-tuf-gaming-fx516pe-i7-hn005t-1.jpg', 18500.0000, N'Ram 8BG, SSD 256GB', N'Laptop Asus TUF Gaming FX516PE i7 (HN005T) là chiếc laptop gaming mạnh mẽ sở hữu vi xử lý đa nhân Intel thế hệ 11, card đồ họa rời "biến" các tựa game bom tấn chỉ còn nằm trong tầm tay của bạn cùng với mặt lưng bằng kim loại cứng cáp xứng tầm game thủ hiện đại.', 3, 18)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (7, N'Macbook air M1 2020 Silver', N'https://cdn.tgdd.vn/Products/Images/44/231245/apple-macbook-air-2020-mgn93saa-1-600x600.jpg', 17000.0000, N'Ram 16BG, SSD 512GB', N'Laptop Apple MacBook Air M1 2020 (MGN93SA/A) có thiết kế nhỏ gọn thuận tiện mang theo bên mình, chip M1 cho cấu hình mạnh mẽ tốc độ xử lý nhanh sẽ là trợ thủ đắc lực cho bạn trong công việc.', 1, 14)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (14, N'Laptop MSI GF65 10UE i7 10750H', N'https://cdn.tgdd.vn/Products/Images/44/242200/Slider/vi-vn-msi-gf65-10ue-i7-228vn-1.jpg', 20000.0000, N'Ram 16BG, SSD 512GB', N'Laptop MSI GF65 10UE i7 (228VN) sở hữu thiết kế đẳng cấp cùng hiệu năng mạnh mẽ, đặc biệt hiệu suất chơi game được nâng cấp đáng kể mang đến cho bạn những giờ phút giải trí bất tận.', 4, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (15, N'Laptop MSI Gaming Leopard 10SDK GL65 i7 10750H', N'https://cdn.tgdd.vn/Products/Images/44/225857/Slider/MSIGamingLeopard10SDK-780x433.jpg', 10000.0000, N'Ram 8BG, SSD 256GB', N'Laptop MSI Gaming Leopard 10SDRK GL65 i7 (242VN) là chiếc laptop gaming với thiết kế chuẩn hiện đại, hiệu năng mạnh mẽ với CPU thế hệ mới mang lại sức mạnh chiến game đỉnh cao cho các game thủ lựa chọn lí tưởng trong tầm giá.', 4, 6)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (16, N'Laptop MSI GF65 Thin 10UE i5 10500H', N'https://cdn.tgdd.vn/Products/Images/44/238607/Slider/vi-vn-msi-gf65-thin-10ue-i5-297vn-thumbvideo.jpg', 1200.0000, N'Ram 16BG, SSD 512GB', N'MSI GF65 Thin 10UE i5 (297VN) với cấu hình mạnh đến từ Intel Core i5 cùng card đồ hoạ NVIDIA RTX 30 series đảm bảo hiệu suất tối ưu và hoạt động êm ái dành cho những ai yêu thích gaming.', 4, 7)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (17, N'Laptop Asus VivoBook X515EP i5 1135G7', N'https://cdn.tgdd.vn/Products/Images/44/236728/Slider/asus-vivobook-x515ep-i5-bq011t-090421-053056-120.jpg', 10000.0000, N'Ram 8BG, SSD 512GB', N'Laptop Asus VivoBook X515EP i5 (BQ011T) thuộc dòng laptop học tập - văn phòng sở hữu vi xử lý Intel thế hệ 11 mạnh mẽ và card đồ họa rời nâng cao hiệu năng khi thiết kế đồ họa hay chơi game, tất cả được gói gọn trong lớp vỏ ngoài sang trọng và thanh lịch, phù hợp cho nhu cầu học tập, làm việc hằng ngày.', 3, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (18, N'Laptop Asus VivoBook X415EA i5 1135G7', N'https://cdn.tgdd.vn/Products/Images/44/244679/Slider/vi-vn-asus-vivobook-x415ea-i5-eb262t-thumbvideo.jpg', 1200.0000, N'Ram 8BG, SSD 512GB', N'Laptop Asus VivoBook X415EA i5 1135G7  thuộc dòng laptop học tập - văn phòng sở hữu vi xử lý Intel thế hệ 11 mạnh mẽ và card đồ họa rời nâng cao hiệu năng khi thiết kế đồ họa hay chơi game, tất cả được gói gọn trong lớp vỏ ngoài sang trọng và thanh lịch, phù hợp cho nhu cầu học tập, làm việc hằng ngày.', 3, 7)
SET IDENTITY_INSERT [dbo].[product] OFF
GO
USE [master]
GO
ALTER DATABASE [Wish] SET  READ_WRITE 
GO
