USE [OffersTesting]
GO

/****** Object:  Table [dbo].[PricingDetails]    Script Date: 10/31/2020 7:02:42 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PricingDetails](
	[PricingId] [int] IDENTITY(1,1) NOT NULL,
	[Coins] [int] NULL,
	[Gems] [int] NULL,
 CONSTRAINT [PK_PricingDetails] PRIMARY KEY CLUSTERED 
(
	[PricingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PricingDetails] ADD  CONSTRAINT [DF_PricingDetails_Coins]  DEFAULT ((0)) FOR [Coins]
GO

ALTER TABLE [dbo].[PricingDetails] ADD  CONSTRAINT [DF_PricingDetails_Gems]  DEFAULT ((0)) FOR [Gems]
GO

