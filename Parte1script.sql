SELECT Director ,MAX(IMDB_Rating)
FROM imdb_top it
WHERE Director  = "Steven Spielberg" OR Director ="Quentin Tarantino"

SELECT Series_Title, MAX(IMDB_Rating), Released_Year, Genre
FROM imdb_top it 
WHERE Genre = 'Drama' AND Released_Year = 2014

SELECT Director, COUNT(*) 
FROM imdb_top it
GROUP BY Director
ORDER BY COUNT(*) DESC
LIMIT 10;