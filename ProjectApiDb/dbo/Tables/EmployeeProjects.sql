CREATE TABLE [dbo].[EmployeeProjects] (
    [EmployeeProjectId] INT           IDENTITY (1, 1) NOT NULL,
    [EmployeeId]        INT           NOT NULL,
    [ProjectId]         INT           NOT NULL,
    [RoleInProject]     NVARCHAR (50) NULL,
    [FULLName]          VARCHAR (20)  NULL,
    PRIMARY KEY CLUSTERED ([EmployeeProjectId] ASC),
    CONSTRAINT [FK_EmpProj_Employee] FOREIGN KEY ([EmployeeId]) REFERENCES [dbo].[Employees] ([Id]),
    CONSTRAINT [FK_EmpProj_Project] FOREIGN KEY ([ProjectId]) REFERENCES [dbo].[Projects] ([ProjectId])
);


GO

