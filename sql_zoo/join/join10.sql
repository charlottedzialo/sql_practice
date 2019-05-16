
SELECT stadium, COUNT(matchid)
FROM game 
JOIN goal
ON game.id = goal.matchid
GROUP BY stadium; 