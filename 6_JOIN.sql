--Lesson

--1
SELECT matchid, player FROM goal 
WHERE teamid = 'GER'

--2
SELECT id,stadium,team1,team2
FROM game WHERE id = '1012'

--3
SELECT goal.player, goal.teamid, game.stadium, game.mdate
FROM game JOIN goal ON (game.id=goal.matchid)
WHERE goal.teamid = 'GER'

--4
SELECT game.team1, game.team2, goal.player
FROM game JOIN goal ON (game.id=goal.matchid)
WHERE goal.player LIKE 'Mario%'

--5
SELECT goal.player, goal.teamid, eteam.coach, goal.gtime
FROM goal JOIN eteam on goal.teamid = eteam.id 
WHERE gtime<=10

--6
SELECT game.mdate, eteam.teamname 
FROM game JOIN eteam ON (game.team1=eteam.id)
WHERE eteam.coach = 'Fernando Santos'

--7
SELECT goal.player 
FROM goal JOIN game ON (goal.matchid= game.id)
WHERE game.stadium = 'National Stadium, Warsaw'

--8
SELECT DISTINCT player
FROM game JOIN goal ON matchid = id 
WHERE (team1='GER' OR team2 = 'GER') AND teamid <> 'GER'

--9
SELECT eteam.teamname, COUNT(teamid)
FROM goal JOIN eteam ON teamid=id
GROUP BY teamname

--10
SELECT stadium, COUNT(matchid)
FROM game JOIN goal ON id=matchid
GROUP BY stadium

--11
SELECT matchid, mdate, COUNT(matchid)
FROM game JOIN goal ON matchid = id 
WHERE team1 = 'POL' OR team2 = 'POL'
GROUP BY matchid, mdate

--12
SELECT matchid, mdate, COUNT(matchid)
FROM game JOIN goal ON id=matchid
WHERE teamid = 'GER'
GROUP BY matchid, mdate

--13
SELECT m.mdate,
  m.team1,
  SUM(CASE WHEN g.teamid=m.team1 THEN 1 ELSE 0 END) AS score1,
  m.team2,
  SUM(CASE WHEN g.teamid=m.team2 THEN 1 ELSE 0 END) AS score2
 FROM game AS m LEFT JOIN goal AS g ON g.matchid = m.id
 GROUP BY m.id, gisq.m.mdate, gisq.m

--Quiz

--1
game  JOIN goal ON (id=matchid)

--2
matchid, teamid, player, gtime, id, teamname, coach

--3
SELECT player, teamid, COUNT(*)
  FROM game JOIN goal ON matchid = id
 WHERE (team1 = "GRE" OR team2 = "GRE")
   AND teamid != 'GRE'
 GROUP BY player, teamid

--4
Option 1

--5
SELECT DISTINCT player, teamid 
   FROM game JOIN goal ON matchid = id 
  WHERE stadium = 'National Stadium, Warsaw' 
 AND (team1 = 'POL' OR team2 = 'POL')
   AND teamid != 'POL'

--6
SELECT DISTINCT player, teamid, gtime
  FROM game JOIN goal ON matchid = id
 WHERE stadium = 'Stadion Miejski (Wroclaw)'
   AND (( teamid = team2 AND team1 != 'ITA') OR ( teamid = team1 AND team2 != 'ITA'))

--7
Option 2