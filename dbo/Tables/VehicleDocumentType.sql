CREATE TABLE [dbo].[VehicleDocumentType] (
    [VehicleDocumentTypeId]     INT           IDENTITY (1, 1) NOT NULL,
    [VehicleDocumentType]       VARCHAR (100) NOT NULL,
    [RequireExpirationReminder] BIT           NULL,
    PRIMARY KEY CLUSTERED ([VehicleDocumentTypeId] ASC)
);


GO

