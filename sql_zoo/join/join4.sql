SELECT team1, team2, player
FROM game 
JOIN (SELECT player, matchid 
      FROM goal 
      WHERE player 
      LIKE 'Mario%') sub
ON game.id = sub.matchid; 