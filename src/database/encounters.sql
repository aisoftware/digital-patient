SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Encounters](
	[EncounterID] [bigint] IDENTITY(1,1) NOT NULL,
	[PatientID] [bigint] NOT NULL,
	[PrimaryProviderID] [bigint] NOT NULL,
	[CaregiverID] [bigint] NULL,
	[CareSetting] [nvarchar](50) NOT NULL,
	[EncounterType] [nvarchar](50) NOT NULL,
	[EncounterStatus] [nvarchar](50) NOT NULL,
	[StartDateTime] [datetime2](7) NOT NULL,
	[EndDateTime] [datetime2](7) NULL,
	[ReasonForVisit] [nvarchar](500) NULL,
	[ChiefComplaint] [nvarchar](500) NULL,
	[SummaryText] [nvarchar](max) NULL,
	[AiDraftSummary] [nvarchar](max) NULL,
	[AiDraftSource] [nvarchar](50) NULL,
	[AiDraftReviewed] [bit] NOT NULL,
	[AiReviewerProviderID] [bigint] NULL,
	[AiReviewTimestamp] [datetime2](7) NULL,
	[SourceSystem] [nvarchar](100) NULL,
	[Hl7MessageID] [bigint] NULL,
	[EdiTransactionID] [bigint] NULL,
	[RequiresFollowUp] [bit] NOT NULL,
	[IsTelehealth] [bit] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[CreatedBy] [bigint] NULL,
	[UpdatedAt] [datetime2](7) NULL,
	[UpdatedBy] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[EncounterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Encounters] ADD  DEFAULT ((0)) FOR [AiDraftReviewed]
GO
ALTER TABLE [dbo].[Encounters] ADD  DEFAULT ((0)) FOR [RequiresFollowUp]
GO
ALTER TABLE [dbo].[Encounters] ADD  DEFAULT ((0)) FOR [IsTelehealth]
GO
ALTER TABLE [dbo].[Encounters] ADD  DEFAULT (sysdatetime()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Encounters]  WITH CHECK ADD  CONSTRAINT [FK_Encounters_AiReviewerProvider] FOREIGN KEY([AiReviewerProviderID])
REFERENCES [dbo].[Providers] ([ProviderID])
GO
ALTER TABLE [dbo].[Encounters] CHECK CONSTRAINT [FK_Encounters_AiReviewerProvider]
GO
ALTER TABLE [dbo].[Encounters]  WITH CHECK ADD  CONSTRAINT [FK_Encounters_Caregivers] FOREIGN KEY([CaregiverID])
REFERENCES [dbo].[Caregivers] ([CaregiverID])
GO
ALTER TABLE [dbo].[Encounters] CHECK CONSTRAINT [FK_Encounters_Caregivers]
GO
ALTER TABLE [dbo].[Encounters]  WITH CHECK ADD  CONSTRAINT [FK_Encounters_Patients] FOREIGN KEY([PatientID])
REFERENCES [dbo].[Patients] ([PatientID])
GO
ALTER TABLE [dbo].[Encounters] CHECK CONSTRAINT [FK_Encounters_Patients]
GO
ALTER TABLE [dbo].[Encounters]  WITH CHECK ADD  CONSTRAINT [FK_Encounters_Providers] FOREIGN KEY([PrimaryProviderID])
REFERENCES [dbo].[Providers] ([ProviderID])
GO
ALTER TABLE [dbo].[Encounters] CHECK CONSTRAINT [FK_Encounters_Providers]
GO
