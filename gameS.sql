--Sorts according to playtime, high to low
SELECT * FROM Games ORDER BY HoursPlayed DESC;
--Sorts according to review score, high to low
SELECT * FROM Games ORDER BY ReviewScore DESC;


--Inserts into game and developers
INSERT INTO Games (Name, Genre, ReviewScore, HoursPlayed, DeveloperID) VALUES
    ('Warhammer 40,000 Space Marine 2', 'action',85,357, 11);
INSERT INTO Developers (Name, Country) VALUES
    ('Saber interactive', 'USA');

INSERT INTO Games (Name, Genre, ReviewScore, HoursPlayed, DeveloperID) VALUES
    ('Devil may cry 5', 'action',95,75, 12);
INSERT INTO Developers (Name, Country) VALUES
    ('Capcom', 'Japan');

--Double check that inserts worked, they work
SELECT * FROM Games;
Select * FROM Developers;

--Returns games in which I have too much playtime.
SELECT * FROM Games WHERE HoursPlayed > 400;
--Returns Automation sims
SELECT * FROM Games WHERE Genre = 'automation sim';

--Select with join, check
SELECT Games.Name, Developers.name
FROM Games
INNER JOIN Developers on Games.DeveloperID = Developers.DeveloperID;
--Returns games and respective devs

--update, check
UPDATE Games
SET Genre = 'Souls-like' WHERE Name = 'Stardew Valley';
--Sets Stardew Valley genre to a more accurate description :)

--delete, check
DELETE FROM Games WHERE Name = 'Dota 2';
--My playtime is way too on that game high so might as well remove it, out of sight out of mind.