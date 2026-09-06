CREATE TABLE [dbo].[Employees] (
    [Id]            INT             IDENTITY (1, 1) NOT NULL,
    [Name]          NVARCHAR (100)  NOT NULL,
    [Email]         NVARCHAR (100)  NOT NULL,
    [Phone]         NVARCHAR (20)   NULL,
    [DepartmentId]  INT             NOT NULL,
    [DesignationId] INT             NOT NULL,
    [ManagerId]     INT             NULL,
    [Salary]        DECIMAL (18, 2) NOT NULL,
    [JoiningDate]   DATE            NOT NULL,
    [IsActive]      BIT             DEFAULT ((1)) NOT NULL,
    [FirstName]     VARCHAR (50)    NULL,
    [LastName]      VARCHAR (50)    NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Employees_Departments] FOREIGN KEY ([DepartmentId]) REFERENCES [dbo].[Departments] ([DepartmentId]),
    CONSTRAINT [FK_Employees_Designations] FOREIGN KEY ([DesignationId]) REFERENCES [dbo].[Designations] ([DesignationId]),
    CONSTRAINT [FK_Employees_Manager] FOREIGN KEY ([ManagerId]) REFERENCES [dbo].[Employees] ([Id])
);


GO

