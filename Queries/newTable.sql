CREATE TABLE address
(
    address_id Integer PRIMARY KEY,
    address    VARCHAR(50) NOT NULL,
    phone      Integer     NOT NULL
);
INSERT INTO address (address_id, address, phone)
VALUES (5, '1913 Hanoi Way',
        28303384);
INSERT INTO address (address_id, address, phone)
VALUES (7, '692 Joliet Street',
        44847719);
INSERT INTO address (address_id, address, phone)
VALUES (8, '1566 Inegl Manor',
        70581400);
INSERT INTO address (address_id, address, phone)
VALUES (10, '1795 Santiago ',
        86045262);
INSERT INTO address (address_id, address, phone)
VALUES (11, '900 Santiago ',
        16571220);
CREATE TABLE customer
(
    customer_id Integer PRIMARY KEY,
    first_name  VARCHAR(50) NOT NULL,
    last_name   VARCHAR(50) NOT NULL,
    address_id  Integer REFERENCES address (address_id)
);
INSERT INTO customer (customer_id, first_name, last_name, address_id)
VALUES (1,
        'Mary', 'Smith', 5);
INSERT INTO customer (customer_id, first_name, last_name, address_id)
VALUES (2,
        'Patricia', 'Johnson', NULl);
INSERT INTO customer (customer_id, first_name, last_name, address_id)
VALUES (3,
        'Linda', 'Williams', 7);
INSERT INTO customer (customer_id, first_name, last_name, address_id)
VALUES (4,
        'Barbara', 'Jones', 8);
INSERT INTO customer (customer_id, first_name, last_name, address_id)
VALUES (5,
        'Elizabeth', 'Brown', NULL);

select *
from customer;
select *
from address;

select first_name, last_name, address, phone
from customer
         join address
              on customer.address_id = address.address_id;

--give alias to table names --join (inner join)
select first_name, last_name, address, phone, c.address_id
from customer c
         join address a
              on c.address_id = a.address_id;

select first_name, last_name, address, phone, c.address_id
from customer c
         left join address a
                   on c.address_id = a.address_id;

select first_name, last_name, address, phone, c.address_id
from customer c
         right join address a
                    on c.address_id = a.address_id;

select first_name, last_name, address, phone, c.address_id
from customer c
         full join address a
                   on c.address_id = a.address_id;

select FIRST_NAME, LAST_NAME, DEPARTMENT_NAME
from EMPLOYEES e
         left join DEPARTMENTS d
              on e.DEPARTMENT_ID = d.DEPARTMENT_ID;

select *
from EMPLOYEES;

select *
from DEPARTMENTS;

