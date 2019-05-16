
SELECT player 
FROM goal
JOIN (SELECT id 
      FROM game 
      WHERE stadium = 'National Stadium, Warsaw') sub
ON goal.matchid = sub.id;