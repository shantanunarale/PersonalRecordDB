CREATE TABLE [dbo].[VehicleDocuments] (
    [VehicleDocumentId]     INT           IDENTITY (1, 1) NOT NULL,
    [PersonalVehicleId]     INT           NULL,
    [VehicleDocumentType]   INT           NULL,
    [VehicleDocumentNumber] VARCHAR (100) MASKED WITH (FUNCTION = 'default()') NOT NULL,
    [StartDate]             DATETIME      NULL,
    [EndDate]               DATETIME      NULL,
    [DocumentImage]         VARCHAR (200) NULL,
    PRIMARY KEY CLUSTERED ([VehicleDocumentId] ASC),
    FOREIGN KEY ([PersonalVehicleId]) REFERENCES [dbo].[PersonalVehicles] ([PersonalVehicleId]),
    FOREIGN KEY ([VehicleDocumentType]) REFERENCES [dbo].[VehicleDocumentType] ([VehicleDocumentTypeId]),
    UNIQUE NONCLUSTERED ([VehicleDocumentNumber] ASC)
);


GO

