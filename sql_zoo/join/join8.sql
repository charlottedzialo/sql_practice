

SELECT DISTINCT(player) 
FROM goal
JOIN (SELECT id FROM game WHERE 'GER' IN (team1, team2)) sub
ON sub.id = goal.matchid
WHERE teamid!='GER'; 

