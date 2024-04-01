

-- Creating tables, assigning primary&foreign keys & inserting values
-- Create a database named 'Entertainment'

Create database Entertainment;
-- Switch to the 'Entertainment' database
Use Entertainment;
-- Create a table named 'tvshows' to store information about TV shows
CREATE TABLE tvshows(
tv_id VARCHAR(5) NOT NULL PRIMARY KEY,                                   -- Unique identifier for each TV show
title VARCHAR(200) NOT NULL,                                             -- Title of the TV show
ep_duration INT NOT NULL,                                                -- Duration of each episode in minutes
genre VARCHAR(100) NOT NULL,                                             -- Genre of the TV show
start_date VARCHAR(4) NOT NULL,                                          -- Start year of the TV show
end_date VARCHAR(4),                                                     -- End year of the TV show (can be NULL for ongoing shows)
tv_rating DOUBLE NOT NULL,                                               -- IMDb rating of the TV show
type VARCHAR(7) NOT NULL                                                 -- Type of TV show 

);
-- Insert data into the 'tvshows' table

INSERT INTO tvshows
(tv_id, title, ep_duration, genre, start_date, end_date, tv_rating, type)
VALUES
('TV1','The Walking Dead', 44, 'Horror', 2010, 2022, 8.2, 'tvshow'),
('TV2','Stranger Things', 60, 'Fantasy', 2016, ' ' , 8.7, 'tvshow'),
('TV3','Sherlock', 88, 'Crime', 2010, 2017, 9.1, 'tvshow'),
('TV4','Breaking Bad', 44, 'Crime', 2008, 2013, 9.4, 'tvshow'),
('TV5','The Big Bang Theory', 22, 'Comedy', 2007, 2019 , 9.4, 'tvshow'),
('TV6','Dexter', 53, 'Crime', 2006, 2021 , 8.6, 'tvshow'),
('TV7','House of Cards', 51, 'Drama', 2013, 2018, 8.7, 'tvshow'),
('TV8','Game of Thrones', 44, 'Action', 2011, 2019, 9.5, 'tvshow'),
('TV9','How I Met Your Mother', 22, 'Comedy', 2005, 2014, 8.3, 'tvshow'),
('TV10','True Detective', 55, 'Crime', 2002, 2008, 8.9, 'tvshow'),
('TV11','Black Mirror', 60, 'Sci Fi', 2011, ' ' , 8.8, 'tvshow'),
('TV12','Vikings', 22, 'Action', 2013, 2020, 8.5, 'tvshow'),
('TV13','The Office', 62, 'Comedy', 2005, 2013, 8.9, 'tvshow'),
('TV14','House M.D.', 44, 'Drama', 2004, 2012, 8.7, 'tvshow'),
('TV15','Rick and Morty', 23, 'Animation', 2013, ' ' , 9.2, 'tvshow'),
('TV16','Peaky Blinders', 44, 'Crime', 2013, ' ' , 8.8, 'tvshow'),
('TV17','Suits', 44, 'Drama', 2011, 2019, 8.4, 'tvshow'),
('TV18','La casa de papel', 70, 'Action', 2017, 2021, 8.3, 'tvshow'),
('TV19','Homeland', 55, 'Crime', 2011, 2020, 8.3, 'tvshow'),
('TV20','Dark', 60, 'Crime', 2017, 2020, 8.8, 'tvshow');

-- Select all records from the 'tvshows' table to check if all the data has been added with no mistakes 
Select * from tvshows;

-- Create a table named 'movies' to store information about movies
CREATE TABLE movies(
m_id VARCHAR(5) NOT NULL PRIMARY KEY,                             -- Unique identifier for each movie
title VARCHAR(200) NOT NULL,                                      -- Title of the movie
m_duration INT NOT NULL,                                          -- Duration of the movie in minutes
genre VARCHAR(100) NOT NULL,                                      -- Genre of the movie
m_rating DOUBLE NOT NULL,                                         -- IMDb rating of the movie
type VARCHAR(7));                                                 -- Type of the movie

-- Insert data into the 'movies' table
INSERT INTO movies
(m_id, title, m_duration, genre, m_rating, type)
VALUES
('M1','The Shawshank Redemption', 142, 'Drama', 9.3, 'movie'),
('M2','The Dark Knight', 152, 'Action', 9.0, 'movie'),
('M3','Inception', 148, 'Action', 8.8, 'movie'),
('M4','Pulp Fiction', 154, 'Crime', 8.9, 'movie'),
('M5','Forrest Gump', 142, 'Drama', 8.8, 'movie'),
('M6','The Lord of the Rings: The Fellowship of the Ring', 178, 'Action', 8.8, 'movie'),
('M7','The Matrix', 136, 'Action', 8.7, 'movie'),
('M8','The Lord of the Rings: The Return of the King', 201, 'Action', 9.0, 'movie'),
('M9','The Godfather', 175, 'Crime', 9.2, 'movie'),
('M10','The Dark Knight Rises', 164, 'Action', 8.4, 'movie'),
('M11','The Lord of the Rings: The Two Towers', 179, 'Fantasy', 9.3, 'movie'),
('M12','Seven', 127, 'Crime', 8.6, 'movie'),
('M13','Avengers Assemble', 143, 'Action', 8.0, 'movie'),
('M14','Interstellar', 169, 'Adventure', 8.6, 'movie'),
('M15','The Silence of the Lambs', 118, 'Crime', 8.6, 'movie'),
('M16','Avatar', 162, 'Action', 7.8, 'movie'),
('M17','Schindlers List', 195, 'History', 9.0, 'movie'),
('M18','Titanic', 194, 'Romance', 7.9, 'movie'),
('M19','The Green Mile', 189, 'Drama', 8.6, 'movie'),
('M20','The Wolf of Wall Street', 180, 'Comedy', 8.2, 'movie');

-- Select all records from the 'movies' table to check if all the data has been added with no mistakes 
Select * from movies;

-- Create a table named 'netflix_tvshows' to store TV shows available on Netflix
CREATE TABLE netflix_tvshows(
ntv_id VARCHAR(5) NOT NULL PRIMARY KEY,                              -- Unique identifier for each netflix_tv show
fk_tv_id VARCHAR(5),                                                 -- Foreign key referencing tvshows table
FOREIGN KEY (fk_tv_id) REFERENCES tvshows (tv_id),                   
title VARCHAR(200),                                                  -- Title of the TV show
type VARCHAR(10)                                                     -- Type of content
);

-- Insert data into the 'netflix_tvshows' table
INSERT INTO netflix_tvshows
(ntv_id, fk_tv_id, title, type)
VALUES 
('N1', 'TV1', 'The Walking Dead', 'tv show'),
('N2', 'TV2', 'Stranger Things', 'tv show'),
('N3', 'TV17', 'Suits', 'tv show'),
('N4', 'TV11', 'Black Mirror', 'tv show');

-- Select all records from the 'netflix_tvshows' table to check if all the data has been added with no mistakes 
Select * from netflix_tvshows;

-- Create a table named 'netflix_movies' to store movies available on Netflix
CREATE TABLE netflix_movies(
nm_id VARCHAR(5) NOT NULL PRIMARY KEY,                           -- Unique identifier for each movie              
fk_m_id VARCHAR(5),                                              -- Foreign key referencing movies table
FOREIGN KEY (fk_m_id) REFERENCES movies (m_id),
title VARCHAR(200),                                              -- Title of the movie
type VARCHAR(10)                                                 -- Type of content
);

-- Insert data into the 'netflix_movies' table
INSERT INTO netflix_movies
(nm_id, fk_m_id, title, type)
VALUES 
('N5', 'M7','The Matrix', 'movie'),
('N6', 'M3','Inception', 'movie'),
('N7', 'M17','Schindlers List', 'movie'),
('N8', 'M12','Seven', 'movie');

-- Select all records from the 'netflix_movies' table to check if all the data has been added with no mistakes 
Select * from netflix_movies;

-- Create a table named 'netflix_others' to store other content available on Netflix
CREATE TABLE netflix_others(
no_id VARCHAR(5) NOT NULL PRIMARY KEY,                                   -- Unique identifier for each 'other' content
title VARCHAR(200),                                                      -- Title of the content
duration INT NOT NULL,                                                   -- Duration of the content in minutes
genre VARCHAR(100) NOT NULL,                                             -- Genre of the content
rating DOUBLE NOT NULL,                                                  -- Rating of the content
type VARCHAR(10)                                                         -- Type of content
);

-- Insert data into the 'netflix_others' table
INSERT INTO netflix_others
(no_id, title, duration, genre, rating, type)
VALUES 
('N9','Grace and Frankie', 23, 'Comedy', 9.3, 'tv show'),
('N10','The Conjuring', 126, 'Horror', 7.0, 'movie');

-- Select all records from the 'netflix_others' table to check if all the data has been added with no mistakes 
Select * from netflix_others;

-- Adding columns with platform name to netflix_* DBs 

ALTER TABLE netflix_tvshows
ADD netflix2 VARCHAR(10); 

ALTER TABLE netflix_movies
ADD netflix2 VARCHAR(10); 

ALTER TABLE netflix_others
ADD netflix2 VARCHAR(10); 

-- Update the 'netflix' column to indicate that the content is present on Netflix
SET SQL_SAFE_UPDATES=0;
UPDATE netflix_tvshows SET netflix = 'YES';
UPDATE netflix_movies SET netflix = 'YES';
UPDATE netflix_others SET netflix = 'YES';

-- Select all records from the updated 'netflix_tvshows', 'netflix_movies', and 'netflix_others' tables
Select * from netflix_tvshows;
Select * from netflix_movies;
Select * from netflix_others;


-- Create a view to display TV shows with Netflix availability
CREATE VIEW tvshows_isonnetflix AS
	SELECT tv1.*, tv2.netflix FROM tvshows tv1
    LEFT JOIN netflix_tvshows tv2 ON tv1.tv_id=tv2.fk_tv_id
    ORDER BY tv1.title;
    
 -- Select all records from the 'movies_isonnetflix' view   
SELECT * FROM tvshows_isonnetflix;
   
-- Create a view to display movies with Netflix availability
CREATE VIEW movies_isonnetflix AS
	SELECT m1.*, m2.netflix FROM movies m1
    LEFT JOIN netflix_movies m2 ON m1.m_id=m2.fk_m_id
    ORDER BY m1.title;
    
-- Select all records from the 'movies_isonnetflix' view
SELECT * FROM movies_isonnetflix; 

-- Creating procedure with query and subquery that return a certain genre and is present on netflix
-- Create a procedure to select action movies available on Netflix
DELIMITER //
CREATE PROCEDURE Action_movies_netflix()
BEGIN
DECLARE action_movies_netflix VARCHAR(5);
SELECT 
    title, genre, m_rating
FROM
    movies
WHERE
    genre IN (SELECT 
		genre
        FROM
            movies_isonnetflix
        WHERE
            genre = 'Action' AND netflix='YES');
	END//
DELIMITER ;

-- Call the Action_movies_netflix procedure
CALL Action_movies_netflix();
    
 -- Creating stored function to check if a tv show can be renewed for another season 
DELIMITER //
 Create Function Season_Renewal(tv_rating Double)
 Returns Varchar(10)
 Deterministic
 Begin
 Declare Renewal_Status Varchar(10);
 If tv_rating>9 Then 
 Set Renewal_Status='Yes';
 Elseif(tv_rating>=8.5 and tv_rating<=9) Then Set Renewal_Status ='Review';
 Elseif tv_rating<8.5 Then Set Renewal_Status='N0';
 End If;
 Return(Renewal_Status);
 End//  
 Delimiter ;
 
 -- Call the Season_Renewal function for TV show
 Select tv_id,title,tv_rating,
 Season_Renewal(tv_rating)
 From
 tvshows;

 -- Explore the database with GROUP BY and HAVING
 SELECT title, genre, end_date-start_date as show_duration
 FROM tvshows
 GROUP BY show_duration
 HAVING show_duration > 5
 ORDER BY show_duration DESC;
 
 
 
 
 
 
 
 



  


