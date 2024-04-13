CREATE TABLE [dbo].[MasterLogin] (
    [LoginId]     INT           IDENTITY (1, 1) NOT NULL,
    [UserName]    VARCHAR (200) NOT NULL,
    [Password]    VARBINARY (200) NOT NULL,
    [CreatedDate] DATETIME      DEFAULT (getdate()) NULL,
    PRIMARY KEY CLUSTERED ([LoginId] ASC)
);


GO

