-- Add index on gameID in Game_Genre table (to optimize JOIN)
CREATE INDEX idx_gameID_genre ON Game_Genre(gameID);

-- Add index on genreName in Genre table (to optimize WHERE filtering)
CREATE INDEX idx_genreName ON Genre(genreName);

-- Add index on developerID in Game_Developer table (to optimize JOIN)
CREATE INDEX idx_developerID_game_developer ON Game_Developer(developerID);

-- Add index on gameID in Game_Developer table (to optimize JOIN)
CREATE INDEX idx_gameID_game_developer ON Game_Developer(gameID);

-- Query to get the names of games, their genres, and developers for all "RPG" games
SELECT g.gameName, ge.genreName, STRING_AGG(d.developerName, ', ') AS developers
FROM Game g
JOIN Game_Genre gg ON g.gameID = gg.gameID
JOIN Genre ge ON gg.genreID = ge.genreID
JOIN Game_Developer gd ON g.gameID = gd.gameID
JOIN Developer d ON gd.developerID = d.developerID
WHERE ge.genreName = 'RPG'
GROUP BY g.gameName, ge.genreName;
