CREATE TABLE [dbo].[Users]
(
-- IDENTITY (1, 1) -> automatyczne wyliczanie swojej wartosci, startuje od 1 i zwiekszanie o 1
-- PRIMARY KEY CLUSTERED ([Id] ASC) -> kolumna Id jest kluczem glownym i indeksem klastrowym
	[Id]				INT				IDENTITY (1, 1) NOT NULL,
	[Email]				NVARCHAR (100) NOT NULL,
	[HashedPassword]	NVARCHAR (200) NOT NULL,
	[RegisterDate]		DATETIMEOFFSET NOT NULL,
	CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED ([Id] ASC)
);



GO

-- indeks na email, dzieki czemu wyszukiwanie uzytkownikow bedzie szybsze
CREATE unique INDEX [UQ_Users_Email] ON [dbo].[Users] ([Email])
