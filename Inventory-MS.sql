USE [master]
GO
/****** Object:  Database [Inventory-MS]    Script Date: 6/4/2025 1:17:00 AM ******/
CREATE DATABASE [Inventory-MS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Inventory-MS', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Inventory-MS.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Inventory-MS_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Inventory-MS_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Inventory-MS] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Inventory-MS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Inventory-MS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Inventory-MS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Inventory-MS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Inventory-MS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Inventory-MS] SET ARITHABORT OFF 
GO
ALTER DATABASE [Inventory-MS] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Inventory-MS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Inventory-MS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Inventory-MS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Inventory-MS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Inventory-MS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Inventory-MS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Inventory-MS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Inventory-MS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Inventory-MS] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Inventory-MS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Inventory-MS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Inventory-MS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Inventory-MS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Inventory-MS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Inventory-MS] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [Inventory-MS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Inventory-MS] SET RECOVERY FULL 
GO
ALTER DATABASE [Inventory-MS] SET  MULTI_USER 
GO
ALTER DATABASE [Inventory-MS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Inventory-MS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Inventory-MS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Inventory-MS] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Inventory-MS] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Inventory-MS] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Inventory-MS', N'ON'
GO
ALTER DATABASE [Inventory-MS] SET QUERY_STORE = ON
GO
ALTER DATABASE [Inventory-MS] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Inventory-MS]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 6/4/2025 1:17:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 6/4/2025 1:17:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 6/4/2025 1:17:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 6/4/2025 1:17:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 6/4/2025 1:17:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 6/4/2025 1:17:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 6/4/2025 1:17:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[FirstName] [nvarchar](max) NOT NULL,
	[LastName] [nvarchar](max) NOT NULL,
	[Image] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedDate] [datetime2](7) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserRoleId] [int] NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 6/4/2025 1:17:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brands]    Script Date: 6/4/2025 1:17:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brands](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[Logo] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Brands] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 6/4/2025 1:17:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Code] [nvarchar](450) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomUserRoles]    Script Date: 6/4/2025 1:17:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomUserRoles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_CustomUserRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductImages]    Script Date: 6/4/2025 1:17:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductImages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](max) NOT NULL,
	[ProductId] [int] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_ProductImages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 6/4/2025 1:17:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[DiscountedPrice] [decimal](18, 2) NULL,
	[CategoryId] [int] NOT NULL,
	[BrandId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedDate] [datetime2](7) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[SKU] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PurchaseItems]    Script Date: 6/4/2025 1:17:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PurchaseItems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PurchaseId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[UnitCost] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_PurchaseItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Purchases]    Script Date: 6/4/2025 1:17:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Purchases](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AppUserId] [nvarchar](450) NOT NULL,
	[SupplierName] [nvarchar](max) NOT NULL,
	[PurchaseDate] [datetime2](7) NOT NULL,
	[Reference] [nvarchar](max) NOT NULL,
	[TotalCost] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_Purchases] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SaleItems]    Script Date: 6/4/2025 1:17:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SaleItems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SaleId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[QuantitySold] [int] NOT NULL,
	[UnitPrice] [decimal](18, 2) NOT NULL,
	[QuantityReturned] [int] NOT NULL,
 CONSTRAINT [PK_SaleItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sales]    Script Date: 6/4/2025 1:17:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sales](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AppUserId] [nvarchar](450) NOT NULL,
	[PaymentMethod] [int] NOT NULL,
	[TotalPrice] [decimal](18, 2) NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[DiscountAmount] [decimal](18, 2) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[Reference] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Sales] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250519083018_Init', N'8.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250528203638_UniqueCodeOnCategory', N'8.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250530101249_CustomUserRolesTable', N'8.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250530102406_Seeding custom roles', N'8.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250531080843_AppUserCustomRoles', N'8.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250531081708_FixAppUserCustomRoles', N'8.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250531195704_MakeDiscountedAndOldPriceNullable', N'8.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250531203109_RemoveOldPriceAddSKU', N'8.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250601085209_makeSkuUnique', N'8.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250601131918_Sales model update and SaleItem model create', N'8.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250601134259_SaleItem Return', N'8.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250601135215_Sale Reference', N'8.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250601140504_AddSalesAndSaleItems', N'8.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250603105452_Puurchase and PurchaseItem models', N'8.0.0')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'4945e5a6-2631-4f7c-844c-b327ee64b377', N'Moderator', N'MODERATOR', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'6089c3bb-45a3-4b28-852f-50d723153843', N'User', N'USER', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'a38226c9-fd65-40a5-9d13-a7696af8ebbb', N'Inventory Manager', N'INVENTORY MANAGER', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'aefd3871-991f-45e6-bdcd-44c7246403ea', N'Admin', N'ADMIN', NULL)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'5fcd8e5a-207e-43a3-8af7-e11f3c65f6a0', N'6089c3bb-45a3-4b28-852f-50d723153843')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'699d2c82-5bc0-4cac-8c0d-e2f427b0a1d2', N'6089c3bb-45a3-4b28-852f-50d723153843')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3f88873b-6939-4e11-adbc-ea4803e639d0', N'aefd3871-991f-45e6-bdcd-44c7246403ea')
GO
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [Image], [CreatedDate], [UpdatedDate], [IsActive], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [UserRoleId]) VALUES (N'3f88873b-6939-4e11-adbc-ea4803e639d0', N'Elton', N'Administrator', N'9b5a7056-ec24-4576-8ead-a45d1145a4df.jpg', CAST(N'2025-05-29T21:31:26.3533301' AS DateTime2), CAST(N'2025-05-29T21:31:26.3533445' AS DateTime2), 1, N'admin', N'ADMIN', N'aliyevelton2@gmail.com', N'ALIYEVELTON2@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEBxaiCaCj7sOkIQUoI6f7yCazq2StKCA8EBDovmUUV077ISrj/mt759r/jRo05PnPA==', N'CURRZIZU6HD7LDJOUAN3TGMAPOYWLMKT', N'81d3920e-b101-436f-b91f-bd47f8dd854a', N'0516094403', 0, 0, NULL, 1, 0, 7)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [Image], [CreatedDate], [UpdatedDate], [IsActive], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [UserRoleId]) VALUES (N'5fcd8e5a-207e-43a3-8af7-e11f3c65f6a0', N'Anar', N'Fataliyev', NULL, CAST(N'2025-05-30T14:26:00.5077036' AS DateTime2), CAST(N'2025-05-30T14:26:00.5078397' AS DateTime2), 0, N'anar', N'ANAR', N'anar@gmail.com', N'ANAR@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEGXgoooCNfNgCfwBopc3QQN1zkhqxcV1lmWmb5wub/PxL2tUHG5hWOsxVzAGA83U7Q==', N'D6LBBFYZ6ON7DRTSXZ53S2IXI3QGTOUO', N'5b1b0427-c5fe-445a-842a-f748b02c6f9b', N'0123456789', 0, 0, NULL, 1, 0, 3)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [Image], [CreatedDate], [UpdatedDate], [IsActive], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [UserRoleId]) VALUES (N'699d2c82-5bc0-4cac-8c0d-e2f427b0a1d2', N'Test', N'User', N'9f9e6dcf-87d5-4da8-86c4-bcf97b9a4435.png', CAST(N'2025-05-30T12:27:06.6199781' AS DateTime2), CAST(N'2025-05-30T12:27:06.6199906' AS DateTime2), 1, N'salam', N'SALAM', N'salam@gmail.com', N'SALAM@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEJeZwz/GCSfDGz9O1J9opJ0YU69WjpvSlsHFtZO5yhq41Ze0DFpbV8cb0k2JNlNF7Q==', N'J6BS2RBSGTS5BJWL3NPFOFXRZBEOFKZZ', N'e19df2a9-d65a-4651-b0de-d9ca5e8e5d0a', N'123456789', 0, 0, NULL, 1, 0, 2)
GO
SET IDENTITY_INSERT [dbo].[Brands] ON 

INSERT [dbo].[Brands] ([Id], [Name], [Description], [IsDeleted], [Logo], [CreatedDate], [UpdatedDate]) VALUES (1, N'Apple', N'Apple Inc. products', 0, N'6dfa38a8-19c9-4915-8eed-c8d71f35872b.jpg', CAST(N'2025-05-30T00:04:59.6886905' AS DateTime2), CAST(N'2025-05-30T00:10:43.3517107' AS DateTime2))
INSERT [dbo].[Brands] ([Id], [Name], [Description], [IsDeleted], [Logo], [CreatedDate], [UpdatedDate]) VALUES (2, N'Samsung', N'Samsung brand products', 0, N'3530c8dd-49d3-4bef-9dd9-1ed240bdd38d.jpg', CAST(N'2025-05-30T00:21:01.1252763' AS DateTime2), CAST(N'2025-05-30T00:21:01.1253597' AS DateTime2))
INSERT [dbo].[Brands] ([Id], [Name], [Description], [IsDeleted], [Logo], [CreatedDate], [UpdatedDate]) VALUES (3, N'wdca', N'sac', 1, N'49f5d147-5d24-4e38-91d3-85ace55b9332.jpg', CAST(N'2025-05-30T00:21:24.9046086' AS DateTime2), CAST(N'2025-05-30T00:24:03.5725572' AS DateTime2))
INSERT [dbo].[Brands] ([Id], [Name], [Description], [IsDeleted], [Logo], [CreatedDate], [UpdatedDate]) VALUES (4, N'Porsche', N'Porsche cars', 0, N'b076a1e2-117b-444f-915f-04edc230becb.webp', CAST(N'2025-05-31T23:44:30.8137192' AS DateTime2), CAST(N'2025-05-31T23:44:30.8137609' AS DateTime2))
INSERT [dbo].[Brands] ([Id], [Name], [Description], [IsDeleted], [Logo], [CreatedDate], [UpdatedDate]) VALUES (5, N'sadxc', N'saxcds', 1, N'22cdafbb-2786-4514-99f9-e436fcbb171c.jpg', CAST(N'2025-06-01T13:25:35.0957819' AS DateTime2), CAST(N'2025-06-01T09:51:03.9445107' AS DateTime2))
INSERT [dbo].[Brands] ([Id], [Name], [Description], [IsDeleted], [Logo], [CreatedDate], [UpdatedDate]) VALUES (6, N'dewf', N'cda', 1, N'65712cee-a7d4-4f91-8b99-aac66975d084.jpg', CAST(N'2025-06-03T22:57:05.8783241' AS DateTime2), CAST(N'2025-06-03T18:57:10.4632502' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Brands] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name], [Description], [Code], [IsDeleted], [CreatedDate], [UpdatedDate]) VALUES (3, N'Phones', N'All phones are here', N'CT001', 0, CAST(N'2025-05-19T12:50:32.2925035' AS DateTime2), CAST(N'2025-05-19T12:50:32.2925523' AS DateTime2))
INSERT [dbo].[Categories] ([Id], [Name], [Description], [Code], [IsDeleted], [CreatedDate], [UpdatedDate]) VALUES (4, N' Computers', N'All computers', N'CT002', 0, CAST(N'2025-05-29T00:03:03.4885036' AS DateTime2), CAST(N'2025-05-29T00:34:03.9515522' AS DateTime2))
INSERT [dbo].[Categories] ([Id], [Name], [Description], [Code], [IsDeleted], [CreatedDate], [UpdatedDate]) VALUES (5, N'Accessories', N'Accessories description', N'CT003', 0, CAST(N'2025-05-29T00:04:08.6897511' AS DateTime2), CAST(N'2025-05-29T00:38:03.2057069' AS DateTime2))
INSERT [dbo].[Categories] ([Id], [Name], [Description], [Code], [IsDeleted], [CreatedDate], [UpdatedDate]) VALUES (7, N'wed', N'ac', N'wc', 1, CAST(N'2025-05-29T23:36:55.8148958' AS DateTime2), CAST(N'2025-05-29T23:47:24.0854027' AS DateTime2))
INSERT [dbo].[Categories] ([Id], [Name], [Description], [Code], [IsDeleted], [CreatedDate], [UpdatedDate]) VALUES (8, N'test', N'test', N'test', 1, CAST(N'2025-05-29T23:47:53.3556306' AS DateTime2), CAST(N'2025-05-29T23:47:57.5785873' AS DateTime2))
INSERT [dbo].[Categories] ([Id], [Name], [Description], [Code], [IsDeleted], [CreatedDate], [UpdatedDate]) VALUES (9, N'Other', N'Other stuff', N'CT100', 0, CAST(N'2025-05-31T23:43:23.0110527' AS DateTime2), CAST(N'2025-05-31T23:43:23.0110943' AS DateTime2))
INSERT [dbo].[Categories] ([Id], [Name], [Description], [Code], [IsDeleted], [CreatedDate], [UpdatedDate]) VALUES (10, N'sdac', N'axc', N'sxac', 1, CAST(N'2025-06-01T13:26:19.8924251' AS DateTime2), CAST(N'2025-06-01T09:48:39.4632996' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[CustomUserRoles] ON 

INSERT [dbo].[CustomUserRoles] ([Id], [Name]) VALUES (1, N'Store Manager')
INSERT [dbo].[CustomUserRoles] ([Id], [Name]) VALUES (2, N'Salesperson')
INSERT [dbo].[CustomUserRoles] ([Id], [Name]) VALUES (3, N'Cashier')
INSERT [dbo].[CustomUserRoles] ([Id], [Name]) VALUES (4, N'Inventory Clerk')
INSERT [dbo].[CustomUserRoles] ([Id], [Name]) VALUES (6, N'Purchasing Officer')
INSERT [dbo].[CustomUserRoles] ([Id], [Name]) VALUES (7, N'Admin')
INSERT [dbo].[CustomUserRoles] ([Id], [Name]) VALUES (8, N'Accountant')
SET IDENTITY_INSERT [dbo].[CustomUserRoles] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductImages] ON 

INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId], [CreatedDate]) VALUES (1, N'bcaade63-c904-41c0-b1eb-b687d6ca8144.jpeg', 4, CAST(N'2025-05-31T20:18:29.6652966' AS DateTime2))
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId], [CreatedDate]) VALUES (2, N'4d79b039-2c8d-4eeb-87fd-aff0dfb6a9cb.jpg', 4, CAST(N'2025-05-31T20:18:29.6664972' AS DateTime2))
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId], [CreatedDate]) VALUES (3, N'1e0e0bc5-3c7d-49b5-91ee-0860543e029c.jpg', 5, CAST(N'2025-05-31T20:33:37.8791706' AS DateTime2))
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId], [CreatedDate]) VALUES (4, N'8f267925-b3a8-4044-9ad7-e89782fff440.png', 5, CAST(N'2025-05-31T20:33:37.8821345' AS DateTime2))
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId], [CreatedDate]) VALUES (5, N'fb65e3b4-3117-4072-a207-0294d710dae4.png', 3, CAST(N'2025-06-01T12:57:22.9419090' AS DateTime2))
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId], [CreatedDate]) VALUES (8, N'05a73047-ffc2-45b8-ba2d-ce996416bd67.jpg', 2, CAST(N'2025-06-01T13:03:08.5228064' AS DateTime2))
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId], [CreatedDate]) VALUES (9, N'82dfc35b-53fc-4070-96e4-360a879b49c6.webp', 2, CAST(N'2025-06-01T13:03:08.5277946' AS DateTime2))
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId], [CreatedDate]) VALUES (10, N'6217e1ea-2908-49bf-856d-f891fbf66a5b.webp', 2, CAST(N'2025-06-01T13:03:08.5382633' AS DateTime2))
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId], [CreatedDate]) VALUES (11, N'251cdf28-1e08-4bd3-a012-d91920a4ebb6.jpg', 7, CAST(N'2025-06-03T11:20:51.8367119' AS DateTime2))
SET IDENTITY_INSERT [dbo].[ProductImages] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [DiscountedPrice], [CategoryId], [BrandId], [Quantity], [CreatedDate], [UpdatedDate], [IsActive], [IsDeleted], [SKU]) VALUES (2, N'Porsche 911 Turbo S', N'Porscheeeee', CAST(230000.00 AS Decimal(18, 2)), NULL, 9, 4, 0, CAST(N'2025-05-31T19:57:15.7622271' AS DateTime2), CAST(N'2025-06-01T13:03:08.5140806' AS DateTime2), 1, 0, N'PT004')
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [DiscountedPrice], [CategoryId], [BrandId], [Quantity], [CreatedDate], [UpdatedDate], [IsActive], [IsDeleted], [SKU]) VALUES (3, N'acd', N'szcdv', CAST(123.00 AS Decimal(18, 2)), CAST(115.00 AS Decimal(18, 2)), 4, 1, 1, CAST(N'2025-05-31T19:58:09.2427216' AS DateTime2), CAST(N'2025-06-01T13:03:32.7926660' AS DateTime2), 1, 0, N'PT003')
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [DiscountedPrice], [CategoryId], [BrandId], [Quantity], [CreatedDate], [UpdatedDate], [IsActive], [IsDeleted], [SKU]) VALUES (4, N'Salam', N'salam', CAST(15.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), 5, 1, 102, CAST(N'2025-05-31T20:18:29.6601288' AS DateTime2), CAST(N'2025-06-01T12:27:26.4417251' AS DateTime2), 1, 0, N'PT002')
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [DiscountedPrice], [CategoryId], [BrandId], [Quantity], [CreatedDate], [UpdatedDate], [IsActive], [IsDeleted], [SKU]) VALUES (5, N'sfdx', N'asdfgh', CAST(150.00 AS Decimal(18, 2)), CAST(125.00 AS Decimal(18, 2)), 4, 2, 119, CAST(N'2025-05-31T20:33:37.8763928' AS DateTime2), CAST(N'2025-06-03T18:39:45.0975666' AS DateTime2), 1, 0, N'PT001')
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [DiscountedPrice], [CategoryId], [BrandId], [Quantity], [CreatedDate], [UpdatedDate], [IsActive], [IsDeleted], [SKU]) VALUES (6, N'sxac', N'asd', CAST(12.00 AS Decimal(18, 2)), CAST(12.00 AS Decimal(18, 2)), 3, 2, 1234, CAST(N'2025-06-01T09:31:17.1808851' AS DateTime2), CAST(N'2025-06-03T18:49:30.5226282' AS DateTime2), 1, 1, N'12345')
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [DiscountedPrice], [CategoryId], [BrandId], [Quantity], [CreatedDate], [UpdatedDate], [IsActive], [IsDeleted], [SKU]) VALUES (7, N'Apple Iphone 16 Pro', N'Durable titanium design. Camera Control. 4K 120 fps Dolby Vision. A18 Pro chip.
Memory: 6gb
Storage: 128gb', CAST(2200.00 AS Decimal(18, 2)), CAST(2100.00 AS Decimal(18, 2)), 3, 1, 1, CAST(N'2025-06-03T11:20:51.8320103' AS DateTime2), CAST(N'2025-06-03T11:20:51.8320210' AS DateTime2), 1, 0, N'PT006')
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[PurchaseItems] ON 

INSERT [dbo].[PurchaseItems] ([Id], [PurchaseId], [ProductId], [Quantity], [UnitCost]) VALUES (6, 1, 7, 9, CAST(1870.00 AS Decimal(18, 2)))
INSERT [dbo].[PurchaseItems] ([Id], [PurchaseId], [ProductId], [Quantity], [UnitCost]) VALUES (9, 4, 4, 5, CAST(15.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[PurchaseItems] OFF
GO
SET IDENTITY_INSERT [dbo].[Purchases] ON 

INSERT [dbo].[Purchases] ([Id], [AppUserId], [SupplierName], [PurchaseDate], [Reference], [TotalCost]) VALUES (1, N'3f88873b-6939-4e11-adbc-ea4803e639d0', N'Kontakt Home', CAST(N'2025-06-02T00:00:00.0000000' AS DateTime2), N'PH00011', CAST(16830.00 AS Decimal(18, 2)))
INSERT [dbo].[Purchases] ([Id], [AppUserId], [SupplierName], [PurchaseDate], [Reference], [TotalCost]) VALUES (4, N'3f88873b-6939-4e11-adbc-ea4803e639d0', N'Sederek', CAST(N'2025-04-17T00:00:00.0000000' AS DateTime2), N'PH00013', CAST(75.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[Purchases] OFF
GO
SET IDENTITY_INSERT [dbo].[SaleItems] ON 

INSERT [dbo].[SaleItems] ([Id], [SaleId], [ProductId], [QuantitySold], [UnitPrice], [QuantityReturned]) VALUES (1, 1, 5, 4, CAST(150.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[SaleItems] ([Id], [SaleId], [ProductId], [QuantitySold], [UnitPrice], [QuantityReturned]) VALUES (6, 2, 4, 3, CAST(15.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[SaleItems] ([Id], [SaleId], [ProductId], [QuantitySold], [UnitPrice], [QuantityReturned]) VALUES (7, 2, 3, 4, CAST(123.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[SaleItems] ([Id], [SaleId], [ProductId], [QuantitySold], [UnitPrice], [QuantityReturned]) VALUES (10, 5, 2, 1, CAST(230000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[SaleItems] ([Id], [SaleId], [ProductId], [QuantitySold], [UnitPrice], [QuantityReturned]) VALUES (11, 6, 4, 2, CAST(15.00 AS Decimal(18, 2)), 0)
SET IDENTITY_INSERT [dbo].[SaleItems] OFF
GO
SET IDENTITY_INSERT [dbo].[Sales] ON 

INSERT [dbo].[Sales] ([Id], [AppUserId], [PaymentMethod], [TotalPrice], [CreatedDate], [DiscountAmount], [UpdatedDate], [Reference]) VALUES (1, N'3f88873b-6939-4e11-adbc-ea4803e639d0', 1, CAST(590.00 AS Decimal(18, 2)), CAST(N'2025-06-01T00:00:00.0000000' AS DateTime2), CAST(10.00 AS Decimal(18, 2)), CAST(N'2025-06-03T17:55:13.5476942' AS DateTime2), N'SL12345')
INSERT [dbo].[Sales] ([Id], [AppUserId], [PaymentMethod], [TotalPrice], [CreatedDate], [DiscountAmount], [UpdatedDate], [Reference]) VALUES (2, N'3f88873b-6939-4e11-adbc-ea4803e639d0', 1, CAST(515.00 AS Decimal(18, 2)), CAST(N'2025-06-02T00:00:00.0000000' AS DateTime2), CAST(22.00 AS Decimal(18, 2)), CAST(N'2025-06-03T13:35:45.8318213' AS DateTime2), N'SL00001')
INSERT [dbo].[Sales] ([Id], [AppUserId], [PaymentMethod], [TotalPrice], [CreatedDate], [DiscountAmount], [UpdatedDate], [Reference]) VALUES (5, N'3f88873b-6939-4e11-adbc-ea4803e639d0', 3, CAST(210000.00 AS Decimal(18, 2)), CAST(N'2025-03-05T00:00:00.0000000' AS DateTime2), CAST(20000.00 AS Decimal(18, 2)), CAST(N'2025-06-03T18:55:13.7431490' AS DateTime2), N'SL10101')
INSERT [dbo].[Sales] ([Id], [AppUserId], [PaymentMethod], [TotalPrice], [CreatedDate], [DiscountAmount], [UpdatedDate], [Reference]) VALUES (6, N'3f88873b-6939-4e11-adbc-ea4803e639d0', 2, CAST(28.00 AS Decimal(18, 2)), CAST(N'2025-05-21T00:00:00.0000000' AS DateTime2), CAST(2.00 AS Decimal(18, 2)), CAST(N'2025-06-03T19:48:52.8420261' AS DateTime2), N'Sl12354')
SET IDENTITY_INSERT [dbo].[Sales] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 6/4/2025 1:17:01 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 6/4/2025 1:17:01 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 6/4/2025 1:17:01 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 6/4/2025 1:17:01 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 6/4/2025 1:17:01 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 6/4/2025 1:17:01 AM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_UserRoleId]    Script Date: 6/4/2025 1:17:01 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_UserRoleId] ON [dbo].[AspNetUsers]
(
	[UserRoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 6/4/2025 1:17:01 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Categories_Code]    Script Date: 6/4/2025 1:17:01 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Categories_Code] ON [dbo].[Categories]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductImages_ProductId]    Script Date: 6/4/2025 1:17:01 AM ******/
CREATE NONCLUSTERED INDEX [IX_ProductImages_ProductId] ON [dbo].[ProductImages]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_BrandId]    Script Date: 6/4/2025 1:17:01 AM ******/
CREATE NONCLUSTERED INDEX [IX_Products_BrandId] ON [dbo].[Products]
(
	[BrandId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_CategoryId]    Script Date: 6/4/2025 1:17:01 AM ******/
CREATE NONCLUSTERED INDEX [IX_Products_CategoryId] ON [dbo].[Products]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Products_SKU]    Script Date: 6/4/2025 1:17:01 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Products_SKU] ON [dbo].[Products]
(
	[SKU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PurchaseItems_ProductId]    Script Date: 6/4/2025 1:17:01 AM ******/
CREATE NONCLUSTERED INDEX [IX_PurchaseItems_ProductId] ON [dbo].[PurchaseItems]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PurchaseItems_PurchaseId]    Script Date: 6/4/2025 1:17:01 AM ******/
CREATE NONCLUSTERED INDEX [IX_PurchaseItems_PurchaseId] ON [dbo].[PurchaseItems]
(
	[PurchaseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Purchases_AppUserId]    Script Date: 6/4/2025 1:17:01 AM ******/
CREATE NONCLUSTERED INDEX [IX_Purchases_AppUserId] ON [dbo].[Purchases]
(
	[AppUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SaleItems_ProductId]    Script Date: 6/4/2025 1:17:01 AM ******/
CREATE NONCLUSTERED INDEX [IX_SaleItems_ProductId] ON [dbo].[SaleItems]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SaleItems_SaleId]    Script Date: 6/4/2025 1:17:01 AM ******/
CREATE NONCLUSTERED INDEX [IX_SaleItems_SaleId] ON [dbo].[SaleItems]
(
	[SaleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Sales_AppUserId]    Script Date: 6/4/2025 1:17:01 AM ******/
CREATE NONCLUSTERED INDEX [IX_Sales_AppUserId] ON [dbo].[Sales]
(
	[AppUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SaleItems] ADD  DEFAULT ((0)) FOR [QuantityReturned]
GO
ALTER TABLE [dbo].[Sales] ADD  DEFAULT (N'') FOR [Reference]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUsers]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUsers_CustomUserRoles_UserRoleId] FOREIGN KEY([UserRoleId])
REFERENCES [dbo].[CustomUserRoles] ([Id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[AspNetUsers] CHECK CONSTRAINT [FK_AspNetUsers_CustomUserRoles_UserRoleId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[ProductImages]  WITH CHECK ADD  CONSTRAINT [FK_ProductImages_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductImages] CHECK CONSTRAINT [FK_ProductImages_Products_ProductId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Brands_BrandId] FOREIGN KEY([BrandId])
REFERENCES [dbo].[Brands] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Brands_BrandId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories_CategoryId]
GO
ALTER TABLE [dbo].[PurchaseItems]  WITH CHECK ADD  CONSTRAINT [FK_PurchaseItems_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PurchaseItems] CHECK CONSTRAINT [FK_PurchaseItems_Products_ProductId]
GO
ALTER TABLE [dbo].[PurchaseItems]  WITH CHECK ADD  CONSTRAINT [FK_PurchaseItems_Purchases_PurchaseId] FOREIGN KEY([PurchaseId])
REFERENCES [dbo].[Purchases] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PurchaseItems] CHECK CONSTRAINT [FK_PurchaseItems_Purchases_PurchaseId]
GO
ALTER TABLE [dbo].[Purchases]  WITH CHECK ADD  CONSTRAINT [FK_Purchases_AspNetUsers_AppUserId] FOREIGN KEY([AppUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Purchases] CHECK CONSTRAINT [FK_Purchases_AspNetUsers_AppUserId]
GO
ALTER TABLE [dbo].[SaleItems]  WITH CHECK ADD  CONSTRAINT [FK_SaleItems_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SaleItems] CHECK CONSTRAINT [FK_SaleItems_Products_ProductId]
GO
ALTER TABLE [dbo].[SaleItems]  WITH CHECK ADD  CONSTRAINT [FK_SaleItems_Sales_SaleId] FOREIGN KEY([SaleId])
REFERENCES [dbo].[Sales] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SaleItems] CHECK CONSTRAINT [FK_SaleItems_Sales_SaleId]
GO
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD  CONSTRAINT [FK_Sales_AspNetUsers_AppUserId] FOREIGN KEY([AppUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Sales] CHECK CONSTRAINT [FK_Sales_AspNetUsers_AppUserId]
GO
USE [master]
GO
ALTER DATABASE [Inventory-MS] SET  READ_WRITE 
GO
