select *
from TESTERS;

select *
from DEVELOPERS;
--union : removes duplicates + sorts the order asc
--union all : puts all together table1 followed by table2

select *
from TESTERS
union
select *
from DEVELOPERS;

select *
from TESTERS
union all
select *
from DEVELOPERS;

--minus returns records from first query that is not present in second query
--it will only return values from 1st query that are not common in 2 queries

select *
from DEVELOPERS
minus
select *
from TESTERS;

--intersect : returns that are present/common in both querry results it will sort and remove duplicates
select *
from DEVELOPERS
intersect
select *
from TESTERS;

--how to find duplicate names in employee table (interview question)
select FIRST_NAME, count(*)
from EMPLOYEES
group by FIRST_NAME
having count(*) > 1;




