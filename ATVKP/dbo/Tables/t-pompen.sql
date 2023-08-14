CREATE TABLE [dbo].[t-pompen] (
    [tuinadres]  VARCHAR (50) NULL,
    ALTER TABLE [dbo].[t-pompen]
    ADD [typefk] INT NULL;,
    [datumstart] DATETIME     NULL,
    [datumeind]  DATETIME     NULL,
    [status]     VARCHAR (50) NULL
);
GO


ALTER TABLE [dbo].[t-pompen]
    ADD CONSTRAINT [FK_t-pomptype] FOREIGN KEY ([typefk]) REFERENCES [dbo].[t-pomptype] ([pomptypepk]);
GO


ALTER TABLE [dbo].[t-pompen]
    ADD CONSTRAINT [PK_t-pompen] PRIMARY KEY CLUSTERED ([pompid] ASC);
GO

