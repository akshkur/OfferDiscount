USE [OffersTesting]
GO

/****** Object:  Table [dbo].[OffersInventory]    Script Date: 10/31/2020 7:02:23 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[OffersInventory](
	[OfferId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](max) NULL,
	[Description] [varchar](max) NULL,
	[Image] [varchar](max) NULL,
	[SortOrder] [int] NOT NULL,
	[Target] [varchar](max) NULL,
	[PricingId] [int] NOT NULL,
 CONSTRAINT [PK_OffersInventory] PRIMARY KEY CLUSTERED 
(
	[OfferId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[OffersInventory]  WITH CHECK ADD  CONSTRAINT [FK_OffersInventory_PricingDetails] FOREIGN KEY([PricingId])
REFERENCES [dbo].[PricingDetails] ([PricingId])
GO

ALTER TABLE [dbo].[OffersInventory] CHECK CONSTRAINT [FK_OffersInventory_PricingDetails]
GO

