
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 02/18/2019 20:01:58
-- Generated from EDMX file: C:\Users\Kaan-Pc\Desktop\VS-PROJECTS\orm-ornek\orm-ornek\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [ormdeneme];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_MarkalarStok]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[StokSet] DROP CONSTRAINT [FK_MarkalarStok];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[kullanici]', 'U') IS NOT NULL
    DROP TABLE [dbo].[kullanici];
GO
IF OBJECT_ID(N'[dbo].[StokSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[StokSet];
GO
IF OBJECT_ID(N'[dbo].[MarkalarSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[MarkalarSet];
GO
IF OBJECT_ID(N'[dbo].[TedarikcilerSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TedarikcilerSet];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'kullanici'
CREATE TABLE [dbo].[kullanici] (
    [id] int IDENTITY(1,1) NOT NULL,
    [ad] nchar(10)  NOT NULL,
    [soyad] nchar(10)  NOT NULL,
    [kullanici_adi] nvarchar(max)  NOT NULL,
    [parola] nvarchar(8)  NOT NULL
);
GO

-- Creating table 'StokSet'
CREATE TABLE [dbo].[StokSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Urun_Ad] nvarchar(max)  NOT NULL,
    [Urun_Barkod] nvarchar(max)  NOT NULL,
    [Urun_Stok_Adet] int  NOT NULL,
    [Stok_Tarih] datetime  NOT NULL,
    [Birim_Fiyat_Alis] float  NOT NULL,
    [Birim_Fiyat_Satıs] float  NOT NULL,
    [KDV] int  NOT NULL,
    [Urun_Tedarikci] int  NOT NULL,
    [MarkaId] int  NOT NULL
);
GO

-- Creating table 'MarkalarSet'
CREATE TABLE [dbo].[MarkalarSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Marka_Ad] nvarchar(max)  NOT NULL,
    [Adres] nvarchar(max)  NOT NULL,
    [Telefon] nvarchar(11)  NOT NULL,
    [Mail] nvarchar(max)  NOT NULL,
    [Ülke] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'TedarikcilerSet'
CREATE TABLE [dbo].[TedarikcilerSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Ad] nvarchar(max)  NOT NULL,
    [Telefon] nvarchar(11)  NOT NULL,
    [Mail] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [id] in table 'kullanici'
ALTER TABLE [dbo].[kullanici]
ADD CONSTRAINT [PK_kullanici]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [Id] in table 'StokSet'
ALTER TABLE [dbo].[StokSet]
ADD CONSTRAINT [PK_StokSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'MarkalarSet'
ALTER TABLE [dbo].[MarkalarSet]
ADD CONSTRAINT [PK_MarkalarSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'TedarikcilerSet'
ALTER TABLE [dbo].[TedarikcilerSet]
ADD CONSTRAINT [PK_TedarikcilerSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [MarkaId] in table 'StokSet'
ALTER TABLE [dbo].[StokSet]
ADD CONSTRAINT [FK_MarkalarStok]
    FOREIGN KEY ([MarkaId])
    REFERENCES [dbo].[MarkalarSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_MarkalarStok'
CREATE INDEX [IX_FK_MarkalarStok]
ON [dbo].[StokSet]
    ([MarkaId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------