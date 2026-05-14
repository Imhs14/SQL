-- ORDER BY keyword 
-- The ORDER BY keyword is used to sort the result in ascending to decending order 
-- The ORDER BY sorts result-set in ascenfing order (ASC) by default 
select * from Mall_Customers;
select * from Mall_Customers
Order by age;

-- ORDER BY DESC 
-- to sort the records in descending order use the key DESC 
select * from Mall_Customers
ORDER BY age DESC; 

-- ORder Alphabetically 
select * from demo
order by name;

-- To sort the alphabets in descending order use DESC only 
SELECT * from spotify_alltime_top100_songs
Order by song_title DESC;

--  order by several columns 
-- the sql sorts first by artist country and artist name
-- it first sorts the country, if artists have the same country then it sorts them by artist name 
select * from spotify_alltime_top100_songs
order by artist_country, artist ;

-- using the ASC and DESC combined 
--  the following table will selects all the artists from the spotify table and
-- sorts it ascending by the artists country and descending by the artist name
select * from spotify_alltime_top100_songs
order by artist_country ASC , artist DESC;