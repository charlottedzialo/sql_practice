
SELECT goal.player, teamid, stadium, mdate
FROM game
JOIN goal 
ON goal.matchid = game.id 
WHERE goal.teamid  = 'GER';