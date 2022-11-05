select *
from EMPLOYEES;
select *
from DEPARTMENTS;

--not working
select FIRST_NAME, LAST_NAME, DEPARTMENT_ID
from EMPLOYEES
         left join DEPARTMENTS D on EMPLOYEES.EMPLOYEE_ID = D.MANAGER_ID;


select *
from CUSTOMER;
select *
from ADDRESS;

SELECT CUSTOMER_ID, FIRST_NAME, LAST_NAME, ADDRESS, PHONE
from CUSTOMER
         LEFT OUTER JOIN ADDRESS
                         on CUSTOMER.ADDRESS_ID = ADDRESS.ADDRESS_ID
where ADDRESS.ADDRESS_ID IS NULL;

SELECT *
FROM CUSTOMER
         FULL OUTER JOIN ADDRESS
                         ON CUSTOMER.ADDRESS_ID = ADDRESS.ADDRESS_ID
where CUSTOMER.ADDRESS_ID is null
   or ADDRESS.ADDRESS_ID is null;

--get first name, last name, and dep name for all emp
-- inner join, ikisinin order
--left join - left ve orta ortak
SELECT FIRST_NAME, LAST_NAME, DEPARTMENT_NAME
FROM EMPLOYEES E
         left join DEPARTMENTS d
                   on e.DEPARTMENT_ID = d.DEPARTMENT_ID
WHERE e.DEPARTMENT_ID is null;

--get me first name , last name, and dep name, city for all employees
SELECT FIRST_NAME, LAST_NAME, DEPARTMENT_NAME, CITY
From EMPLOYEES e
         join DEPARTMENTS d
              On e.DEPARTMENT_ID = d.DEPARTMENT_ID
         join LOCATIONS l
              on d.LOCATION_ID = l.LOCATION_ID;

--get me first name, last name, dep name, city, country name,
SELECT FIRST_NAME, LAST_NAME, DEPARTMENT_NAME, CITY, COUNTRY_NAME
From EMPLOYEES e
         join DEPARTMENTS d
              On e.DEPARTMENT_ID = d.DEPARTMENT_ID
         join LOCATIONS l
              on d.LOCATION_ID = l.LOCATION_ID
         join COUNTRIES c
              on l.COUNTRY_ID = c.COUNTRY_ID;

--get me all employees first and last name, and their managers first and last name
SELECT FIRST_NAME, LAST_NAME, MANAGER_ID
FROM EMPLOYEES;

SELECT e1.employee_id,
       e1.FIRST_NAME,
       e1.LAST_NAME,
       e1.MANAGER_ID,
       e2.EMPLOYEE_ID,
       e2.FIRST_NAME,
       e2.LAST_NAME
from EMPLOYEES e1
         join EMPLOYEES e2
              on e1.MANAGER_ID = e2.EMPLOYEE_ID
order by e1.EMPLOYEE_ID;

create table Developers(
                           Id_Number Integer primary key,
                           Names varchar(30),
                           Salary Integer
);
create table Testers(
                        Id_Number Integer primary key,
                        Names varchar(30),
                        Salary Integer
);

insert into developers values (1, 'Mike', 155000);
insert into developers values (2, 'John', 142000);
insert into developers values (3, 'Steven', 850000);
insert into developers values (4, 'Maria', 120000);
insert into testers values (1, 'Steven', 110000);
insert into testers values(2, 'Adam', 105000);
insert into testers values (3, 'Lex', 100000);
commit work;












