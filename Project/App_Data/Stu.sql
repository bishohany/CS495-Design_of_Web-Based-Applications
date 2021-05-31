CREATE TABLE [dbo].[Stu] (
    [StudentID]   NVARCHAR (MAX) NOT NULL,
    [FNameA]      NVARCHAR (MAX) NOT NULL,
    [MNameA]      NVARCHAR (MAX) NOT NULL,
    [MMNameA]     NVARCHAR (MAX) NOT NULL,
    [LNameA]      NVARCHAR (MAX) NOT NULL,
    [BirthD]      DATE           NOT NULL,
    [FNameE]      NVARCHAR (MAX) NOT NULL,
    [MNameE]      NVARCHAR (MAX) NOT NULL,
    [MMNameE]     NVARCHAR (MAX) NOT NULL,
    [LNameE]      NVARCHAR (MAX) NOT NULL,
    [NaID]        INT            NOT NULL,
    [Certificate] NCHAR (3)      NOT NULL,
    [Gender]      NCHAR (1)      NOT NULL,
    [Degree]      FLOAT (53)     NOT NULL,
    PRIMARY KEY CLUSTERED ([NaID] ASC),
	CONSTRAINT [CK_Stu_Column] CHECK ([Gender]='M' OR [Gender]='F')
);