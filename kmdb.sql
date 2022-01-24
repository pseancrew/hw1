-- In this assignment, you'll be building the domain model, database 
-- structure, and data for "KMDB" (the Kellogg Movie Database).
-- The end product will be a report that prints the movies and the 
-- top-billed cast for each movie in the database.

-- Requirements/assumptions
--
-- - There will only be three movies in the database – the three films
--   that make up Christopher Nolan's Batman trilogy
-- - Movie data includes the movie title, year released, MPAA rating,
--   and director
-- - A movie has a single director
-- - A person can be the director of and/or play a role in a movie
-- - Everything you need to do in this assignment is marked with TODO!

-- Rubric
-- 
-- There are three deliverables for this assignment, all delivered via
-- this file and submitted via GitHub and Canvas:
-- - A domain model, implemented via CREATE TABLE statements for each
--   model/table. Also, include DROP TABLE IF EXISTS statements for each
--   table, so that each run of this script starts with a blank database.
--   (10 points)
-- - Insertion of "Batman" sample data into tables (5 points)
-- - Selection of data, so that something similar to the following sample
--   "report" can be achieved (5 points)

-- Submission
-- 
-- - "Use this template" to create a brand-new "hw1" repository in your
--   personal GitHub account, e.g. https://github.com/<USERNAME>/hw1
-- - Do the assignment, committing and syncing often
-- - When done, commit and sync a final time, before submitting the GitHub
--   URL for the finished "hw1" repository as the "Website URL" for the 
--   Homework 1 assignment in Canvas

-- Successful sample output is as shown:

-- Movies
-- ======

-- Batman Begins          2005           PG-13  Christopher Nolan
-- The Dark Knight        2008           PG-13  Christopher Nolan
-- The Dark Knight Rises  2012           PG-13  Christopher Nolan

-- Top Cast
-- ========

-- Batman Begins          Christian Bale        Bruce Wayne
-- Batman Begins          Michael Caine         Alfred
-- Batman Begins          Liam Neeson           Ra's Al Ghul
-- Batman Begins          Katie Holmes          Rachel Dawes
-- Batman Begins          Gary Oldman           Commissioner Gordon
-- The Dark Knight        Christian Bale        Bruce Wayne
-- The Dark Knight        Heath Ledger          Joker
-- The Dark Knight        Aaron Eckhart         Harvey Dent
-- The Dark Knight        Michael Caine         Alfred
-- The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
-- The Dark Knight Rises  Christian Bale        Bruce Wayne
-- The Dark Knight Rises  Gary Oldman           Commissioner Gordon
-- The Dark Knight Rises  Tom Hardy             Bane
-- The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
-- The Dark Knight Rises  Anne Hathaway         Selina Kyle

-- Turns column mode on but headers off
.mode column
.headers off

-- Drop existing tables, so you'll start fresh each time this script is run.
-- TODO!

DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS people;
DROP TABLE IF EXISTS roles;
DROP TABLE IF EXISTS topcast;

-- Create new tables, according to your domain model
-- TODO!

CREATE TABLE movies (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  movie_title TEXT,
  release_date DATETIME,
  director TEXT,
  rating TEXT
);

CREATE TABLE people (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT
);

CREATE TABLE roles (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  role_name TEXT
);

CREATE TABLE topcast (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  role_id INTEGER,
  movie_id INTEGER,
  people_id INTEGER
);

-- Insert data into your database that reflects the sample data shown above
-- Use hard-coded foreign key IDs when necessary
-- TODO!

INSERT INTO movies (movie_title, release_date, director, rating)
VALUES ("Batman Begins", "2005", "Christopher Nolan", "PG-13");

INSERT INTO movies (movie_title, release_date, director, rating)
VALUES ("The Dark Knight", "2008", "Christopher Nolan", "PG-13");

INSERT into movies (movie_title, release_date, director, rating)
VALUES ("The Dark Knight Rises", "2012", "Christopher Nolan", "PG-13");

INSERT into people (first_name, last_name)
VALUES ("Christian", "Bale");
INSERT into people (first_name, last_name)
VALUES ("Michael", "Cane");

INSERT into people (first_name, last_name)
VALUES ("Liam", "Neeson");

INSERT into people (first_name, last_name)
VALUES ("Katie", "Holmes");

INSERT into people (first_name, last_name)
VALUES ("Gary", "Oldman");

INSERT into people (first_name, last_name)
VALUES ("Heath", "Ledger");

INSERT into people (first_name, last_name)
VALUES ("Aaron", "Eckhart");

INSERT into people (first_name, last_name)
VALUES ("Maggie", "Gyllenhaal");

INSERT into people (first_name, last_name)
VALUES ("Tom", "Hardy");

INSERT into people (first_name, last_name)
VALUES ("Joeseph", "Gordon-Levitt");

INSERT into people (first_name, last_name)
VALUES ("Anne", "Hathaway");

INSERT into roles (role_name)
VALUES ("Bruce Wayne");

INSERT into roles (role_name)
VALUES ("Alfred");

INSERT into roles (role_name)
VALUES ("Ra's Al Ghul");

INSERT into roles (role_name)
VALUES ("Rachel Dawes");

INSERT into roles (role_name)
VALUES ("Commissioner Gordon");

INSERT into roles (role_name)
VALUES ("Joker");

INSERT into roles (role_name)
VALUES ("Harvey Dent");

INSERT into roles (role_name)
VALUES ("Bane");

INSERT into roles (role_name)
VALUES ("John Blake");

INSERT into roles (role_name)
VALUES ("Selina Kyle");

INSERT into topcast (
    role_id,
    people_id,
    movie_id
)
VALUES (
    "1",
    "1",
    "1"
);

INSERT into topcast (
    role_id,
    people_id,
    movie_id
)
VALUES (
    "2",
    "2",
    "1"
);

INSERT into topcast (
    role_id,
    people_id,
    movie_id
)
VALUES (
    "3",
    "3",
    "1"
);

INSERT into topcast (
    role_id,
    people_id,
    movie_id
)
VALUES (
    "4",
    "4",
    "1"
);

INSERT into topcast (
    role_id,
    people_id,
    movie_id
)
VALUES (
    "5",
    "5",
    "1"
);

INSERT into topcast (
    role_id,
    people_id,
    movie_id
)
VALUES (
    "1",
    "1",
    "2"
);

INSERT into topcast (
    role_id,
    people_id,
    movie_id
)
VALUES (
    "6",
    "6",
    "2"
);

INSERT into topcast (
    role_id,
    people_id,
    movie_id
)
VALUES (
    "7",
    "7",
    "2"
);

INSERT into topcast (
    role_id,
    people_id,
    movie_id
)
VALUES (
    "4",
    "8",
    "2"
);

INSERT into topcast (
    role_id,
    people_id,
    movie_id
)
VALUES (
    "1",
    "1",
    "3"
);

INSERT into topcast (
    role_id,
    people_id,
    movie_id
)
VALUES (
    "5",
    "5",
    "3"
);

INSERT into topcast (
    role_id,
    people_id,
    movie_id
)
VALUES (
    "8",
    "9",
    "3"
);

INSERT into topcast (
    role_id,
    people_id,
    movie_id
)
VALUES (
    "9",
    "10",
    "3"
);

INSERT into topcast (
    role_id,
    people_id,
    movie_id
)
VALUES (
    "10",
    "11",
    "3"
);

-- Prints a header for the movies output
.print "Movies"
.print "======"
.print ""

-- The SQL statement for the movies output
-- TODO!

SELECT * FROM movies;

-- Prints a header for the cast output
.print ""
.print "Top Cast"
.print "========"
.print ""

-- The SQL statement for the cast output
-- TODO!

SELECT movies.movie_title, people.first_name, people.last_name, roles.role_name
FROM topcast INNER JOIN movies ON movies.id = topcast.movie_id 
INNER JOIN people ON people.id = topcast.people_id
INNER JOIN roles ON roles.id = topcast.role_id
ORDER BY movies.id;