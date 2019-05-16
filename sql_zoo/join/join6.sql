
SELECT mdate, teamname 
FROM game
JOIN (SELECT teamname, id 
    FROM eteam
    WHERE coach = 'Fernando Santos') sub
ON sub.id = game.team1; 