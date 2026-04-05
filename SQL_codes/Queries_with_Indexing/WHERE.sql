-- Add index on gamePrice in Game table (to optimize WHERE filtering)
CREATE INDEX idx_gamePrice ON Game(gamePrice);

-- Query to retrieve all games that cost more than $50
SELECT gameName, gamePrice
FROM Game
WHERE gamePrice > 50;