/* cross join */

select * from cx_live.users1 t1
cross join cx_live.groups t2;


# inner join 
select * from cx_live.users1 t1
inner join cx_live.membership t2
on t1.user_id = t2.user_id;

# left join 
select * from users1;
select * from membership;

select * from cx_live.users1 t1
left join cx_live.membership t2
on t1.user_id = t2.user_id;



# union and union all

select * from person1
union 
select * from person2;

select * from person1
union all
select * from person2;


# outer join

select * from membership t1
left join users1 t2 
on t1.user_id = t2.user_id
union 
select * from membership t1
right join users1 t2
on t1.user_id = t2.user_id;



# joins

select * from users1 t1
join users1 t2
on t1.emergency_contact = t2.user_id;


# join on 2 tables

select * from students t1
join class t2
on t1.class_id = t2.class_id
and t1.enrollment_year = t2.class_year;


# join on more than 2 table
SELECT * from order_details t1
join orders t2
on t1.order_id = t2.order_id
join users t3
on  t2.user_id = t3.user_id;