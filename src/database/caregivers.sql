-- Check if the Caregivers table exists and drop it if it does
IF OBJECT_ID('dbo.Caregivers', 'U') IS NOT NULL
    DROP TABLE [dbo].[Caregivers];
GO

-- Create Caregivers table
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Caregivers](
    [CaregiverID] [bigint] IDENTITY(1,1) NOT NULL,
    [FirstName] [nvarchar](100) NOT NULL,
    [LastName] [nvarchar](100) NOT NULL,
    [Relationship] [nvarchar](100) NULL,
    [Phone] [nvarchar](50) NULL,
    [Email] [nvarchar](256) NULL,
    [AddressLine1] [nvarchar](250) NULL,
    [AddressLine2] [nvarchar](250) NULL,
    [City] [nvarchar](100) NULL,
    [State] [nvarchar](50) NULL,
    [PostalCode] [nvarchar](20) NULL,
    [Country] [nvarchar](100) NULL,
    [IsPrimaryContact] [bit] NOT NULL,
    [CreatedAt] [datetime2](7) NOT NULL,
    [CreatedBy] [bigint] NULL,
    [UpdatedAt] [datetime2](7) NULL,
    [UpdatedBy] [bigint] NULL,
PRIMARY KEY CLUSTERED (
    [CaregiverID] ASC
) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Caregivers] ADD DEFAULT ((0)) FOR [IsPrimaryContact]
GO
ALTER TABLE [dbo].[Caregivers] ADD DEFAULT (sysdatetime()) FOR [CreatedAt]
GO

-- Optional: add an index on LastName/FirstName for lookups
IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE object_id = OBJECT_ID('dbo.Caregivers') AND name = 'IX_Caregivers_Last_First')
BEGIN
    CREATE NONCLUSTERED INDEX IX_Caregivers_Last_First ON dbo.Caregivers(LastName, FirstName) ON [PRIMARY];
END
GO

-- NOTE: The Encounters table references Caregivers(CaregiverID). Ensure this script runs before creating that FK or drop/recreate FKs accordingly.
 
-- =====================================================================
-- Stored Procedures: CRUD for Caregivers
-- =====================================================================

-- Drop/Create: CreateCaregiver
IF OBJECT_ID('dbo.CreateCaregiver','P') IS NOT NULL
    DROP PROCEDURE dbo.CreateCaregiver;
GO
CREATE PROCEDURE dbo.CreateCaregiver
    @FirstName NVARCHAR(100),
    @LastName NVARCHAR(100),
    @Relationship NVARCHAR(100) = NULL,
    @Phone NVARCHAR(50) = NULL,
    @Email NVARCHAR(256) = NULL,
    @AddressLine1 NVARCHAR(250) = NULL,
    @AddressLine2 NVARCHAR(250) = NULL,
    @City NVARCHAR(100) = NULL,
    @State NVARCHAR(50) = NULL,
    @PostalCode NVARCHAR(20) = NULL,
    @Country NVARCHAR(100) = NULL,
    @IsPrimaryContact BIT = 0,
    @CreatedBy BIGINT = NULL
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO dbo.Caregivers
    (
        FirstName, LastName, Relationship, Phone, Email,
        AddressLine1, AddressLine2, City, State, PostalCode,
        Country, IsPrimaryContact, CreatedAt, CreatedBy
    )
    VALUES
    (
        @FirstName, @LastName, @Relationship, @Phone, @Email,
        @AddressLine1, @AddressLine2, @City, @State, @PostalCode,
        @Country, @IsPrimaryContact, SYSDATETIME(), @CreatedBy
    );

    -- Return the new CaregiverID
    SELECT SCOPE_IDENTITY() AS CaregiverID;
END
GO

-- Drop/Create: ReadCaregiverByID
IF OBJECT_ID('dbo.ReadCaregiverByID','P') IS NOT NULL
    DROP PROCEDURE dbo.ReadCaregiverByID;
GO
CREATE PROCEDURE dbo.ReadCaregiverByID
    @CaregiverID BIGINT
AS
BEGIN
    SET NOCOUNT ON;
    SELECT * FROM dbo.Caregivers WHERE CaregiverID = @CaregiverID;
END
GO

-- Drop/Create: ReadAllCaregivers
IF OBJECT_ID('dbo.ReadAllCaregivers','P') IS NOT NULL
    DROP PROCEDURE dbo.ReadAllCaregivers;
GO
CREATE PROCEDURE dbo.ReadAllCaregivers
AS
BEGIN
    SET NOCOUNT ON;
    SELECT * FROM dbo.Caregivers;
END
GO

-- Drop/Create: UpdateCaregiver
IF OBJECT_ID('dbo.UpdateCaregiver','P') IS NOT NULL
    DROP PROCEDURE dbo.UpdateCaregiver;
GO
CREATE PROCEDURE dbo.UpdateCaregiver
    @CaregiverID BIGINT,
    @FirstName NVARCHAR(100),
    @LastName NVARCHAR(100),
    @Relationship NVARCHAR(100) = NULL,
    @Phone NVARCHAR(50) = NULL,
    @Email NVARCHAR(256) = NULL,
    @AddressLine1 NVARCHAR(250) = NULL,
    @AddressLine2 NVARCHAR(250) = NULL,
    @City NVARCHAR(100) = NULL,
    @State NVARCHAR(50) = NULL,
    @PostalCode NVARCHAR(20) = NULL,
    @Country NVARCHAR(100) = NULL,
    @IsPrimaryContact BIT = 0,
    @UpdatedBy BIGINT = NULL
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE dbo.Caregivers
    SET
        FirstName = @FirstName,
        LastName = @LastName,
        Relationship = @Relationship,
        Phone = @Phone,
        Email = @Email,
        AddressLine1 = @AddressLine1,
        AddressLine2 = @AddressLine2,
        City = @City,
        State = @State,
        PostalCode = @PostalCode,
        Country = @Country,
        IsPrimaryContact = @IsPrimaryContact,
        UpdatedAt = SYSDATETIME(),
        UpdatedBy = @UpdatedBy
    WHERE CaregiverID = @CaregiverID;

    -- Optionally return the updated row
    SELECT * FROM dbo.Caregivers WHERE CaregiverID = @CaregiverID;
END
GO

-- Drop/Create: DeleteCaregiver
IF OBJECT_ID('dbo.DeleteCaregiver','P') IS NOT NULL
    DROP PROCEDURE dbo.DeleteCaregiver;
GO
CREATE PROCEDURE dbo.DeleteCaregiver
    @CaregiverID BIGINT
AS
BEGIN
    SET NOCOUNT ON;
    DELETE FROM dbo.Caregivers WHERE CaregiverID = @CaregiverID;
END
GO

