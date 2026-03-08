create  database netflix_db;
use netflix_db;
create table netflix(show_id varchar (50),show_type varchar (50),title varchar (100),director varchar(100),country  varchar (100),
                      date_added date,release_year int,rating varchar (100),duration varchar(100),listed_in varchar(100));
select * from netflix;
show tables;

-- Total content on netflix
select count(*) as total_titles
from netflix;

-- movies vs tv shows
select show_type,count(*) as total_content
from netflix
group by show_type;

-- content added each year
select release_year,title,count(*) as total_titles
from netflix
group by release_year,title
order by release_year,title;

-- top 10 countries producing nerflix content
select country,count(*) as total_titles
from netflix
group by country
order by total_titles desc
limit 10;

-- most common content rating
select rating,count(*) as rating_count
from netflix
group by rating
order by rating_count desc;

-- most popular genres
select listed_in,count(*) as genre_count
from netflix
group by listed_in
order by genre_count desc
limit 10;

-- movie released after 2020
select title, release_year,count(*) as total_count
from netflix
where release_year>2020
group by title,release_year;
