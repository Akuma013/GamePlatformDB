-- Add index on publisherID in Game table (to optimize GROUP BY and JOIN)
CREATE INDEX idx_publisherID_game ON Game(publisherID);

-- Query to get the number of games each publisher has, but only for publishers with more than 3 games
SELECT p.publisherName, COUNT(g.gameID) AS game_count
FROM Publisher p
JOIN Game g ON p.publisherID = g.publisherID
GROUP BY p.publisherName
HAVING COUNT(g.gameID) > 3;