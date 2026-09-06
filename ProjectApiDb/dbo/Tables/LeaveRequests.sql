CREATE TABLE [dbo].[LeaveRequests] (
    [LeaveId]    INT            IDENTITY (1, 1) NOT NULL,
    [EmployeeId] INT            NOT NULL,
    [LeaveType]  NVARCHAR (30)  NOT NULL,
    [FromDate]   DATE           NOT NULL,
    [ToDate]     DATE           NOT NULL,
    [Status]     NVARCHAR (20)  DEFAULT ('Pending') NOT NULL,
    [Reason]     NVARCHAR (200) NULL,
    PRIMARY KEY CLUSTERED ([LeaveId] ASC),
    CONSTRAINT [FK_Leave_Employee] FOREIGN KEY ([EmployeeId]) REFERENCES [dbo].[Employees] ([Id])
);


GO

