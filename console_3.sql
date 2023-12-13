CREATE DATABASE [Semengram]
GO
USE [Semengram]
GO
CREATE TABLE [Countries]
(
    [Id] INT PRIMARY KEY IDENTITY(1, 1),
    [Name] NVARCHAR(MAX) NOT NULL
)
GO
CREATE TABLE [Users]
(
    [Id] INT PRIMARY KEY IDENTITY(1, 1),
    [Login] NVARCHAR(450) UNIQUE,
    [PasswordHash] NVARCHAR(MAX) NOT NULL,
    [Email] NVARCHAR(450) UNIQUE,
    [CountryId] INT FOREIGN KEY REFERENCES [Countries]([Id])
)
GO
CREATE TABLE [Channels]
(
    [Id] INT PRIMARY KEY IDENTITY(1, 1),
    [Name] NVARCHAR(450) UNIQUE,
    [OwnerId] INT FOREIGN KEY REFERENCES [Users]([Id]) ON DELETE CASCADE,
)

GO
CREATE TABLE [UsersChannels]
(
    [UserId] INT FOREIGN KEY REFERENCES [Users]([Id]) ON DELETE CASCADE,
    [ChannelId] INT FOREIGN KEY REFERENCES [Channels]([Id]) ON DELETE NO ACTION
)

GO
-- INSERT INTO [Countries] VALUES
-- (N'Canada'),
-- (N'USA'),
-- (N'Azerbaijan'),
-- (N'Russia')

-- insert into [Users] (Login, PasswordHash, Email, CountryId) values ('flaughlin0', '$2a$04$xnlpPa.Rn5/Jslrf6z99c.Cd.ibqLjmuZf5e6BEkoHhl/Ej4P.qoi', 'pgreson0@webmd.com', 3);
-- insert into [Users] (Login, PasswordHash, Email, CountryId) values ('lkeppe1', '$2a$04$mUoWWID9NxGOzZw17zfaGu3kCWPmnfWbxc6K.ndODeCErTQ4S5U7u', 'lmcclaren1@washingtonpost.com', 2);
-- insert into [Users] (Login, PasswordHash, Email, CountryId) values ('tpouton2', '$2a$04$3/7uZ/rJUtt6Y57fCXARTesuHSctcLrSoKN31TOXkLW1ue1cbGNXK', 'lboribal2@yelp.com', 2);
-- insert into [Users] (Login, PasswordHash, Email, CountryId) values ('ncanet3', '$2a$04$8nV1GS5xFUsSd98xAKSj/uACFH6xQq4ANnpFhpbYrhe0fxsPlPniq', 'gstollberg3@netscape.com', 1);
-- insert into [Users] (Login, PasswordHash, Email, CountryId) values ('rsemon4', '$2a$04$Gv5j27HyQAKafVJwow5fy..jviOt9XbPavyHodTcooLa8MTcHCFmy', 'dhuey4@sbwire.com', 4);
-- insert into [Users] (Login, PasswordHash, Email, CountryId) values ('filyushkin5', '$2a$04$MAEqDyYVRmLnxMvNytlt/uE0L4kiK1ugtTrnt.L1Py5.3mLrkpWwK', 'ccromett5@nps.gov', 4);
-- insert into [Users] (Login, PasswordHash, Email, CountryId) values ('mearland6', '$2a$04$9X6Oj3QMkyGd8YI9dIyxSOSxfbJHURiMf9CAlDcBKcSgcRU0C./iS', 'kkimmel6@topsy.com', 1);
-- insert into [Users] (Login, PasswordHash, Email, CountryId) values ('cbolzen7', '$2a$04$QRlZGI4tu5MnPVjQwFgU5uVoi8eLsn20xrFq65uax.9riso5N6VqC', 'sjoesbury7@nps.gov', 3);
-- insert into [Users] (Login, PasswordHash, Email, CountryId) values ('blorenzo8', '$2a$04$vG7X05S2.tcCt7Oy59mb5OjUB5tGR4CajbSHY9dtXwdyotDu1H4By', 'mmccole8@networkadvertising.org', 2);
-- insert into [Users] (Login, PasswordHash, Email, CountryId) values ('arookesby9', '$2a$04$dqkM4Fik1PcZgUdYc34MzuZUvpu1sahUBUI2YWg.RFCgONer5Exli', 'wklewi9@furl.net', 2);
-- insert into [Users] (Login, PasswordHash, Email, CountryId) values ('lheinemanna', '$2a$04$vZ1RzkfGZBCjNFIbwEIojO/.ixqw.c9p.NOysQP8GsYR9Qn13L26K', 'jpritcharda@wikia.com', 3);
-- insert into [Users] (Login, PasswordHash, Email, CountryId) values ('spettigrewb', '$2a$04$DoHueykx8V2yvOEB1WgltuL3TsXVeOzfZTO6.dHuHGP2Ud43VbuaW', 'ddavidovitchb@google.com', 2);
-- insert into [Users] (Login, PasswordHash, Email, CountryId) values ('modriscollc', '$2a$04$5BZCr7s0BUIxFSJ.RPz86OrLp6jM.kPZtVuTMz6OqYYvoMXWaD/Y.', 'clecountc@de.vu', 3);
-- insert into [Users] (Login, PasswordHash, Email, CountryId) values ('achilderhoused', '$2a$04$tDdrEd1Y/6kvko8FV4MGyOy9eDelmfXNApNztchdIUTEd7qopi1Bi', 'sniblod@desdev.cn', 3);
-- insert into [Users] (Login, PasswordHash, Email, CountryId) values ('afairhalle', '$2a$04$/G0VCn4aZOWSv9K./wrNleASJ./nZsV7upA0h0v1DvPCxNtydRGFC', 'ppickhavere@fastcompany.com', 2);
-- insert into [Users] (Login, PasswordHash, Email, CountryId) values ('ieself', '$2a$04$evQSUPPVMwbjbd6jQ9iGu.iRrEYq6Gd2mE39vaRUyT5qFjBLJ2KZG', 'ihartroppf@imgur.com', 4);
-- insert into [Users] (Login, PasswordHash, Email, CountryId) values ('dgorchg', '$2a$04$1I6SAqN6nf5j5Vy1r.nb5.vgJRhJHFRqgZqlpoIOjaVRv9LyVtu7y', 'sgladwellg@amazonaws.com', 2);
-- insert into [Users] (Login, PasswordHash, Email, CountryId) values ('sburgoinh', '$2a$04$F1soJgDEFRSzOEKrSNrqZuP0ue4Hqs/F9ALrOHldqu97x.VgZjmn2', 'ljelfsh@comcast.net', 4);
-- insert into [Users] (Login, PasswordHash, Email, CountryId) values ('clemmi', '$2a$04$miVWDyekA.IdBOyyrzi5sOW6rEL6aRk4TraTTDeXT.xK0KsSCxxU2', 'lchuteri@list-manage.com', 2);
-- insert into [Users] (Login, PasswordHash, Email, CountryId) values ('mclassenj', '$2a$04$La6uPhWvSQc5jrgfBS8pNuKSTQ3sYEiAuuxozcQOP4HCgDyI0jmBW', 'rtrebblej@time.com', 4);
-- insert into [Users] (Login, PasswordHash, Email, CountryId) values ('tlorainek', '$2a$04$wLo/cBDYbRURLN6Rrh4UDuOsuvsU5aUR2ACgda.U4DMom7eaCo6de', 'gkleynenk@cmu.edu', 1);
-- insert into [Users] (Login, PasswordHash, Email, CountryId) values ('sjuettl', '$2a$04$MKNWJAK1GwPP98JXcE1Uv.ScBvYSo/Nvc051oVd.xLj6D0Ng75cwe', 'yclymal@cisco.com', 3);
-- insert into [Users] (Login, PasswordHash, Email, CountryId) values ('mtruemanm', '$2a$04$i/Gc8/y3UcRpcRlVuPmHRexU4ZgZP2DTAcehQXQ.uVxjc7Wh./gP6', 'akiddellm@miibeian.gov.cn', 1);
-- insert into [Users] (Login, PasswordHash, Email, CountryId) values ('hjaquestn', '$2a$04$Ls03KwoR3.fQeAFkjBEBsOP1bFhkrDb1PPlsHERPVvc5AhAdDZNE.', 'jscandrettn@plala.or.jp', 1);
-- insert into [Users] (Login, PasswordHash, Email, CountryId) values ('mlubeo', '$2a$04$0TBlkgwfaPAb9Qte9OgsG.Mq36ZXJ6MJ5.cqp8RfFBhALWpJ1TJSy', 'oorrockso@gnu.org', 1);
-- insert into [Users] (Login, PasswordHash, Email, CountryId) values ('lactonp', '$2a$04$HyI5eHro0E71ssaWqYQ6POfVd7EnMLMz29j95pdBf5u3e/7nPUL6C', 'ibracherp@instagram.com', 3);
-- insert into [Users] (Login, PasswordHash, Email, CountryId) values ('mdreigherq', '$2a$04$Tg//KSktYu3U6hTwehtbYOJwN5T4UKpI5EcqO/5LWfPGp3B7GOrSi', 'gpythonq@networkadvertising.org', 3);
-- insert into [Users] (Login, PasswordHash, Email, CountryId) values ('jchestonr', '$2a$04$fSsjk1QcUWjZLqT5Jp6mWe2kKpj0/deiRskbkSi2E6kjoRf5LwQkq', 'mtrothr@furl.net', 4);
-- insert into [Users] (Login, PasswordHash, Email, CountryId) values ('smccanes', '$2a$04$60CYHsn28ZpwLtUkaIXnmOfLr7jYnQMoT9C9.601oLZxao0cnIS6q', 'dparkyns@uol.com.br', 3);
-- insert into [Users] (Login, PasswordHash, Email, CountryId) values ('anockallst', '$2a$04$1NhotlDhIqKmP7GIL2aiQOktt6vlHA9zUf8g44OM7RC0RnIfyER6a', 'mmasseot@parallels.com', 1);
-- insert into [Users] (Login, PasswordHash, Email, CountryId) values ('cwintu', '$2a$04$SnWq/S1DYkZ2qkNHs/8hTe3NOxs2dADr58dam331zP4mbRmZpBm3G', 'ccollingwoodu@ustream.tv', 1);
-- insert into [Users] (Login, PasswordHash, Email, CountryId) values ('firelandv', '$2a$04$tZa27oSN5IFR4HXaQb9SiuvvcI41gB3.34OJbuGL2x/F92sUi4En6', 'framptonv@sfgate.com', 3);
-- insert into [Users] (Login, PasswordHash, Email, CountryId) values ('rmclorinanw', '$2a$04$zmQUIWfJXPQWNZGGL03aFeSQsRSLpqiNCowPFS0FI5kVolz1Q65qa', 'jcaskiew@hatena.ne.jp', 2);
-- insert into [Users] (Login, PasswordHash, Email, CountryId) values ('hlaugax', '$2a$04$LvzLxVmi3PMgFIMoo.0OU.4eyxw0XzVrd2rIYeG9qC9FSe/vMrgSm', 'fewenx@comcast.net', 3);
-- insert into [Users] (Login, PasswordHash, Email, CountryId) values ('abiery', '$2a$04$bt.YASfECpGywVs4kKxGguD460ZDPs8.hJi4U1VS7yFmDBSs5tQ.O', 'aranny@stumbleupon.com', 2);
-- insert into [Users] (Login, PasswordHash, Email, CountryId) values ('lpriddisz', '$2a$04$JfhIKAxlkgEPyWrx/vQZseuzI5DdfsAgOvcsWGSZRZDoYxpy./GVq', 'dguillermanz@pagesperso-orange.fr', 4);
-- insert into [Users] (Login, PasswordHash, Email, CountryId) values ('qsmorthit10', '$2a$04$uHQ.wPQEol9H9usY5PkRguLXIscp6g0YP3sIN5ADt3syymDY87rkC', 'dmcgauhy10@google.fr', 2);
-- insert into [Users] (Login, PasswordHash, Email, CountryId) values ('zfawley11', '$2a$04$NiCmqjsdYhm8u12N3Q81YOb6/mm6xwUok0o7OwFXGiLw5gyk01z1u', 'bparagreen11@wordpress.org', 3);
-- insert into [Users] (Login, PasswordHash, Email, CountryId) values ('sdilston12', '$2a$04$7CZ.VqE1VxIZ.tsz5VZSxOTA52ezDsiPT72vyDh47hNmA6WpvRPMK', 'jbakhrushkin12@blog.com', 2);
-- insert into [Users] (Login, PasswordHash, Email, CountryId) values ('ckoppel13', '$2a$04$J.9hKH1KlGuEaqkPva0hpu0wRbFZcAyCYJv3apG8TKypwUBj8Kp2a', 'hgookey13@studiopress.com', 1);
-- insert into [Users] (Login, PasswordHash, Email, CountryId) values ('fgrishukov14', '$2a$04$xxS49Ga/SwyPhNT/x..HuOsyJceZ1PHzMJF21OfCD51koPk4IGGva', 'tseabridge14@salon.com', 4);
-- insert into [Users] (Login, PasswordHash, Email, CountryId) values ('cworsham15', '$2a$04$KyW3qZYet83lsauRr9m54OiMmCj/L5sODXMhiIiCXFyBv3eIXIx66', 'jstandon15@accuweather.com', 2);
-- insert into [Users] (Login, PasswordHash, Email, CountryId) values ('lfigge16', '$2a$04$1hFVEdlafWh/9uPIcm98B.Y0JgQ.eut0ueOCI.7BLKWOImhATvgKe', 'adeeson16@sbwire.com', 1);
-- insert into [Users] (Login, PasswordHash, Email, CountryId) values ('sabelson17', '$2a$04$V72geonkZ2Mq5IRvwNjlRup5Tsy6NfCwbiz5yiFAzgH.NrCvAIf2W', 'sdalling17@tmall.com', 2);
-- insert into [Users] (Login, PasswordHash, Email, CountryId) values ('wdagostino18', '$2a$04$oqUIpgqx.i5hzR0r1hHlcOjvjf2QEl3ikDrnkee8pLyQJZtWu4TgW', 'jmoraleda18@dropbox.com', 1);
-- insert into [Users] (Login, PasswordHash, Email, CountryId) values ('btitheridge19', '$2a$04$A5IyTF3LMVm6/oftQ4a4xOzodf.SqZhWbnsbD9kgGB6mXl/lSFzGW', 'mlehenmann19@networksolutions.com', 4);
-- insert into [Users] (Login, PasswordHash, Email, CountryId) values ('tmackaile1a', '$2a$04$x3M4FXL9sTc27H3qqDLzROPodIhXnL9xC8rqwdbTlmGCvDIlB5qxS', 'eludgrove1a@xing.com', 4);
-- insert into [Users] (Login, PasswordHash, Email, CountryId) values ('mlaxon1b', '$2a$04$16l8ag8xM6SgqpxJPksF0.3XaT.JbW7ILGIMwurDWqvX1tpDDPRfq', 'zmarkovich1b@odnoklassniki.ru', 1);
-- insert into [Users] (Login, PasswordHash, Email, CountryId) values ('fsouthern1c', '$2a$04$y0Gmc27BoYEAdoK4hrc.s.L8F6HBe/mhj4h7vIkwSKcIGkq8xx0CC', 'hrowntree1c@xing.com', 1);
-- insert into [Users] (Login, PasswordHash, Email, CountryId) values ('kbuddington1d', '$2a$04$MqqvZusI3EwwFDTUXxNiVOkQAppG914SASc2VYs/ISics0HriiiZG', 'ftollit1d@seesaa.net', 2);

-- insert into Channels (Name, OwnerId) values ('Topiclounge', 50);
-- insert into Channels (Name, OwnerId) values ('Feednation', 42);
-- insert into Channels (Name, OwnerId) values ('Feedfish', 55);
-- insert into Channels (Name, OwnerId) values ('Topdrive', 31);
-- insert into Channels (Name, OwnerId) values ('Voolith', 39);
-- insert into Channels (Name, OwnerId) values ('Twitternation', 32);
-- insert into Channels (Name, OwnerId) values ('Oloo', 41);
-- insert into Channels (Name, OwnerId) values ('Quamba', 23);
-- insert into Channels (Name, OwnerId) values ('BlogXS', 17);
-- insert into Channels (Name, OwnerId) values ('Oyoba', 39);
-- insert into Channels (Name, OwnerId) values ('Twimbo', 14);
-- insert into Channels (Name, OwnerId) values ('Kwinu', 55);
-- insert into Channels (Name, OwnerId) values ('Linktype', 11);
-- insert into Channels (Name, OwnerId) values ('Demimbu', 7);
-- insert into Channels (Name, OwnerId) values ('Gigabox', 39);
-- insert into Channels (Name, OwnerId) values ('Babbleopia', 40);
-- insert into Channels (Name, OwnerId) values ('Aimbu', 45);
-- insert into Channels (Name, OwnerId) values ('Eamia', 19);
-- insert into Channels (Name, OwnerId) values ('Realfire', 40);
-- insert into Channels (Name, OwnerId) values ('Reallinks', 19);
-- insert into Channels (Name, OwnerId) values ('Shufflebeat', 43);
-- insert into Channels (Name, OwnerId) values ('Jaxworks', 41);
-- insert into Channels (Name, OwnerId) values ('Aimbo', 14);
-- insert into Channels (Name, OwnerId) values ('Blogspan', 35);
-- insert into Channels (Name, OwnerId) values ('Realpoint', 18);
-- insert into Channels (Name, OwnerId) values ('Roomm', 15);
-- insert into Channels (Name, OwnerId) values ('Flashset', 13);
-- insert into Channels (Name, OwnerId) values ('Layo', 29);
-- insert into Channels (Name, OwnerId) values ('Gigashots', 23);
-- insert into Channels (Name, OwnerId) values ('Twitterbeat', 22);


-- insert into UsersChannels (UserId, ChannelId) values (39, 6);
-- insert into UsersChannels (UserId, ChannelId) values (36, 26);
-- insert into UsersChannels (UserId, ChannelId) values (7, 1);
-- insert into UsersChannels (UserId, ChannelId) values (21, 3);
-- insert into UsersChannels (UserId, ChannelId) values (56, 10);
-- insert into UsersChannels (UserId, ChannelId) values (8, 17);
-- insert into UsersChannels (UserId, ChannelId) values (29, 23);
-- insert into UsersChannels (UserId, ChannelId) values (32, 7);
-- insert into UsersChannels (UserId, ChannelId) values (42, 2);
-- insert into UsersChannels (UserId, ChannelId) values (39, 23);
-- insert into UsersChannels (UserId, ChannelId) values (8, 19);
-- insert into UsersChannels (UserId, ChannelId) values (53, 17);
-- insert into UsersChannels (UserId, ChannelId) values (56, 27);
-- insert into UsersChannels (UserId, ChannelId) values (56, 19);
-- insert into UsersChannels (UserId, ChannelId) values (29, 6);
-- insert into UsersChannels (UserId, ChannelId) values (15, 27);
-- insert into UsersChannels (UserId, ChannelId) values (55, 28);
-- insert into UsersChannels (UserId, ChannelId) values (37, 14);
-- insert into UsersChannels (UserId, ChannelId) values (52, 25);
-- insert into UsersChannels (UserId, ChannelId) values (7, 28);
-- insert into UsersChannels (UserId, ChannelId) values (48, 30);
-- insert into UsersChannels (UserId, ChannelId) values (36, 2);
-- insert into UsersChannels (UserId, ChannelId) values (51, 13);
-- insert into UsersChannels (UserId, ChannelId) values (28, 24);
-- insert into UsersChannels (UserId, ChannelId) values (39, 13);
-- insert into UsersChannels (UserId, ChannelId) values (7, 25);
-- insert into UsersChannels (UserId, ChannelId) values (30, 4);
-- insert into UsersChannels (UserId, ChannelId) values (24, 23);
-- insert into UsersChannels (UserId, ChannelId) values (15, 19);
-- insert into UsersChannels (UserId, ChannelId) values (23, 21);
-- insert into UsersChannels (UserId, ChannelId) values (56, 30);
-- insert into UsersChannels (UserId, ChannelId) values (19, 4);
-- insert into UsersChannels (UserId, ChannelId) values (20, 22);
-- insert into UsersChannels (UserId, ChannelId) values (43, 2);
-- insert into UsersChannels (UserId, ChannelId) values (52, 3);
-- insert into UsersChannels (UserId, ChannelId) values (12, 18);
-- insert into UsersChannels (UserId, ChannelId) values (37, 13);
-- insert into UsersChannels (UserId, ChannelId) values (49, 9);
-- insert into UsersChannels (UserId, ChannelId) values (36, 6);
-- insert into UsersChannels (UserId, ChannelId) values (35, 19);
-- insert into UsersChannels (UserId, ChannelId) values (16, 15);
-- insert into UsersChannels (UserId, ChannelId) values (31, 7);
-- insert into UsersChannels (UserId, ChannelId) values (10, 17);
-- insert into UsersChannels (UserId, ChannelId) values (35, 7);
-- insert into UsersChannels (UserId, ChannelId) values (23, 22);
-- insert into UsersChannels (UserId, ChannelId) values (54, 22);
-- insert into UsersChannels (UserId, ChannelId) values (37, 24);
-- insert into UsersChannels (UserId, ChannelId) values (31, 5);
-- insert into UsersChannels (UserId, ChannelId) values (26, 9);
-- insert into UsersChannels (UserId, ChannelId) values (7, 7);
-- insert into UsersChannels (UserId, ChannelId) values (23, 1);
-- insert into UsersChannels (UserId, ChannelId) values (15, 27);
-- insert into UsersChannels (UserId, ChannelId) values (38, 12);
-- insert into UsersChannels (UserId, ChannelId) values (33, 14);
-- insert into UsersChannels (UserId, ChannelId) values (15, 23);
-- insert into UsersChannels (UserId, ChannelId) values (52, 12);
-- insert into UsersChannels (UserId, ChannelId) values (47, 7);
-- insert into UsersChannels (UserId, ChannelId) values (51, 13);
-- insert into UsersChannels (UserId, ChannelId) values (33, 19);
-- insert into UsersChannels (UserId, ChannelId) values (55, 29);
-- insert into UsersChannels (UserId, ChannelId) values (17, 8);
-- insert into UsersChannels (UserId, ChannelId) values (41, 11);
-- insert into UsersChannels (UserId, ChannelId) values (45, 3);
-- insert into UsersChannels (UserId, ChannelId) values (41, 27);
-- insert into UsersChannels (UserId, ChannelId) values (45, 5);
-- insert into UsersChannels (UserId, ChannelId) values (29, 25);
-- insert into UsersChannels (UserId, ChannelId) values (55, 19);
-- insert into UsersChannels (UserId, ChannelId) values (14, 3);
-- insert into UsersChannels (UserId, ChannelId) values (22, 13);
-- insert into UsersChannels (UserId, ChannelId) values (50, 16);
-- insert into UsersChannels (UserId, ChannelId) values (12, 20);
-- insert into UsersChannels (UserId, ChannelId) values (18, 3);
-- insert into UsersChannels (UserId, ChannelId) values (26, 16);
-- insert into UsersChannels (UserId, ChannelId) values (44, 16);
-- insert into UsersChannels (UserId, ChannelId) values (47, 21);
-- insert into UsersChannels (UserId, ChannelId) values (11, 9);
-- insert into UsersChannels (UserId, ChannelId) values (9, 20);
-- insert into UsersChannels (UserId, ChannelId) values (40, 29);
-- insert into UsersChannels (UserId, ChannelId) values (39, 15);
-- insert into UsersChannels (UserId, ChannelId) values (43, 9);
-- insert into UsersChannels (UserId, ChannelId) values (46, 7);
-- insert into UsersChannels (UserId, ChannelId) values (46, 8);
-- insert into UsersChannels (UserId, ChannelId) values (28, 21);
-- insert into UsersChannels (UserId, ChannelId) values (26, 15);
-- insert into UsersChannels (UserId, ChannelId) values (40, 1);
-- insert into UsersChannels (UserId, ChannelId) values (46, 6);
-- insert into UsersChannels (UserId, ChannelId) values (16, 8);
-- insert into UsersChannels (UserId, ChannelId) values (37, 22);
-- insert into UsersChannels (UserId, ChannelId) values (49, 7);
-- insert into UsersChannels (UserId, ChannelId) values (34, 5);
-- insert into UsersChannels (UserId, ChannelId) values (30, 22);
-- insert into UsersChannels (UserId, ChannelId) values (27, 27);
-- insert into UsersChannels (UserId, ChannelId) values (30, 7);
-- insert into UsersChannels (UserId, ChannelId) values (26, 17);
-- insert into UsersChannels (UserId, ChannelId) values (17, 2);
-- insert into UsersChannels (UserId, ChannelId) values (27, 1);
-- insert into UsersChannels (UserId, ChannelId) values (14, 21);
-- insert into UsersChannels (UserId, ChannelId) values (47, 8);
-- insert into UsersChannels (UserId, ChannelId) values (42, 22);
-- insert into UsersChannels (UserId, ChannelId) values (20, 18);
-- insert into UsersChannels (UserId, ChannelId) values (56, 28);
-- insert into UsersChannels (UserId, ChannelId) values (32, 29);
-- insert into UsersChannels (UserId, ChannelId) values (55, 9);
-- insert into UsersChannels (UserId, ChannelId) values (39, 24);
-- insert into UsersChannels (UserId, ChannelId) values (29, 2);
-- insert into UsersChannels (UserId, ChannelId) values (13, 5);
-- insert into UsersChannels (UserId, ChannelId) values (43, 11);
-- insert into UsersChannels (UserId, ChannelId) values (40, 29);
-- insert into UsersChannels (UserId, ChannelId) values (14, 8);
-- insert into UsersChannels (UserId, ChannelId) values (10, 20);
-- insert into UsersChannels (UserId, ChannelId) values (18, 29);
-- insert into UsersChannels (UserId, ChannelId) values (22, 3);
-- insert into UsersChannels (UserId, ChannelId) values (50, 3);
-- insert into UsersChannels (UserId, ChannelId) values (37, 12);
-- insert into UsersChannels (UserId, ChannelId) values (24, 3);
-- insert into UsersChannels (UserId, ChannelId) values (54, 12);
-- insert into UsersChannels (UserId, ChannelId) values (27, 17);
-- insert into UsersChannels (UserId, ChannelId) values (45, 5);
-- insert into UsersChannels (UserId, ChannelId) values (21, 2);
-- insert into UsersChannels (UserId, ChannelId) values (34, 7);


SELECT DISTINCT U.Login, C.Name
FROM Users AS U, Channels AS C
WHERE U.Login = N'lkeppe1'