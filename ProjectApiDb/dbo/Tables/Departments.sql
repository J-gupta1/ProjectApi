CREATE TABLE [dbo].[Departments] (
    [DepartmentId]   INT            IDENTITY (1, 1) NOT NULL,
    [DepartmentName] NVARCHAR (50)  NOT NULL,
    [Location]       NVARCHAR (100) NULL,
    PRIMARY KEY CLUSTERED ([DepartmentId] ASC)
);


GO

