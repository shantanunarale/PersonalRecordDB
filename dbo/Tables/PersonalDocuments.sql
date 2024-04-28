CREATE TABLE [dbo].[PersonalDocuments] (
    [PersonalDocumentId] INT           IDENTITY (1, 1) NOT NULL,
    [MemberId]           INT           NULL,
    [DocumentTypeId]     INT           NULL,
    [DocumentNumber]     VARCHAR (100) MASKED WITH (FUNCTION = 'default()') NOT NULL,
    [DocumentImage]      VARCHAR (200) NULL,
    PRIMARY KEY CLUSTERED ([PersonalDocumentId] ASC),
    FOREIGN KEY ([DocumentTypeId]) REFERENCES [dbo].[DocumentType] ([DocumentTypeId]),
    FOREIGN KEY ([MemberId]) REFERENCES [dbo].[Members] ([MemberId]),
    UNIQUE NONCLUSTERED ([MemberId] ASC, [DocumentNumber] ASC)
);


GO

