--Lesson

--1
SELECT name 
FROM world 
WHERE population >(SELECT population FROM world WHERE name = 'Russia')

--2
SELECT name FROM world 
WHERE continent = 'Europe' AND gdp/population>(
SELECT gdp/population FROM world WHERE name = 'United Kingdom')

--3
SELECT name, continent 
FROM world 
WHERE continent = (SELECT continent FROM world WHERE name = 'Argentina') 
OR continent = (SELECT continent FROM world WHERE name = 'Australia') 
ORDER BY name

--4
SELECT name, population 
FROM world 
WHERE population > (SELECT population FROM world WHERE name = 'Canada') 
AND population < (SELECT population FROM world WHERE name = 'POLAND')

--5
SELECT name, CONCAT(CAST(ROUND(population*100/(SELECT population 
FROM world 
WHERE name = 'Germany'), 0) AS int),'%') 
FROM world 
WHERE continent = 'Europe'

--6
SELECT name FROM world WHERE gdp > 
(SELECT MAX(gdp) FROM world WHERE continent = 'Europe')

--7
SELECT continent, name, area FROM world x
WHERE area >= ALL
  (SELECT area FROM world y
  WHERE y.continent=x.continent
  AND area>0)

--8
SELECT continent, name 
FROM world WHERE name IN (SELECT MIN(name) 
FROM world GROUP BY continent)

--9
SELECT name, continent, population FROM world 
WHERE continent NOT IN (
SELECT DISTINCT continent FROM world WHERE population > 25000000)

--10
SELECT name, continent FROM world current 
WHERE population > ALL (SELECT population * 3 
FROM world 
WHERE continent = current.continent 
AND name <> current.name); 

--Quiz

--1
SELECT region, name, population 
FROM bbc x 
WHERE population <= ALL (
  SELECT population FROM bbc y WHERE y.region=x.region AND population>0)

--2
SELECT name,region,population 
FROM bbc x WHERE 50000 < ALL (
  SELECT population FROM bbc y WHERE x.region=y.region AND y.population>0)

--3
SELECT name, region FROM bbc x
 WHERE population < ALL (
   SELECT population/3 FROM bbc y WHERE y.region = x.region AND y.name != x.name)

--4
Table-D

--5
SELECT name FROM bbc
 WHERE gdp > (SELECT MAX(gdp) FROM bbc WHERE region = 'Africa')

--6
SELECT name FROM bbc
 WHERE population < (SELECT population FROM bbc WHERE name='Russia')
   AND population > (SELECT population FROM bbc WHERE name='Denmark')

--7
Table-B
