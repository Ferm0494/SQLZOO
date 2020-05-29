-- Start with a Y --
SELECT name FROM world
  WHERE name LIKE 'Y%'
--  0 ---

-- Ends with a y --

  SELECT name FROM world
  WHERE name LIKE '%y'
-- 0 ---

-- Contains an x --
  SELECT name FROM world
  WHERE name LIKE '%x%'

  --- 0 --- 

--  Ends with Land -- 
SELECT name FROM world
  WHERE name LIKE '%land'

  --- 0 ---

--   Starts with C and ends in ia

SELECT name FROM world
  WHERE name LIKE 'C%' AND name LIKE '%ia'

--   0 -- 

-- Contains oo in the name 

SELECT name FROM world
  WHERE name LIKE '%oo%'

--   0 -- 

-- 3 or More letters a in name

SELECT name FROM world
  WHERE name LIKE '%a%a%a%'
-- 0 -- 

-- have the letter t as the second character in name

SELECT name FROM world
 WHERE name LIKE '_t%'
ORDER BY name
-- 0 -- 

--  Have 2 o's separated by 2 characters like: Lesotho and Moldova

SELECT name FROM world
 WHERE name LIKE '%o__o%'
--  0 --

-- name with only 4 chars

SELECT name FROM world
 WHERE name LIKE '____'

--  0 -- 

--  SAME NAME OF COUNTRY AS CAPITAL 

SELECT name
  FROM world
 WHERE name = capital
--  

-- The capital of Mexico is Mexico City. Show all the countries where the capital has the country together with the word "City".

-- Find the country where the capital is the country plus "City".

SELECT name
  FROM world
 WHERE capital LIKE concat(name,'%City%')

--  0 --

-- Find the capital and the name where the capital includes the name of the country.

SELECT capital, name FROM world WHERE capital LIKE concat('%',name,'%')
-- 0 --

-- Find the capital and the name where the capital is an extension of name of the country.
-- You should include Mexico City as it is longer than Mexico. You should not include Luxembourg as the capital is the same as the country.
SELECT capital,name FROM world WHERE capital LIKE concat('%',name,'%') AND LEN(capital) != LEN(name)

--  0 --

--  For Monaco-Ville the name is Monaco and the extension is -Ville.
-- Show the name and the extension where the capital is an extension of name of the country.
-- You can use the SQL function REPLACE.

SELECT name,REPLACE(capital,name, ' ') as ext FROM world WHERE capital LIKE concat('%',name,'%') AND capital != name

-- 0 -- 

