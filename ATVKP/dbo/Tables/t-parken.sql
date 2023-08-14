CREATE TABLE [dbo].[t-parken] (
    [pknaamkort] VARCHAR (50) NOT NULL,
    [naamlang]   VARCHAR (50) NOT NULL,
    [datumstart] DATETIME     NOT NULL,
    [datumeind]  DATETIME     NULL
);
GO

ALTER TABLE [dbo].[t-parken]
    ADD CONSTRAINT [PK_t-parken] PRIMARY KEY CLUSTERED ([pknaamkort] ASC);
GO

