CREATE TABLE [dbo].[MemberEmail] (
    [MemberEmailId] INT           IDENTITY (1, 1) NOT NULL,
    [MemberId]      INT           NULL,
    [EmailAddress]  VARCHAR (100) MASKED WITH(FUNCTION='email()') NOT NULL,
    [IsPrimary]     BIT           NULL,
    PRIMARY KEY CLUSTERED ([MemberEmailId] ASC),
    FOREIGN KEY ([MemberId]) REFERENCES [dbo].[Members] ([MemberId]),
    UNIQUE NONCLUSTERED ([EmailAddress] ASC)
);


GO

