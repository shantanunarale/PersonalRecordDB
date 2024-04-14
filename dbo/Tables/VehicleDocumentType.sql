CREATE TABLE [dbo].[VehicleDocumentType] (
    [VehicleDocumentTypeId]         INT           IDENTITY (1, 1) NOT NULL,
    [VehicleDocumentType]           VARCHAR (100) NOT NULL,
    [RequireExpirationReminder]     BIT           NULL,
    [VehicleDocumentDescription]    VARCHAR(50)   NULL,
    PRIMARY KEY CLUSTERED ([VehicleDocumentTypeId] ASC)
);


GO

