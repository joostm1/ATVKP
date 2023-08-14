CREATE TABLE [dbo].[t-tuinen] (
    [tuinpk]       AS           (concat([straatkortfk],[nr],[toevoeging])) PERSISTED NOT NULL,
    [nr]           INT          NOT NULL,
    [toevoeging]   VARCHAR (10) NULL,
    [oppervlakte]  INT          NOT NULL,
    [straatkortfk] VARCHAR (50) NOT NULL,
    [datumstart]   DATETIME     NOT NULL,
    [datumeind]    DATETIME     NULL
);
GO

ALTER TABLE [dbo].[t-tuinen]
    ADD CONSTRAINT [PK_t-tuinen] PRIMARY KEY CLUSTERED ([tuinpk] ASC);
GO

ALTER TABLE [dbo].[t-tuinen]
    ADD CONSTRAINT [FK_t-tuinen_t-straten] FOREIGN KEY ([straatkortfk]) REFERENCES [dbo].[t-straten] ([pkstraatkort]);
GO

