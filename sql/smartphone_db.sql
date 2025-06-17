select * from smartphones;

/* Sorting */
-- Find top 5 samsung phns with biggest screen size

select brand_name , screen_size from smartphones 
where brand_name = 'samsung' 
order by screen_size desc
limit 5;


-- sort all the phn in dsc of number of total camera 
select model,total_camera, (select sum(num_front_cameras + num_rear_cameras) from smartphones) as sum_of_camera
from ( select model , num_front_cameras + num_rear_cameras as total_camera
from smartphones)as temp
order by total_camera desc;




-- sort data on the basis of ppi in desc
select * from smartphones;
select model,
round(sqrt(resolution_width * 2 + resolution_height * 2)/screen_size) as 'ppi'
from smartphones
order by ppi desc;



-- find the phone with 2nd largest battery
select * from smartphones;

select model, battery_capacity as bc
from smartphones
order by bc desc
limit 1,1;


-- find the name and rating of the worst rated apple phones
select * from smartphones;
select  brand_name , model ,rating
from smartphones 
where brand_name = 'apple'
order by rating asc;

-- sort phns alphabetically and then on the basis of rating in desc order
select model , rating
from smartphones
order by model asc,
rating desc;


