-- Question 1
-- Select all columns and rows from the movies table
SELECT id,title,genres 
FROM movies.movies;

-- Question 2
-- Select only the title and id of the first 10 rows
SELECT id,title 
FROM movies.movies
LIMIT 10;

-- Question 3
-- Find the movie with the id of 485
SELECT id,title 
FROM movies.movies
WHERE id = 485;

-- Question 4 
-- Find the id (only that column) of the movie Made in America (1993)
SELECT id 
FROM movies.movies
WHERE title = 'Made in America (1993)';

-- Question 5
-- Find the first 10 sorted alphabetically
SELECT title 
FROM movies.movies
ORDER BY title ASC
LIMIT 10;

-- Question 6
-- Find all movies from 2002
SELECT id,title,genres
FROM movies.movies
WHERE title LIKE '%2002%';

-- Question 7
-- Find out what year the Godfather came out
SELECT id,title,genres
FROM movies.movies
WHERE title  LIKE 'godfather%' AND TITLE NOT LIKE '%PART%';

-- Question 8
-- Without using joins find all the comedies
SELECT id,title,genres
FROM movies.movies
WHERE genres LIKE '%comedy%';

-- Question 9
-- Find all comedies in the year 2000
SELECT id,title,genres
FROM movies.movies
WHERE genres LIKE '%comedy%'
AND title LIKE '%2000%';

-- Question 10
-- Find any movies that are about death and are a comedy
SELECT id,title,genres
FROM movies.movies
WHERE genres LIKE '%comedy%' 
AND title LIKE '%death%';

-- Question 11
-- Find any movies from either 2001 or 2002 with a title containing super
SELECT id,title,genres
FROM movies.movies
WHERE (title LIKE '%2001%' OR TITLE LIKE '%2002%')
AND title LIKE '%Super%' ;

-- Question 12
-- Create a new table called actors (We are going to pretend the actor can only play in one movie). The table should include name, character name, foreign key to movies and date of birth at least plus an id field.
'created table'

-- Question 13
-- Pick 3 movies and create insert statements for 10 actors each. You should use the multi value insert statements
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
-- Create a new column in the movie table to hold the MPAA rating. UPDATE 5 different movies to their correct rating
UPDATE movielist.movies
SET mpaaRating = 8
WHERE id=3 or id=4 or id=5 or id=6 or id=7;

-- Question 15
-- Find all the ratings for the movie Godfather, show just the title and the rating
SELECT movies.title, ratings.rating
FROM movielist.ratings  ratings
LEFT JOIN movielist.movies movies
ON ratings.movie_id = movies.id
WHERE movies.title  LIKE 'godfather, the%';

-- Question 16
-- Order the previous objective by newest to oldest
SELECT movies.title, ratings.rating
FROM movielist.ratings  ratings
LEFT JOIN movielist.movies movies
ON ratings.movie_id = movies.id
WHERE movies.title  LIKE 'godfather, the%'
ORDER BY timestamp DESC;

-- Question 17
-- Find the comedies from 2005 and get the title and imdbid from the links table
SELECT m.title, l.imdb_Id
FROM movielist.movies m
 LEFT JOIN movielist.links l ON m.id = l.movie_id
WHERE m.genres LIKE "%comedy%"  AND m.title LIKE "%2005%";

-- Question 18
-- Find all movies that have no ratings
SELECT m.title, AVG (r.rating) 
FROM movielist.ratings r
LEFT JOIN movielist.movies m ON m.id=r.movie_id
GROUP BY m.title;

-- Question 19
-- Get the average rating for a movie
SELECT m.id,m.title, AVG(r.rating) 
FROM movielist.ratings r
LEFT JOIN movielist.movies m ON m.id=r.movie_id
GROUP BY m.id 
LIMIT 1;


-- Question 20
-- Get the total ratings for a movie
SELECT COUNT(rating), movie_id
FROM movielist.ratings
WHERE ratings.movie_id = 260;


-- Question 21
-- Get the total movies for a genre
SELECT COUNT(title) ,genres
FROM movielist.movies
WHERE genres = 'comedy';

-- Question 22
-- Get the average rating for a user
SELECT r.user_id, AVG (r.rating) 
FROM movielist.ratings r
GROUP BY r.user_id
LIMIT 1;

-- Question 23
-- Find the user with the most ratings

-- Question 24
-- Find the user with the highest average rating

-- Question 25 
-- Find the user with the highest average rating with more than 50 reviews

-- Question 26
-- Find the movies with an average rating over 4
