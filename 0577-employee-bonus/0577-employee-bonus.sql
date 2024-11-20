# Write your MySQL query statement below
select e.name, bonus
from Employee e
left join Bonus b on e.empId = b.empId
where b.bonus < 1000 or b.bonus is null