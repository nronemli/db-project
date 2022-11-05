select * from SCRUMTEAM;

--adding new column
ALTER TABLE SCRUMTEAM ADD salary INTEGER;

--update existin emp salary
UPDATE  SCRUMTEAM SET SALARY =100000 where EMP_ID=1;
UPDATE  SCRUMTEAM SET SALARY =90000 where EMP_ID=3;
UPDATE  SCRUMTEAM SET SALARY =700000 where EMP_ID=4;

--rename column
ALTER TABLE SCRUMTEAM RENAME COLUMN salary TO annual_salary;

--delete,drop column
ALTER TABLE SCRUMTEAM DROP COLUMN  annual_salary;

--change table name
ALTER TABLE SCRUMTEAM RENAME TO agileTeam;

select * from agileTeam;

commit;

--truncate- if we want to delete all data from table , but still keep table structure
TRUNCATE TABLE  agileTeam;

--if we want to delete the table and data together
--DROP ABLE agileteam; deletes all tables no table will be left

