-- Write your PostgreSQL query statement below

SELECT player_id, TO_CHAR(min(event_date), 'YYYY-MM-DD') AS first_login
FROM Activity
GROUP BY player_id;

-- + INTERVAL '1 day'