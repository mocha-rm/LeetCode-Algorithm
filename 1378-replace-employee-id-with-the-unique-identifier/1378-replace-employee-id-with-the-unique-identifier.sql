# Write your MySQL query statement below
select if (b.unique_id IS NOT NULL, b.unique_id, NULL) as unique_id, a.name
from EmployeeUNI b
right join Employees a on b.id = a.id