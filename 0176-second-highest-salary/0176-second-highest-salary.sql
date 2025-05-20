-- Write your PostgreSQL query statement below

SELECT (
select distinct salary
from Employee
order by salary desc
OFFSET 1 LIMIT 1
) as SecondHighestSalary