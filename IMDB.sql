use project_movie_database;
select * from directors;
select * from movies;
select count(*) as Total_movies from movies;
select * from directors where name in('James Cameron','Luc Besson','John Woo');
select * from directors where name like 'S%';
select count(*) as Female_directors from directors where gender=1;
select name  from directors where gender=1 limit 1 offset  9;
select title,popularity from movies order by popularity desc limit 3;
select title,revenue from movies order by revenue desc limit 3;
select title,vote_average from movies where release_date>='2000-01-01' order by vote_average desc limit 1;
select title from movies m, directors d where m.director_id=d.id and d.name='Brenda Chapman';
select name,count(*) as Total_movies from directors join movies on directors.id=movies.director_id group by name order by Total_movies desc limit 1;
select name,sum(revenue) as Total_revenue from directors join movies on directors.id=movies.director_id group by name order by Total_revenue desc limit 1;

