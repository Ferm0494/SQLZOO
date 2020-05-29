-- 1

SELECT id, title
 FROM movie
 WHERE yr=1962
--  0

-- 2
SELECT yr FROM movie WHERE title = 'Citizen Kane'
-- 0

-- 3
SELECT id,title,yr FROM movie WHERE title LIKE '%Star Trek%' ORDER BY yr
-- 0

-- 4
SELECT id FROM actor where name =  'Glenn Close' 
-- 0

-- 5
SELECT id FROM movie WHERE title = 'Casablanca'
-- 0

-- 6
SELECT name FROM. casting JOIN actor ON casting.actorid = actor.id WHERE movieid = 11768 
-- 0

-- 7
SELECT name FROM movie JOIN casting ON movieid=movie.id JOIN actor ON actorid=actor.id WHERE title = 'Alien'
-- 0

-- 8
SELECT title FROM movie JOIN casting ON id = casting.movieid JOIN actor  ON casting.actorid= actor.id WHERE actor.name = 'Harrison Ford' 
-- 0

-- 9
SELECT title FROM movie JOIN casting ON id = casting.movieid JOIN actor  ON casting.actorid= actor.id WHERE actor.name = 'Harrison Ford' AND ord != 1
-- 0

-- 10
SELECT title,name FROM movie JOIN casting ON id = casting.movieid JOIN actor  ON casting.actorid= actor.id WHERE yr= 1962 AND ord = 1
-- 0

-- 11
SELECT yr,COUNT(title) FROM
  movie JOIN casting ON movie.id=movieid
        JOIN actor   ON actorid=actor.id
WHERE name='Rock Hudson'
GROUP BY yr
HAVING COUNT(title) > 2
-- 0

-- 12
 SELECT title,name FROM actor JOIN casting ON casting.actorid=actor.id JOIN movie ON movie.id= casting.movieid WHERE ord=1  AND 
movie.id IN(SELECT movie.id FROM movie JOIN casting ON casting.movieid= movie.id JOIN actor ON casting.actorid = actor.id WHERE name = 'Julie Andrews')
--   0

-- 13
SELECT name FROM actor JOIN casting ON actor.id = casting.actorid WHERE casting.ord = 1   GROUP BY name HAVING count(*)  >= 15  ORDER BY name ASC;
-- 0

-- 14
SELECT title, count(ACTORID) FROM movie JOIN casting ON id = casting.movieid JOIN actor ON casting.actorid = actor.id WHERE yr = 1978 GROUP BY title ORDER BY count(*) DESC, title
-- 

-- 15
SELECT name FROM actor JOIN casting ON casting.actorid= id WHERE  name !='Art Garfunkel' AND movieid IN (SELECT movieid FROM casting JOIN actor ON actorid = actor.id WHERE name ='Art Garfunkel' )
-- 
