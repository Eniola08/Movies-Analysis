
create table movies (
books_id int primary key,
title varchar (30),
director varchar (40),
published_year int,
length_minutes int)
;
select * from movies
insert into movies (books_id, title, director, published_year, length_minutes)
values (001, 'Toy Story', 'John Lasseter', 1995, 81),
(002, 'A Bugs Life', 'John Lasseter', 1998, 95),
 (003, 'Toy Story 2', 'John Lasseter', 1999, 93);
select * from movies
insert into movies (books_id, title, director, published_year, length_minutes)
values (004, 'Monsters, Inc', 'Pete Docter', 2001, 92),
(005, 'Finding Nemo', 'Andrew Stanton', 2003, 107),
 (006, 'The Incredibles', 'Brad Bird', 2004, 116),
 (007, 'Cars', 'John Lasseter', 2006, 117),
 (008, 'Ratatouille', 'Brad Bird', 2007, 115),
 (009, 'WALL-E', 'Andrew Stanton', 2008, 104),
 (010, 'Up', 'Pete Docter', 2009, 101),
 (011, 'Toy Story 3', 'Lee Unkrich', 2010, 103),
 (012, 'Cars 2', 'John Lasseter', 2011, 120),
 (013, 'Brave', 'Brenda Champman', 2012, 102),
 (014, 'Monsters University', 'Dan Scanlon', 2013, 110
  );

SELECT *
FROM movies
-- Find the title of each film
select title 
from movies

--Find the director of each film
select director
from movies 

-- Find the title and director of each film
select title, director 
from movies

-- Find the title and year of each film
select title, published_year
from movies 

--Find all the information about each film
select *
from movies

-- Find the movie with a row id of 6
select *
from movies
where books_id = 6

-- Find the movies released in the years between 2000 and 2010
select *
from movies
where published_year between 2000 and 2010

--Find  the movies not realeased in the years between 2000 and 2010
select *
from movies
where published_year not between 2000 and 2010

--Find the first 5 Pixar movies and their release year
select top 5 title, published_year 
from movies

-- Find all the Toy Story movies
select * 
from movies
where title like 'Toy%'

--Find all the movies directed by John Lasseter
select *
from movies
where director = 'John Lasseter'

--Find all the movies(and director) not directed by John Lasseter
select * 
from movies
where director not like 'John Lasseter'

--Find all the WALL- movies
select * 
from movies
where title = 'WALL-E'

--List all the director of pixar movies(alphabetically), without duplicates
select distinct( director) 
from movies

--List the last four pixar movies released (ordered from most recent to least)
select top 4 title
from movies
order by published_year desc

--List the first five pixar movies soretd alphabetically
select top 5 title
from movies
order by title

--List the next five pixar movies sorted alphabetically
select title
from movies
order by title
offset 5 rows
fetch next 5 rows only;

