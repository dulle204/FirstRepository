
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 11/16/2015 18:29:09
-- Generated from EDMX file: c:\users\dusan\documents\visual studio 2015\Projects\EF_Vezbanje\EF_Vezbanje\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [MyData];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Entity1'
CREATE TABLE [dbo].[Entity1] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Ime] nvarchar(max)  NOT NULL,
    [Prezime] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Entity2'
CREATE TABLE [dbo].[Entity2] (
    [Id2] int IDENTITY(1,1) NOT NULL,
    [Osobina] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Entity1Entity2'
CREATE TABLE [dbo].[Entity1Entity2] (
    [Entity1_Id] int  NOT NULL,
    [Entity2_Id2] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Entity1'
ALTER TABLE [dbo].[Entity1]
ADD CONSTRAINT [PK_Entity1]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id2] in table 'Entity2'
ALTER TABLE [dbo].[Entity2]
ADD CONSTRAINT [PK_Entity2]
    PRIMARY KEY CLUSTERED ([Id2] ASC);
GO

-- Creating primary key on [Entity1_Id], [Entity2_Id2] in table 'Entity1Entity2'
ALTER TABLE [dbo].[Entity1Entity2]
ADD CONSTRAINT [PK_Entity1Entity2]
    PRIMARY KEY CLUSTERED ([Entity1_Id], [Entity2_Id2] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Entity1_Id] in table 'Entity1Entity2'
ALTER TABLE [dbo].[Entity1Entity2]
ADD CONSTRAINT [FK_Entity1Entity2_Entity1]
    FOREIGN KEY ([Entity1_Id])
    REFERENCES [dbo].[Entity1]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Entity2_Id2] in table 'Entity1Entity2'
ALTER TABLE [dbo].[Entity1Entity2]
ADD CONSTRAINT [FK_Entity1Entity2_Entity2]
    FOREIGN KEY ([Entity2_Id2])
    REFERENCES [dbo].[Entity2]
        ([Id2])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Entity1Entity2_Entity2'
CREATE INDEX [IX_FK_Entity1Entity2_Entity2]
ON [dbo].[Entity1Entity2]
    ([Entity2_Id2]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------