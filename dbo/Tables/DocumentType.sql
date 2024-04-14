CREATE TABLE [dbo].[DocumentType] (
    [DocumentTypeId]            INT          IDENTITY (1, 1) NOT NULL,
    [DocumentType]              VARCHAR (50) NULL,
    [DocumentTypeDescription]   VARCHAR(100) NULL,
    PRIMARY KEY CLUSTERED ([DocumentTypeId] ASC)
);


GO

