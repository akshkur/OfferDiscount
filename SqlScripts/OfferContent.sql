USE [OffersTesting]
GO

/****** Object:  Table [dbo].[OfferContent]    Script Date: 10/31/2020 7:01:54 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[OfferContent](
	[OfferId] [int] NOT NULL,
	[ItemId] [int] NOT NULL,
	[quantity] [int] NOT NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[OfferContent] ADD  CONSTRAINT [DF_OfferContent_quantity]  DEFAULT ((1)) FOR [quantity]
GO

ALTER TABLE [dbo].[OfferContent]  WITH CHECK ADD  CONSTRAINT [FK_OfferContent_OffersInventory] FOREIGN KEY([OfferId])
REFERENCES [dbo].[OffersInventory] ([OfferId])
GO

ALTER TABLE [dbo].[OfferContent] CHECK CONSTRAINT [FK_OfferContent_OffersInventory]
GO

