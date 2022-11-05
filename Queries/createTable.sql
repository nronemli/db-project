CREATE TABLE ScrumTeam
(
    Emp_ID    Integer primary key,
    FirstName varchar(30) not null,
    LastName  varchar(30),
    JobTitle  varChar(20)
);

INSERT INTO SCRUMTEAM(emp_id, firstname, lastname, jobtitle)
                      VALUES (1,'Nur','Onemli','SDET');
INSERT INTO SCRUMTEAM VALUES (2,'Emin','Onemli','Child');
INSERT INTO SCRUMTEAM VALUES (3,'Selim','Onemli','Child');
INSERT INTO SCRUMTEAM VALUES (4,'Necip','Onemli','QA');

select * from SCRUMTEAM;

UPDATE SCRUMTEAM
SET JobTitle = 'Tester'
where Emp_ID =4;

DELETE FROM SCRUMTEAM
Where Emp_ID =2;

--save changes permanently
commit;

