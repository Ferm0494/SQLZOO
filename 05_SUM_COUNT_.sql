-- Show the total population of the world.
SELECT SUM(population)
FROM world
-- 0 --

-- List all the continents - just once each.
SELECT DISTINCT continent FROM world
-- 0 -- 

-- Give the total GDP of Africa
SELECT SUM(gdp) FROM world WHERE continent = 'Africa'
--  0 --

--  How many countries have an area of at least 1000000
SELECT COUNT(name) FROM world WHERE AREA >= 1000000
-- 0 --

-- What is the total population of ('Estonia', 'Latvia', 'Lithuania')
SELECT sum(population) FROM world WHERE name IN ('Estonia', 'Latvia', 'Lithuania')
-- 0 --

--  For each continent show the continent and number of countries.
SELECT continent,COUNT(name) FROM world GROUP BY continent 
--  0 --

-- For each continent show the continent and number of countries with populations of at least 10 million
SELECT continent ,COUNT(name) FROM world WHERE population > 10000000 GROUP BY continent 

--  0 -- 

-- List the continents that have a total population of at least 100 million.
SELECT continent  FROM world GROUP BY continent HAVING sum(population) >= 100000000
-- 0 --
