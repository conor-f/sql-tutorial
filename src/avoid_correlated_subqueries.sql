select distinct
    department.name as name,
    department.building as building
from department join staff
on department.ident = staff.dept
order by name;
