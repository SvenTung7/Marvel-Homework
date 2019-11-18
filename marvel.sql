DROP TABLE movies CASCADE;
DROP TABLE people CASCADE;

CREATE TABLE movies (
	id SERIAL8 PRIMARY KEY,
	title VARCHAR(255),
	year INT2,
	show_time VARCHAR(255)
);

CREATE TABLE people (
	id SERIAL8 PRIMARY KEY,
	name VARCHAR(255)
);

INSERT INTO people (name) VALUES ('Homer Simpson');
INSERT INTO people (name) VALUES ('Marge Simpson');
INSERT INTO people (name) VALUES ('Lisa Simpson');
INSERT INTO people (name) VALUES ('Maggie Simpson');
INSERT INTO people (name) VALUES ('Patty Bouvier');
INSERT INTO people (name) VALUES ('Selma Bouvier');
INSERT INTO people (name) VALUES ('Kent Brockman');
INSERT INTO people (name) VALUES ('Ned Flanders');
INSERT INTO people (name) VALUES ('Barney Gumble');
INSERT INTO people (name) VALUES ('Itchy');
INSERT INTO people (name) VALUES ('Eric Cartman');
INSERT INTO people (name) VALUES ('Scratchy');
INSERT INTO people (name) VALUES ('Crusty the Clown');
INSERT INTO people (name) VALUES ('Montgomery Burns');
INSERT INTO people (name) VALUES ('Mayor Joe Quimby');
INSERT INTO people (name) VALUES ('Groundskeeper Willie');

INSERT INTO movies (title, year, show_time) VALUES ('Iron Man', 2008, '17:00');
INSERT INTO movies (title, year, show_time) VALUES ('The Incredible Hulk', 2008, '23:55');
INSERT INTO movies (title, year, show_time) VALUES ('Iron Man 2', 2010, '18:45');
INSERT INTO movies (title, year, show_time) VALUES ('Thor', 2011, '15:45');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: The First Avenger', 2011, '14:15');
INSERT INTO movies (title, year, show_time) VALUES ('Avengers Assemble', 2012, '14:45');
INSERT INTO movies (title, year, show_time) VALUES ('Iron Man 3', 2013, '21:55');
INSERT INTO movies (title, year, show_time) VALUES ('Thor: The Dark World', 2013, '22:55');
INSERT INTO movies (title, year, show_time) VALUES ('Batman Begins', 2005, '13:40');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: The Winter Soldier', 2014, '18:25');
INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy', 2014, '13:10');
INSERT INTO movies (title, year, show_time) VALUES ('Avengers: Age of Ultron', 2015, '20:20');
INSERT INTO movies (title, year, show_time) VALUES ('Ant-Man', 2015, '13:00');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: Civil War', 2016, '12:35');
INSERT INTO movies (title, year, show_time) VALUES ('Doctor Strange', 2016, '22:00');
INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy 2', 2017, '14:05');
INSERT INTO movies (title, year, show_time) VALUES ('Spider-Man: Homecoming', 2017, '23:00');
INSERT INTO movies (title, year, show_time) VALUES ('Thor: Ragnarok', 2017, '22:10');
INSERT INTO movies (title, year, show_time) VALUES ('Black Panther', 2018, '21:00');





-- Return ALL the data in the ‘movies’ table.
-- SELECT * FROM movies;
-- id |                title                | year | show_time
-- ----+-------------------------------------+------+-----------
--  1 | Iron Man                            | 2008 | 17:00
--  2 | The Incredible Hulk                 | 2008 | 23:55
--  3 | Iron Man 2                          | 2010 | 18:45
--  4 | Thor                                | 2011 | 15:45
--  5 | Captain America: The First Avenger  | 2011 | 14:15
--  6 | Avengers Assemble                   | 2012 | 14:45
--  7 | Iron Man 3                          | 2013 | 21:55
--  8 | Thor: The Dark World                | 2013 | 22:55
--  9 | Batman Begins                       | 2005 | 13:40
-- 10 | Captain America: The Winter Soldier | 2014 | 18:25
-- 11 | Guardians of the Galaxy             | 2014 | 13:10
-- 12 | Avengers: Age of Ultron             | 2015 | 20:20
-- 13 | Ant-Man                             | 2015 | 13:00
-- 14 | Captain America: Civil War          | 2016 | 12:35
-- 15 | Doctor Strange                      | 2016 | 22:00
-- 16 | Guardians of the Galaxy 2           | 2017 | 14:05
-- 17 | Spider-Man: Homecoming              | 2017 | 23:00
-- 18 | Thor: Ragnarok                      | 2017 | 22:10
-- 19 | Black Panther                       | 2018 | 21:00
-- (19 rows)

-- Return ONLY the name column from the ‘people’ table
-- SELECT name FROM people;
-- name
-- ----------------------
-- Homer Simpson
-- Marge Simpson
-- Lisa Simpson
-- Maggie Simpson
-- Patty Bouvier
-- Selma Bouvier
-- Kent Brockman
-- Ned Flanders
-- Barney Gumble
-- Itchy
-- Eric Cartman
-- Scratchy
-- Crusty the Clown
-- Montgomery Burns
-- Mayor Joe Quimby
-- Groundskeeper Willie
-- (16 rows)

-- Oops! Someone spelled Krusty The Clown’s name wrong! Change it to reflect the proper spelling (Crusty should be Krusty).
-- UPDATE people SET name = 'Krusty The Clown' WHERE name = 'Crusty the Clown';
-- SELECT name FROM people WHERE name = 'Krusty The Clown';
-- name
-- ------------------
-- Krusty The Clown
-- (1 row)

-- Return ONLY Homer Simpson’s name from the ‘people’ table.
-- SELECT name FROM people WHERE name = 'Homer Simpson';
-- name
-- ---------------
-- Homer Simpson
-- (1 row)

-- The cinema is showing ‘Batman Begins’, but Batman is DC, not Marvel! Delete the entry from the ‘movies’ table.
-- DELETE FROM movies WHERE title = 'Batman Begins';
-- SELECT * FROM movies WHERE title = 'Batman Begins';
-- DELETE 1
--  id | title | year | show_time
-- ----+-------+------+-----------
-- (0 rows)

-- We forgot one of the main characters! Add Bart Simpson to the ‘people’ table
-- INSERT INTO people (name) VALUES ('Bart Simpson');
-- SELECT name FROM people WHERE name = 'Bart Simpson';
-- INSERT 0 1
-- name
-- --------------
-- Bart Simpson
-- (1 row)

-- Eric Cartman has decided to hijack our movie evening, Remove him from the table of people.
-- DELETE FROM people WHERE name = 'Eric Cartman';
-- SELECT name FROM people WHERE name = 'Eric Cartman';
-- DELETE 1
-- name
-- ------
-- (0 rows)

-- The cinema has just heard that they will be holding an exclusive midnight showing of ‘Avengers: Infinity War’!! Create a new entry in the ‘movies’ table to reflect this.
-- INSERT INTO movies (title, year, show_time) VALUES ('Avengers: Infinity War', 2018, '21:00');
-- SELECT * FROM movies WHERE title = 'Avengers: Infinity War';
-- id |         title          | year | show_time
-- ----+------------------------+------+-----------
-- 20 | Avengers: Infinity War | 2018 | 21:00
-- (1 row)

-- The cinema would like to make the Iron Man movies a triple billing. Find out the show time of “Iron Man 2” and set the show time of “Iron Man 3” to start two hours later.
-- SELECT show_time FROM movies WHERE title = 'Iron Man 2';
-- UPDATE movies SET show_time = '00:55' WHERE title = 'Iron Man 3';
-- SELECT * FROM movies WHERE title = 'Iron Man 3';
-- show_time
-- -----------
-- 18:45
-- (1 row)
--
-- UPDATE 1
-- id |   title    | year | show_time
-- ----+------------+------+-----------
--  7 | Iron Man 3 | 2013 | 00:55
-- (1 row)

-------------------EXTENSION-------------------
-- DELETE FROM people WHERE name = 'Eric Cartman' OR name = 'Homer Simpson';
-- SELECT * FROM people WHERE name = 'Eric Cartman' OR name = 'Homer Simpson';
-- DELETE 2
--  id | name
-- ----+------
-- (0 rows)