-- I. Group smartphones by brand and get the count, average price, max rating, avg screen Size and avg battery capacity
-- --> Group By Animation

select * from smartphones;

select brand_name , count(*) as 'num_phones',
round(avg(price)) as 'avg_price',
max(rating) as 'max_rating',
avg(screen_size ) as 'avg_screen_size',
avg(battery_capacity)as 'avg_battery_capacity'
from smartphones
group by brand_name
order by num_phones asc;


-- 2. Group smartphones by whether they have an nfc and get the average price and rating
select * from smartphones;

select has_nfc,
round(avg(price)) as 'avg_price',
round(avg(rating)) as 'avg_rating'
from smartphones
group by has_nfc;



-- 4. Group smartphones by the brand and processor brand and get the count of models and the average primary camera resolution (rear)

select * from smartphones;

select brand_name , processor_brand,os,
count(*) as 'num_phones',
round(avg(primary_camera_rear)) as 'avg_primary_rear'
from smartphones
group by brand_name , processor_brand,os
order by brand_name asc;


-- find top 5 most costly phones
select* from smartphones;


select brand_name , model , price
from smartphones
order by brand_name desc;


select brand_name ,
avg(price) as 'avg_price'
from smartphones
group by brand_name
order by avg_price desc;



-- which brand makes the smallest screen smartphones
select* from smartphones;


select brand_name ,
round(avg(screen_size)) as 'avg_screen_size'
from smartphones
group by brand_name
order by avg_screen_size asc;




-- group smartphones by the brand, and find the brand with the highest number of models that have both NFC and an IR blaster

select * from smartphones;
select brand_name, count(*)as 'Count'
from smartphones
where has_nfc = 'True' and has_ir_blaster = 'True'
group by brand_name
order by count desc;



-- find all samsung 5g enabled smartphones and find out the avg price for NFC and Non—NFC phones
select* from smartphones;

select has_nfc , avg(price)as 'avg_price'
from smartphones
where brand_name = 'samsung' 
group by has_nfc;








