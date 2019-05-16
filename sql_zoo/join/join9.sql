

SELECT teamname, COUNT(teamid)
FROM eteam 
JOIN goal
ON eteam.id = goal.teamid
GROUP BY teamname;