USE [OnlineShop]
GO
/****** Object:  Table [dbo].[About]    Script Date: 5/11/2019 5:34:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[About](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[MetaTitle] [varchar](250) NULL,
	[Description] [nvarchar](500) NULL,
	[Image] [nvarchar](250) NULL,
	[Detail] [ntext] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[MetaKeywords] [nvarchar](250) NULL,
	[MetaDescriptions] [nchar](250) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_About] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 5/11/2019 5:34:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[MetaTitle] [varchar](250) NULL,
	[ParentID] [bigint] NULL,
	[DisplayOrder] [int] NULL,
	[SeoTitle] [nvarchar](250) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[MetaKeywords] [nvarchar](250) NULL,
	[MetaDescriptions] [nchar](250) NULL,
	[Status] [bit] NULL,
	[ShowOnHome] [bit] NULL,
	[Language] [varchar](2) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 5/11/2019 5:34:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Content] [ntext] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Content]    Script Date: 5/11/2019 5:34:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Content](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[MetaTitle] [varchar](250) NULL,
	[Description] [nvarchar](500) NULL,
	[Image] [nvarchar](250) NULL,
	[CategoryID] [bigint] NULL,
	[Detail] [ntext] NULL,
	[Warranty] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[MetaKeywords] [nvarchar](250) NULL,
	[MetaDescriptions] [nchar](250) NULL,
	[Status] [bit] NOT NULL,
	[TopHot] [datetime] NULL,
	[ViewCount] [int] NULL,
	[Tags] [nvarchar](500) NULL,
	[Language] [varchar](2) NULL,
 CONSTRAINT [PK_Content] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContentTag]    Script Date: 5/11/2019 5:34:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContentTag](
	[ContentID] [bigint] NOT NULL,
	[TagID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ContentTag] PRIMARY KEY CLUSTERED 
(
	[ContentID] ASC,
	[TagID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Credential]    Script Date: 5/11/2019 5:34:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Credential](
	[UserGroupID] [varchar](20) NOT NULL,
	[RoleID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Credential] PRIMARY KEY CLUSTERED 
(
	[UserGroupID] ASC,
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 5/11/2019 5:34:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Content] [nvarchar](250) NULL,
	[CreatedDate] [datetime] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Feedback] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Footer]    Script Date: 5/11/2019 5:34:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Footer](
	[ID] [varchar](50) NOT NULL,
	[Content] [ntext] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Footer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Language]    Script Date: 5/11/2019 5:34:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Language](
	[ID] [varchar](2) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[IsDefault] [bit] NOT NULL,
 CONSTRAINT [PK_Language] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 5/11/2019 5:34:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Text] [nvarchar](50) NULL,
	[Link] [nvarchar](250) NULL,
	[DisplayOrder] [int] NULL,
	[Target] [nvarchar](50) NULL,
	[Status] [bit] NULL,
	[TypeID] [int] NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MenuType]    Script Date: 5/11/2019 5:34:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_MenuType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 5/11/2019 5:34:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CustomerID] [bigint] NULL,
	[ShipName] [nvarchar](50) NULL,
	[ShipMobile] [varchar](50) NULL,
	[ShipAddress] [nvarchar](50) NULL,
	[ShipEmail] [nvarchar](50) NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 5/11/2019 5:34:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[ProductID] [bigint] NOT NULL,
	[OrderID] [bigint] NOT NULL,
	[Quantity] [int] NULL,
	[Price] [decimal](18, 0) NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC,
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 5/11/2019 5:34:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Code] [varchar](10) NULL,
	[MetaTitle] [varchar](250) NULL,
	[Description] [nvarchar](500) NULL,
	[Image] [nvarchar](250) NULL,
	[MoreImages] [xml] NULL,
	[Price] [decimal](18, 0) NULL,
	[PromotionPrice] [decimal](18, 0) NULL,
	[IncludedVAT] [bit] NULL,
	[Quantity] [int] NOT NULL,
	[CategoryID] [bigint] NULL,
	[Detail] [ntext] NULL,
	[Warranty] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[MetaKeywords] [nvarchar](250) NULL,
	[MetaDescriptions] [nchar](250) NULL,
	[Status] [bit] NULL,
	[TopHot] [datetime] NULL,
	[ViewCount] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 5/11/2019 5:34:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[MetaTitle] [varchar](250) NULL,
	[ParentID] [bigint] NULL,
	[DisplayOrder] [int] NULL,
	[SeoTitle] [nvarchar](250) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[MetaKeywords] [nvarchar](250) NULL,
	[MetaDescriptions] [nchar](250) NULL,
	[Status] [bit] NULL,
	[ShowOnHome] [bit] NULL,
 CONSTRAINT [PK_ProductCategory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Register]    Script Date: 5/11/2019 5:34:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Register](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[FullName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Register] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 5/11/2019 5:34:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[ID] [varchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slide]    Script Date: 5/11/2019 5:34:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slide](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](250) NULL,
	[DisplayOrder] [int] NULL,
	[Link] [nvarchar](250) NULL,
	[Description] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Slide] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SystemConfig]    Script Date: 5/11/2019 5:34:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemConfig](
	[ID] [varchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Type] [varchar](50) NULL,
	[Value] [nvarchar](250) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_SystemConfig] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tag]    Script Date: 5/11/2019 5:34:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tag](
	[ID] [varchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Tag] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 5/11/2019 5:34:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NULL,
	[Password] [varchar](32) NULL,
	[GroupID] [varchar](20) NULL,
	[Name] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[ProvinceID] [int] NULL,
	[DistrictID] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserGroup]    Script Date: 5/11/2019 5:34:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserGroup](
	[ID] [varchar](20) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_UserGroup] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome], [Language]) VALUES (1, N'Tin thế giới', N'tin-the-gioi', NULL, 1, NULL, CAST(N'2015-08-15T07:49:20.183' AS DateTime), NULL, NULL, NULL, NULL, NULL, 1, 0, NULL)
INSERT [dbo].[Category] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome], [Language]) VALUES (2, N'Tin trong nước', N'tin-trong-nuoc', NULL, 2, NULL, CAST(N'2015-08-15T07:49:33.087' AS DateTime), NULL, NULL, NULL, NULL, NULL, 1, 0, NULL)
INSERT [dbo].[Category] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome], [Language]) VALUES (3, N'34234', N'Title-Seo', 2, 2, N'Title-Seo', CAST(N'2019-12-12T00:00:00.000' AS DateTime), N'Admin', CAST(N'2019-12-12T00:00:00.000' AS DateTime), N'Admin', NULL, N'title-seo                                                                                                                                                                                                                                                 ', 1, 1, N'vi')
INSERT [dbo].[Category] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome], [Language]) VALUES (4, N'Áo quần', N'Áo qu?n', 2, 2, N'Áo quần', CAST(N'2019-12-12T00:00:00.000' AS DateTime), N'Admin', CAST(N'2019-12-12T00:00:00.000' AS DateTime), N'Admin', N'ao-quan', N'Áo quần                                                                                                                                                                                                                                                   ', 1, 1, N'VN')
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[Contact] ON 

INSERT [dbo].[Contact] ([ID], [Content], [Status]) VALUES (1, N'<p>Công ty CP Online Shop</p><p>Địa chỉ: Số 1 Quang Trung Hà Đông </p> <p>Điện thoại: 04 6523 5342</p>', 1)
SET IDENTITY_INSERT [dbo].[Contact] OFF
SET IDENTITY_INSERT [dbo].[Content] ON 

INSERT [dbo].[Content] ([ID], [Name], [MetaTitle], [Description], [Image], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount], [Tags], [Language]) VALUES (1, N'tin tức demo', N'tin-tuc-demo', N'424', N'/Data/images/14.PNG', 1, N'42342342', 12, CAST(N'2015-09-20T08:01:57.590' AS DateTime), N'toanbn', NULL, NULL, N'313', N'13                                                                                                                                                                                                                                                        ', 1, NULL, 0, N'tin tức,thời sự', NULL)
SET IDENTITY_INSERT [dbo].[Content] OFF
INSERT [dbo].[ContentTag] ([ContentID], [TagID]) VALUES (1, N'thoi-su')
INSERT [dbo].[ContentTag] ([ContentID], [TagID]) VALUES (1, N'tin-tuc')
SET IDENTITY_INSERT [dbo].[Feedback] ON 

INSERT [dbo].[Feedback] ([ID], [Name], [Phone], [Email], [Address], [Content], [CreatedDate], [Status]) VALUES (1, N'43454', N'5345', N'53453', N'354', N'
       345                 ', CAST(N'2015-09-13T21:36:30.167' AS DateTime), NULL)
INSERT [dbo].[Feedback] ([ID], [Name], [Phone], [Email], [Address], [Content], [CreatedDate], [Status]) VALUES (2, N'4234', N'4234', N'634', N'423', N'243    ', CAST(N'2015-09-13T21:37:45.667' AS DateTime), NULL)
INSERT [dbo].[Feedback] ([ID], [Name], [Phone], [Email], [Address], [Content], [CreatedDate], [Status]) VALUES (3, N'r2', N'4234', N'43243', N'423', N'423
                        ', CAST(N'2015-09-13T21:38:27.120' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Feedback] OFF
INSERT [dbo].[Footer] ([ID], [Content], [Status]) VALUES (N'footer', N'<div class="wrap">	
	     <div class="section group">
				<div class="col_1_of_4 span_1_of_4">
						<h4>Information</h4>
						<ul>
						<li><a href="about.html">About Us</a></li>
						<li><a href="contact.html">Customer Service</a></li>
						<li><a href="#">Advanced Search</a></li>
						<li><a href="delivery.html">Orders and Returns</a></li>
						<li><a href="contact.html">Contact Us</a></li>
						</ul>
					</div>
				<div class="col_1_of_4 span_1_of_4">
					<h4>Why buy from us</h4>
						<ul>
						<li><a href="about.html">About Us</a></li>
						<li><a href="contact.html">Customer Service</a></li>
						<li><a href="#">Privacy Policy</a></li>
						<li><a href="contact.html">Site Map</a></li>
						<li><a href="#">Search Terms</a></li>
						</ul>
				</div>
				<div class="col_1_of_4 span_1_of_4">
					<h4>My account</h4>
						<ul>
							<li><a href="contact.html">Sign In</a></li>
							<li><a href="index.html">View Cart</a></li>
							<li><a href="#">My Wishlist</a></li>
							<li><a href="#">Track My Order</a></li>
							<li><a href="contact.html">Help</a></li>
						</ul>
				</div>
				<div class="col_1_of_4 span_1_of_4">
					<h4>Contact</h4>
						<ul>
							<li><span>+91-123-456789</span></li>
							<li><span>+00-123-000000</span></li>
						</ul>
						<div class="social-icons">
							<h4>Follow Us</h4>
					   		  <ul>
							      <li><a href="#" target="_blank"><img src="images/facebook.png" alt="" /></a></li>
							      <li><a href="#" target="_blank"><img src="images/twitter.png" alt="" /></a></li>
							      <li><a href="#" target="_blank"><img src="images/skype.png" alt="" /> </a></li>
							      <li><a href="#" target="_blank"> <img src="images/dribbble.png" alt="" /></a></li>
							      <li><a href="#" target="_blank"> <img src="images/linkedin.png" alt="" /></a></li>
							      <div class="clear"></div>
						     </ul>
   	 					</div>
				</div>
			</div>			
        </div>
        <div class="copy_right">
				<p>Company Name © All rights Reseverd | Design by  <a href="http://w3layouts.com">W3Layouts</a> </p>
		   </div>', 1)
INSERT [dbo].[Language] ([ID], [Name], [IsDefault]) VALUES (N'en', N'Tiếng Anh', 0)
INSERT [dbo].[Language] ([ID], [Name], [IsDefault]) VALUES (N'vi', N'Tiếng Việt', 1)
SET IDENTITY_INSERT [dbo].[Menu] ON 

INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisplayOrder], [Target], [Status], [TypeID]) VALUES (1, N'Trang chủ', N'/', 1, N'_blank', 1, 1)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisplayOrder], [Target], [Status], [TypeID]) VALUES (2, N'Giới thiệu', N'/gioi-thieu', 2, N'_self', 1, 1)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisplayOrder], [Target], [Status], [TypeID]) VALUES (3, N'Tin tức', N'/tin-tuc', 3, N'_self', 1, 1)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisplayOrder], [Target], [Status], [TypeID]) VALUES (4, N'Sản phẩm', N'/san-pham', 4, N'_self', 1, 1)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisplayOrder], [Target], [Status], [TypeID]) VALUES (5, N'Liên hệ', N'/lien-he', 5, N'_self', 1, 1)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisplayOrder], [Target], [Status], [TypeID]) VALUES (6, N'Đăng nhập', N'/dang-nhap', 1, N'_self', 1, 2)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisplayOrder], [Target], [Status], [TypeID]) VALUES (7, N'Đăng ký', N'/dang-ky', 2, N'_self', 1, 2)
SET IDENTITY_INSERT [dbo].[Menu] OFF
SET IDENTITY_INSERT [dbo].[MenuType] ON 

INSERT [dbo].[MenuType] ([ID], [Name]) VALUES (1, N'Menu chính')
INSERT [dbo].[MenuType] ([ID], [Name]) VALUES (2, N'Menu top')
SET IDENTITY_INSERT [dbo].[MenuType] OFF
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (1, CAST(N'2015-09-10T22:51:27.657' AS DateTime), NULL, N'toanbn', N'2312412', N'hn', N'ngoctoan89@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (2, CAST(N'2015-09-12T21:45:35.777' AS DateTime), NULL, N'toàn', N'0966036626', N'Xuân Đỉnh Từ Liêm Hà Nội', N'toanbn@esvn.com.vn', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (3, CAST(N'2015-09-12T21:46:10.357' AS DateTime), NULL, N'toàn', N'0966036626', N'Xuân Đỉnh Từ Liêm Hà Nội', N'toanbn@esvn.com.vn', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (4, CAST(N'2015-09-12T21:47:26.417' AS DateTime), NULL, N'toanbn', N'0966036626', N'Xuân Đỉnh Từ Liêm Hà Nội', N'toanbn@esvn.com.vn', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (5, CAST(N'2015-09-12T21:49:37.137' AS DateTime), NULL, N'eq', N'eqw', N'Xuân Đỉnh Từ Liêm Hà Nội', N'eqw', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (6, CAST(N'2015-09-12T21:55:54.457' AS DateTime), NULL, N'toanbn', N'0966036626', N'23', N'131', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (7, CAST(N'2015-09-12T21:57:49.660' AS DateTime), NULL, N'423', N'423', N'423', N'423', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (8, CAST(N'2015-09-12T21:58:08.873' AS DateTime), NULL, N'423', N'423', N'423', N'423', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (9, CAST(N'2015-09-12T21:59:23.833' AS DateTime), NULL, N'423', N'424', N'424', N'42', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (10, CAST(N'2015-09-12T22:01:38.170' AS DateTime), NULL, N'534', N'53', N'543', N'534', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (11, CAST(N'2015-09-13T06:58:46.767' AS DateTime), NULL, N'4', N'423', N'423', N'423', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (12, CAST(N'2015-09-13T07:00:01.937' AS DateTime), NULL, N'34', N'423', N'432', N'423', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (13, CAST(N'2015-09-13T07:07:01.167' AS DateTime), NULL, N'423', N'423', N'423', N'423', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (14, CAST(N'2015-09-13T07:18:25.970' AS DateTime), NULL, N'toanbn', N'423', N'423', N'423', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (15, CAST(N'2015-09-13T07:21:34.320' AS DateTime), NULL, N'34', N'342', N'424', N'42', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (16, CAST(N'2015-09-13T07:24:01.707' AS DateTime), NULL, N'342', N'432', N'423', N'432', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (17, CAST(N'2015-09-13T07:47:09.587' AS DateTime), NULL, N'342', N'234', N'424', N'423', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (18, CAST(N'2015-09-13T07:47:30.560' AS DateTime), NULL, N'342', N'234', N'424', N'423', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (19, CAST(N'2015-09-13T07:47:42.443' AS DateTime), NULL, N'342', N'234', N'424', N'ngoctoan89@gmail.com', NULL)
SET IDENTITY_INSERT [dbo].[Order] OFF
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (4, 15, 1, CAST(12535000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (4, 16, 1, CAST(12535000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (5, 1, 3, CAST(22535000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (5, 2, 1, CAST(22535000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (5, 3, 1, CAST(22535000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (5, 4, 1, CAST(22535000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (5, 5, 1, CAST(22535000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (5, 6, 1, CAST(22535000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (5, 11, 1, CAST(22535000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (5, 13, 1, CAST(22535000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (5, 17, 1, CAST(22535000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (5, 18, 1, CAST(22535000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (5, 19, 1, CAST(22535000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (8, 7, 1, CAST(4300000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (8, 8, 1, CAST(4300000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (8, 9, 1, CAST(4300000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (8, 10, 1, CAST(4300000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (8, 12, 1, CAST(4300000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (8, 14, 1, CAST(4300000 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [IncludedVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (1, N'Tivi Sony 21 inch', N'A01', N'tivi-sony-21', N'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore.', N'/assets/client/images/feature-pic1.jpg', NULL, CAST(5770000 AS Decimal(18, 0)), NULL, NULL, 0, 2, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tincidunt bibendum est, non interdum nulla sodales ac. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed varius mollis sodales. Curabitur ac ligula dolor', NULL, CAST(N'2015-08-26T19:24:20.953' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, CAST(N'2015-08-30T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [IncludedVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (2, N'Bộ loa 2.0 Microlab', N'A02', N'bo-loa-20-microlab', N'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore.', N'/assets/client/images/feature-pic2.jpg', NULL, CAST(435000 AS Decimal(18, 0)), CAST(235000 AS Decimal(18, 0)), 0, 12, 5, N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tincidunt bibendum est, non interdum nulla sodales ac. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed varius mollis sodales. Curabitur ac ligula dolor</p>
', 12, CAST(N'2015-08-26T19:30:57.000' AS DateTime), N'admin', CAST(N'2018-12-12T00:00:00.000' AS DateTime), NULL, NULL, NULL, 1, NULL, 0)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [IncludedVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (3, N'Máy ảnh Nikon', N'A03', N'may-anh-nikon', N'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore.', N'/assets/client/images/feature-pic3.jpg', NULL, CAST(2535000 AS Decimal(18, 0)), CAST(2350000 AS Decimal(18, 0)), 0, 12, 1, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tincidunt bibendum est, non interdum nulla sodales ac. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed varius mollis sodales. Curabitur ac ligula dolor', 12, CAST(N'2015-08-26T19:32:06.437' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, NULL, 0)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [IncludedVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (4, N'Tivi plasma siêu phẳng', N'A04', N'tivi-plasma-sieu-phang', N'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore.', N'/assets/client/images/feature-pic4.jpg', NULL, CAST(12535000 AS Decimal(18, 0)), CAST(12350000 AS Decimal(18, 0)), 0, 12, 1, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tincidunt bibendum est, non interdum nulla sodales ac. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed varius mollis sodales. Curabitur ac ligula dolor', 12, CAST(N'2015-08-26T19:33:18.800' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, NULL, 0)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [IncludedVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (5, N'Máy ảnh Sony', N'A05', N'may-anh-sony', N'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore.', N'/assets/client/images/new-pic1.jpg', NULL, CAST(22535000 AS Decimal(18, 0)), NULL, 0, 23, 3, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tincidunt bibendum est, non interdum nulla sodales ac. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed varius mollis sodales. Curabitur ac ligula dolor', 12, CAST(N'2015-08-26T19:33:18.800' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, NULL, 0)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [IncludedVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (6, N'Dàn karaoke 2.0', N'A06', N'dan-karaoke-20', N'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore.', N'/assets/client/images/images/new-pic2.jpg', NULL, CAST(12535000 AS Decimal(18, 0)), NULL, 0, 44, 6, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tincidunt bibendum est, non interdum nulla sodales ac. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed varius mollis sodales. Curabitur ac ligula dolor', 12, CAST(N'2015-08-26T19:33:18.800' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, NULL, 0)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [IncludedVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (7, N'Máy giặt Electrolux', N'A07', N'may-giat-electrolux', N'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore.', N'/Images/files/Phi.jpg', NULL, CAST(7535000 AS Decimal(18, 0)), NULL, 0, 44, 6, N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tincidunt bibendum est, non interdum nulla sodales ac. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed varius mollis sodales. Curabitur ac ligula dolor</p>
', 12, CAST(N'2015-08-26T19:33:18.000' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, NULL, 0)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [IncludedVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (8, N'Đồng hồ đeo tay thời trang', N'A08', N'dong-ho-deo-tay-thoi-trang', N'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore.', N'/assets/client/images/new-pic3.jpg', NULL, CAST(4300000 AS Decimal(18, 0)), NULL, NULL, 21, 7, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tincidunt bibendum est, non interdum nulla sodales ac. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed varius mollis sodales. Curabitur ac ligula dolor', NULL, CAST(N'2015-08-26T19:37:06.083' AS DateTime), NULL, NULL, NULL, NULL, NULL, 1, NULL, 0)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [IncludedVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (9, N'Me', N'2', N'me-loi', N'Mẹ Trần Thị Lợi', N'/Images/files/Me.jpg', NULL, CAST(2 AS Decimal(18, 0)), CAST(2 AS Decimal(18, 0)), 1, 0, 2, N'2', 2, CAST(N'2019-12-12T00:00:00.000' AS DateTime), N'Admin', CAST(N'2019-12-12T00:00:00.000' AS DateTime), N'Admin', N'me', N'me-loi-do                                                                                                                                                                                                                                                 ', 1, CAST(N'2019-12-12T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [IncludedVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (10, N'Phi', N'2', N'phi-title', N'phi-title', N'/Images/files/Phi.jpg', NULL, CAST(2 AS Decimal(18, 0)), CAST(2 AS Decimal(18, 0)), 1, 2, 2, N'<p>fdfdfdfdfdfd</p>
', 2, CAST(N'2019-12-21T00:00:00.000' AS DateTime), N'Admin', CAST(N'2019-12-21T00:00:00.000' AS DateTime), N'Admin', N'phi', N'phi title                                                                                                                                                                                                                                                 ', 1, CAST(N'2019-12-21T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [IncludedVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (11, N'Phi', N'2', N'phi-title', N'phi-title', N'/Images/files/Phi.jpg', NULL, CAST(2 AS Decimal(18, 0)), CAST(2 AS Decimal(18, 0)), 1, 0, 2, N'<p>This plugin allows inserting Youtube videos using embed code or just the video URL. Installation Follow these steps: Extract the downloaded file...</p>
', 2, CAST(N'2019-12-12T00:00:00.000' AS DateTime), N'Admin', CAST(N'2019-12-12T00:00:00.000' AS DateTime), N'Admin', N'phi', N'phi                                                                                                                                                                                                                                                       ', 1, CAST(N'2019-12-12T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [IncludedVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (12, N'Checked', N'2', N'Checked', N'Checked', N'/Images/files/Me.jpg', NULL, CAST(2 AS Decimal(18, 0)), CAST(2 AS Decimal(18, 0)), 1, 0, 3, N'<p><img alt="Beautifull" src="data:image/jpeg;base64,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" style="height:211px; width:239px" />Checked fix</p>
', 2, CAST(N'2019-05-08T00:00:00.000' AS DateTime), N'Admin', CAST(N'2019-05-08T00:00:00.000' AS DateTime), N'Admin', N'Checked', N'2                                                                                                                                                                                                                                                         ', 1, CAST(N'2019-05-08T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [IncludedVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (13, N'Test', N'2', N'2', N'2', N'/Images/files/Me.jpg', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, CAST(N'2019-05-08T23:23:37.000' AS DateTime), N'Admin', CAST(N'2019-05-08T23:23:37.000' AS DateTime), N'Admin', NULL, NULL, 1, CAST(N'2019-05-08T23:23:37.000' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Product] OFF
SET IDENTITY_INSERT [dbo].[ProductCategory] ON 

INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (1, N'Đồng hồ', N'dong-ho', 3, 0, NULL, CAST(N'2015-08-26T19:00:44.567' AS DateTime), NULL, NULL, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (2, N'Điện thoại', N'dien-thoai', 3, 1, NULL, CAST(N'2015-08-26T19:20:32.210' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (3, N'Máy tính để bàn', N'may-tinh-de-ban', NULL, 1, NULL, CAST(N'2015-08-26T19:20:32.210' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (4, N'Máy tính xách tay', N'may-tinh-xach-tay', NULL, 1, NULL, CAST(N'2015-08-26T19:20:32.210' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (5, N'Phụ kiện', N'phu-kien', NULL, 1, NULL, CAST(N'2015-08-26T19:20:32.210' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (6, N'Phần mềm', N'phan-mem', 3, 1, NULL, CAST(N'2015-08-26T19:20:32.210' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (7, N'Thể thao', N'the-thao', 3, 1, NULL, CAST(N'2015-08-26T19:20:32.210' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (8, N'Thời trang', N'thoi-trang', 1, 1, NULL, CAST(N'2015-08-26T19:20:32.210' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (9, N'Trang sức', N'trang-suc', 2, 1, NULL, CAST(N'2015-08-26T19:20:32.210' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (10, N'Đồ nội thất', N'do-noi-that', 1, 1, NULL, CAST(N'2015-08-26T19:20:32.210' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (11, N'Làm đẹp', N'lam-dep', 2, 1, NULL, CAST(N'2015-08-26T19:20:32.210' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (12, N'ABC', N'abc', 1, 1, NULL, CAST(N'2015-09-05T00:25:30.000' AS DateTime), N'Admin', NULL, N'Admin', NULL, NULL, 1, 0)
INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (13, N'Watch Apple', N'Watch Apple', 1, 2, N'Watch-Apple', CAST(N'2019-12-12T00:00:00.000' AS DateTime), N'Admin', CAST(N'2019-12-12T00:00:00.000' AS DateTime), N'Admin', N'watch-apple', N'watch-apple                                                                                                                                                                                                                                               ', 1, 1)
SET IDENTITY_INSERT [dbo].[ProductCategory] OFF
INSERT [dbo].[Role] ([ID], [Name]) VALUES (N'ADD_CONTENT', N'Thêm tin tức')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (N'ADD_USER', N'Thêm user')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (N'DELETE_USER', N'Xoá user')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (N'EDIT_CONTENT', N'Sửa tin tức')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (N'EDIT_USER', N'Sửa user')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (N'VIEW_USER', N'Xem danh sách user')
SET IDENTITY_INSERT [dbo].[Slide] ON 

INSERT [dbo].[Slide] ([ID], [Image], [DisplayOrder], [Link], [Description], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (1, N'/assets/client/images/slide-2-image.jpg', 1, N'/', NULL, CAST(N'2015-08-26T19:21:44.440' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[Slide] ([ID], [Image], [DisplayOrder], [Link], [Description], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (2, N'/assets/client/images/slide-1-image.jpg', 2, N'/', NULL, CAST(N'2015-08-26T19:22:01.173' AS DateTime), NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[Slide] OFF
INSERT [dbo].[Tag] ([ID], [Name]) VALUES (N'thoi-su', N'thời sự')
INSERT [dbo].[Tag] ([ID], [Name]) VALUES (N'tin-tuc', N'tin tức')
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([ID], [UserName], [Password], [GroupID], [Name], [Address], [Email], [Phone], [ProvinceID], [DistrictID], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (22, N'xuanphi', N'dd495fe3612f899d8b2854950465ce4d', N'1', N'Xuân Phi', NULL, NULL, N'0379731767', 75, 31, CAST(N'2018-12-02T00:00:00.000' AS DateTime), NULL, CAST(N'2019-12-02T00:00:00.000' AS DateTime), NULL, 1)
INSERT [dbo].[User] ([ID], [UserName], [Password], [GroupID], [Name], [Address], [Email], [Phone], [ProvinceID], [DistrictID], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (23, N'xuanphi7895', N'25d55ad283aa400af464c76d713c07ad', N'1', N'Trần Xuân Phi', N'Phú An, Phú Vang, TT Huế', N'xuanphi7895@gmail.com', N'0379731767', 75, 12, NULL, N'Xuân Phi', CAST(N'2019-05-03T17:16:37.310' AS DateTime), N'Admin', 1)
INSERT [dbo].[User] ([ID], [UserName], [Password], [GroupID], [Name], [Address], [Email], [Phone], [ProvinceID], [DistrictID], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (26, N'loc', N'123', NULL, N'Trương Hữu Lộc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[User] ([ID], [UserName], [Password], [GroupID], [Name], [Address], [Email], [Phone], [ProvinceID], [DistrictID], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (27, N'nghia', N'25d55ad283aa400af464c76d713c07ad', N'2', N'Hồ Văn Nghĩa', N'TT Huế', N'nghia@gmail.com', N'0920390', 75, 2, NULL, N'Admin', CAST(N'2019-05-10T18:40:09.670' AS DateTime), N'Admin', 1)
INSERT [dbo].[User] ([ID], [UserName], [Password], [GroupID], [Name], [Address], [Email], [Phone], [ProvinceID], [DistrictID], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (28, N'nhat', N'c5fde9de2d29789a81d1bc0f16292048', N'2', N'Ngô Văn Nhật', N'TT Huế', N'nhat@gmail.com', N'4545464646', 75, 2, NULL, N'Admin', CAST(N'2019-05-11T01:37:13.493' AS DateTime), N'Admin', 1)
INSERT [dbo].[User] ([ID], [UserName], [Password], [GroupID], [Name], [Address], [Email], [Phone], [ProvinceID], [DistrictID], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (29, N'phong', N'123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[User] ([ID], [UserName], [Password], [GroupID], [Name], [Address], [Email], [Phone], [ProvinceID], [DistrictID], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (30, N'phuong', N'123', NULL, N'Trần Thị Bích Phương', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[User] ([ID], [UserName], [Password], [GroupID], [Name], [Address], [Email], [Phone], [ProvinceID], [DistrictID], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (31, N'tri', N'123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[User] ([ID], [UserName], [Password], [GroupID], [Name], [Address], [Email], [Phone], [ProvinceID], [DistrictID], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (32, N'quynh', N'123', NULL, N'Nguyễn Ngân Quỳnh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[User] ([ID], [UserName], [Password], [GroupID], [Name], [Address], [Email], [Phone], [ProvinceID], [DistrictID], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (33, N'mai', N'123', NULL, N'Nguyễn Thị Mai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[User] ([ID], [UserName], [Password], [GroupID], [Name], [Address], [Email], [Phone], [ProvinceID], [DistrictID], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (34, N'hoa', N'25d55ad283aa400af464c76d713c07ad', N'2', N'Văn Phước Luân', N'TT Huế', N'vanluan@gmail.com', N'909099090', 75, 2, NULL, N'Admin', CAST(N'2019-05-10T18:15:22.003' AS DateTime), N'Admin', 1)
INSERT [dbo].[User] ([ID], [UserName], [Password], [GroupID], [Name], [Address], [Email], [Phone], [ProvinceID], [DistrictID], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (35, N'xuanphi7895', N'123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[User] ([ID], [UserName], [Password], [GroupID], [Name], [Address], [Email], [Phone], [ProvinceID], [DistrictID], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (36, N'quyen@gmail.com', N'202cb962ac59075b964b07152d234b70', N'1', N'Lê Thị Lệ Quyên', N'Hà Tĩnh, Việt Nam', N'quyen@gmail.com', N'213131414', 35, 2, CAST(N'2018-12-12T00:00:00.000' AS DateTime), N'Admin', CAST(N'2018-12-12T00:00:00.000' AS DateTime), N'Admin', 1)
INSERT [dbo].[User] ([ID], [UserName], [Password], [GroupID], [Name], [Address], [Email], [Phone], [ProvinceID], [DistrictID], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (37, N'nguyenngoc', N'7732da35b0ebfc3e905555bc4f010dca', N'2', N'Nguyễn Ngọc', N'TT Huế', N'ngoc@gmail.com', N'438484389', 75, 2, CAST(N'2019-12-12T00:00:00.000' AS DateTime), N'Admin', CAST(N'2019-12-12T00:00:00.000' AS DateTime), N'Admin', 1)
SET IDENTITY_INSERT [dbo].[User] OFF
INSERT [dbo].[UserGroup] ([ID], [Name]) VALUES (N'ADMIN', N'Quản trị')
INSERT [dbo].[UserGroup] ([ID], [Name]) VALUES (N'MEMBER', N'Thành viên')
INSERT [dbo].[UserGroup] ([ID], [Name]) VALUES (N'MOD', N'Moderatior')
ALTER TABLE [dbo].[About] ADD  CONSTRAINT [DF_About_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[About] ADD  CONSTRAINT [DF_About_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_DisplayOrder]  DEFAULT ((0)) FOR [DisplayOrder]
GO
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_ShowOnHome]  DEFAULT ((0)) FOR [ShowOnHome]
GO
ALTER TABLE [dbo].[Content] ADD  CONSTRAINT [DF_Content_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Content] ADD  CONSTRAINT [DF_Content_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Content] ADD  CONSTRAINT [DF_Content_ViewCount]  DEFAULT ((0)) FOR [ViewCount]
GO
ALTER TABLE [dbo].[Feedback] ADD  CONSTRAINT [DF_Feedback_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Language] ADD  CONSTRAINT [DF_Language_IsDefault]  DEFAULT ((0)) FOR [IsDefault]
GO
ALTER TABLE [dbo].[OrderDetail] ADD  CONSTRAINT [DF_OrderDetail_Quantity]  DEFAULT ((1)) FOR [Quantity]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_Price]  DEFAULT ((0)) FOR [Price]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_Quantity]  DEFAULT ((0)) FOR [Quantity]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_ViewCount]  DEFAULT ((0)) FOR [ViewCount]
GO
ALTER TABLE [dbo].[ProductCategory] ADD  CONSTRAINT [DF_ProductCategory_DisplayOrder]  DEFAULT ((0)) FOR [DisplayOrder]
GO
ALTER TABLE [dbo].[ProductCategory] ADD  CONSTRAINT [DF_ProductCategory_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ProductCategory] ADD  CONSTRAINT [DF_ProductCategory_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[ProductCategory] ADD  CONSTRAINT [DF_ProductCategory_ShowOnHome]  DEFAULT ((0)) FOR [ShowOnHome]
GO
ALTER TABLE [dbo].[Slide] ADD  CONSTRAINT [DF_Slide_DisplayOrder]  DEFAULT ((1)) FOR [DisplayOrder]
GO
ALTER TABLE [dbo].[Slide] ADD  CONSTRAINT [DF_Slide_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_GroupID]  DEFAULT ('MEMBER') FOR [GroupID]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
