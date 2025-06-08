-- Write your PostgreSQL query statement below

select id from Weather
where id in
(select w2.id
from Weather w1, Weather w2
where w2.recordDate = w1.recordDate + INTERVAL '1 day'
and w1.temperature < w2.temperature);