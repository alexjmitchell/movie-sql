-- Question 1
SELECT id,title,genres 
FROM movies.movies;

-- Question 2
SELECT id,title 
FROM movies.movies
LIMIT 10;

-- Question 3
SELECT id,title 
FROM movies.movies
WHERE id = 485;

-- Question 4 
SELECT id 
FROM movies.movies
WHERE title = 'Made in America (1993)';

-- Question 5
SELECT title 
FROM movies.movies
ORDER BY title ASC
LIMIT 10;

-- Question 6
SELECT id,title,genres
FROM movies.movies
WHERE title LIKE '%2002%';

-- Question 7
SELECT id,title,genres
FROM movies.movies
WHERE title  LIKE 'godfather%' AND TITLE NOT LIKE '%PART%';

-- Question 8
SELECT id,title,genres
FROM movies.movies
WHERE genres LIKE '%comedy%';

-- Question 9
SELECT id,title,genres
FROM movies.movies
WHERE genres LIKE '%comedy%'
AND title LIKE '%2000%';

-- Question 10
SELECT id,title,genres
FROM movies.movies
WHERE genres LIKE '%comedy%' 
AND title LIKE '%death%';

-- Question 11
SELECT id,title,genres
FROM movies.movies
WHERE (title LIKE '%2001%' OR TITLE LIKE '%2002%')
AND title LIKE '%Super%' ;

-- Question 12
'created table'

-- Question 13
INSERT INTO movielist.actors(fullName, characterName,dateOfBirth, movieId)
VALUES 
("James Mcfarland","pMind Man","1111-11-11", 260),
("Laz","Guy","1999-12-04", 260),
("Gary", "Guy 2", "1999-12-04", 260), 
("Binghamn","Potato Man", "1999-12-04", 260),
("Peter","Peter Pan","1999-12-04",260),
("Ainhoa", "Batwoman", "1999-12-04", 260),
("Danilo","Godzilla", "1999-12-04", 260),
("Guierrmo","Danny Veluman", "1999-12-04", 260),
("Bruce Banner", "Batman","1999-12-04",260),
("Johnny Napalm", "Ghost", "1999-12-04", 260),
("Jimmy Lin","pMind Man","1111-11-11", 20),
("Laz","Guy","1999-12-04", 20),
("Gary", "Guy 2", "1999-12-04", 20), 
("Binghamn","Potato Man", "1999-12-04", 20),
("Peter","Peter Pan","1999-12-04",20),
("Ainhoa", "Batwoman", "1999-12-04", 20),
("Danilo","Godzilla", "1999-12-04", 20),
("Guierrmo","Danny Veluman", "1999-12-04", 20),
("Bruce Banner", "Batman","1999-12-04",20),
("Johnny Napalm", "Ghost", "1999-12-04", 20),
("James Mcfarland","pMind Man","1111-11-11", 60),
("Laz","Guy","1999-12-04", 60),
("Gary", "Guy 2", "1999-12-04", 60), 
("Binghamn","Potato Man", "1999-12-04", 60),
("Peter","Peter Pan","1999-12-04",60),
("Ainhoa", "Batwoman", "1999-12-04", 60),
("Danilo","Godzilla", "1999-12-04", 60),
("Guierrmo","Danny Veluman", "1999-12-04", 60),
("Bruce Banner", "Batman","1999-12-04",60),
("Johnny Napalm", "Ghost", "1999-12-04", 60)

-- Question 14
UPDATE movielist.movies
SET mpaaRating = 8
WHERE id=3 or id=4 or id=5 or id=6 or id=7;

-- Question 15
SELECT movies.title, ratings.rating
FROM movielist.ratings  ratings
LEFT JOIN movielist.movies movies
ON ratings.movie_id = movies.id
WHERE movies.title  LIKE 'godfather, the%';

-- Question 16
SELECT movies.title, ratings.rating
FROM movielist.ratings  ratings
LEFT JOIN movielist.movies movies
ON ratings.movie_id = movies.id
WHERE movies.title  LIKE 'godfather, the%'
ORDER BY timestamp DESC;

-- Question 17
SELECT m.title, l.imdb_Id
from movielist.movies m
 LEFT JOIN movielist.links l ON m.id = l.movie_id
where m.genres like "%comedy%"  and m.title like "%2005%";

-- Question 18
