-- Add index on gamePrice in Game table (to optimize ORDER BY)
CREATE INDEX idx_gamePrice ON Game(gamePrice);

-- Query to retrieve all games sorted by price, from highest to lowest
SELECT gameName, gamePrice
FROM Game
ORDER BY gamePrice DESC;