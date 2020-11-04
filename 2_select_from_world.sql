--Lesson

--1
SELECT name, continent, population FROM world

--2
SELECT name FROM world
WHERE population > 200000000

--3
SELECT name, gdp/population FROM world WHERE population > 200000000

--4
SELECT name, population/1000000 FROM world WHERE continent = 'South America'

--5
SELECT name, population FROM world WHERE name IN ('France', 'Germany', 'Italy')

--6
SELECT name FROM world WHERE name LIKE '%United%'

--7
SELECT name, population, area FROM world WHERE area > 3000000 OR population > 250000000;

--8
SELECT name, population, area FROM world 
WHERE area > 3000000 
XOR population > 250000000;

--9
SELECT name, ROUND(population/1000000, 2), ROUND(gdp/1000000000, 2) FROM world WHERE continent = 'South America'

--10
SELECT name, ROUND(gdp/population, -3) FROM world WHERE gdp > 1000000000000;

--11
SELECT name, capital FROM world
WHERE LENGTH(name) = LENGTH(capital)

--12
SELECT name, capital
FROM world
WHERE LEFT(name,1) = LEFT(capital,1)
AND capital <> name

--13
SELECT name
FROM world
WHERE name LIKE '%a%'
AND name LIKE '%e%'
AND name LIKE '%i%'
AND name LIKE '%o%'
AND name LIKE '%u%'
AND name NOT LIKE '% %'

--Quiz

--1
SELECT name
FROM world
WHERE name LIKE 'U%'

--2
SELECT population
FROM world
WHERE name = 'United Kingdom'

--3
'name' should be name

--4
Option 4

--5
SELECT name, population
FROM world
WHERE continent IN ('Europe', 'Asia')

--6
SELECT name FROM world
WHERE name IN ('Cuba', 'Togo')

--7
Option 3
