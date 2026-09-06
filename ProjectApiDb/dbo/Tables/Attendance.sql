CREATE TABLE [dbo].[Attendance] (
    [AttendanceId]   INT           IDENTITY (1, 1) NOT NULL,
    [EmployeeId]     INT           NOT NULL,
    [AttendanceDate] DATE          NOT NULL,
    [Status]         NVARCHAR (10) NOT NULL,
    [Intime]         DATETIME      NULL,
    PRIMARY KEY CLUSTERED ([AttendanceId] ASC),
    CONSTRAINT [FK_Attendance_Employee] FOREIGN KEY ([EmployeeId]) REFERENCES [dbo].[Employees] ([Id])
);


GO

