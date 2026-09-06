CREATE TABLE [dbo].[SalaryHistory] (
    [SalaryHistoryId] INT             IDENTITY (1, 1) NOT NULL,
    [EmployeeId]      INT             NOT NULL,
    [EffectiveDate]   DATE            NOT NULL,
    [OldSalary]       DECIMAL (18, 2) NOT NULL,
    [NewSalary]       DECIMAL (18, 2) NOT NULL,
    [Reason]          NVARCHAR (100)  NULL,
    PRIMARY KEY CLUSTERED ([SalaryHistoryId] ASC),
    CONSTRAINT [FK_SalaryHistory_Employee] FOREIGN KEY ([EmployeeId]) REFERENCES [dbo].[Employees] ([Id])
);


GO

