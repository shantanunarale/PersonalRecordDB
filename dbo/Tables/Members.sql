CREATE TABLE [dbo].[Members] (
    [MemberId]            INT           IDENTITY (1, 1) NOT NULL,
    [LoginId]             INT           NULL,
    [FirstName]           VARCHAR (100) NOT NULL,
    [MiddleName]          VARCHAR (100) NULL,
    [LastName]            VARCHAR (100) NOT NULL,
    [Gender]              VARCHAR (6)   NOT NULL,
    [DateOfBirth]         DATE          MASKED WITH (FUNCTION = 'default()') NOT NULL,
    [IsPrimary]           BIT           NOT NULL,
    [RelationWithPrimary] VARCHAR (15)  NULL,
    [MemberImage]         VARCHAR (200) NULL,
    PRIMARY KEY CLUSTERED ([MemberId] ASC),
    CHECK ([Gender]='Female' OR [Gender]='Male'),
    CHECK ([RelationWithPrimary]='Brother' OR [RelationWithPrimary]='Sister' OR [RelationWithPrimary]='Son' OR [RelationWithPrimary]='Daughter' OR [RelationWithPrimary]='Spouse' OR [RelationWithPrimary]='Father' OR [RelationWithPrimary]='Mother'),
    FOREIGN KEY ([LoginId]) REFERENCES [dbo].[MasterLogin] ([LoginId])
);


GO

