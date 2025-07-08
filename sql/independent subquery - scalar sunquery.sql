#  Find the movie with highest profit(vs order by)
select * from movies
where (gross - budget) = (select max(gross - budget) from movies);


select * from movies
order by (gross - budget) desc
limit 1;



# Find how many movies have a rating > the avg all the movie ratings (Find count of above average movies)
select count(*) from movies
where score > (select avg(score) from movies);


# find the highest rated movies of 2000

select * from movies 
where year = 2000 and score = (select max(score) from movies
where year = 2000);

# find the highest rated movies among all movies whose number of votess are > the dataset avg votes
select * from movies
where score = (select max(score) from movies 
where votes > (select avg(votes) from movies)); 

