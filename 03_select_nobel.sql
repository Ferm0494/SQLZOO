-- Change the query shown so that it displays Nobel prizes for 1950.
SELECT yr, subject, winner
  FROM nobel
 WHERE yr = 1950

-- 0 --



-- Show who won the 1962 prize for Literature.

SELECT winner
  FROM nobel
 WHERE yr = 1962
   AND subject = 'Literature'

--  0 -- 

-- Show the year and subject that won 'Albert Einstein' his prize.
SELECT yr, subject FROM nobel  WHERE winner = 'Albert Einstein'
 --- 0 ---

--  Give the name of the 'Peace' winners since the year 2000, including 2000.
Select winner FROM. nobel WHERE  subject = 'Peace' AND yr >= 2000
--  0 --

--  Show all details (yr, subject, winner) of the Literature prize winners for 1980 to 1989 inclusive.
SELECT * FROM nobel WHERE yr BETWEEN 1980 AND 1989 AND subject = 'Literature'
-- 0 --

-- -- Show all details of the presidential winners:
-- Theodore Roosevelt
-- Woodrow Wilson
-- Jimmy Carter
-- Barack Obama
SELECT * FROM nobel
 WHERE winner IN ('Theodore Roosevelt', 'Woodrow Wilson', 'Jimmy Carter', 'Barack Obama')

--  0 -- 

-- Show the winners with first name John
SELECT winner FROM nobel WHERE winner LIKE 'John%'
--  0 -- 

-- Show the year, subject, and name of Physics winners for 1980 together with the Chemistry winners for 1984.

SELECT * from nobel WHERE subject = 'Chemistry' AND yr = 1984 OR subject = 'Physics' AND yr = 1980 
-- 0 --

-- Show the year, subject, and name of winners for 1980 excluding Chemistry and Medicine
SELECT * FROM nobel WHERE subject NOT IN ('Chemistry','Medicine') AND yr = 1980
-- 0 -- 

-- Show year, subject, and name of people who won a 'Medicine' prize in an early year (before 1910, not including 1910) together with winners of a 'Literature' prize in a later year (after 2004, including 2004)
SELECT * from nobel WHERE subject = 'Medicine' AND yr < 1910 OR subject = 'Literature' AND  yr >= 2004
-- 0 -- 

-- Find all details of the prize won by PETER GRÜNBERG
SELECT * FROM nobel WHERE winner LIKE '%PETER GRÜNBERG%'
-- 0 -- 

-- Find all details of the prize won by EUGENE O'NEILL
SELECT * FROM nobel WHERE winner LIKE '%EUGENE O%'
-- 0 -- 

-- List the winners, year and subject where the winner starts with Sir. Show the the most recent first, then by name order.
SELECT winner,yr,subject FROM nobel WHERE winner LIKE 'Sir%' ORDER BY yr DESC
-- 0 -- 

-- The expression subject IN ('Chemistry','Physics') can be used as a value - it will be 0 or 1.
-- Show the 1984 winners and subject ordered by subject and winner name; but list Chemistry and Physics last
SELECT winner, subject
  FROM nobel
 WHERE yr=1984
 ORDER BY 
CASE WHEN subject IN ('Physics', 'Chemistry') THEN 1 ELSE 0 END,
subject,winner
-- 0 -- 



