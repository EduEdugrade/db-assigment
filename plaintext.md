## database

```sql
CREATE TABLE Developers (
    DeveloperID INTEGER PRIMARY KEY AUTOINCREMENT,
    Name TEXT NOT NULL UNIQUE,
    Country TEXT NOT NULL
);

CREATE TABLE Games (
    GameID INTEGER PRIMARY KEY AUTOINCREMENT,
    Name TEXT NOT NULL UNIQUE,
    Genre TEXT NOT NULL,
    ReviewScore INTEGER NOT NULL,
    HoursPlayed INTEGER NOT NULL,
    DeveloperID INTEGER NOT NULL,
    FOREIGN KEY (DeveloperID) REFERENCES Developers(DeveloperID)
);

INSERT INTO Developers (Name, Country) VALUES
('Valve', 'USA'),
('Creative Assembly', 'UK'),
('Larian Studios', 'Belgium'),
('Relic Entertainment', 'Canada'),
('Gearbox Software', 'USA'),
('Wube Software', 'Czech Republic'),
('CD Projekt Red', 'Poland'),
('Bethesda Game Studios', 'USA'),
('Coffee Stain Studios', 'Sweden'),
('ConcernedApe', 'USA');

INSERT INTO Games (Name, Genre, ReviewScore, HoursPlayed, DeveloperID) VALUES
('Dota 2','MOBA',88,4656,1),
('Total War: Warhammer 2','Strategy',93,650,2),
('Baldur''s Gate 3','RPG',96,579,3),
('Dawn of War','Strategy',95,342,4),
('Borderlands 2','Looter Shooter',90,526,5),
('Factorio','Automation Sim',98,269,6),
('Cyberpunk 2077','RPG',88,152,7),
('The Elder Scrolls IV: Oblivion','RPG',95,51,8),
('Satisfactory','Automation Sim',97,165,9),
('Stardew Valley','Farming Sim',98,127,10);
```
## queries
```sql
-- Sorts according to playtime, high to low
SELECT * FROM Games ORDER BY HoursPlayed DESC;

-- Sorts according to review score, high to low
SELECT * FROM Games ORDER BY ReviewScore DESC;

-- Inserts new games and developers
INSERT INTO Games (Name, Genre, ReviewScore, HoursPlayed, DeveloperID) VALUES
    ('Warhammer 40,000 Space Marine 2', 'Action',85,357, 11);
INSERT INTO Developers (Name, Country) VALUES
    ('Saber Interactive', 'USA');

INSERT INTO Games (Name, Genre, ReviewScore, HoursPlayed, DeveloperID) VALUES
    ('Devil May Cry 5', 'Action',95,75, 12);
INSERT INTO Developers (Name, Country) VALUES
    ('Capcom', 'Japan');

-- Double check that inserts worked
SELECT * FROM Games;
SELECT * FROM Developers;

-- Returns games with over 400 hours played
SELECT * FROM Games WHERE HoursPlayed > 400;

-- Returns automation simulation games
SELECT * FROM Games WHERE Genre = 'Automation Sim';

-- Select with JOIN (returns games with their developers)
SELECT Games.Name, Developers.Name
FROM Games
INNER JOIN Developers ON Games.DeveloperID = Developers.DeveloperID;

-- Update a game's genre
UPDATE Games
SET Genre = 'Souls-like'
WHERE Name = 'Stardew Valley';

-- Delete a game entry
DELETE FROM Games
WHERE Name = 'Dota 2';
```
