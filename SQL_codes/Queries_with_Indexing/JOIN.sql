-- Add index on publisherID in Game table (to optimize JOIN)
CREATE INDEX idx_publisherID ON Game(publisherID);

-- Query to retrieve all games along with their publisher names
SELECT g.gameName, p.publisherName
FROM Game g
JOIN Publisher p ON g.publisherID = p.publisherID;