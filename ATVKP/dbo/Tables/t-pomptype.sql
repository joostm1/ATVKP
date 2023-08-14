CREATE TABLE [dbo].[t-pomptype] (
    [pomptypepk]  INT          NOT NULL,
    [pompdiam_mm] INT          NOT NULL,
    [pompslag_mm] INT          NULL,
    [pompnaam]    VARCHAR (50) NOT NULL
);
GO

ALTER TABLE [dbo].[t-pomptype]
    ADD CONSTRAINT [PK_t-pomptype] PRIMARY KEY CLUSTERED ([pomptypepk] ASC);
GO

