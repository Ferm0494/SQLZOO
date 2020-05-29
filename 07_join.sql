-- List the films where the yr is 1962 [Show id, title]
SELECT id, title
 FROM movie
 WHERE yr=1962
--  0 --

-- Give year of 'Citizen Kane'.
SELECT yr FROM movie WHERE title = 'Citizen Kane'
-- 0 -- 

-- List all of the Star Trek movies, include the id, title and yr (all of these movies include the words Star Trek in the title). Order results by year.
SELECT id,title,yr FROM movie WHERE title LIKE '%Star Trek%' ORDER BY yr
-- 0 --

-- What id number does the actor 'Glenn Close' have?
SELECT id FROM actor where name =  'Glenn Close' 
--  0 -- 

-- What is the id of the film 'Casablanca'
SELECT id FROM movie WHERE title = 'Casablanca'
--  0 --

