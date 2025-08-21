# SQL-FAQ
45 Day Challenge

DAY 1 - 

Person
    personId
    firstName
    lastName

Address
    addressId
    personId
    city
    state

# Write sql query to report first name, last name, city and state of each person in the person table. If the address of a personId is not present in the address table, report null instead.

CREATE TABLE PERSON(  
    person_id int NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'Primary Key',
    create_time DATETIME COMMENT 'Create Time',
    first_name VARCHAR(255),
    last_name VARCHAR(255)
) COMMENT '';

