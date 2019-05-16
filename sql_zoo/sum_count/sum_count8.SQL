SELECT continent
FROM world
GROUP BY continent
HAVING sum(population) > 100000000;