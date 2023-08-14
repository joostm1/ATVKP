CREATE TABLE [dbo].[t-straten] (
    [pkstraatkort] VARCHAR (50) NOT NULL,
    [straatlang]   VARCHAR (50) NULL,
    [fkparken]     VARCHAR (50) NOT NULL,
    [datumstart]   DATETIME     NOT NULL,
    [datumeind]    DATETIME     NULL
);
GO

ALTER TABLE [dbo].[t-straten]
    ADD CONSTRAINT [PK_t-straten] PRIMARY KEY CLUSTERED ([pkstraatkort] ASC);
GO

ALTER TABLE [dbo].[t-straten]
    ADD CONSTRAINT [FK_t-straten_t-parken] FOREIGN KEY ([fkparken]) REFERENCES [dbo].[t-parken] ([pknaamkort]);
GO

