select FIRST_NAME,LAST_NAME,PHONE_NUMBER from EMPLOYEES
where FIRST_NAME = 'David';

select FIRST_NAME,LAST_NAME,PHONE_NUMBER from EMPLOYEES
where FIRST_NAME= 'David' And LAST_NAME= 'Lee';

--get all information who is
select * from EMPLOYEES where SALARY  > 7000;

select EMAIL,SALARY from EMPLOYEES
where SALARY <4000;

select * from EMPLOYEES
where JOB_ID = 'IT_PROG' or JOB_ID = 'SA_REP';

--get me first name, last name salary who is making more than 5000 and less than 10000
select FIRST_NAME,LAST_NAME,SALARY
from EMPLOYEES
where SALARY between 5000 and 10000;

select *
from EMPLOYEES
where EMPLOYEE_ID between 130 and 170;

select *
from EMPLOYEES
where EMPLOYEE_ID in(135,176,154,129);

--get me city of where country_id IT,US,UK
select CITY,COUNTRY_ID
from LOCATIONS
where COUNTRY_ID in ('IT','US','UK');

--get me all employees information based on who is making more salary to low salary
select * from EMPLOYEES
order by SALARY desc;

--get me all emp info order by alphabetial on firstname
select * from EMPLOYEES
order by FIRST_NAME asc;

