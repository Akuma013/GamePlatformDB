-- Add index on gamePrice in Game table (to optimize ORDER BY)
CREATE INDEX idx_gamePrice ON Game(gamePrice);

-- Query to retrieve the top 5 most expensive games
SELECT TOP 5 gameName, gamePrice
FROM Game
ORDER BY gamePrice DESC;