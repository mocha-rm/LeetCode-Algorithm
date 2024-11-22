select b.name
from Employee a
inner join Employee b on a.managerID = b.id
group by a.managerID
having count(a.id) >= 5
