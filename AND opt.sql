-- SQL AND operator 
-- the where clause can contain 1 or more AND operator 
-- It is used ti filter the records based on more than one condition 
-- #The AND operator displays a records if all conditions are TRUE 
select * 
from spotify_alltime_top100_songs
where artist_country = 'Canada' AND artist Like 'T%';

-- ALL conditions Must be True
select *from spotify_alltime_top100_songs
where artist_country = 'Canada'
AND song_title = 'Blinding Lights'
ANd artist Like 'T%';

-- example 2
select *from spotify_alltime_top100_songs
where artist_country = 'USA'
AND artist like 'P%'
AND explicit = 'True';

-- combining AND and OR 
-- the following query will let you use the both and , or 
-- here using parenthesis is mandatory to get the correct result 
select * from spotify_alltime_top100_songs
where artist_country = 'Canada' AND (artist Like 'T%' Or artist Like 'J%');

-- W/o parenthesis , the Sql above will return all artists from canada that starts with "T" ,
--plus all the artists that starts with j regardless of the counrty value
SELECT *from spotify_alltime_top100_songs
where artist_country = 'Canada' AND artist LIKE 'T%' Or artist Like 'j%';
--- Not in SQL
--- NOT operator is used in WHERE clause to return all records that do not match the specified criteria.
--- it reverses the result of the condition from true to False and vice-versa 
Select * from bmw
Where not month = 3;