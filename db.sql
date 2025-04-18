USE [LibraryManagementDB]
GO
/****** Object:  Table [dbo].[Book]    Script Date: 7/17/2024 10:42:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book](
	[id] [int] NOT NULL,
	[title] [nvarchar](200) NOT NULL,
	[description] [nvarchar](max) NOT NULL,
	[author] [nvarchar](200) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 7/17/2024 10:42:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departments](
	[Code] [varchar](10) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[History]    Script Date: 7/17/2024 10:42:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[History](
	[book_id] [int] NOT NULL,
	[student_id] [int] NOT NULL,
	[start_date] [date] NULL,
	[end_date] [date] NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[book_id] ASC,
	[student_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 7/17/2024 10:42:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[id] [int] NOT NULL,
	[name] [varchar](50) NULL,
	[birthdate] [date] NULL,
	[gender] [varchar](10) NULL,
	[address] [varchar](100) NULL,
	[city] [varchar](100) NULL,
	[country] [varchar](100) NULL,
	[department] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Book] ([id], [title], [description], [author]) VALUES (1, N'To Kill a Mockingbird', N'A novel about the serious issues of rape and racial inequality.', N'Harper Lee')
INSERT [dbo].[Book] ([id], [title], [description], [author]) VALUES (2, N'1984', N'A dystopian novel set in a totalitarian society under constant surveillance.', N'George Orwell')
INSERT [dbo].[Book] ([id], [title], [description], [author]) VALUES (3, N'Pride and Prejudice', N'A romantic novel that critiques the British landed gentry at the end of the 18th century.', N'Jane Austen')
INSERT [dbo].[Book] ([id], [title], [description], [author]) VALUES (4, N'The Great Gatsby', N'A novel about the American dream and the roaring twenties.', N'F. Scott Fitzgerald')
INSERT [dbo].[Book] ([id], [title], [description], [author]) VALUES (5, N'Moby-Dick', N'A whaling voyage narrative that explores complex themes such as revenge, fate, and the human condition.', N'Herman Melville')
INSERT [dbo].[Book] ([id], [title], [description], [author]) VALUES (6, N'War and Peace', N'A historical novel that chronicles the history of the French invasion of Russia.', N'Leo Tolstoy')
INSERT [dbo].[Book] ([id], [title], [description], [author]) VALUES (7, N'The Catcher in the Rye', N'A novel about teenage angst and alienation.', N'J.D. Salinger')
INSERT [dbo].[Book] ([id], [title], [description], [author]) VALUES (8, N'The Hobbit', N'A fantasy novel about the journey of Bilbo Baggins.', N'J.R.R. Tolkien')
INSERT [dbo].[Book] ([id], [title], [description], [author]) VALUES (9, N'Crime and Punishment', N'A psychological novel that delves into the mind of a troubled young man.', N'Fyodor Dostoevsky')
INSERT [dbo].[Book] ([id], [title], [description], [author]) VALUES (10, N'Jane Eyre', N'A novel about the life of an orphan girl who becomes a governess.', N'Charlotte Brontë')
INSERT [dbo].[Book] ([id], [title], [description], [author]) VALUES (11, N'Brave New World', N'A dystopian novel set in a future World State society.', N'Aldous Huxley')
INSERT [dbo].[Book] ([id], [title], [description], [author]) VALUES (12, N'Wuthering Heights', N'A novel about the passionate and doomed love between Catherine Earnshaw and Heathcliff.', N'Emily Brontë')
INSERT [dbo].[Book] ([id], [title], [description], [author]) VALUES (13, N'The Odyssey', N'An epic poem about the adventures of Odysseus.', N'Homer')
INSERT [dbo].[Book] ([id], [title], [description], [author]) VALUES (14, N'Ulysses', N'A modernist novel that parallels Homer Odyssey.', N'James Joyce')
INSERT [dbo].[Book] ([id], [title], [description], [author]) VALUES (15, N'The Divine Comedy', N'An epic poem that describes Dante journey through Hell, Purgatory, and Heaven.', N'Dante Alighieri')
INSERT [dbo].[Book] ([id], [title], [description], [author]) VALUES (16, N'Great Expectations', N'A novel about the growth and personal development of an orphan named Pip.', N'Charles Dickens')
INSERT [dbo].[Book] ([id], [title], [description], [author]) VALUES (17, N'One Hundred Years of Solitude', N'A multi-generational story that explores the rise and fall of the Buendía family.', N'Gabriel Garcia Marquez')
INSERT [dbo].[Book] ([id], [title], [description], [author]) VALUES (18, N'The Brothers Karamazov', N'A novel that explores deep philosophical and theological themes.', N'Fyodor Dostoevsky')
INSERT [dbo].[Book] ([id], [title], [description], [author]) VALUES (19, N'Anna Karenina', N'A tragic love story set against the backdrop of Russian high society.', N'Leo Tolstoy')
INSERT [dbo].[Book] ([id], [title], [description], [author]) VALUES (20, N'The Iliad', N'An epic poem about the Trojan War.', N'Homer')
GO
INSERT [dbo].[Departments] ([Code], [Name]) VALUES (N'AI', N'Artificial Intelligence')
INSERT [dbo].[Departments] ([Code], [Name]) VALUES (N'BA', N'Business Administration')
INSERT [dbo].[Departments] ([Code], [Name]) VALUES (N'CS', N'Computer Science')
INSERT [dbo].[Departments] ([Code], [Name]) VALUES (N'MC', N'Multimedia Communications')
INSERT [dbo].[Departments] ([Code], [Name]) VALUES (N'SE', N'Software Enginedd')
GO
INSERT [dbo].[History] ([book_id], [student_id], [start_date], [end_date], [status]) VALUES (1, 1, CAST(N'2024-07-17' AS Date), CAST(N'2024-07-20' AS Date), 0)
INSERT [dbo].[History] ([book_id], [student_id], [start_date], [end_date], [status]) VALUES (1, 2, CAST(N'2024-07-17' AS Date), CAST(N'2024-07-17' AS Date), 1)
INSERT [dbo].[History] ([book_id], [student_id], [start_date], [end_date], [status]) VALUES (1, 5, CAST(N'2024-07-17' AS Date), CAST(N'2024-07-17' AS Date), 1)
INSERT [dbo].[History] ([book_id], [student_id], [start_date], [end_date], [status]) VALUES (2, 1, CAST(N'2024-08-18' AS Date), CAST(N'2024-08-20' AS Date), 0)
INSERT [dbo].[History] ([book_id], [student_id], [start_date], [end_date], [status]) VALUES (2, 2, CAST(N'2024-06-06' AS Date), CAST(N'2024-07-07' AS Date), 1)
INSERT [dbo].[History] ([book_id], [student_id], [start_date], [end_date], [status]) VALUES (6, 1, CAST(N'2024-07-17' AS Date), CAST(N'2024-07-17' AS Date), 1)
INSERT [dbo].[History] ([book_id], [student_id], [start_date], [end_date], [status]) VALUES (6, 2, CAST(N'2024-07-17' AS Date), CAST(N'2024-07-17' AS Date), 0)
INSERT [dbo].[History] ([book_id], [student_id], [start_date], [end_date], [status]) VALUES (7, 5, CAST(N'2024-07-17' AS Date), CAST(N'2024-07-17' AS Date), 1)
GO
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (1, N'Stacey', CAST(N'2001-02-01' AS Date), N'Male', N'737-2770 Placerat Rd.', N'736528', N'China', N'SE')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (2, N'Leandra Keith', CAST(N'1999-08-05' AS Date), N'Female', N'Ap 506-7525 Neque. Rd.', N'527348', N'Ukraine', N'SE')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (4, N'Idola Landry', CAST(N'2004-04-11' AS Date), N'Female', N'916-6531 Fringilla Avenue', N'167158', N'Nigeria', N'SE')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (5, N'Austin Schroeder', CAST(N'2001-07-19' AS Date), N'Male', N'638-1242 Eu Rd.', N'6253', N'Indonesia', N'SE')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (6, N'Halla Grimes', CAST(N'2004-10-09' AS Date), N'Female', N'P.O. Box 105, 9573 Sem Rd.', N'1318', N'Russian Federation', N'SE')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (7, N'Calvin Elliott', CAST(N'1995-03-16' AS Date), N'Female', N'Ap 525-3251 Feugiat. Rd.', N'86169-48149', N'Italy', N'SE')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (8, N'Aiko Marks', CAST(N'2000-07-10' AS Date), N'Female', N'523-8832 Nibh Rd.', N'22112', N'Sweden', N'SE')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (9, N'Clio Mcintyre', CAST(N'1995-11-12' AS Date), N'Male', N'178-8874 Pede. St.', N'2852', N'Indonesia', N'SE')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (10, N'Henry Travis', CAST(N'2002-05-13' AS Date), N'Female', N'Ap 150-8604 Magna St.', N'72-88', N'Ukraine', N'SE')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (11, N'Jada James', CAST(N'1999-03-23' AS Date), N'Female', N'Ap 506-7525 Neque. Rd.', N'GD3S 1JS', N'Colombia', N'SE')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (12, N'Rosalyn Cleveland', CAST(N'1995-04-25' AS Date), N'Female', N'416-1470 Fermentum Avenue', N'93915', N'Singapore', N'SE')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (13, N'Charde Fields', CAST(N'1995-06-21' AS Date), N'Female', N'4491 Ut Road', N'736528', N'China', N'SE')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (14, N'Blossom Donovan', CAST(N'2003-05-08' AS Date), N'Female', N'P.O. Box 194, 4779 Ligula Avenue', N'72766', N'Norway', N'SE')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (15, N'Jackson Lowery', CAST(N'1995-02-13' AS Date), N'Male', N'Ap 251-1720 Enim Road', N'85830', N'Australia', N'SE')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (16, N'Hall Garrett', CAST(N'1996-05-14' AS Date), N'Female', N'Ap 971-4660 Elit Rd.', N'601348', N'China', N'SE')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (17, N'Finn Cooper', CAST(N'1997-08-22' AS Date), N'Male', N'P.O. Box 715, 6621 Purus St.', N'67227', N'Indonesia', N'SE')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (18, N'Orlando Pena', CAST(N'1999-04-29' AS Date), N'Male', N'737-2770 Placerat Rd.', N'527348', N'Germany', N'SE')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (19, N'Grant Glover', CAST(N'1999-10-25' AS Date), N'Female', N'826-1650 Vel Avenue', N'37834', N'Germany', N'SE')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (20, N'Sylvester Richardson', CAST(N'1996-05-15' AS Date), N'Male', N'Ap 113-2193 Eu St.', N'96651-25843', N'South Africa', N'SE')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (21, N'Jermaine Thornton', CAST(N'2001-05-02' AS Date), N'Female', N'Ap 213-2031 Pretium Road', N'0558', N'Mexico', N'SE')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (22, N'Kaitlin Adkins', CAST(N'1997-09-09' AS Date), N'Female', N'8451 Cursus. St.', N'72677', N'South Korea', N'SE')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (23, N'Zachery Sparks', CAST(N'2001-11-26' AS Date), N'Female', N'650-8974 Orci Avenue', N'0566-0653', N'Austria', N'SE')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (24, N'Clark Fuller', CAST(N'1995-12-21' AS Date), N'Male', N'629-4067 Magnis St.', N'249773', N'Chile', N'SE')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (25, N'Blythe Ballard', CAST(N'1998-01-21' AS Date), N'Male', N'167-9378 Eget Ave', N'167775', N'Brazil', N'SE')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (26, N'Kameko Sanders', CAST(N'2002-04-03' AS Date), N'Female', N'836-730 At, Street', N'75-95', N'Netherlands', N'SE')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (27, N'Abdul Boyle', CAST(N'1997-05-11' AS Date), N'Male', N'Ap 384-6514 Malesuada Rd.', N'31581701', N'Belgium', N'SE')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (28, N'Malcolm Burks', CAST(N'2001-08-22' AS Date), N'Female', N'P.O. Box 604, 3716 Semper Ave', N'58214', N'Vietnam', N'SE')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (29, N'Jael Alexander', CAST(N'1995-12-18' AS Date), N'Female', N'Ap 609-7017 Nulla Road', N'951583', N'Pakistan', N'SE')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (30, N'Rowan Cannon', CAST(N'1998-12-25' AS Date), N'Male', N'Ap 934-8670 Lorem St.', N'279183', N'Belgium', N'SE')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (31, N'Connor Dotson', CAST(N'1998-11-08' AS Date), N'Male', N'500-4991 Molestie St.', N'6761 RY', N'Sweden', N'SE')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (32, N'Iona Bush', CAST(N'2000-05-20' AS Date), N'Female', N'428-9401 Enim Av.', N'333500', N'Colombia', N'SE')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (33, N'Tasha Schmidt', CAST(N'1997-04-20' AS Date), N'Male', N'632-6623 Curabitur Rd.', N'89080', N'Sweden', N'SE')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (34, N'Clark Eaton', CAST(N'1998-10-07' AS Date), N'Male', N'Ap 180-4564 Odio. Avenue', N'414287', N'United Kingdom', N'SE')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (35, N'Carl Woodward', CAST(N'2002-06-21' AS Date), N'Male', N'P.O. Box 476, 6829 Morbi Avenue', N'426426', N'United States', N'SE')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (36, N'Ina Melton', CAST(N'1999-04-17' AS Date), N'Female', N'742-5552 Tortor Ave', N'15958', N'Colombia', N'SE')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (37, N'Arthur Cook', CAST(N'1996-08-23' AS Date), N'Female', N'P.O. Box 403, 9524 Malesuada Road', N'25588', N'Philippines', N'SE')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (38, N'Pearl Reynolds', CAST(N'1996-06-18' AS Date), N'Male', N'384-6560 Aenean Ave', N'174485', N'Belgium', N'SE')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (39, N'Tamara Combs', CAST(N'1996-04-02' AS Date), N'Female', N'Ap 891-7441 Mi. Rd.', N'82412', N'Russian Federation', N'SE')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (40, N'Quin Maxwell', CAST(N'2001-04-25' AS Date), N'Male', N'P.O. Box 438, 572 Vulputate, Avenue', N'77-16', N'Nigeria', N'CS')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (41, N'Sage Callahan', CAST(N'1997-03-13' AS Date), N'Female', N'Ap 343-6688 Sociis Rd.', N'60315', N'United Kingdom', N'CS')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (42, N'Zahir Kerr', CAST(N'1997-07-20' AS Date), N'Female', N'940-9596 Sed Street', N'78-34', N'Colombia', N'CS')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (43, N'Avye Christian', CAST(N'2003-05-21' AS Date), N'Female', N'P.O. Box 283, 9961 Orci, St.', N'74787', N'Chile', N'CS')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (44, N'Helen Washington', CAST(N'2004-05-20' AS Date), N'Female', N'404-5076 Molestie Road', N'121276', N'Poland', N'CS')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (45, N'Zelenia Hughes', CAST(N'2002-06-25' AS Date), N'Male', N'Ap 123-2416 Purus. Rd.', N'24410-217', N'Ireland', N'CS')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (46, N'Roth Mcdaniel', CAST(N'1998-12-05' AS Date), N'Female', N'Ap 759-3049 Vestibulum. Rd.', N'22453', N'Russian Federation', N'CS')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (47, N'Rowan England', CAST(N'1998-10-27' AS Date), N'Male', N'Ap 521-7510 A Rd.', N'92585', N'Mexico', N'CS')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (48, N'Drake Bennett', CAST(N'2004-05-23' AS Date), N'Male', N'Ap 387-372 Magna Rd.', N'54111', N'Belgium', N'CS')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (49, N'Gwendolyn Ellison', CAST(N'1995-02-06' AS Date), N'Male', N'Ap 356-8787 Arcu. Street', N'25556', N'Philippines', N'CS')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (50, N'Kimberley Guthrie', CAST(N'2003-05-18' AS Date), N'Male', N'893-8817 Nibh. Rd.', N'1329', N'South Korea', N'CS')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (51, N'Martha Golden', CAST(N'1995-07-04' AS Date), N'Female', N'8868 Eget St.', N'776526', N'United Kingdom', N'CS')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (52, N'Alan White', CAST(N'2004-12-22' AS Date), N'Male', N'240-8529 Consectetuer, Avenue', N'152667', N'Sweden', N'CS')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (53, N'Alea Walsh', CAST(N'1995-01-14' AS Date), N'Female', N'594-2442 Lorem Rd.', N'74-52', N'Belgium', N'CS')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (54, N'Mari Frank', CAST(N'1997-01-08' AS Date), N'Female', N'Ap 602-8502 Et Ave', N'66457-87538', N'Spain', N'CS')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (55, N'Stuart Myers', CAST(N'1996-03-30' AS Date), N'Male', N'7301 Enim, Rd.', N'349547', N'Austria', N'CS')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (56, N'Philip Franklin', CAST(N'1999-07-10' AS Date), N'Female', N'Ap 461-2861 Parturient Rd.', N'93466', N'China', N'CS')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (57, N'Theodore Bullock', CAST(N'2002-06-19' AS Date), N'Male', N'Ap 201-6320 Lorem Road', N'742671', N'Netherlands', N'CS')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (58, N'Kuame Duran', CAST(N'2004-03-17' AS Date), N'Male', N'617-1328 Malesuada Rd.', N'58-73', N'South Africa', N'CS')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (59, N'Alexandra Craig', CAST(N'2001-12-26' AS Date), N'Male', N'Ap 647-527 Id, Ave', N'87460', N'Spain', N'CS')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (60, N'Serina Perez', CAST(N'2004-11-17' AS Date), N'Male', N'P.O. Box 407, 4441 Vitae Rd.', N'98123', N'China', N'AI')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (61, N'Anthony Burch', CAST(N'2001-10-07' AS Date), N'Male', N'P.O. Box 107, 319 Duis Street', N'F1 0FU', N'Turkey', N'AI')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (62, N'Orlando Vinson', CAST(N'2000-08-05' AS Date), N'Male', N'Ap 423-7008 Euismod Ave', N'19417', N'Canada', N'AI')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (63, N'Cecilia Graves', CAST(N'1995-04-26' AS Date), N'Female', N'Ap 365-5951 Gravida Avenue', N'84545-70247', N'Turkey', N'AI')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (64, N'Calista Sloan', CAST(N'1999-06-16' AS Date), N'Female', N'6484 A Avenue', N'78326', N'Sweden', N'AI')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (65, N'Yuri Hancock', CAST(N'2000-11-06' AS Date), N'Male', N'Ap 228-8549 Sem St.', N'4726', N'United Kingdom', N'AI')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (66, N'Kelly Dillard', CAST(N'2004-11-22' AS Date), N'Female', N'P.O. Box 892, 3585 Quisque Street', N'973720', N'Ireland', N'AI')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (67, N'Brady Bates', CAST(N'2001-09-20' AS Date), N'Male', N'705-8377 Convallis Street', N'24604', N'United Kingdom', N'AI')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (68, N'Alden Rosales', CAST(N'1996-08-02' AS Date), N'Female', N'Ap 326-3377 Dui. St.', N'99759', N'Brazil', N'AI')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (69, N'Travis Compton', CAST(N'2002-03-09' AS Date), N'Male', N'P.O. Box 762, 5091 A Ave', N'721394', N'Norway', N'AI')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (70, N'Jael Chang', CAST(N'2001-08-25' AS Date), N'Male', N'325-2437 Ipsum. Avenue', N'15355', N'South Korea', N'AI')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (71, N'Sheila Brock', CAST(N'2001-07-14' AS Date), N'Female', N'6188 Donec Avenue', N'84807', N'South Korea', N'AI')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (72, N'Melyssa Kirk', CAST(N'1997-03-30' AS Date), N'Male', N'Ap 128-4926 Auctor. Rd.', N'666130', N'Turkey', N'AI')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (73, N'Jena Skinner', CAST(N'2000-03-31' AS Date), N'Male', N'452-9037 Mi Rd.', N'L45 9MK', N'Norway', N'AI')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (74, N'Quyn Whitehead', CAST(N'1996-07-14' AS Date), N'Male', N'758 Sit Avenue', N'29689', N'Nigeria', N'AI')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (75, N'Noah Fitzgerald', CAST(N'2003-11-06' AS Date), N'Female', N'568-2519 Sollicitudin Rd.', N'739182', N'Australia', N'AI')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (76, N'Isaiah Gates', CAST(N'1999-11-16' AS Date), N'Male', N'4121 Netus Street', N'18725', N'Peru', N'AI')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (77, N'Ferris Mcfarland', CAST(N'2002-02-23' AS Date), N'Female', N'P.O. Box 828, 2833 Molestie Ave', N'987843', N'South Africa', N'AI')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (78, N'Lacey Wilkinson', CAST(N'1999-02-08' AS Date), N'Male', N'P.O. Box 987, 7783 Id, Av.', N'88205', N'Poland', N'BA')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (79, N'Constance Christensen', CAST(N'2002-07-30' AS Date), N'Female', N'7217 Mattis Road', N'3947541', N'United Kingdom', N'BA')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (80, N'Thomas Reilly', CAST(N'1997-06-13' AS Date), N'Male', N'Ap 684-1833 Accumsan Ave', N'317274', N'Austria', N'BA')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (81, N'Rama Blackwell', CAST(N'1996-07-04' AS Date), N'Female', N'9839 Tincidunt St.', N'39371', N'New Zealand', N'BA')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (82, N'Roth Rosa', CAST(N'2001-10-21' AS Date), N'Male', N'Ap 376-3001 Iaculis Av.', N'42742', N'United Kingdom', N'BA')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (83, N'Gray Dillon', CAST(N'1997-12-04' AS Date), N'Male', N'Ap 641-7042 Quis St.', N'79759', N'Nigeria', N'BA')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (84, N'Sybil Ayala', CAST(N'2004-12-05' AS Date), N'Female', N'P.O. Box 207, 831 Mattis Ave', N'7456', N'Germany', N'BA')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (85, N'Aline Nielsen', CAST(N'1996-12-19' AS Date), N'Male', N'647-2654 Tortor Av.', N'5883', N'United Kingdom', N'BA')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (86, N'Kennedy Jefferson', CAST(N'1999-10-28' AS Date), N'Female', N'P.O. Box 888, 463 Libero. Road', N'66571', N'Belgium', N'BA')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (87, N'Cadman Daniels', CAST(N'2002-02-05' AS Date), N'Female', N'Ap 441-6048 Vulputate, St.', N'6546', N'Belgium', N'BA')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (88, N'Keane Woodward', CAST(N'1996-11-19' AS Date), N'Female', N'Ap 492-8684 Dolor St.', N'31111', N'Nigeria', N'BA')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (89, N'Thaddeus Wilkinson', CAST(N'2001-05-22' AS Date), N'Male', N'9652 Magna St.', N'R2G 2G2', N'Belgium', N'BA')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (90, N'Mona Miranda', CAST(N'2001-05-23' AS Date), N'Male', N'Ap 722-4194 Odio. Avenue', N'7858', N'Ireland', N'MC')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (91, N'Gabriel Spence', CAST(N'2001-10-05' AS Date), N'Female', N'9364 Diam Street', N'51206', N'South Africa', N'MC')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (92, N'Vladimir Cobb', CAST(N'1996-12-28' AS Date), N'Male', N'P.O. Box 964, 8712 Tellus. St.', N'365483', N'United Kingdom', N'MC')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (93, N'Deanna Chapman', CAST(N'1997-03-09' AS Date), N'Male', N'351-398 Ut Ave', N'45-32', N'Turkey', N'MC')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (94, N'Timothy Malone', CAST(N'1996-06-27' AS Date), N'Female', N'Ap 711-7547 Morbi Street', N'131867', N'Germany', N'MC')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (95, N'Ali Holmes', CAST(N'2002-04-26' AS Date), N'Female', N'212-2326 Enim Av.', N'1747', N'Ireland', N'MC')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (96, N'Maia Owens', CAST(N'1997-03-06' AS Date), N'Female', N'1840 Euismod Avenue', N'60249', N'Nigeria', N'MC')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (97, N'Ezekiel Franks', CAST(N'2004-08-21' AS Date), N'Male', N'891-3751 Mollis Street', N'486116', N'Peru', N'MC')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (98, N'Caldwell Greene', CAST(N'1999-04-22' AS Date), N'Female', N'934-9013 Sem Av.', N'7533', N'Norway', N'MC')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (99, N'Calvin Hartman', CAST(N'1996-05-16' AS Date), N'Male', N'P.O. Box 258, 3896 Sed Rd.', N'4483-2223', N'Vietnam', N'MC')
INSERT [dbo].[Students] ([id], [name], [birthdate], [gender], [address], [city], [country], [department]) VALUES (100, N'Myra William', CAST(N'1997-12-27' AS Date), N'Female', N'529-8407 Donec Rd.', N'50498', N'Netherlands', N'MC')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Departme__737584F6ED5DCD47]    Script Date: 7/17/2024 10:42:40 PM ******/
ALTER TABLE [dbo].[Departments] ADD UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[History]  WITH CHECK ADD FOREIGN KEY([book_id])
REFERENCES [dbo].[Book] ([id])
GO
ALTER TABLE [dbo].[History]  WITH CHECK ADD FOREIGN KEY([student_id])
REFERENCES [dbo].[Students] ([id])
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD FOREIGN KEY([department])
REFERENCES [dbo].[Departments] ([Code])
GO
