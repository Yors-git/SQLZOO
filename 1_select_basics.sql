--Lesson

--1
SELECT population FROM world
WHERE name = 'Germany'

--2
SELECT name, population FROM world
WHERE name IN ('Sweden', 'Norway', 'Denmark');

--3
SELECT name, area FROM world
WHERE area BETWEEN 200000 AND 250000

--Quiz

--1
SELECT name, population
FROM world
WHERE population BETWEEN 1000000 AND 1250000

--2
Table-E

--3
SELECT name FROM world
WHERE name LIKE '%a' OR name LIKE '%l'

--4
Option 3

--5
Option 3

--6
SELECT name, area, population
FROM world
WHERE area > 50000 AND population < 10000000

--7
SELECT name, population/area
FROM world
WHERE name IN ('China', 'Nigeria', 'France', 'Australia')