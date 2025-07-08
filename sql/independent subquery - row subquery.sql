# find all users who never ordered	

select * from users 
where user_id not in (select distinct(user_id) from orders)
;


# find all movies made by top 3 direcctors (in terms of total gross income)
with top_directors as (select director from movies
group by director
order by sum(gross) desc
limit 3)
select * from movies
where director in (select * from top_directors);




