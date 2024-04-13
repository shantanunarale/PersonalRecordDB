CREATE TABLE [dbo].[MemberPhone] (
    [MemberPhoneId] INT           IDENTITY (1, 1) NOT NULL,
    [MemberId]      INT           NULL,
    [Phone]         VARCHAR (100) MASKED WITH (FUNCTION = 'partial(3, xxxxx, 2)') NOT NULL,
    [IsPrimary]     BIT           NULL,
    PRIMARY KEY CLUSTERED ([MemberPhoneId] ASC),
    FOREIGN KEY ([MemberId]) REFERENCES [dbo].[Members] ([MemberId]),
    UNIQUE NONCLUSTERED ([Phone] ASC)
);


GO

