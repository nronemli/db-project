select * from DEPARTMENTS;
--reads all from departments
select * from EMPLOYEES;
--reads all from employees
select FIRST_NAME from EMPLOYEES;
--reads first name from employees

select CITY from LOCATIONS ;

select FIRST_NAME,LAST_NAME,SALARY from EMPLOYEES;

select STREET_ADDRESS,POSTAL_CODE from LOCATIONS;

--distinct keyword removes duplicates
select distinct FIRST_NAME from EMPLOYEES;

