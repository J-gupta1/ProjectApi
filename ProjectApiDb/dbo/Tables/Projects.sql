CREATE TABLE [dbo].[Projects] (
    [ProjectId]   INT            IDENTITY (1, 1) NOT NULL,
    [ProjectName] NVARCHAR (100) NOT NULL,
    [StartDate]   DATE           NOT NULL,
    [EndDate]     DATE           NULL,
    [Status]      NVARCHAR (20)  DEFAULT ('Ongoing') NOT NULL,
    PRIMARY KEY CLUSTERED ([ProjectId] ASC)
);


GO

