--Lesson

--1
SELECT id, title
FROM movie
WHERE yr=1962

--2
SELECT yr
FROM movie
WHERE title = 'Citizen Kane'

--3
SELECT id, title, yr 
FROM movie 
WHERE title LIKE 'Star Trek%'
ORDER BY yr

--4
SELECT id
FROM actor 
WHERE name = 'Glenn Close'

--5
SELECT id 
FROM movie
WHERE title = 'Casablanca'

--6
SELECT name
FROM casting JOIN actor on actorid=id
WHERE movieid = 11768

--7
SELECT name
FROM casting JOIN actor ON casting.actorid=actor.id
JOIN movie ON movie.id = casting.movieid
WHERE title = 'Alien';

--8
SELECT title
FROM casting JOIN actor ON casting.actorid=actor.id
JOIN movie ON movie.id = casting.movieid
WHERE actor.name = 'Harrison Ford'

--9
SELECT title
FROM casting JOIN actor ON casting.actorid=actor.id
JOIN movie ON movie.id = casting.movieid
WHERE name = 'Harrison Ford'
AND ord != 1;

--10
SELECT title, name
FROM casting JOIN actor ON casting.actorid=actor.id
JOIN movie ON movie.id=casting.movieid
WHERE ord = 1
AND yr = 1962

--11
SELECT yr,COUNT(title) FROM
  movie JOIN casting ON movie.id=movieid
        JOIN actor   ON actorid=actor.id
WHERE name='Rock Hudson'
GROUP BY yr
HAVING COUNT(title) > 2

--12
SELECT title, name
FROM movie JOIN casting ON (movieid=movie.id
                            AND ord=1)
           JOIN actor ON (actorid=actor.id)
WHERE movie.id IN (
     SELECT movieid FROM casting
      WHERE actorid IN (
       SELECT id FROM actor

--13
SELECT name 
FROM actor JOIN casting ON casting.actorid=actor.id
WHERE ord = 1
GROUP BY name
HAVING COUNT(movieid) >= 15

--14
SELECT title, COUNT(actorid)
FROM movie JOIN casting ON casting.movieid=movie.id
WHERE yr = 1978
GROUP BY title
ORDER BY COUNT(actorid) DESC, title

--15
SELECT name
FROM actor JOIN casting ON casting.actorid=actor.id
WHERE movieid IN(
   SELECT movieid FROM casting 
    WHERE actorid =(
     SELECT id FROM actor WHERE name = 'Art Garfunkel'))
AND name <> 'Art Garfunkel'

--Quiz

--1
SELECT name
  FROM actor INNER JOIN movie ON actor.id = director
 WHERE gross < budget

--2
SELECT *
  FROM actor JOIN casting ON actor.id = actorid
  JOIN movie ON movie.id = movieid

--3
SELECT name, COUNT(movieid)
  FROM casting JOIN actor ON actorid=actor.id
 WHERE name LIKE 'John %'
 GROUP BY name ORDER BY 2 DESC

--4
Table-B

--5
SELECT name
  FROM movie JOIN casting ON movie.id = movieid
  JOIN actor ON actor.id = actorid
WHERE ord = 1 AND director = 351

--6
link the director column in movies with the primary key in actor
connect the primary keys of movie and actor via the casting table

--7
Table-B
