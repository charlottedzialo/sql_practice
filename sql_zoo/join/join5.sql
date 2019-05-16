SELECT player, teamid, coach, gtime 
FROM goal 
JOIN eteam 
ON eteam.id = goal.teamid
WHERE gtime<=10; 