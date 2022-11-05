--1=get the highest salary
select max(SALARY)
from EMPLOYEES;

--2=highest salary employee information where salary is 24000
select *
from EMPLOYEES
where SALARY = 24000;

--1+2 = subquery with both above DYNAMIC RESULT !!!!!
select *
from EMPLOYEES
where SALARY = (select max(SALARY) from EMPLOYEES);

--TASK:finding second highest salary
--1:get highest salary first
select max(SALARY)
from EMPLOYEES;

--2:highest after 24k
select max(SALARY)
from EMPLOYEES
where SALARY < 24000;

--3: subquery
select max(SALARY)
from EMPLOYEES
where SALARY < (select max(SALARY) from EMPLOYEES);

select *
from EMPLOYEES
where SALARY = (select max(SALARY)
                from EMPLOYEES
                where SALARY <
                      (select max(SALARY) from EMPLOYEES));;

-----------------------------
select *
from EMPLOYEES
order by SALARY desc;

select *
from EMPLOYEES
where ROWNUM < 11;

--get the list of first 10 in list, order salary descending
select *
from EMPLOYEES
where ROWNUM < 11
order by SALARY desc;

--order all emp based on salary high to low then display only 10 rows
select *
from (select *
      from EMPLOYEES
      order by SALARY desc)
where ROWNUM < 11;

--how can we rename the column that we displayed
select FIRST_NAME as given_name, LAST_NAME as "Surname"
from EMPLOYEES;


--TEXT FUNCTIONS, String manipulation
--java>> first_name+" "last_name
--Sql concat is ||

select FIRST_NAME || ' ' || LAST_NAME as "Full_Name"
FROM EMPLOYEES;

--Task;
--add @gmail.com and name new column to fill email

select EMAIL || '@gmail.com' as "full_email"
from EMPLOYEES;

--making all lowercase
select lower(EMAIL || '@gmail.com') as "full_email"
from EMPLOYEES;

--uppercase
select upper(EMAIL || '@gmail.com') as "full_email"
from EMPLOYEES;

--length(value)
select FIRST_NAME, length(FIRST_NAME) as "length_name"
from EMPLOYEES
order by "length_name" desc;

--substr(colName,begIndex,NumberOfChar)
select substr(FIRST_NAME, 0, 1) || '.' || substr(LAST_NAME, 0, 1) as "initials"
from EMPLOYEES;

select substr(FIRST_NAME, 0, 1) || '.' || substr(LAST_NAME, 0, 1) as "initials",
       FIRST_NAME || ' ' || LAST_NAME                             as "Full_Name",
       lower(EMAIL || '@gmail.com')                               as "full_email"
from EMPLOYEES;

--View
create view EmailList as
select substr(FIRST_NAME, 0, 1) || '.' || substr(LAST_NAME, 0, 1) as "initials",
       FIRST_NAME || ' ' || LAST_NAME                             as "Full_Name",
       lower(EMAIL || '@gmail.com')                               as "full_email"
from EMPLOYEES;
select "Full_Name"
from EMAILLIST;

--to remove view
drop view EmailList;

--find the highest 14 th salary
select *
from (select *
      from EMPLOYEES
      order by salary desc)
where rownum < 15;

--find emp info who is making 14th highest salary
select min(SALARY)
FROM (select distinct SALARY from EMPLOYEES
      order by salary desc)
where rownum < 15;

select * from EMPLOYEES
where SALARY = (select min(SALARY)
                FROM (select distinct SALARY from EMPLOYEES
                      order by salary desc)
                where rownum < 15);

