--get me info who is working as IT_PROG or SA_RAP
select *
from EMPLOYEES
where JOB_ID in('IT_PROG','SA_REP');

--how many employee working as IT_PROG or SA_RAP
select count(*)
from EMPLOYEES
where JOB_ID in('IT_PROG','SA_REP');

--how many unique first names are there in employees table
select count(distinct FIRST_NAME) from EMPLOYEES;

--get me all employees information based on who is making more salary to low salarY
select *
from EMPLOYEES
order by SALARY DESC ;

--get me all emp info order by alphabetial on firstname (default order is asc)
select *
from EMPLOYEES
order by FIRST_NAME ASC;

--get me all emp who first name starts with c
select *
from EMPLOYEES
where FIRST_NAME like 'C%';

--get all emp who firs name start with c and 5 charactrs in total
select *
from EMPLOYEES
where FIRST_NAME like 'C____';

--get 5 letter first name where the middle char is z
select *
from EMPLOYEES
where FIRST_NAME like '__z__';

--get first name where second char is u
select  *
from EMPLOYEES
where FIRST_NAME like '_u%';

--find me minimum salary
select min(SALARY)
from EMPLOYEES;

--find max salary
select max(SALARY)
from EMPLOYEES;

--find avg salary
select avg(SALARY) from EMPLOYEES;

--round
select round(avg(SALARY),2) from EMPLOYEES;

select sum(SALARY) from EMPLOYEES;








