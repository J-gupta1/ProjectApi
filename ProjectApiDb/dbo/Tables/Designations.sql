CREATE TABLE [dbo].[Designations] (
    [DesignationId] INT           IDENTITY (1, 1) NOT NULL,
    [Title]         NVARCHAR (50) NOT NULL,
    [Grade]         NVARCHAR (10) NULL,
    PRIMARY KEY CLUSTERED ([DesignationId] ASC)
);


GO

