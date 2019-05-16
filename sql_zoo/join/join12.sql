SELECT matchid, mdate, COUNT(matchid)
FROM goal
JOIN game 
ON goal.matchid = game.id 
WHERE teamid = 'GER'
GROUP BY matchid, mdate;