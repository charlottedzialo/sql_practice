

SELECT matchid, mdate, COUNT(matchid)
FROM game
JOIN goal
ON game.id = goal.matchid
WHERE team1 = 'POL' OR team2 = 'POL'  
GROUP BY matchid,mdate; 