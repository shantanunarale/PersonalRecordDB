CREATE TABLE [dbo].[BankAccounts] (
    [BA_Id]           INT           IDENTITY (1, 1) NOT NULL,
    [MemberId]        INT           NOT NULL,
    [AccountNumber]   VARCHAR (50)  NOT NULL,
    [CustomerId]      VARCHAR (50)  NOT NULL,
    [CancelledCheque] VARCHAR (200) NULL,
    [OtherDocuments]  VARCHAR (200) NULL,
    [AccountType]     VARCHAR (20)  NULL,
    PRIMARY KEY CLUSTERED ([BA_Id] ASC),
    CHECK ([AccountType]='Salary' OR [AccountType]='Savings'),
    FOREIGN KEY ([MemberId]) REFERENCES [dbo].[Members] ([MemberId]),
    UNIQUE NONCLUSTERED ([AccountNumber] ASC),
    UNIQUE NONCLUSTERED ([CustomerId] ASC)
);


GO

