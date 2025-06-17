

-- — find the top 5 batsman in IPL

select * from ipl_table;

select batter ,sum(total_run) as 'total_run'
from ipl_table
group by batter
order by total_run desc
limit 5;



-- - find the 2nd highest 6 hitter in IPL

select * from ipl_table;

select batter, count(*) as 'sixes'
from ipl_table
where batsman_run = 6
group by batter
order by sixes desc
limit 1,1;



-- top 10 batsman with centuries in IPL






