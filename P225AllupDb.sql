USE [master]
GO
/****** Object:  Database [P225AllupDb]    Script Date: 19.07.2022 16:47:06 ******/
CREATE DATABASE [P225AllupDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'P225AllupDb_Data', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\P225AllupDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'P225AllupDb_Log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\P225AllupDb.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [P225AllupDb] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [P225AllupDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [P225AllupDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [P225AllupDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [P225AllupDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [P225AllupDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [P225AllupDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [P225AllupDb] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [P225AllupDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [P225AllupDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [P225AllupDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [P225AllupDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [P225AllupDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [P225AllupDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [P225AllupDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [P225AllupDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [P225AllupDb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [P225AllupDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [P225AllupDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [P225AllupDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [P225AllupDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [P225AllupDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [P225AllupDb] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [P225AllupDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [P225AllupDb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [P225AllupDb] SET  MULTI_USER 
GO
ALTER DATABASE [P225AllupDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [P225AllupDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [P225AllupDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [P225AllupDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [P225AllupDb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [P225AllupDb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [P225AllupDb] SET QUERY_STORE = OFF
GO
USE [P225AllupDb]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 19.07.2022 16:47:06 ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 19.07.2022 16:47:06 ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 19.07.2022 16:47:06 ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 19.07.2022 16:47:06 ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 19.07.2022 16:47:06 ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 19.07.2022 16:47:06 ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 19.07.2022 16:47:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
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
	[Name] [nvarchar](255) NOT NULL,
	[SurName] [nvarchar](255) NOT NULL,
	[FatherName] [nvarchar](255) NOT NULL,
	[Age] [tinyint] NOT NULL,
	[IsAdmin] [bit] NOT NULL,
	[IsDeActive] [bit] NOT NULL,
	[ConnectedAt] [datetime2](7) NULL,
	[ConnectionId] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 19.07.2022 16:47:06 ******/
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
/****** Object:  Table [dbo].[Brands]    Script Date: 19.07.2022 16:47:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brands](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedAt] [datetime2](7) NULL,
	[DeletedAt] [datetime2](7) NULL,
	[UpdatedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_Brands] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 19.07.2022 16:47:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Image] [nvarchar](255) NULL,
	[IsMain] [bit] NOT NULL,
	[ParentId] [int] NULL,
	[CreatedAt] [datetime2](7) NULL,
	[DeletedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[UpdatedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Messages]    Script Date: 19.07.2022 16:47:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Messages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Content] [nvarchar](max) NULL,
	[CreatedAt] [datetime2](7) NULL,
	[UpdatedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsRead] [bit] NOT NULL,
	[SenderId] [nvarchar](450) NULL,
	[RecieverId] [nvarchar](450) NULL,
 CONSTRAINT [PK_Messages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderItems]    Script Date: 19.07.2022 16:47:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderItems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[Count] [int] NOT NULL,
	[TotalPrice] [float] NOT NULL,
 CONSTRAINT [PK_OrderItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 19.07.2022 16:47:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[No] [int] NOT NULL,
	[AppUserId] [nvarchar](450) NULL,
	[Name] [nvarchar](max) NULL,
	[SurName] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[Country] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
	[ZipCode] [nvarchar](max) NULL,
	[OrderStatus] [int] NOT NULL,
	[Date] [datetime2](7) NOT NULL,
	[TotalPrice] [float] NOT NULL,
	[Comment] [nvarchar](max) NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductImages]    Script Date: 19.07.2022 16:47:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductImages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](255) NOT NULL,
	[Productid] [int] NOT NULL,
 CONSTRAINT [PK_ProductImages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 19.07.2022 16:47:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](255) NOT NULL,
	[Price] [money] NOT NULL,
	[DiscountPrice] [money] NOT NULL,
	[Extax] [money] NOT NULL,
	[Code] [int] NOT NULL,
	[Seria] [nvarchar](4) NULL,
	[Count] [int] NOT NULL,
	[Description] [nvarchar](1000) NOT NULL,
	[MainImage] [nvarchar](255) NULL,
	[SecondImage] [nvarchar](255) NULL,
	[BrandId] [int] NOT NULL,
	[CategoryId] [int] NOT NULL,
	[IsBestSeller] [bit] NOT NULL,
	[IsFeature] [bit] NOT NULL,
	[IsNewArrivel] [bit] NOT NULL,
	[CreatedAt] [datetime2](7) NULL,
	[DeletedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[UpdatedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductTags]    Script Date: 19.07.2022 16:47:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductTags](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[TagId] [int] NOT NULL,
 CONSTRAINT [PK_ProductTags] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Settings]    Script Date: 19.07.2022 16:47:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Settings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Key] [nvarchar](255) NOT NULL,
	[Value] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Settings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sliders]    Script Date: 19.07.2022 16:47:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sliders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](1000) NOT NULL,
	[MainTitle] [nvarchar](255) NOT NULL,
	[SubTitle] [nvarchar](255) NOT NULL,
	[RedirectUrl] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Sliders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tags]    Script Date: 19.07.2022 16:47:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tags](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[CreatedAt] [datetime2](7) NULL,
	[DeletedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[UpdatedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_Tags] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220621104511_InitialCreate', N'3.1.26')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220621105544_CreatedSettingsTable', N'3.1.26')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220621112342_CreatedSlidersTable', N'3.1.26')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220621113230_CreatedCategoriesTable', N'3.1.26')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220621113510_CreatedTagsTable', N'3.1.26')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220621113646_CreatedBrandsTable', N'3.1.26')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220621114457_CreatedProductssTable', N'3.1.26')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220621114559_UpdatedProductsTableRelatedBrandsTable', N'3.1.26')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220621114753_CreatedProductImagesTableAndRelatedProductsTable', N'3.1.26')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220621114945_CreatedProductTagsTableAndRelatedProductAndTagTable', N'3.1.26')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220621121706_UpdatedProductsTableRelatedCategoriesTable', N'3.1.26')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220622101541_UpdatedProductsTableAddedNewColumns', N'3.1.26')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220630112436_UpdatedBrandsTableAddedIsDeletedColumn', N'3.1.26')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220630113414_UpdatedBrandsTableAddedCreatedAtUpdatedAtDeletedAtColumns', N'3.1.26')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220630114018_UpdatedTagsTableAddedIsDeletedCreatedAtUpdatedAtDeletedAtColumns', N'3.1.26')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220701104718_UpdatedCategoriesTabelAddedIsDeletedCreatedAtUpdatedAtDeletedAtColumns', N'3.1.26')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220704104059_AddedIdentityTabels', N'3.1.26')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220705110530_UpdatedUsersTabelAddedColumns', N'3.1.26')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220705121221_UpdatedProductTabels', N'3.1.26')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220705121812_UpdatedProductTabels_V2', N'3.1.26')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220705122000_UpdatedProductTabels_V3', N'3.1.26')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220707112640_AddedOrdersAdnOrderItemsTable', N'3.1.26')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220718121155_UpdatedAppUsersTabelAddedConnectionIdAndConnectedAtColumns', N'3.1.26')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220719112107_AddedMessagesTableRelatedAppUsersTable', N'3.1.26')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'2713d44a-a17f-4b64-8ba2-346de0c52e3b', N'Member', N'MEMBER', N'bf24b867-93e4-4a57-a10c-9bf1fff53a84')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'37c4f332-f7d6-4060-b6c4-0e47a7bec083', N'Admin', N'ADMIN', N'a0bee7e3-884a-4558-96a5-d2b18f0cbc56')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'3e5b3345-b1de-425d-9759-e1e1cd36721d', N'SuperAdmin', N'SUPERADMIN', N'1e1ce71e-7f57-4bfb-9e8b-10531539a76e')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'140798fd-5c73-4fea-b305-746b3f3c1a1d', N'2713d44a-a17f-4b64-8ba2-346de0c52e3b')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'5328a92f-e083-44aa-a9fe-0a5200810408', N'2713d44a-a17f-4b64-8ba2-346de0c52e3b')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c4225081-18a6-4055-8b27-391de4d3fb15', N'2713d44a-a17f-4b64-8ba2-346de0c52e3b')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ca1ae352-b7eb-4e3c-a111-319775c62a0b', N'2713d44a-a17f-4b64-8ba2-346de0c52e3b')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'df675dd2-5feb-4bc5-a3f1-44d3d679857e', N'2713d44a-a17f-4b64-8ba2-346de0c52e3b')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'f7b59167-df75-4e06-ba50-f7dcae161978', N'2713d44a-a17f-4b64-8ba2-346de0c52e3b')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'f9c5234d-06dc-4374-8081-f665ec4e371c', N'2713d44a-a17f-4b64-8ba2-346de0c52e3b')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'cca48deb-675d-4e08-abc9-18efe2bfacc7', N'3e5b3345-b1de-425d-9759-e1e1cd36721d')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Name], [SurName], [FatherName], [Age], [IsAdmin], [IsDeActive], [ConnectedAt], [ConnectionId]) VALUES (N'140798fd-5c73-4fea-b305-746b3f3c1a1d', N'abdulla', N'ABDULLA', N'abdulla@code.edu.az', N'ABDULLA@CODE.EDU.AZ', 0, N'AQAAAAEAACcQAAAAEHyg/KtBXuNoVpZMoYl6IeXtcj5ALMScuhe7RcWDHWboC01C6BCR2OOYAbGm8AFG+g==', N'E6G5WA32IUMK7BRT7ZLJFTNGDMHIMWE6', N'27b47d7c-f4a4-41bb-9047-c388f39315d1', NULL, 0, 0, NULL, 1, 0, N'Abdulla', N'Rahimli', N'Abdulla', 27, 0, 0, CAST(N'2022-07-19T15:57:50.5549372' AS DateTime2), NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Name], [SurName], [FatherName], [Age], [IsAdmin], [IsDeActive], [ConnectedAt], [ConnectionId]) VALUES (N'5328a92f-e083-44aa-a9fe-0a5200810408', N'user1', N'USER1', N'user1@gmail.com', N'USER1@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEOUypjct6GcaQCnonipZefQvbdaJ49tPY7FMMRZVbE8dy0pDzp/uzfzLdfgPqdQS3g==', N'2SUTJEVWGXVAQ4XGVHKEFZ52GWPNX3D3', N'2085c0cc-9acd-4e73-ac68-bcc4dea6e43b', NULL, 0, 0, CAST(N'2022-07-07T10:29:49.6923761+00:00' AS DateTimeOffset), 1, 0, N'User1', N'Userov1', N'UserOglu1', 35, 0, 0, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Name], [SurName], [FatherName], [Age], [IsAdmin], [IsDeActive], [ConnectedAt], [ConnectionId]) VALUES (N'c4225081-18a6-4055-8b27-391de4d3fb15', N'togrul', N'TOGRUL', N'togrul@code.edu.az', N'TOGRUL@CODE.EDU.AZ', 0, N'AQAAAAEAACcQAAAAEH2TCw5rXCiJmIZxkXnekeuSxkE2tXfv2EiKH9d57lZS5FL7x5aLkM3K+aGXfQiOsA==', N'OAQWA22NF34YQ2PBLQLZV3ZIG4CFKWFX', N'7b1dbd99-21e6-4853-87ef-8b93c6902445', NULL, 0, 0, NULL, 1, 0, N'Togrul', N'HuseynAliyev', N'Huseyn', 18, 0, 0, CAST(N'2022-07-19T16:41:48.2713479' AS DateTime2), NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Name], [SurName], [FatherName], [Age], [IsAdmin], [IsDeActive], [ConnectedAt], [ConnectionId]) VALUES (N'ca1ae352-b7eb-4e3c-a111-319775c62a0b', N'onur', N'ONUR', N'onur@code.edu.az', N'ONUR@CODE.EDU.AZ', 0, N'AQAAAAEAACcQAAAAEJub26Pa/Fuk7UM8URkQ0LmvoGBO3EZRCmNjHInVnIKT3lck+A87aoRySVecUF3u7w==', N'3M55E2ZZEFNK5PVXUTYMJJMBCIQGOSKM', N'8753d1b5-5a0d-4f1d-8757-86a6f11160a3', NULL, 0, 0, NULL, 1, 0, N'Onur', N'Ismayilov', N'Onur', 20, 0, 0, CAST(N'2022-07-18T17:34:34.0162624' AS DateTime2), NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Name], [SurName], [FatherName], [Age], [IsAdmin], [IsDeActive], [ConnectedAt], [ConnectionId]) VALUES (N'cca48deb-675d-4e08-abc9-18efe2bfacc7', N'SuperAdmin', N'SUPERADMIN', N'superadmin@allup.com', N'SUPERADMIN@ALLUP.COM', 0, N'AQAAAAEAACcQAAAAEK0BRaNDbaaS+IB7LYsNLuVHcwjPw/unuZ2cZkAGocVDygOVcz4/eOyfjVJEHWOtWA==', N'QESBK3RTGDHZJVD5M2A4IZSJEWOGF2JO', N'9843e4fa-e712-4caf-9852-b58b49ba46cc', NULL, 0, 0, NULL, 1, 0, N'Hamid', N'Mamamdov', N'Vaqif', 32, 0, 0, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Name], [SurName], [FatherName], [Age], [IsAdmin], [IsDeActive], [ConnectedAt], [ConnectionId]) VALUES (N'df675dd2-5feb-4bc5-a3f1-44d3d679857e', N'vuska', N'VUSKA', N'vusalmi@code.edu.az', N'VUSALMI@CODE.EDU.AZ', 0, N'AQAAAAEAACcQAAAAEH9DQ3ti0X1ODi1kfFJlz4ADna0jUCoZC8VE1wxt0b+fL4jiHBuJbnthvCHFcF/06g==', N'M3V5Q6XTCY7HNJZKGFWCZ4CGLZVGSWGK', N'eb7b5bbf-c8ee-4628-ab87-047ca122670f', NULL, 0, 0, NULL, 1, 0, N'Vusal', N'Imanov', N'Vusal', 22, 0, 0, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Name], [SurName], [FatherName], [Age], [IsAdmin], [IsDeActive], [ConnectedAt], [ConnectionId]) VALUES (N'f7b59167-df75-4e06-ba50-f7dcae161978', N'maqsud', N'MAQSUD', N'maqsud@code.edu.az', N'MAQSUD@CODE.EDU.AZ', 0, N'AQAAAAEAACcQAAAAEAVSiGVkhVLvXIpQM3AceCSgbc75pM+da0Ww8P/NeSkzNUMyS0jn2gY/pz+n8SmdXg==', N'JIUK3IURIGBI2SKCUGW5ORRKEW2R6AQO', N'354170e5-ecb7-4f4e-baab-81c2cb5a8721', NULL, 0, 0, NULL, 1, 0, N'Maqsud', N'Seferov', N'Maqsud', 18, 0, 0, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Name], [SurName], [FatherName], [Age], [IsAdmin], [IsDeActive], [ConnectedAt], [ConnectionId]) VALUES (N'f9c5234d-06dc-4374-8081-f665ec4e371c', N'hamidvm', N'HAMIDVM', N'hamidvm@code.edu.az', N'HAMIDVM@CODE.EDU.AZ', 0, N'AQAAAAEAACcQAAAAEH8QLbDHAYGbyVH4z/iK44qthB3aPJ1giD1nQ3fqzkucSVT4xm2QYucZrqJNP6RbBA==', N'BZPSR4Q5E555KI2WRWHFNKGUJBEW4NNT', N'730ce66b-524f-4b61-bfb3-03053c17310c', NULL, 0, 0, CAST(N'2022-07-04T13:01:35.1436431+00:00' AS DateTimeOffset), 1, 0, N'Hamid', N'Mammadov', N'Vaqif', 32, 0, 0, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Brands] ON 

INSERT [dbo].[Brands] ([Id], [Name], [IsDeleted], [CreatedAt], [DeletedAt], [UpdatedAt]) VALUES (1, N'Apple', 0, NULL, NULL, NULL)
INSERT [dbo].[Brands] ([Id], [Name], [IsDeleted], [CreatedAt], [DeletedAt], [UpdatedAt]) VALUES (2, N'Samsung', 0, NULL, NULL, NULL)
INSERT [dbo].[Brands] ([Id], [Name], [IsDeleted], [CreatedAt], [DeletedAt], [UpdatedAt]) VALUES (3, N'Mi', 0, NULL, NULL, CAST(N'2022-06-30T16:32:01.9678199' AS DateTime2))
INSERT [dbo].[Brands] ([Id], [Name], [IsDeleted], [CreatedAt], [DeletedAt], [UpdatedAt]) VALUES (4, N'Huawei', 0, NULL, NULL, NULL)
INSERT [dbo].[Brands] ([Id], [Name], [IsDeleted], [CreatedAt], [DeletedAt], [UpdatedAt]) VALUES (9, N'Acer Predator', 0, CAST(N'2022-06-30T15:36:21.5757084' AS DateTime2), NULL, CAST(N'2022-06-30T15:36:43.1812695' AS DateTime2))
INSERT [dbo].[Brands] ([Id], [Name], [IsDeleted], [CreatedAt], [DeletedAt], [UpdatedAt]) VALUES (10, N'Toshiba', 0, CAST(N'2022-07-01T14:32:28.1035878' AS DateTime2), NULL, NULL)
INSERT [dbo].[Brands] ([Id], [Name], [IsDeleted], [CreatedAt], [DeletedAt], [UpdatedAt]) VALUES (11, N'Sony', 0, CAST(N'2022-07-01T14:33:20.1762177' AS DateTime2), NULL, NULL)
INSERT [dbo].[Brands] ([Id], [Name], [IsDeleted], [CreatedAt], [DeletedAt], [UpdatedAt]) VALUES (12, N'TEst', 0, CAST(N'2022-07-01T14:33:35.8526618' AS DateTime2), NULL, NULL)
INSERT [dbo].[Brands] ([Id], [Name], [IsDeleted], [CreatedAt], [DeletedAt], [UpdatedAt]) VALUES (13, N'TEst2', 0, CAST(N'2022-07-01T14:35:24.6025348' AS DateTime2), NULL, NULL)
INSERT [dbo].[Brands] ([Id], [Name], [IsDeleted], [CreatedAt], [DeletedAt], [UpdatedAt]) VALUES (14, N'TEst22', 0, CAST(N'2022-07-01T14:37:58.4096432' AS DateTime2), NULL, NULL)
INSERT [dbo].[Brands] ([Id], [Name], [IsDeleted], [CreatedAt], [DeletedAt], [UpdatedAt]) VALUES (15, N'asdasdadasd', 0, CAST(N'2022-07-01T14:38:56.2692165' AS DateTime2), NULL, NULL)
INSERT [dbo].[Brands] ([Id], [Name], [IsDeleted], [CreatedAt], [DeletedAt], [UpdatedAt]) VALUES (16, N'asdasdadadadsad', 0, CAST(N'2022-07-01T14:39:38.4894063' AS DateTime2), NULL, NULL)
INSERT [dbo].[Brands] ([Id], [Name], [IsDeleted], [CreatedAt], [DeletedAt], [UpdatedAt]) VALUES (17, N'123ad', 0, CAST(N'2022-07-01T14:40:31.4752712' AS DateTime2), NULL, NULL)
INSERT [dbo].[Brands] ([Id], [Name], [IsDeleted], [CreatedAt], [DeletedAt], [UpdatedAt]) VALUES (18, N'12434', 0, CAST(N'2022-07-01T14:41:54.6742984' AS DateTime2), NULL, NULL)
INSERT [dbo].[Brands] ([Id], [Name], [IsDeleted], [CreatedAt], [DeletedAt], [UpdatedAt]) VALUES (19, N'adsasd', 0, CAST(N'2022-07-01T14:56:34.7347395' AS DateTime2), NULL, NULL)
INSERT [dbo].[Brands] ([Id], [Name], [IsDeleted], [CreatedAt], [DeletedAt], [UpdatedAt]) VALUES (20, N'zczczxc', 1, CAST(N'2022-07-01T14:57:26.8980262' AS DateTime2), CAST(N'2022-07-01T16:09:53.3154493' AS DateTime2), NULL)
INSERT [dbo].[Brands] ([Id], [Name], [IsDeleted], [CreatedAt], [DeletedAt], [UpdatedAt]) VALUES (21, N'gbnvn', 1, CAST(N'2022-07-01T14:57:46.8986007' AS DateTime2), CAST(N'2022-07-01T16:09:50.7478993' AS DateTime2), NULL)
INSERT [dbo].[Brands] ([Id], [Name], [IsDeleted], [CreatedAt], [DeletedAt], [UpdatedAt]) VALUES (22, N'asdadasd3223', 1, CAST(N'2022-07-01T16:09:43.4551462' AS DateTime2), CAST(N'2022-07-01T16:09:48.5369735' AS DateTime2), NULL)
SET IDENTITY_INSERT [dbo].[Brands] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name], [Image], [IsMain], [ParentId], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (1, N'Laptop', NULL, 0, 2, NULL, NULL, 0, NULL)
INSERT [dbo].[Categories] ([Id], [Name], [Image], [IsMain], [ParentId], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (2, N'SmartPhone', N'category-3.jpg', 1, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Categories] ([Id], [Name], [Image], [IsMain], [ParentId], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (4, N'Game Console', N'category-4.jpg', 1, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Categories] ([Id], [Name], [Image], [IsMain], [ParentId], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (5, N'Gameing laptop', NULL, 0, 1, NULL, NULL, 0, NULL)
INSERT [dbo].[Categories] ([Id], [Name], [Image], [IsMain], [ParentId], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (6, N'Office laptop', NULL, 0, 1, NULL, NULL, 0, NULL)
INSERT [dbo].[Categories] ([Id], [Name], [Image], [IsMain], [ParentId], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (7, N'Gaming SmatPhone', NULL, 0, 2, NULL, NULL, 0, NULL)
INSERT [dbo].[Categories] ([Id], [Name], [Image], [IsMain], [ParentId], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (8, N'Playstation 4', NULL, 0, 4, NULL, NULL, 0, NULL)
INSERT [dbo].[Categories] ([Id], [Name], [Image], [IsMain], [ParentId], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (10, N'Playstation 5', NULL, 0, 4, NULL, NULL, 0, NULL)
INSERT [dbo].[Categories] ([Id], [Name], [Image], [IsMain], [ParentId], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (35, N'asdad', NULL, 0, 1, CAST(N'2022-07-01T15:40:49.6437540' AS DateTime2), NULL, 0, NULL)
INSERT [dbo].[Categories] ([Id], [Name], [Image], [IsMain], [ParentId], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (36, N'asdad', NULL, 0, 1, CAST(N'2022-07-01T15:42:40.3006150' AS DateTime2), NULL, 0, NULL)
INSERT [dbo].[Categories] ([Id], [Name], [Image], [IsMain], [ParentId], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (37, N'Toshiba', N'P225FirstFileUpload.jpg', 1, NULL, CAST(N'2022-07-01T16:33:00.4210254' AS DateTime2), NULL, 0, NULL)
INSERT [dbo].[Categories] ([Id], [Name], [Image], [IsMain], [ParentId], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (38, N'FileUpload', N'P225FirstFileUpload.jpg', 1, NULL, CAST(N'2022-07-01T16:33:44.0416405' AS DateTime2), NULL, 0, NULL)
INSERT [dbo].[Categories] ([Id], [Name], [Image], [IsMain], [ParentId], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (39, N'alama', N'P225FirstFileUpload.jpg', 1, NULL, CAST(N'2022-07-01T16:40:04.4046815' AS DateTime2), NULL, 0, NULL)
INSERT [dbo].[Categories] ([Id], [Name], [Image], [IsMain], [ParentId], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (40, N'armud', N'P225FirstFileUpload.jpg', 1, NULL, CAST(N'2022-07-01T16:45:19.3867788' AS DateTime2), NULL, 0, NULL)
INSERT [dbo].[Categories] ([Id], [Name], [Image], [IsMain], [ParentId], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (41, N'visnbe', N'P225FirstFileUpload.jpg', 1, NULL, CAST(N'2022-07-01T16:45:43.9200403' AS DateTime2), NULL, 0, NULL)
INSERT [dbo].[Categories] ([Id], [Name], [Image], [IsMain], [ParentId], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (42, N'Test1', N'74a04d48-bb5d-4a19-84d1-da032c4a8a41_2022070117130983_P225FirstFileUpload.jpg', 1, NULL, CAST(N'2022-07-01T17:13:09.9033713' AS DateTime2), NULL, 0, NULL)
INSERT [dbo].[Categories] ([Id], [Name], [Image], [IsMain], [ParentId], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (43, N'TEst2', N'9a02e47c-6be3-46b1-9b25-6bf7b7f98ad7_2022070117153353_P225FirstFileUpload.jpg', 1, NULL, CAST(N'2022-07-01T17:15:33.5973273' AS DateTime2), NULL, 0, NULL)
INSERT [dbo].[Categories] ([Id], [Name], [Image], [IsMain], [ParentId], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (44, N'Test3', N'e9f3d83a-69f3-4a16-b159-ec6e464bec99_2022070117280601_P225FirstFileUpload.jpg', 1, NULL, CAST(N'2022-07-01T17:29:00.9911815' AS DateTime2), NULL, 0, NULL)
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Messages] ON 

INSERT [dbo].[Messages] ([Id], [Content], [CreatedAt], [UpdatedAt], [IsDeleted], [IsRead], [SenderId], [RecieverId]) VALUES (1, N'asd', CAST(N'2022-07-19T15:32:47.5763076' AS DateTime2), NULL, 0, 0, N'c4225081-18a6-4055-8b27-391de4d3fb15', N'140798fd-5c73-4fea-b305-746b3f3c1a1d')
INSERT [dbo].[Messages] ([Id], [Content], [CreatedAt], [UpdatedAt], [IsDeleted], [IsRead], [SenderId], [RecieverId]) VALUES (2, N'Salam Abdulla', CAST(N'2022-07-19T15:40:14.7825747' AS DateTime2), NULL, 0, 0, N'c4225081-18a6-4055-8b27-391de4d3fb15', N'140798fd-5c73-4fea-b305-746b3f3c1a1d')
INSERT [dbo].[Messages] ([Id], [Content], [CreatedAt], [UpdatedAt], [IsDeleted], [IsRead], [SenderId], [RecieverId]) VALUES (3, N'Salam Togrul', CAST(N'2022-07-19T15:40:29.6517160' AS DateTime2), NULL, 0, 0, N'140798fd-5c73-4fea-b305-746b3f3c1a1d', N'c4225081-18a6-4055-8b27-391de4d3fb15')
INSERT [dbo].[Messages] ([Id], [Content], [CreatedAt], [UpdatedAt], [IsDeleted], [IsRead], [SenderId], [RecieverId]) VALUES (4, N'Hi', CAST(N'2022-07-19T15:53:47.6888368' AS DateTime2), NULL, 0, 0, N'c4225081-18a6-4055-8b27-391de4d3fb15', N'140798fd-5c73-4fea-b305-746b3f3c1a1d')
INSERT [dbo].[Messages] ([Id], [Content], [CreatedAt], [UpdatedAt], [IsDeleted], [IsRead], [SenderId], [RecieverId]) VALUES (5, N'test', CAST(N'2022-07-19T15:56:01.6535805' AS DateTime2), NULL, 0, 0, N'c4225081-18a6-4055-8b27-391de4d3fb15', N'140798fd-5c73-4fea-b305-746b3f3c1a1d')
INSERT [dbo].[Messages] ([Id], [Content], [CreatedAt], [UpdatedAt], [IsDeleted], [IsRead], [SenderId], [RecieverId]) VALUES (6, N'asd', CAST(N'2022-07-19T15:56:54.8694016' AS DateTime2), NULL, 0, 0, N'c4225081-18a6-4055-8b27-391de4d3fb15', N'140798fd-5c73-4fea-b305-746b3f3c1a1d')
SET IDENTITY_INSERT [dbo].[Messages] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderItems] ON 

INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Price], [Count], [TotalPrice]) VALUES (1, 1, 1, 20, 3, 60)
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Price], [Count], [TotalPrice]) VALUES (2, 1, 3, 45, 2, 90)
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Price], [Count], [TotalPrice]) VALUES (3, 2, 28, 60, 2, 120)
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Price], [Count], [TotalPrice]) VALUES (4, 2, 29, 69, 1, 69)
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Price], [Count], [TotalPrice]) VALUES (5, 3, 1, 20, 1, 20)
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Price], [Count], [TotalPrice]) VALUES (6, 3, 3, 45, 1, 45)
SET IDENTITY_INSERT [dbo].[OrderItems] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [No], [AppUserId], [Name], [SurName], [Email], [Phone], [Address], [Country], [City], [ZipCode], [OrderStatus], [Date], [TotalPrice], [Comment]) VALUES (1, 1, N'df675dd2-5feb-4bc5-a3f1-44d3d679857e', N'Vusal', N'Imanov', N'vusalmi@code.edu.az', N'9945555', N'Baki', N'Azerbaijan', N'Baki', N'1111', 1, CAST(N'2022-07-07T16:26:48.6102602' AS DateTime2), 150, NULL)
INSERT [dbo].[Orders] ([Id], [No], [AppUserId], [Name], [SurName], [Email], [Phone], [Address], [Country], [City], [ZipCode], [OrderStatus], [Date], [TotalPrice], [Comment]) VALUES (2, 0, N'df675dd2-5feb-4bc5-a3f1-44d3d679857e', N'Vusal', N'Imanov', N'vusalmi@code.edu.az', N'34435', N'asd', N'asd', N'asd', N'asd', 1, CAST(N'2022-07-07T16:47:51.4107914' AS DateTime2), 189, NULL)
INSERT [dbo].[Orders] ([Id], [No], [AppUserId], [Name], [SurName], [Email], [Phone], [Address], [Country], [City], [ZipCode], [OrderStatus], [Date], [TotalPrice], [Comment]) VALUES (3, 0, N'ca1ae352-b7eb-4e3c-a111-319775c62a0b', N'Onur', N'Ismayilov', N'onur@code.edu.az', NULL, N'as', N'asd', N'asd', N'asd', 2, CAST(N'2022-07-18T17:17:28.7931532' AS DateTime2), 65, NULL)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductImages] ON 

INSERT [dbo].[ProductImages] ([Id], [Image], [Productid]) VALUES (1, N'product-1.jpg', 1)
INSERT [dbo].[ProductImages] ([Id], [Image], [Productid]) VALUES (2, N'product-2.jpg', 1)
INSERT [dbo].[ProductImages] ([Id], [Image], [Productid]) VALUES (3, N'product-3.jpg', 1)
INSERT [dbo].[ProductImages] ([Id], [Image], [Productid]) VALUES (4, N'product-4.jpg', 1)
INSERT [dbo].[ProductImages] ([Id], [Image], [Productid]) VALUES (5, N'product-5.jpg', 1)
INSERT [dbo].[ProductImages] ([Id], [Image], [Productid]) VALUES (6, N'product-1.jpg', 2)
INSERT [dbo].[ProductImages] ([Id], [Image], [Productid]) VALUES (7, N'product-2.jpg', 2)
INSERT [dbo].[ProductImages] ([Id], [Image], [Productid]) VALUES (8, N'product-3.jpg', 2)
INSERT [dbo].[ProductImages] ([Id], [Image], [Productid]) VALUES (9, N'product-4.jpg', 2)
INSERT [dbo].[ProductImages] ([Id], [Image], [Productid]) VALUES (10, N'product-5.jpg', 2)
INSERT [dbo].[ProductImages] ([Id], [Image], [Productid]) VALUES (11, N'product-1.jpg', 3)
INSERT [dbo].[ProductImages] ([Id], [Image], [Productid]) VALUES (12, N'product-2.jpg', 3)
INSERT [dbo].[ProductImages] ([Id], [Image], [Productid]) VALUES (13, N'product-3.jpg', 3)
INSERT [dbo].[ProductImages] ([Id], [Image], [Productid]) VALUES (14, N'product-4.jpg', 3)
INSERT [dbo].[ProductImages] ([Id], [Image], [Productid]) VALUES (15, N'product-5.jpg', 3)
INSERT [dbo].[ProductImages] ([Id], [Image], [Productid]) VALUES (16, N'product-1.jpg', 4)
INSERT [dbo].[ProductImages] ([Id], [Image], [Productid]) VALUES (17, N'product-2.jpg', 4)
INSERT [dbo].[ProductImages] ([Id], [Image], [Productid]) VALUES (18, N'product-3.jpg', 4)
INSERT [dbo].[ProductImages] ([Id], [Image], [Productid]) VALUES (19, N'product-4.jpg', 4)
INSERT [dbo].[ProductImages] ([Id], [Image], [Productid]) VALUES (20, N'product-5.jpg', 4)
INSERT [dbo].[ProductImages] ([Id], [Image], [Productid]) VALUES (22, N'product-2.jpg', 5)
INSERT [dbo].[ProductImages] ([Id], [Image], [Productid]) VALUES (23, N'product-3.jpg', 5)
INSERT [dbo].[ProductImages] ([Id], [Image], [Productid]) VALUES (24, N'product-4.jpg', 5)
INSERT [dbo].[ProductImages] ([Id], [Image], [Productid]) VALUES (25, N'product-5.jpg', 5)
INSERT [dbo].[ProductImages] ([Id], [Image], [Productid]) VALUES (26, N'product-1.jpg', 6)
INSERT [dbo].[ProductImages] ([Id], [Image], [Productid]) VALUES (27, N'product-2.jpg', 6)
INSERT [dbo].[ProductImages] ([Id], [Image], [Productid]) VALUES (28, N'product-3.jpg', 6)
INSERT [dbo].[ProductImages] ([Id], [Image], [Productid]) VALUES (29, N'product-4.jpg', 6)
INSERT [dbo].[ProductImages] ([Id], [Image], [Productid]) VALUES (30, N'product-5.jpg', 6)
INSERT [dbo].[ProductImages] ([Id], [Image], [Productid]) VALUES (31, N'product-1.jpg', 7)
INSERT [dbo].[ProductImages] ([Id], [Image], [Productid]) VALUES (32, N'product-2.jpg', 7)
INSERT [dbo].[ProductImages] ([Id], [Image], [Productid]) VALUES (33, N'product-3.jpg', 7)
INSERT [dbo].[ProductImages] ([Id], [Image], [Productid]) VALUES (34, N'product-4.jpg', 7)
INSERT [dbo].[ProductImages] ([Id], [Image], [Productid]) VALUES (35, N'product-5.jpg', 7)
INSERT [dbo].[ProductImages] ([Id], [Image], [Productid]) VALUES (36, N'product-1.jpg', 8)
INSERT [dbo].[ProductImages] ([Id], [Image], [Productid]) VALUES (37, N'product-2.jpg', 8)
INSERT [dbo].[ProductImages] ([Id], [Image], [Productid]) VALUES (38, N'product-3.jpg', 8)
INSERT [dbo].[ProductImages] ([Id], [Image], [Productid]) VALUES (39, N'product-4.jpg', 8)
INSERT [dbo].[ProductImages] ([Id], [Image], [Productid]) VALUES (40, N'product-5.jpg', 8)
INSERT [dbo].[ProductImages] ([Id], [Image], [Productid]) VALUES (41, N'44491b3c-1711-4cbb-8819-ea8a3cdd04b4_2022070517381810_product-3.jpg', 66)
INSERT [dbo].[ProductImages] ([Id], [Image], [Productid]) VALUES (42, N'b040584b-b34f-41d3-9d1f-635c543fc236_2022070517382456_product-4.jpg', 66)
INSERT [dbo].[ProductImages] ([Id], [Image], [Productid]) VALUES (43, N'e826a43e-25da-45bb-99a6-a1b71b84a4e6_2022070517382680_product-12.jpg', 66)
INSERT [dbo].[ProductImages] ([Id], [Image], [Productid]) VALUES (44, N'3b00e48c-883a-4e47-b52f-ea05ece873c3_2022070614153285_product-5.jpg', 67)
INSERT [dbo].[ProductImages] ([Id], [Image], [Productid]) VALUES (45, N'b477b6c3-a64f-4a15-b7c8-395807880130_2022070614153285_product-6.jpg', 67)
INSERT [dbo].[ProductImages] ([Id], [Image], [Productid]) VALUES (46, N'3e06518a-0332-431a-b648-cbde10b91e21_2022070614153286_product-16.jpg', 67)
INSERT [dbo].[ProductImages] ([Id], [Image], [Productid]) VALUES (47, N'eb2ef0d8-c9a3-4952-8c71-c3549e47d03f_2022070614153286_product-17.jpg', 67)
INSERT [dbo].[ProductImages] ([Id], [Image], [Productid]) VALUES (58, N'9f306f43-aefe-4baf-9735-719174b9baf8_2022070616055830_product-2.jpg', 68)
SET IDENTITY_INSERT [dbo].[ProductImages] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Title], [Price], [DiscountPrice], [Extax], [Code], [Seria], [Count], [Description], [MainImage], [SecondImage], [BrandId], [CategoryId], [IsBestSeller], [IsFeature], [IsNewArrivel], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (1, N'1-New Balance Fresh Foam LAZR v1 Sport eu accumsan massa facilisis', 20.0000, 0.0000, 3.0000, 1234, N'abcd', 2, N'<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla. <br> <br> Pellentesque aliquet, sem eget laoreet ultrices, ipsum metus feugiat sem, quis fermentum turpis eros eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate, sapien libero hendrerit est, sed commodo augue nisi non neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi. Cras neque metus, consequat et blandit et, luctus a nunc. Etiam gravida vehicula tellus, in imperdiet ligula euismod eget.</p>', N'product-1.jpg', N'product-2.jpg', 1, 5, 0, 0, 1, NULL, NULL, 0, NULL)
INSERT [dbo].[Products] ([Id], [Title], [Price], [DiscountPrice], [Extax], [Code], [Seria], [Count], [Description], [MainImage], [SecondImage], [BrandId], [CategoryId], [IsBestSeller], [IsFeature], [IsNewArrivel], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (2, N'2-New Balance Fresh Foam LAZR v1 Sport eu accumsan massa facilisis', 23.0000, 21.0000, 4.0000, 1234, N'abcd', 2, N'<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla. <br> <br> Pellentesque aliquet, sem eget laoreet ultrices, ipsum metus feugiat sem, quis fermentum turpis eros eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate, sapien libero hendrerit est, sed commodo augue nisi non neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi. Cras neque metus, consequat et blandit et, luctus a nunc. Etiam gravida vehicula tellus, in imperdiet ligula euismod eget.</p>', N'product-3.jpg', N'product-4.jpg', 2, 6, 0, 0, 1, NULL, NULL, 0, NULL)
INSERT [dbo].[Products] ([Id], [Title], [Price], [DiscountPrice], [Extax], [Code], [Seria], [Count], [Description], [MainImage], [SecondImage], [BrandId], [CategoryId], [IsBestSeller], [IsFeature], [IsNewArrivel], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (3, N'3-New Balance Fresh Foam LAZR v1 Sport eu accumsan massa facilisis', 50.0000, 45.0000, 5.0000, 1234, N'abcd', 2, N'<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla. <br> <br> Pellentesque aliquet, sem eget laoreet ultrices, ipsum metus feugiat sem, quis fermentum turpis eros eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate, sapien libero hendrerit est, sed commodo augue nisi non neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi. Cras neque metus, consequat et blandit et, luctus a nunc. Etiam gravida vehicula tellus, in imperdiet ligula euismod eget.</p>', N'product-5.jpg', N'product-6.jpg', 3, 7, 0, 0, 1, NULL, NULL, 0, NULL)
INSERT [dbo].[Products] ([Id], [Title], [Price], [DiscountPrice], [Extax], [Code], [Seria], [Count], [Description], [MainImage], [SecondImage], [BrandId], [CategoryId], [IsBestSeller], [IsFeature], [IsNewArrivel], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (4, N'4-New Balance Fresh Foam LAZR v1 Sport eu accumsan massa facilisis', 60.0000, 0.0000, 7.0000, 1234, N'abcd', 2, N'<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla. <br> <br> Pellentesque aliquet, sem eget laoreet ultrices, ipsum metus feugiat sem, quis fermentum turpis eros eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate, sapien libero hendrerit est, sed commodo augue nisi non neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi. Cras neque metus, consequat et blandit et, luctus a nunc. Etiam gravida vehicula tellus, in imperdiet ligula euismod eget.</p>', N'product-7.jpg', N'product-8.jpg', 4, 6, 0, 0, 1, NULL, NULL, 0, NULL)
INSERT [dbo].[Products] ([Id], [Title], [Price], [DiscountPrice], [Extax], [Code], [Seria], [Count], [Description], [MainImage], [SecondImage], [BrandId], [CategoryId], [IsBestSeller], [IsFeature], [IsNewArrivel], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (5, N'5-New Balance Fresh Foam LAZR v1 Sport eu accumsan massa facilisis', 75.0000, 69.0000, 6.0000, 1234, N'abcd', 0, N'<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla. <br> <br> Pellentesque aliquet, sem eget laoreet ultrices, ipsum metus feugiat sem, quis fermentum turpis eros eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate, sapien libero hendrerit est, sed commodo augue nisi non neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi. Cras neque metus, consequat et blandit et, luctus a nunc. Etiam gravida vehicula tellus, in imperdiet ligula euismod eget.</p>', N'product-9.jpg', N'product-10.jpg', 1, 6, 0, 0, 1, NULL, NULL, 0, NULL)
INSERT [dbo].[Products] ([Id], [Title], [Price], [DiscountPrice], [Extax], [Code], [Seria], [Count], [Description], [MainImage], [SecondImage], [BrandId], [CategoryId], [IsBestSeller], [IsFeature], [IsNewArrivel], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (6, N'6-New Balance Fresh Foam LAZR v1 Sport eu accumsan massa facilisis', 30.0000, 0.0000, 2.0000, 1234, N'abcd', 0, N'<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla. <br> <br> Pellentesque aliquet, sem eget laoreet ultrices, ipsum metus feugiat sem, quis fermentum turpis eros eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate, sapien libero hendrerit est, sed commodo augue nisi non neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi. Cras neque metus, consequat et blandit et, luctus a nunc. Etiam gravida vehicula tellus, in imperdiet ligula euismod eget.</p>', N'product-11.jpg', N'product-12.jpg', 2, 7, 0, 0, 1, NULL, NULL, 0, NULL)
INSERT [dbo].[Products] ([Id], [Title], [Price], [DiscountPrice], [Extax], [Code], [Seria], [Count], [Description], [MainImage], [SecondImage], [BrandId], [CategoryId], [IsBestSeller], [IsFeature], [IsNewArrivel], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (7, N'P225 7-New Balance Fresh Foam LAZR v1 Sport eu accumsan massa facilisis', 99.0000, 69.0000, 3.0000, 1234, N'abcd', 2, N'<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla. <br> <br> Pellentesque aliquet, sem eget laoreet ultrices, ipsum metus feugiat sem, quis fermentum turpis eros eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate, sapien libero hendrerit est, sed commodo augue nisi non neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi. Cras neque metus, consequat et blandit et, luctus a nunc. Etiam gravida vehicula tellus, in imperdiet ligula euismod eget.</p>', N'product-17.jpg', N'product-14.jpg', 3, 5, 0, 0, 1, NULL, NULL, 0, NULL)
INSERT [dbo].[Products] ([Id], [Title], [Price], [DiscountPrice], [Extax], [Code], [Seria], [Count], [Description], [MainImage], [SecondImage], [BrandId], [CategoryId], [IsBestSeller], [IsFeature], [IsNewArrivel], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (8, N'8-New Balance Fresh Foam LAZR v1 Sport eu accumsan massa facilisis', 150.0000, 139.0000, 3.0000, 1234, N'abcd', 2, N'<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla. <br> <br> Pellentesque aliquet, sem eget laoreet ultrices, ipsum metus feugiat sem, quis fermentum turpis eros eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate, sapien libero hendrerit est, sed commodo augue nisi non neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi. Cras neque metus, consequat et blandit et, luctus a nunc. Etiam gravida vehicula tellus, in imperdiet ligula euismod eget.</p>', N'product-14.jpg', N'product-16.jpg', 4, 5, 0, 0, 1, NULL, NULL, 0, NULL)
INSERT [dbo].[Products] ([Id], [Title], [Price], [DiscountPrice], [Extax], [Code], [Seria], [Count], [Description], [MainImage], [SecondImage], [BrandId], [CategoryId], [IsBestSeller], [IsFeature], [IsNewArrivel], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (9, N'1-New Balance Fresh Foam LAZR v1 Sport eu accumsan massa facilisis', 20.0000, 0.0000, 3.0000, 1234, N'abcd', 2, N'<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla. <br> <br> Pellentesque aliquet, sem eget laoreet ultrices, ipsum metus feugiat sem, quis fermentum turpis eros eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate, sapien libero hendrerit est, sed commodo augue nisi non neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi. Cras neque metus, consequat et blandit et, luctus a nunc. Etiam gravida vehicula tellus, in imperdiet ligula euismod eget.</p>', N'product-1.jpg', N'product-2.jpg', 1, 5, 0, 1, 0, NULL, NULL, 0, NULL)
INSERT [dbo].[Products] ([Id], [Title], [Price], [DiscountPrice], [Extax], [Code], [Seria], [Count], [Description], [MainImage], [SecondImage], [BrandId], [CategoryId], [IsBestSeller], [IsFeature], [IsNewArrivel], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (10, N'2-New Balance Fresh Foam LAZR v1 Sport eu accumsan massa facilisis', 23.0000, 21.0000, 4.0000, 1234, N'abcd', 2, N'<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla. <br> <br> Pellentesque aliquet, sem eget laoreet ultrices, ipsum metus feugiat sem, quis fermentum turpis eros eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate, sapien libero hendrerit est, sed commodo augue nisi non neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi. Cras neque metus, consequat et blandit et, luctus a nunc. Etiam gravida vehicula tellus, in imperdiet ligula euismod eget.</p>', N'product-3.jpg', N'product-4.jpg', 2, 6, 0, 1, 0, NULL, NULL, 0, NULL)
INSERT [dbo].[Products] ([Id], [Title], [Price], [DiscountPrice], [Extax], [Code], [Seria], [Count], [Description], [MainImage], [SecondImage], [BrandId], [CategoryId], [IsBestSeller], [IsFeature], [IsNewArrivel], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (11, N'3-New Balance Fresh Foam LAZR v1 Sport eu accumsan massa facilisis', 50.0000, 45.0000, 5.0000, 1234, N'abcd', 2, N'<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla. <br> <br> Pellentesque aliquet, sem eget laoreet ultrices, ipsum metus feugiat sem, quis fermentum turpis eros eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate, sapien libero hendrerit est, sed commodo augue nisi non neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi. Cras neque metus, consequat et blandit et, luctus a nunc. Etiam gravida vehicula tellus, in imperdiet ligula euismod eget.</p>', N'product-5.jpg', N'product-6.jpg', 3, 7, 0, 1, 0, NULL, NULL, 0, NULL)
INSERT [dbo].[Products] ([Id], [Title], [Price], [DiscountPrice], [Extax], [Code], [Seria], [Count], [Description], [MainImage], [SecondImage], [BrandId], [CategoryId], [IsBestSeller], [IsFeature], [IsNewArrivel], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (12, N'4-New Balance Fresh Foam LAZR v1 Sport eu accumsan massa facilisis', 60.0000, 0.0000, 7.0000, 1234, N'abcd', 2, N'<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla. <br> <br> Pellentesque aliquet, sem eget laoreet ultrices, ipsum metus feugiat sem, quis fermentum turpis eros eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate, sapien libero hendrerit est, sed commodo augue nisi non neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi. Cras neque metus, consequat et blandit et, luctus a nunc. Etiam gravida vehicula tellus, in imperdiet ligula euismod eget.</p>', N'product-7.jpg', N'product-8.jpg', 4, 6, 0, 1, 0, NULL, NULL, 0, NULL)
INSERT [dbo].[Products] ([Id], [Title], [Price], [DiscountPrice], [Extax], [Code], [Seria], [Count], [Description], [MainImage], [SecondImage], [BrandId], [CategoryId], [IsBestSeller], [IsFeature], [IsNewArrivel], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (13, N'5-New Balance Fresh Foam LAZR v1 Sport eu accumsan massa facilisis', 75.0000, 69.0000, 6.0000, 1234, N'abcd', 0, N'<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla. <br> <br> Pellentesque aliquet, sem eget laoreet ultrices, ipsum metus feugiat sem, quis fermentum turpis eros eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate, sapien libero hendrerit est, sed commodo augue nisi non neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi. Cras neque metus, consequat et blandit et, luctus a nunc. Etiam gravida vehicula tellus, in imperdiet ligula euismod eget.</p>', N'product-9.jpg', N'product-10.jpg', 1, 6, 0, 1, 0, NULL, NULL, 0, NULL)
INSERT [dbo].[Products] ([Id], [Title], [Price], [DiscountPrice], [Extax], [Code], [Seria], [Count], [Description], [MainImage], [SecondImage], [BrandId], [CategoryId], [IsBestSeller], [IsFeature], [IsNewArrivel], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (14, N'6-New Balance Fresh Foam LAZR v1 Sport eu accumsan massa facilisis', 30.0000, 0.0000, 2.0000, 1234, N'abcd', 0, N'<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla. <br> <br> Pellentesque aliquet, sem eget laoreet ultrices, ipsum metus feugiat sem, quis fermentum turpis eros eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate, sapien libero hendrerit est, sed commodo augue nisi non neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi. Cras neque metus, consequat et blandit et, luctus a nunc. Etiam gravida vehicula tellus, in imperdiet ligula euismod eget.</p>', N'product-11.jpg', N'product-12.jpg', 2, 7, 0, 1, 0, NULL, NULL, 0, NULL)
INSERT [dbo].[Products] ([Id], [Title], [Price], [DiscountPrice], [Extax], [Code], [Seria], [Count], [Description], [MainImage], [SecondImage], [BrandId], [CategoryId], [IsBestSeller], [IsFeature], [IsNewArrivel], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (15, N'7-New Balance Fresh Foam LAZR v1 Sport eu accumsan massa facilisis', 99.0000, 89.0000, 3.0000, 1234, N'abcd', 2, N'<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla. <br> <br> Pellentesque aliquet, sem eget laoreet ultrices, ipsum metus feugiat sem, quis fermentum turpis eros eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate, sapien libero hendrerit est, sed commodo augue nisi non neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi. Cras neque metus, consequat et blandit et, luctus a nunc. Etiam gravida vehicula tellus, in imperdiet ligula euismod eget.</p>', N'product-13.jpg', N'product-14.jpg', 3, 5, 0, 1, 0, NULL, NULL, 0, NULL)
INSERT [dbo].[Products] ([Id], [Title], [Price], [DiscountPrice], [Extax], [Code], [Seria], [Count], [Description], [MainImage], [SecondImage], [BrandId], [CategoryId], [IsBestSeller], [IsFeature], [IsNewArrivel], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (16, N'8-New Balance Fresh Foam LAZR v1 Sport eu accumsan massa facilisis', 150.0000, 139.0000, 3.0000, 1234, N'abcd', 2, N'<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla. <br> <br> Pellentesque aliquet, sem eget laoreet ultrices, ipsum metus feugiat sem, quis fermentum turpis eros eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate, sapien libero hendrerit est, sed commodo augue nisi non neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi. Cras neque metus, consequat et blandit et, luctus a nunc. Etiam gravida vehicula tellus, in imperdiet ligula euismod eget.</p>', N'product-14.jpg', N'product-16.jpg', 4, 5, 0, 1, 0, NULL, NULL, 0, NULL)
INSERT [dbo].[Products] ([Id], [Title], [Price], [DiscountPrice], [Extax], [Code], [Seria], [Count], [Description], [MainImage], [SecondImage], [BrandId], [CategoryId], [IsBestSeller], [IsFeature], [IsNewArrivel], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (17, N'1-New Balance Fresh Foam LAZR v1 Sport eu accumsan massa facilisis', 20.0000, 0.0000, 3.0000, 1234, N'abcd', 2, N'<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla. <br> <br> Pellentesque aliquet, sem eget laoreet ultrices, ipsum metus feugiat sem, quis fermentum turpis eros eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate, sapien libero hendrerit est, sed commodo augue nisi non neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi. Cras neque metus, consequat et blandit et, luctus a nunc. Etiam gravida vehicula tellus, in imperdiet ligula euismod eget.</p>', N'product-1.jpg', N'product-2.jpg', 1, 5, 1, 0, 0, NULL, NULL, 0, NULL)
INSERT [dbo].[Products] ([Id], [Title], [Price], [DiscountPrice], [Extax], [Code], [Seria], [Count], [Description], [MainImage], [SecondImage], [BrandId], [CategoryId], [IsBestSeller], [IsFeature], [IsNewArrivel], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (18, N'2-New Balance Fresh Foam LAZR v1 Sport eu accumsan massa facilisis', 23.0000, 21.0000, 4.0000, 1234, N'abcd', 2, N'<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla. <br> <br> Pellentesque aliquet, sem eget laoreet ultrices, ipsum metus feugiat sem, quis fermentum turpis eros eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate, sapien libero hendrerit est, sed commodo augue nisi non neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi. Cras neque metus, consequat et blandit et, luctus a nunc. Etiam gravida vehicula tellus, in imperdiet ligula euismod eget.</p>', N'product-3.jpg', N'product-4.jpg', 2, 6, 1, 0, 0, NULL, NULL, 0, NULL)
INSERT [dbo].[Products] ([Id], [Title], [Price], [DiscountPrice], [Extax], [Code], [Seria], [Count], [Description], [MainImage], [SecondImage], [BrandId], [CategoryId], [IsBestSeller], [IsFeature], [IsNewArrivel], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (19, N'3-New Balance Fresh Foam LAZR v1 Sport eu accumsan massa facilisis', 50.0000, 45.0000, 5.0000, 1234, N'abcd', 2, N'<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla. <br> <br> Pellentesque aliquet, sem eget laoreet ultrices, ipsum metus feugiat sem, quis fermentum turpis eros eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate, sapien libero hendrerit est, sed commodo augue nisi non neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi. Cras neque metus, consequat et blandit et, luctus a nunc. Etiam gravida vehicula tellus, in imperdiet ligula euismod eget.</p>', N'product-5.jpg', N'product-6.jpg', 3, 7, 1, 0, 0, NULL, NULL, 0, NULL)
INSERT [dbo].[Products] ([Id], [Title], [Price], [DiscountPrice], [Extax], [Code], [Seria], [Count], [Description], [MainImage], [SecondImage], [BrandId], [CategoryId], [IsBestSeller], [IsFeature], [IsNewArrivel], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (20, N'4-New Balance Fresh Foam LAZR v1 Sport eu accumsan massa facilisis', 60.0000, 0.0000, 7.0000, 1234, N'abcd', 2, N'<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla. <br> <br> Pellentesque aliquet, sem eget laoreet ultrices, ipsum metus feugiat sem, quis fermentum turpis eros eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate, sapien libero hendrerit est, sed commodo augue nisi non neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi. Cras neque metus, consequat et blandit et, luctus a nunc. Etiam gravida vehicula tellus, in imperdiet ligula euismod eget.</p>', N'product-7.jpg', N'product-8.jpg', 4, 6, 1, 0, 0, NULL, NULL, 0, NULL)
INSERT [dbo].[Products] ([Id], [Title], [Price], [DiscountPrice], [Extax], [Code], [Seria], [Count], [Description], [MainImage], [SecondImage], [BrandId], [CategoryId], [IsBestSeller], [IsFeature], [IsNewArrivel], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (21, N'5-New Balance Fresh Foam LAZR v1 Sport eu accumsan massa facilisis', 75.0000, 69.0000, 6.0000, 1234, N'abcd', 0, N'<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla. <br> <br> Pellentesque aliquet, sem eget laoreet ultrices, ipsum metus feugiat sem, quis fermentum turpis eros eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate, sapien libero hendrerit est, sed commodo augue nisi non neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi. Cras neque metus, consequat et blandit et, luctus a nunc. Etiam gravida vehicula tellus, in imperdiet ligula euismod eget.</p>', N'product-9.jpg', N'product-10.jpg', 1, 6, 1, 0, 0, NULL, NULL, 0, NULL)
INSERT [dbo].[Products] ([Id], [Title], [Price], [DiscountPrice], [Extax], [Code], [Seria], [Count], [Description], [MainImage], [SecondImage], [BrandId], [CategoryId], [IsBestSeller], [IsFeature], [IsNewArrivel], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (22, N'6-New Balance Fresh Foam LAZR v1 Sport eu accumsan massa facilisis', 30.0000, 0.0000, 2.0000, 1234, N'abcd', 0, N'<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla. <br> <br> Pellentesque aliquet, sem eget laoreet ultrices, ipsum metus feugiat sem, quis fermentum turpis eros eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate, sapien libero hendrerit est, sed commodo augue nisi non neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi. Cras neque metus, consequat et blandit et, luctus a nunc. Etiam gravida vehicula tellus, in imperdiet ligula euismod eget.</p>', N'product-11.jpg', N'product-12.jpg', 2, 7, 1, 0, 0, NULL, NULL, 0, NULL)
INSERT [dbo].[Products] ([Id], [Title], [Price], [DiscountPrice], [Extax], [Code], [Seria], [Count], [Description], [MainImage], [SecondImage], [BrandId], [CategoryId], [IsBestSeller], [IsFeature], [IsNewArrivel], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (23, N'7-New Balance Fresh Foam LAZR v1 Sport eu accumsan massa facilisis', 99.0000, 89.0000, 3.0000, 1234, N'abcd', 2, N'<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla. <br> <br> Pellentesque aliquet, sem eget laoreet ultrices, ipsum metus feugiat sem, quis fermentum turpis eros eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate, sapien libero hendrerit est, sed commodo augue nisi non neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi. Cras neque metus, consequat et blandit et, luctus a nunc. Etiam gravida vehicula tellus, in imperdiet ligula euismod eget.</p>', N'product-13.jpg', N'product-14.jpg', 3, 5, 1, 0, 0, NULL, NULL, 0, NULL)
INSERT [dbo].[Products] ([Id], [Title], [Price], [DiscountPrice], [Extax], [Code], [Seria], [Count], [Description], [MainImage], [SecondImage], [BrandId], [CategoryId], [IsBestSeller], [IsFeature], [IsNewArrivel], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (24, N'8-New Balance Fresh Foam LAZR v1 Sport eu accumsan massa facilisis', 150.0000, 139.0000, 3.0000, 1234, N'abcd', 2, N'<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla. <br> <br> Pellentesque aliquet, sem eget laoreet ultrices, ipsum metus feugiat sem, quis fermentum turpis eros eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate, sapien libero hendrerit est, sed commodo augue nisi non neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi. Cras neque metus, consequat et blandit et, luctus a nunc. Etiam gravida vehicula tellus, in imperdiet ligula euismod eget.</p>', N'product-14.jpg', N'product-16.jpg', 4, 5, 1, 0, 0, NULL, NULL, 0, NULL)
INSERT [dbo].[Products] ([Id], [Title], [Price], [DiscountPrice], [Extax], [Code], [Seria], [Count], [Description], [MainImage], [SecondImage], [BrandId], [CategoryId], [IsBestSeller], [IsFeature], [IsNewArrivel], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (25, N'1-New Balance Fresh Foam LAZR v1 Sport eu accumsan massa facilisis', 20.0000, 0.0000, 3.0000, 1234, N'abcd', 2, N'<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla. <br> <br> Pellentesque aliquet, sem eget laoreet ultrices, ipsum metus feugiat sem, quis fermentum turpis eros eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate, sapien libero hendrerit est, sed commodo augue nisi non neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi. Cras neque metus, consequat et blandit et, luctus a nunc. Etiam gravida vehicula tellus, in imperdiet ligula euismod eget.</p>', N'product-1.jpg', N'product-2.jpg', 1, 5, 0, 1, 0, NULL, NULL, 0, NULL)
INSERT [dbo].[Products] ([Id], [Title], [Price], [DiscountPrice], [Extax], [Code], [Seria], [Count], [Description], [MainImage], [SecondImage], [BrandId], [CategoryId], [IsBestSeller], [IsFeature], [IsNewArrivel], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (26, N'2-New Balance Fresh Foam LAZR v1 Sport eu accumsan massa facilisis', 23.0000, 21.0000, 4.0000, 1234, N'abcd', 2, N'<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla. <br> <br> Pellentesque aliquet, sem eget laoreet ultrices, ipsum metus feugiat sem, quis fermentum turpis eros eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate, sapien libero hendrerit est, sed commodo augue nisi non neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi. Cras neque metus, consequat et blandit et, luctus a nunc. Etiam gravida vehicula tellus, in imperdiet ligula euismod eget.</p>', N'product-3.jpg', N'product-4.jpg', 2, 6, 0, 1, 0, NULL, NULL, 0, NULL)
INSERT [dbo].[Products] ([Id], [Title], [Price], [DiscountPrice], [Extax], [Code], [Seria], [Count], [Description], [MainImage], [SecondImage], [BrandId], [CategoryId], [IsBestSeller], [IsFeature], [IsNewArrivel], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (27, N'3-New Balance Fresh Foam LAZR v1 Sport eu accumsan massa facilisis', 50.0000, 45.0000, 5.0000, 1234, N'abcd', 2, N'<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla. <br> <br> Pellentesque aliquet, sem eget laoreet ultrices, ipsum metus feugiat sem, quis fermentum turpis eros eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate, sapien libero hendrerit est, sed commodo augue nisi non neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi. Cras neque metus, consequat et blandit et, luctus a nunc. Etiam gravida vehicula tellus, in imperdiet ligula euismod eget.</p>', N'product-5.jpg', N'product-6.jpg', 3, 7, 0, 1, 0, NULL, NULL, 0, NULL)
INSERT [dbo].[Products] ([Id], [Title], [Price], [DiscountPrice], [Extax], [Code], [Seria], [Count], [Description], [MainImage], [SecondImage], [BrandId], [CategoryId], [IsBestSeller], [IsFeature], [IsNewArrivel], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (28, N'4-New Balance Fresh Foam LAZR v1 Sport eu accumsan massa facilisis', 60.0000, 0.0000, 7.0000, 1234, N'abcd', 2, N'<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla. <br> <br> Pellentesque aliquet, sem eget laoreet ultrices, ipsum metus feugiat sem, quis fermentum turpis eros eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate, sapien libero hendrerit est, sed commodo augue nisi non neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi. Cras neque metus, consequat et blandit et, luctus a nunc. Etiam gravida vehicula tellus, in imperdiet ligula euismod eget.</p>', N'product-7.jpg', N'product-8.jpg', 4, 6, 0, 0, 1, NULL, NULL, 0, NULL)
INSERT [dbo].[Products] ([Id], [Title], [Price], [DiscountPrice], [Extax], [Code], [Seria], [Count], [Description], [MainImage], [SecondImage], [BrandId], [CategoryId], [IsBestSeller], [IsFeature], [IsNewArrivel], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (29, N'5-New Balance Fresh Foam LAZR v1 Sport eu accumsan massa facilisis', 75.0000, 69.0000, 6.0000, 1234, N'abcd', 0, N'<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla. <br> <br> Pellentesque aliquet, sem eget laoreet ultrices, ipsum metus feugiat sem, quis fermentum turpis eros eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate, sapien libero hendrerit est, sed commodo augue nisi non neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi. Cras neque metus, consequat et blandit et, luctus a nunc. Etiam gravida vehicula tellus, in imperdiet ligula euismod eget.</p>', N'product-9.jpg', N'product-10.jpg', 1, 6, 0, 0, 1, NULL, NULL, 0, NULL)
INSERT [dbo].[Products] ([Id], [Title], [Price], [DiscountPrice], [Extax], [Code], [Seria], [Count], [Description], [MainImage], [SecondImage], [BrandId], [CategoryId], [IsBestSeller], [IsFeature], [IsNewArrivel], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (30, N'6-New Balance Fresh Foam LAZR v1 Sport eu accumsan massa facilisis', 30.0000, 0.0000, 2.0000, 1234, N'abcd', 0, N'<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla. <br> <br> Pellentesque aliquet, sem eget laoreet ultrices, ipsum metus feugiat sem, quis fermentum turpis eros eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate, sapien libero hendrerit est, sed commodo augue nisi non neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi. Cras neque metus, consequat et blandit et, luctus a nunc. Etiam gravida vehicula tellus, in imperdiet ligula euismod eget.</p>', N'product-11.jpg', N'product-12.jpg', 2, 7, 0, 0, 1, NULL, NULL, 0, NULL)
INSERT [dbo].[Products] ([Id], [Title], [Price], [DiscountPrice], [Extax], [Code], [Seria], [Count], [Description], [MainImage], [SecondImage], [BrandId], [CategoryId], [IsBestSeller], [IsFeature], [IsNewArrivel], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (31, N'7-New Balance Fresh Foam LAZR v1 Sport eu accumsan massa facilisis', 99.0000, 89.0000, 3.0000, 1234, N'abcd', 2, N'<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla. <br> <br> Pellentesque aliquet, sem eget laoreet ultrices, ipsum metus feugiat sem, quis fermentum turpis eros eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate, sapien libero hendrerit est, sed commodo augue nisi non neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi. Cras neque metus, consequat et blandit et, luctus a nunc. Etiam gravida vehicula tellus, in imperdiet ligula euismod eget.</p>', N'product-13.jpg', N'product-14.jpg', 3, 5, 0, 0, 1, NULL, NULL, 0, NULL)
INSERT [dbo].[Products] ([Id], [Title], [Price], [DiscountPrice], [Extax], [Code], [Seria], [Count], [Description], [MainImage], [SecondImage], [BrandId], [CategoryId], [IsBestSeller], [IsFeature], [IsNewArrivel], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (32, N'8-New Balance Fresh Foam LAZR v1 Sport eu accumsan massa facilisis', 150.0000, 139.0000, 3.0000, 1234, N'abcd', 2, N'<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla. <br> <br> Pellentesque aliquet, sem eget laoreet ultrices, ipsum metus feugiat sem, quis fermentum turpis eros eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate, sapien libero hendrerit est, sed commodo augue nisi non neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi. Cras neque metus, consequat et blandit et, luctus a nunc. Etiam gravida vehicula tellus, in imperdiet ligula euismod eget.</p>', N'product-14.jpg', N'product-16.jpg', 4, 5, 0, 0, 1, NULL, NULL, 0, NULL)
INSERT [dbo].[Products] ([Id], [Title], [Price], [DiscountPrice], [Extax], [Code], [Seria], [Count], [Description], [MainImage], [SecondImage], [BrandId], [CategoryId], [IsBestSeller], [IsFeature], [IsNewArrivel], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (34, N'1-New Balance Fresh Foam LAZR v1 Sport eu accumsan massa facilisis', 20.0000, 0.0000, 3.0000, 1234, N'abcd', 2, N'<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla. <br> <br> Pellentesque aliquet, sem eget laoreet ultrices, ipsum metus feugiat sem, quis fermentum turpis eros eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate, sapien libero hendrerit est, sed commodo augue nisi non neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi. Cras neque metus, consequat et blandit et, luctus a nunc. Etiam gravida vehicula tellus, in imperdiet ligula euismod eget.</p>', N'product-1.jpg', N'product-2.jpg', 1, 5, 0, 0, 1, NULL, NULL, 0, NULL)
INSERT [dbo].[Products] ([Id], [Title], [Price], [DiscountPrice], [Extax], [Code], [Seria], [Count], [Description], [MainImage], [SecondImage], [BrandId], [CategoryId], [IsBestSeller], [IsFeature], [IsNewArrivel], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (35, N'2-New Balance Fresh Foam LAZR v1 Sport eu accumsan massa facilisis', 23.0000, 21.0000, 4.0000, 1234, N'abcd', 2, N'<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla. <br> <br> Pellentesque aliquet, sem eget laoreet ultrices, ipsum metus feugiat sem, quis fermentum turpis eros eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate, sapien libero hendrerit est, sed commodo augue nisi non neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi. Cras neque metus, consequat et blandit et, luctus a nunc. Etiam gravida vehicula tellus, in imperdiet ligula euismod eget.</p>', N'product-3.jpg', N'product-4.jpg', 2, 6, 0, 0, 1, NULL, NULL, 0, NULL)
INSERT [dbo].[Products] ([Id], [Title], [Price], [DiscountPrice], [Extax], [Code], [Seria], [Count], [Description], [MainImage], [SecondImage], [BrandId], [CategoryId], [IsBestSeller], [IsFeature], [IsNewArrivel], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (36, N'3-New Balance Fresh Foam LAZR v1 Sport eu accumsan massa facilisis', 50.0000, 45.0000, 5.0000, 1234, N'abcd', 2, N'<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla. <br> <br> Pellentesque aliquet, sem eget laoreet ultrices, ipsum metus feugiat sem, quis fermentum turpis eros eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate, sapien libero hendrerit est, sed commodo augue nisi non neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi. Cras neque metus, consequat et blandit et, luctus a nunc. Etiam gravida vehicula tellus, in imperdiet ligula euismod eget.</p>', N'product-5.jpg', N'product-6.jpg', 3, 7, 0, 0, 1, NULL, NULL, 0, NULL)
INSERT [dbo].[Products] ([Id], [Title], [Price], [DiscountPrice], [Extax], [Code], [Seria], [Count], [Description], [MainImage], [SecondImage], [BrandId], [CategoryId], [IsBestSeller], [IsFeature], [IsNewArrivel], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (37, N'4-New Balance Fresh Foam LAZR v1 Sport eu accumsan massa facilisis', 60.0000, 0.0000, 7.0000, 1234, N'abcd', 2, N'<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla. <br> <br> Pellentesque aliquet, sem eget laoreet ultrices, ipsum metus feugiat sem, quis fermentum turpis eros eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate, sapien libero hendrerit est, sed commodo augue nisi non neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi. Cras neque metus, consequat et blandit et, luctus a nunc. Etiam gravida vehicula tellus, in imperdiet ligula euismod eget.</p>', N'product-7.jpg', N'product-8.jpg', 4, 6, 0, 0, 1, NULL, NULL, 0, NULL)
INSERT [dbo].[Products] ([Id], [Title], [Price], [DiscountPrice], [Extax], [Code], [Seria], [Count], [Description], [MainImage], [SecondImage], [BrandId], [CategoryId], [IsBestSeller], [IsFeature], [IsNewArrivel], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (38, N'5-New Balance Fresh Foam LAZR v1 Sport eu accumsan massa facilisis', 75.0000, 69.0000, 6.0000, 1234, N'abcd', 0, N'<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla. <br> <br> Pellentesque aliquet, sem eget laoreet ultrices, ipsum metus feugiat sem, quis fermentum turpis eros eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate, sapien libero hendrerit est, sed commodo augue nisi non neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi. Cras neque metus, consequat et blandit et, luctus a nunc. Etiam gravida vehicula tellus, in imperdiet ligula euismod eget.</p>', N'product-9.jpg', N'product-10.jpg', 1, 6, 0, 0, 1, NULL, NULL, 0, NULL)
INSERT [dbo].[Products] ([Id], [Title], [Price], [DiscountPrice], [Extax], [Code], [Seria], [Count], [Description], [MainImage], [SecondImage], [BrandId], [CategoryId], [IsBestSeller], [IsFeature], [IsNewArrivel], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (39, N'6-New Balance Fresh Foam LAZR v1 Sport eu accumsan massa facilisis', 30.0000, 0.0000, 2.0000, 1234, N'abcd', 0, N'<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla. <br> <br> Pellentesque aliquet, sem eget laoreet ultrices, ipsum metus feugiat sem, quis fermentum turpis eros eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate, sapien libero hendrerit est, sed commodo augue nisi non neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi. Cras neque metus, consequat et blandit et, luctus a nunc. Etiam gravida vehicula tellus, in imperdiet ligula euismod eget.</p>', N'product-11.jpg', N'product-12.jpg', 2, 7, 0, 0, 1, NULL, NULL, 0, NULL)
INSERT [dbo].[Products] ([Id], [Title], [Price], [DiscountPrice], [Extax], [Code], [Seria], [Count], [Description], [MainImage], [SecondImage], [BrandId], [CategoryId], [IsBestSeller], [IsFeature], [IsNewArrivel], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (40, N'7-New Balance Fresh Foam LAZR v1 Sport eu accumsan massa facilisis', 99.0000, 89.0000, 3.0000, 1234, N'abcd', 2, N'<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla. <br> <br> Pellentesque aliquet, sem eget laoreet ultrices, ipsum metus feugiat sem, quis fermentum turpis eros eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate, sapien libero hendrerit est, sed commodo augue nisi non neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi. Cras neque metus, consequat et blandit et, luctus a nunc. Etiam gravida vehicula tellus, in imperdiet ligula euismod eget.</p>', N'product-13.jpg', N'product-14.jpg', 3, 5, 0, 0, 1, NULL, NULL, 0, NULL)
INSERT [dbo].[Products] ([Id], [Title], [Price], [DiscountPrice], [Extax], [Code], [Seria], [Count], [Description], [MainImage], [SecondImage], [BrandId], [CategoryId], [IsBestSeller], [IsFeature], [IsNewArrivel], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (41, N'8-New Balance Fresh Foam LAZR v1 Sport eu accumsan massa facilisis', 150.0000, 139.0000, 3.0000, 1234, N'abcd', 2, N'<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla. <br> <br> Pellentesque aliquet, sem eget laoreet ultrices, ipsum metus feugiat sem, quis fermentum turpis eros eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate, sapien libero hendrerit est, sed commodo augue nisi non neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi. Cras neque metus, consequat et blandit et, luctus a nunc. Etiam gravida vehicula tellus, in imperdiet ligula euismod eget.</p>', N'product-14.jpg', N'product-16.jpg', 4, 5, 0, 0, 1, NULL, NULL, 0, NULL)
INSERT [dbo].[Products] ([Id], [Title], [Price], [DiscountPrice], [Extax], [Code], [Seria], [Count], [Description], [MainImage], [SecondImage], [BrandId], [CategoryId], [IsBestSeller], [IsFeature], [IsNewArrivel], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (42, N'1-New Balance Fresh Foam LAZR v1 Sport eu accumsan massa facilisis', 20.0000, 0.0000, 3.0000, 1234, N'abcd', 2, N'<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla. <br> <br> Pellentesque aliquet, sem eget laoreet ultrices, ipsum metus feugiat sem, quis fermentum turpis eros eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate, sapien libero hendrerit est, sed commodo augue nisi non neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi. Cras neque metus, consequat et blandit et, luctus a nunc. Etiam gravida vehicula tellus, in imperdiet ligula euismod eget.</p>', N'product-1.jpg', N'product-2.jpg', 1, 5, 0, 1, 0, NULL, NULL, 0, NULL)
INSERT [dbo].[Products] ([Id], [Title], [Price], [DiscountPrice], [Extax], [Code], [Seria], [Count], [Description], [MainImage], [SecondImage], [BrandId], [CategoryId], [IsBestSeller], [IsFeature], [IsNewArrivel], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (43, N'2-New Balance Fresh Foam LAZR v1 Sport eu accumsan massa facilisis', 23.0000, 21.0000, 4.0000, 1234, N'abcd', 2, N'<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla. <br> <br> Pellentesque aliquet, sem eget laoreet ultrices, ipsum metus feugiat sem, quis fermentum turpis eros eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate, sapien libero hendrerit est, sed commodo augue nisi non neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi. Cras neque metus, consequat et blandit et, luctus a nunc. Etiam gravida vehicula tellus, in imperdiet ligula euismod eget.</p>', N'product-3.jpg', N'product-4.jpg', 2, 6, 0, 1, 0, NULL, NULL, 0, NULL)
INSERT [dbo].[Products] ([Id], [Title], [Price], [DiscountPrice], [Extax], [Code], [Seria], [Count], [Description], [MainImage], [SecondImage], [BrandId], [CategoryId], [IsBestSeller], [IsFeature], [IsNewArrivel], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (44, N'3-New Balance Fresh Foam LAZR v1 Sport eu accumsan massa facilisis', 50.0000, 45.0000, 5.0000, 1234, N'abcd', 2, N'<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla. <br> <br> Pellentesque aliquet, sem eget laoreet ultrices, ipsum metus feugiat sem, quis fermentum turpis eros eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate, sapien libero hendrerit est, sed commodo augue nisi non neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi. Cras neque metus, consequat et blandit et, luctus a nunc. Etiam gravida vehicula tellus, in imperdiet ligula euismod eget.</p>', N'product-5.jpg', N'product-6.jpg', 3, 7, 0, 1, 0, NULL, NULL, 0, NULL)
INSERT [dbo].[Products] ([Id], [Title], [Price], [DiscountPrice], [Extax], [Code], [Seria], [Count], [Description], [MainImage], [SecondImage], [BrandId], [CategoryId], [IsBestSeller], [IsFeature], [IsNewArrivel], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (45, N'4-New Balance Fresh Foam LAZR v1 Sport eu accumsan massa facilisis', 60.0000, 0.0000, 7.0000, 1234, N'abcd', 2, N'<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla. <br> <br> Pellentesque aliquet, sem eget laoreet ultrices, ipsum metus feugiat sem, quis fermentum turpis eros eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate, sapien libero hendrerit est, sed commodo augue nisi non neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi. Cras neque metus, consequat et blandit et, luctus a nunc. Etiam gravida vehicula tellus, in imperdiet ligula euismod eget.</p>', N'product-7.jpg', N'product-8.jpg', 4, 6, 0, 1, 0, NULL, NULL, 0, NULL)
INSERT [dbo].[Products] ([Id], [Title], [Price], [DiscountPrice], [Extax], [Code], [Seria], [Count], [Description], [MainImage], [SecondImage], [BrandId], [CategoryId], [IsBestSeller], [IsFeature], [IsNewArrivel], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (46, N'5-New Balance Fresh Foam LAZR v1 Sport eu accumsan massa facilisis', 75.0000, 69.0000, 6.0000, 1234, N'abcd', 0, N'<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla. <br> <br> Pellentesque aliquet, sem eget laoreet ultrices, ipsum metus feugiat sem, quis fermentum turpis eros eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate, sapien libero hendrerit est, sed commodo augue nisi non neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi. Cras neque metus, consequat et blandit et, luctus a nunc. Etiam gravida vehicula tellus, in imperdiet ligula euismod eget.</p>', N'product-9.jpg', N'product-10.jpg', 1, 6, 0, 1, 0, NULL, NULL, 0, NULL)
INSERT [dbo].[Products] ([Id], [Title], [Price], [DiscountPrice], [Extax], [Code], [Seria], [Count], [Description], [MainImage], [SecondImage], [BrandId], [CategoryId], [IsBestSeller], [IsFeature], [IsNewArrivel], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (47, N'6-New Balance Fresh Foam LAZR v1 Sport eu accumsan massa facilisis', 30.0000, 0.0000, 2.0000, 1234, N'abcd', 0, N'<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla. <br> <br> Pellentesque aliquet, sem eget laoreet ultrices, ipsum metus feugiat sem, quis fermentum turpis eros eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate, sapien libero hendrerit est, sed commodo augue nisi non neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi. Cras neque metus, consequat et blandit et, luctus a nunc. Etiam gravida vehicula tellus, in imperdiet ligula euismod eget.</p>', N'product-11.jpg', N'product-12.jpg', 2, 7, 0, 1, 0, NULL, NULL, 0, NULL)
INSERT [dbo].[Products] ([Id], [Title], [Price], [DiscountPrice], [Extax], [Code], [Seria], [Count], [Description], [MainImage], [SecondImage], [BrandId], [CategoryId], [IsBestSeller], [IsFeature], [IsNewArrivel], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (48, N'7-New Balance Fresh Foam LAZR v1 Sport eu accumsan massa facilisis', 99.0000, 89.0000, 3.0000, 1234, N'abcd', 2, N'<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla. <br> <br> Pellentesque aliquet, sem eget laoreet ultrices, ipsum metus feugiat sem, quis fermentum turpis eros eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate, sapien libero hendrerit est, sed commodo augue nisi non neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi. Cras neque metus, consequat et blandit et, luctus a nunc. Etiam gravida vehicula tellus, in imperdiet ligula euismod eget.</p>', N'product-13.jpg', N'product-14.jpg', 3, 5, 0, 1, 0, NULL, NULL, 0, NULL)
INSERT [dbo].[Products] ([Id], [Title], [Price], [DiscountPrice], [Extax], [Code], [Seria], [Count], [Description], [MainImage], [SecondImage], [BrandId], [CategoryId], [IsBestSeller], [IsFeature], [IsNewArrivel], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (49, N'8-New Balance Fresh Foam LAZR v1 Sport eu accumsan massa facilisis', 150.0000, 139.0000, 3.0000, 1234, N'abcd', 2, N'<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla. <br> <br> Pellentesque aliquet, sem eget laoreet ultrices, ipsum metus feugiat sem, quis fermentum turpis eros eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate, sapien libero hendrerit est, sed commodo augue nisi non neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi. Cras neque metus, consequat et blandit et, luctus a nunc. Etiam gravida vehicula tellus, in imperdiet ligula euismod eget.</p>', N'product-14.jpg', N'product-16.jpg', 4, 5, 0, 1, 0, NULL, NULL, 0, NULL)
INSERT [dbo].[Products] ([Id], [Title], [Price], [DiscountPrice], [Extax], [Code], [Seria], [Count], [Description], [MainImage], [SecondImage], [BrandId], [CategoryId], [IsBestSeller], [IsFeature], [IsNewArrivel], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (50, N'1-New Balance Fresh Foam LAZR v1 Sport eu accumsan massa facilisis', 20.0000, 0.0000, 3.0000, 1234, N'abcd', 2, N'<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla. <br> <br> Pellentesque aliquet, sem eget laoreet ultrices, ipsum metus feugiat sem, quis fermentum turpis eros eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate, sapien libero hendrerit est, sed commodo augue nisi non neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi. Cras neque metus, consequat et blandit et, luctus a nunc. Etiam gravida vehicula tellus, in imperdiet ligula euismod eget.</p>', N'product-1.jpg', N'product-2.jpg', 1, 5, 1, 0, 0, NULL, NULL, 0, NULL)
INSERT [dbo].[Products] ([Id], [Title], [Price], [DiscountPrice], [Extax], [Code], [Seria], [Count], [Description], [MainImage], [SecondImage], [BrandId], [CategoryId], [IsBestSeller], [IsFeature], [IsNewArrivel], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (51, N'2-New Balance Fresh Foam LAZR v1 Sport eu accumsan massa facilisis', 23.0000, 21.0000, 4.0000, 1234, N'abcd', 2, N'<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla. <br> <br> Pellentesque aliquet, sem eget laoreet ultrices, ipsum metus feugiat sem, quis fermentum turpis eros eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate, sapien libero hendrerit est, sed commodo augue nisi non neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi. Cras neque metus, consequat et blandit et, luctus a nunc. Etiam gravida vehicula tellus, in imperdiet ligula euismod eget.</p>', N'product-3.jpg', N'product-4.jpg', 2, 6, 1, 0, 0, NULL, NULL, 0, NULL)
INSERT [dbo].[Products] ([Id], [Title], [Price], [DiscountPrice], [Extax], [Code], [Seria], [Count], [Description], [MainImage], [SecondImage], [BrandId], [CategoryId], [IsBestSeller], [IsFeature], [IsNewArrivel], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (52, N'3-New Balance Fresh Foam LAZR v1 Sport eu accumsan massa facilisis', 50.0000, 45.0000, 5.0000, 1234, N'abcd', 2, N'<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla. <br> <br> Pellentesque aliquet, sem eget laoreet ultrices, ipsum metus feugiat sem, quis fermentum turpis eros eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate, sapien libero hendrerit est, sed commodo augue nisi non neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi. Cras neque metus, consequat et blandit et, luctus a nunc. Etiam gravida vehicula tellus, in imperdiet ligula euismod eget.</p>', N'product-5.jpg', N'product-6.jpg', 3, 7, 1, 0, 0, NULL, NULL, 0, NULL)
INSERT [dbo].[Products] ([Id], [Title], [Price], [DiscountPrice], [Extax], [Code], [Seria], [Count], [Description], [MainImage], [SecondImage], [BrandId], [CategoryId], [IsBestSeller], [IsFeature], [IsNewArrivel], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (53, N'4-New Balance Fresh Foam LAZR v1 Sport eu accumsan massa facilisis', 60.0000, 0.0000, 7.0000, 1234, N'abcd', 2, N'<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla. <br> <br> Pellentesque aliquet, sem eget laoreet ultrices, ipsum metus feugiat sem, quis fermentum turpis eros eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate, sapien libero hendrerit est, sed commodo augue nisi non neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi. Cras neque metus, consequat et blandit et, luctus a nunc. Etiam gravida vehicula tellus, in imperdiet ligula euismod eget.</p>', N'product-7.jpg', N'product-8.jpg', 4, 6, 1, 0, 0, NULL, NULL, 0, NULL)
INSERT [dbo].[Products] ([Id], [Title], [Price], [DiscountPrice], [Extax], [Code], [Seria], [Count], [Description], [MainImage], [SecondImage], [BrandId], [CategoryId], [IsBestSeller], [IsFeature], [IsNewArrivel], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (54, N'5-New Balance Fresh Foam LAZR v1 Sport eu accumsan massa facilisis', 75.0000, 69.0000, 6.0000, 1234, N'abcd', 0, N'<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla. <br> <br> Pellentesque aliquet, sem eget laoreet ultrices, ipsum metus feugiat sem, quis fermentum turpis eros eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate, sapien libero hendrerit est, sed commodo augue nisi non neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi. Cras neque metus, consequat et blandit et, luctus a nunc. Etiam gravida vehicula tellus, in imperdiet ligula euismod eget.</p>', N'product-9.jpg', N'product-10.jpg', 1, 6, 1, 0, 0, NULL, NULL, 0, NULL)
INSERT [dbo].[Products] ([Id], [Title], [Price], [DiscountPrice], [Extax], [Code], [Seria], [Count], [Description], [MainImage], [SecondImage], [BrandId], [CategoryId], [IsBestSeller], [IsFeature], [IsNewArrivel], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (55, N'6-New Balance Fresh Foam LAZR v1 Sport eu accumsan massa facilisis', 30.0000, 0.0000, 2.0000, 1234, N'abcd', 0, N'<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla. <br> <br> Pellentesque aliquet, sem eget laoreet ultrices, ipsum metus feugiat sem, quis fermentum turpis eros eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate, sapien libero hendrerit est, sed commodo augue nisi non neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi. Cras neque metus, consequat et blandit et, luctus a nunc. Etiam gravida vehicula tellus, in imperdiet ligula euismod eget.</p>', N'product-11.jpg', N'product-12.jpg', 2, 7, 1, 0, 0, NULL, NULL, 0, NULL)
INSERT [dbo].[Products] ([Id], [Title], [Price], [DiscountPrice], [Extax], [Code], [Seria], [Count], [Description], [MainImage], [SecondImage], [BrandId], [CategoryId], [IsBestSeller], [IsFeature], [IsNewArrivel], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (56, N'7-New Balance Fresh Foam LAZR v1 Sport eu accumsan massa facilisis', 99.0000, 89.0000, 3.0000, 1234, N'abcd', 2, N'<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla. <br> <br> Pellentesque aliquet, sem eget laoreet ultrices, ipsum metus feugiat sem, quis fermentum turpis eros eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate, sapien libero hendrerit est, sed commodo augue nisi non neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi. Cras neque metus, consequat et blandit et, luctus a nunc. Etiam gravida vehicula tellus, in imperdiet ligula euismod eget.</p>', N'product-13.jpg', N'product-14.jpg', 3, 5, 1, 0, 0, NULL, NULL, 0, NULL)
INSERT [dbo].[Products] ([Id], [Title], [Price], [DiscountPrice], [Extax], [Code], [Seria], [Count], [Description], [MainImage], [SecondImage], [BrandId], [CategoryId], [IsBestSeller], [IsFeature], [IsNewArrivel], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (57, N'8-New Balance Fresh Foam LAZR v1 Sport eu accumsan massa facilisis', 150.0000, 139.0000, 3.0000, 1234, N'abcd', 2, N'<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla. <br> <br> Pellentesque aliquet, sem eget laoreet ultrices, ipsum metus feugiat sem, quis fermentum turpis eros eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate, sapien libero hendrerit est, sed commodo augue nisi non neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi. Cras neque metus, consequat et blandit et, luctus a nunc. Etiam gravida vehicula tellus, in imperdiet ligula euismod eget.</p>', N'product-14.jpg', N'product-16.jpg', 4, 5, 1, 0, 0, NULL, NULL, 0, NULL)
INSERT [dbo].[Products] ([Id], [Title], [Price], [DiscountPrice], [Extax], [Code], [Seria], [Count], [Description], [MainImage], [SecondImage], [BrandId], [CategoryId], [IsBestSeller], [IsFeature], [IsNewArrivel], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (58, N'1-New Balance Fresh Foam LAZR v1 Sport eu accumsan massa facilisis', 20.0000, 0.0000, 3.0000, 1234, N'abcd', 2, N'<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla. <br> <br> Pellentesque aliquet, sem eget laoreet ultrices, ipsum metus feugiat sem, quis fermentum turpis eros eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate, sapien libero hendrerit est, sed commodo augue nisi non neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi. Cras neque metus, consequat et blandit et, luctus a nunc. Etiam gravida vehicula tellus, in imperdiet ligula euismod eget.</p>', N'product-1.jpg', N'product-2.jpg', 1, 5, 0, 1, 0, NULL, NULL, 0, NULL)
INSERT [dbo].[Products] ([Id], [Title], [Price], [DiscountPrice], [Extax], [Code], [Seria], [Count], [Description], [MainImage], [SecondImage], [BrandId], [CategoryId], [IsBestSeller], [IsFeature], [IsNewArrivel], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (59, N'2-New Balance Fresh Foam LAZR v1 Sport eu accumsan massa facilisis', 23.0000, 21.0000, 4.0000, 1234, N'abcd', 2, N'<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla. <br> <br> Pellentesque aliquet, sem eget laoreet ultrices, ipsum metus feugiat sem, quis fermentum turpis eros eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate, sapien libero hendrerit est, sed commodo augue nisi non neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi. Cras neque metus, consequat et blandit et, luctus a nunc. Etiam gravida vehicula tellus, in imperdiet ligula euismod eget.</p>', N'product-3.jpg', N'product-4.jpg', 2, 6, 0, 1, 0, NULL, NULL, 0, NULL)
INSERT [dbo].[Products] ([Id], [Title], [Price], [DiscountPrice], [Extax], [Code], [Seria], [Count], [Description], [MainImage], [SecondImage], [BrandId], [CategoryId], [IsBestSeller], [IsFeature], [IsNewArrivel], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (60, N'3-New Balance Fresh Foam LAZR v1 Sport eu accumsan massa facilisis', 50.0000, 45.0000, 5.0000, 1234, N'abcd', 2, N'<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla. <br> <br> Pellentesque aliquet, sem eget laoreet ultrices, ipsum metus feugiat sem, quis fermentum turpis eros eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate, sapien libero hendrerit est, sed commodo augue nisi non neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi. Cras neque metus, consequat et blandit et, luctus a nunc. Etiam gravida vehicula tellus, in imperdiet ligula euismod eget.</p>', N'product-5.jpg', N'product-6.jpg', 3, 7, 0, 1, 0, NULL, NULL, 0, NULL)
INSERT [dbo].[Products] ([Id], [Title], [Price], [DiscountPrice], [Extax], [Code], [Seria], [Count], [Description], [MainImage], [SecondImage], [BrandId], [CategoryId], [IsBestSeller], [IsFeature], [IsNewArrivel], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (61, N'4-New Balance Fresh Foam LAZR v1 Sport eu accumsan massa facilisis', 60.0000, 0.0000, 7.0000, 1234, N'abcd', 2, N'<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla. <br> <br> Pellentesque aliquet, sem eget laoreet ultrices, ipsum metus feugiat sem, quis fermentum turpis eros eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate, sapien libero hendrerit est, sed commodo augue nisi non neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi. Cras neque metus, consequat et blandit et, luctus a nunc. Etiam gravida vehicula tellus, in imperdiet ligula euismod eget.</p>', N'product-7.jpg', N'product-8.jpg', 4, 6, 0, 0, 1, NULL, NULL, 0, NULL)
INSERT [dbo].[Products] ([Id], [Title], [Price], [DiscountPrice], [Extax], [Code], [Seria], [Count], [Description], [MainImage], [SecondImage], [BrandId], [CategoryId], [IsBestSeller], [IsFeature], [IsNewArrivel], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (62, N'5-New Balance Fresh Foam LAZR v1 Sport eu accumsan massa facilisis', 75.0000, 69.0000, 6.0000, 1234, N'abcd', 0, N'<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla. <br> <br> Pellentesque aliquet, sem eget laoreet ultrices, ipsum metus feugiat sem, quis fermentum turpis eros eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate, sapien libero hendrerit est, sed commodo augue nisi non neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi. Cras neque metus, consequat et blandit et, luctus a nunc. Etiam gravida vehicula tellus, in imperdiet ligula euismod eget.</p>', N'product-9.jpg', N'product-10.jpg', 1, 6, 0, 0, 1, NULL, NULL, 0, NULL)
INSERT [dbo].[Products] ([Id], [Title], [Price], [DiscountPrice], [Extax], [Code], [Seria], [Count], [Description], [MainImage], [SecondImage], [BrandId], [CategoryId], [IsBestSeller], [IsFeature], [IsNewArrivel], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (63, N'6-New Balance Fresh Foam LAZR v1 Sport eu accumsan massa facilisis', 30.0000, 0.0000, 2.0000, 1234, N'abcd', 0, N'<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla. <br> <br> Pellentesque aliquet, sem eget laoreet ultrices, ipsum metus feugiat sem, quis fermentum turpis eros eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate, sapien libero hendrerit est, sed commodo augue nisi non neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi. Cras neque metus, consequat et blandit et, luctus a nunc. Etiam gravida vehicula tellus, in imperdiet ligula euismod eget.</p>', N'product-11.jpg', N'product-12.jpg', 2, 7, 0, 0, 1, NULL, NULL, 0, NULL)
INSERT [dbo].[Products] ([Id], [Title], [Price], [DiscountPrice], [Extax], [Code], [Seria], [Count], [Description], [MainImage], [SecondImage], [BrandId], [CategoryId], [IsBestSeller], [IsFeature], [IsNewArrivel], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (64, N'7-New Balance Fresh Foam LAZR v1 Sport eu accumsan massa facilisis', 99.0000, 89.0000, 3.0000, 1234, N'abcd', 2, N'<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla. <br> <br> Pellentesque aliquet, sem eget laoreet ultrices, ipsum metus feugiat sem, quis fermentum turpis eros eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate, sapien libero hendrerit est, sed commodo augue nisi non neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi. Cras neque metus, consequat et blandit et, luctus a nunc. Etiam gravida vehicula tellus, in imperdiet ligula euismod eget.</p>', N'product-13.jpg', N'product-14.jpg', 3, 5, 0, 0, 1, NULL, NULL, 0, NULL)
INSERT [dbo].[Products] ([Id], [Title], [Price], [DiscountPrice], [Extax], [Code], [Seria], [Count], [Description], [MainImage], [SecondImage], [BrandId], [CategoryId], [IsBestSeller], [IsFeature], [IsNewArrivel], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (65, N'8-New Balance Fresh Foam LAZR v1 Sport eu accumsan massa facilisis', 150.0000, 139.0000, 3.0000, 1234, N'abcd', 2, N'<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla. <br> <br> Pellentesque aliquet, sem eget laoreet ultrices, ipsum metus feugiat sem, quis fermentum turpis eros eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate, sapien libero hendrerit est, sed commodo augue nisi non neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi. Cras neque metus, consequat et blandit et, luctus a nunc. Etiam gravida vehicula tellus, in imperdiet ligula euismod eget.</p>', N'product-14.jpg', N'product-16.jpg', 4, 5, 0, 0, 1, NULL, NULL, 0, NULL)
INSERT [dbo].[Products] ([Id], [Title], [Price], [DiscountPrice], [Extax], [Code], [Seria], [Count], [Description], [MainImage], [SecondImage], [BrandId], [CategoryId], [IsBestSeller], [IsFeature], [IsNewArrivel], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (66, N'P225 First Product Create', 999.0000, 899.0000, 99.0000, 2, N'app2', 9, N'P225 First Product Create P225 First Product Create', N'ee8e5cde-0550-4c62-8c6b-81808423dcca_2022070517380755_product-15.jpg', N'37594cf5-a3d5-4fa2-b386-9e26a2144bcb_2022070517381275_product-14.jpg', 1, 1, 0, 0, 1, CAST(N'2022-07-05T17:38:54.1387216' AS DateTime2), NULL, 0, NULL)
INSERT [dbo].[Products] ([Id], [Title], [Price], [DiscountPrice], [Extax], [Code], [Seria], [Count], [Description], [MainImage], [SecondImage], [BrandId], [CategoryId], [IsBestSeller], [IsFeature], [IsNewArrivel], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (67, N'P225 Second Product Create', 999.0000, 899.0000, 99.0000, 3, N'app2', 9, N'P225 Second Product Create', N'79307b5c-09f9-4c3b-91a7-0626834cd470_2022070614153285_product-9.jpg', N'1a97a311-79f9-47bd-b536-aae556b8c839_2022070614153285_product-7.jpg', 1, 1, 0, 0, 1, CAST(N'2022-07-06T14:15:32.8870221' AS DateTime2), NULL, 0, NULL)
INSERT [dbo].[Products] ([Id], [Title], [Price], [DiscountPrice], [Extax], [Code], [Seria], [Count], [Description], [MainImage], [SecondImage], [BrandId], [CategoryId], [IsBestSeller], [IsFeature], [IsNewArrivel], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (68, N'P225 Product First', 899.0000, 799.0000, 89.0000, 3, N'app2', 9, N'P225 Product First P225 Product First', N'f24ebe48-74b8-44ec-b571-9e1ff8a844f9_2022070614293333_product-1.jpg', N'4683e70b-dade-4bc2-b25b-6081bda08a8e_2022070614293333_product-2.jpg', 1, 1, 0, 0, 1, CAST(N'2022-07-06T14:29:33.3654476' AS DateTime2), NULL, 0, NULL)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductTags] ON 

INSERT [dbo].[ProductTags] ([Id], [ProductId], [TagId]) VALUES (1, 1, 1)
INSERT [dbo].[ProductTags] ([Id], [ProductId], [TagId]) VALUES (2, 1, 2)
INSERT [dbo].[ProductTags] ([Id], [ProductId], [TagId]) VALUES (3, 2, 3)
INSERT [dbo].[ProductTags] ([Id], [ProductId], [TagId]) VALUES (4, 3, 2)
INSERT [dbo].[ProductTags] ([Id], [ProductId], [TagId]) VALUES (6, 3, 3)
INSERT [dbo].[ProductTags] ([Id], [ProductId], [TagId]) VALUES (8, 4, 1)
INSERT [dbo].[ProductTags] ([Id], [ProductId], [TagId]) VALUES (9, 5, 3)
INSERT [dbo].[ProductTags] ([Id], [ProductId], [TagId]) VALUES (10, 6, 2)
INSERT [dbo].[ProductTags] ([Id], [ProductId], [TagId]) VALUES (11, 6, 1)
INSERT [dbo].[ProductTags] ([Id], [ProductId], [TagId]) VALUES (12, 4, 2)
INSERT [dbo].[ProductTags] ([Id], [ProductId], [TagId]) VALUES (13, 7, 1)
INSERT [dbo].[ProductTags] ([Id], [ProductId], [TagId]) VALUES (14, 7, 3)
INSERT [dbo].[ProductTags] ([Id], [ProductId], [TagId]) VALUES (15, 8, 2)
INSERT [dbo].[ProductTags] ([Id], [ProductId], [TagId]) VALUES (16, 8, 3)
INSERT [dbo].[ProductTags] ([Id], [ProductId], [TagId]) VALUES (32, 68, 2)
INSERT [dbo].[ProductTags] ([Id], [ProductId], [TagId]) VALUES (33, 68, 3)
SET IDENTITY_INSERT [dbo].[ProductTags] OFF
GO
SET IDENTITY_INSERT [dbo].[Settings] ON 

INSERT [dbo].[Settings] ([Id], [Key], [Value]) VALUES (1, N'Title', N'<p>P225 Get FREE Shipping with <span class="text">$35!</span> Code: FREESHIPPING</p>')
INSERT [dbo].[Settings] ([Id], [Key], [Value]) VALUES (2, N'HeaderLogo', N'logo.png')
INSERT [dbo].[Settings] ([Id], [Key], [Value]) VALUES (3, N'SupportPhone', N'+48 500 500 500')
INSERT [dbo].[Settings] ([Id], [Key], [Value]) VALUES (4, N'Address', N'P225 45 Grand Central Terminal New York,NY 1017 United State USA')
INSERT [dbo].[Settings] ([Id], [Key], [Value]) VALUES (5, N'Phone', N'+123 456 789')
INSERT [dbo].[Settings] ([Id], [Key], [Value]) VALUES (6, N'Email', N'email@yourwebsitename.com')
INSERT [dbo].[Settings] ([Id], [Key], [Value]) VALUES (7, N'WorkHour', N' Mon-Sat 9:00pm - 5:00pm Sun:Closed')
INSERT [dbo].[Settings] ([Id], [Key], [Value]) VALUES (8, N'AboutImage', N'slider-5.jpg')
INSERT [dbo].[Settings] ([Id], [Key], [Value]) VALUES (9, N'AboutTitle', N'Welcome to Allup')
INSERT [dbo].[Settings] ([Id], [Key], [Value]) VALUES (17, N'AboutDescription', N'<p>Ipsam eum commodi obcaecati soluta minima rem error nihil. Deleniti quis maxime tempore optio enim, sapiente consectetur? Sed accusantium voluptatem rerum nisi quas, ipsum cupiditate. Autem quis poss</p>')
INSERT [dbo].[Settings] ([Id], [Key], [Value]) VALUES (18, N'AboutCompany', N'Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam. Lorem ipsum dolor sit amet conse ctetur adipisicing elit.')
INSERT [dbo].[Settings] ([Id], [Key], [Value]) VALUES (19, N'AboutTeam', N'Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam. Lorem ipsum dolor sit amet conse ctetur adipisicing elit.')
INSERT [dbo].[Settings] ([Id], [Key], [Value]) VALUES (20, N'AboutTestimonial', N'Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam. Lorem ipsum dolor sit amet conse ctetur adipisicing elit.')
INSERT [dbo].[Settings] ([Id], [Key], [Value]) VALUES (21, N'ContactText', N'Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram anteposuerit litterarum formas human.')
INSERT [dbo].[Settings] ([Id], [Key], [Value]) VALUES (22, N'ContactAddress', N'123 Main Street, Anytown, CA 12345 – USA')
INSERT [dbo].[Settings] ([Id], [Key], [Value]) VALUES (23, N'ContactMobile', N'(08) 123 456 789')
INSERT [dbo].[Settings] ([Id], [Key], [Value]) VALUES (24, N'ContactHotline', N'1009 678 456')
INSERT [dbo].[Settings] ([Id], [Key], [Value]) VALUES (25, N'ConatctEmail', N'yourmail@domain.com')
INSERT [dbo].[Settings] ([Id], [Key], [Value]) VALUES (26, N'ContactSupportEmail', N'yourmail@domain.com')
SET IDENTITY_INSERT [dbo].[Settings] OFF
GO
SET IDENTITY_INSERT [dbo].[Sliders] ON 

INSERT [dbo].[Sliders] ([Id], [Image], [Description], [MainTitle], [SubTitle], [RedirectUrl]) VALUES (1, N'slider-2.jpg', N'Explore and immerse in exciting 360 content with Fulldive’s all-in-one virtual reality platform', N'<span>P225 4K HDR Smart TV 43 </span> Sony Bravia.', N'Save $120 when you buy', N'https://code.edu.az')
INSERT [dbo].[Sliders] ([Id], [Image], [Description], [MainTitle], [SubTitle], [RedirectUrl]) VALUES (2, N'slider-1.jpg', N'Explore and immerse in exciting 360 content with Fulldive’s all-in-one virtual reality platform', N'<span>4K HDR Smart TV 43 </span> Sony Bravia.', N'Save $120 when you buy', N'https://github.com')
SET IDENTITY_INSERT [dbo].[Sliders] OFF
GO
SET IDENTITY_INSERT [dbo].[Tags] ON 

INSERT [dbo].[Tags] ([Id], [Name], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (1, N'dron', NULL, NULL, 0, NULL)
INSERT [dbo].[Tags] ([Id], [Name], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (2, N'camera', NULL, NULL, 0, NULL)
INSERT [dbo].[Tags] ([Id], [Name], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (3, N'smart', NULL, NULL, 0, NULL)
INSERT [dbo].[Tags] ([Id], [Name], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt]) VALUES (4, N'TestP225', CAST(N'2022-06-30T15:45:12.7915387' AS DateTime2), CAST(N'2022-06-30T16:02:54.9902712' AS DateTime2), 1, CAST(N'2022-06-30T15:45:43.8609662' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Tags] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 19.07.2022 16:47:07 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 19.07.2022 16:47:07 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 19.07.2022 16:47:07 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 19.07.2022 16:47:07 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 19.07.2022 16:47:07 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 19.07.2022 16:47:07 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 19.07.2022 16:47:07 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Categories_ParentId]    Script Date: 19.07.2022 16:47:07 ******/
CREATE NONCLUSTERED INDEX [IX_Categories_ParentId] ON [dbo].[Categories]
(
	[ParentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Messages_RecieverId]    Script Date: 19.07.2022 16:47:07 ******/
CREATE NONCLUSTERED INDEX [IX_Messages_RecieverId] ON [dbo].[Messages]
(
	[RecieverId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Messages_SenderId]    Script Date: 19.07.2022 16:47:07 ******/
CREATE NONCLUSTERED INDEX [IX_Messages_SenderId] ON [dbo].[Messages]
(
	[SenderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderItems_OrderId]    Script Date: 19.07.2022 16:47:07 ******/
CREATE NONCLUSTERED INDEX [IX_OrderItems_OrderId] ON [dbo].[OrderItems]
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderItems_ProductId]    Script Date: 19.07.2022 16:47:07 ******/
CREATE NONCLUSTERED INDEX [IX_OrderItems_ProductId] ON [dbo].[OrderItems]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Orders_AppUserId]    Script Date: 19.07.2022 16:47:07 ******/
CREATE NONCLUSTERED INDEX [IX_Orders_AppUserId] ON [dbo].[Orders]
(
	[AppUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductImages_Productid]    Script Date: 19.07.2022 16:47:07 ******/
CREATE NONCLUSTERED INDEX [IX_ProductImages_Productid] ON [dbo].[ProductImages]
(
	[Productid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_BrandId]    Script Date: 19.07.2022 16:47:07 ******/
CREATE NONCLUSTERED INDEX [IX_Products_BrandId] ON [dbo].[Products]
(
	[BrandId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_CategoryId]    Script Date: 19.07.2022 16:47:07 ******/
CREATE NONCLUSTERED INDEX [IX_Products_CategoryId] ON [dbo].[Products]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductTags_ProductId]    Script Date: 19.07.2022 16:47:07 ******/
CREATE NONCLUSTERED INDEX [IX_ProductTags_ProductId] ON [dbo].[ProductTags]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductTags_TagId]    Script Date: 19.07.2022 16:47:07 ******/
CREATE NONCLUSTERED INDEX [IX_ProductTags_TagId] ON [dbo].[ProductTags]
(
	[TagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsAdmin]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsDeActive]
GO
ALTER TABLE [dbo].[Brands] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Categories] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ((0)) FOR [BrandId]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ((0)) FOR [CategoryId]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsBestSeller]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsFeature]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsNewArrivel]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Tags] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsDeleted]
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
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Categories]  WITH CHECK ADD  CONSTRAINT [FK_Categories_Categories_ParentId] FOREIGN KEY([ParentId])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Categories] CHECK CONSTRAINT [FK_Categories_Categories_ParentId]
GO
ALTER TABLE [dbo].[Messages]  WITH CHECK ADD  CONSTRAINT [FK_Messages_AspNetUsers_RecieverId] FOREIGN KEY([RecieverId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Messages] CHECK CONSTRAINT [FK_Messages_AspNetUsers_RecieverId]
GO
ALTER TABLE [dbo].[Messages]  WITH CHECK ADD  CONSTRAINT [FK_Messages_AspNetUsers_SenderId] FOREIGN KEY([SenderId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Messages] CHECK CONSTRAINT [FK_Messages_AspNetUsers_SenderId]
GO
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD  CONSTRAINT [FK_OrderItems_Orders_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderItems] CHECK CONSTRAINT [FK_OrderItems_Orders_OrderId]
GO
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD  CONSTRAINT [FK_OrderItems_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderItems] CHECK CONSTRAINT [FK_OrderItems_Products_ProductId]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_AspNetUsers_AppUserId] FOREIGN KEY([AppUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_AspNetUsers_AppUserId]
GO
ALTER TABLE [dbo].[ProductImages]  WITH CHECK ADD  CONSTRAINT [FK_ProductImages_Products_Productid] FOREIGN KEY([Productid])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductImages] CHECK CONSTRAINT [FK_ProductImages_Products_Productid]
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
ALTER TABLE [dbo].[ProductTags]  WITH CHECK ADD  CONSTRAINT [FK_ProductTags_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductTags] CHECK CONSTRAINT [FK_ProductTags_Products_ProductId]
GO
ALTER TABLE [dbo].[ProductTags]  WITH CHECK ADD  CONSTRAINT [FK_ProductTags_Tags_TagId] FOREIGN KEY([TagId])
REFERENCES [dbo].[Tags] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductTags] CHECK CONSTRAINT [FK_ProductTags_Tags_TagId]
GO
USE [master]
GO
ALTER DATABASE [P225AllupDb] SET  READ_WRITE 
GO
