-- find the avg rating of smartphone brands which have more than 20 phones
select*from smartphones;

select brand_name , 
count(*) as 'count',
round(avg(rating)) as 'avg_rating'
from smartphones
group by brand_name
having count > 20
;






-- 2. Find the top 3 brands with the highres avg ram that have a refresh rate of atleast 90 Hz and fast charging available and dont consider brands which have less than 10 phones

select * from smartphones;


select brand_name,
round(avg(ram_capacity)) as 'avg_ram'
from smartphones
where refresh_rate > 90 and fast_charging_available = 1
group by brand_name
having count(*) > 10
order by avg_ram desc
limit 3;


-- find the avg price, of all the phone brands with avg rating > 70 and num_phones more than 10 among all 5g enabled phones

select * from smartphones;

select brand_name ,
count(*) as 'num_phn',
round(avg(price)) as 'avg_price',
round(avg(rating)) as 'avg_rating'
from smartphones
where has_5g = 'True'
group by brand_name
having avg_rating > 70 and num_phn > 10; 



