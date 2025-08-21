
# SQL-FAQ

## 45 Day Challenge

---

## Day 1

### Table Structures

#### Person
| Column     | Description |
|------------|-------------|
| personId   | Primary Key |
| firstName  | First Name  |
| lastName   | Last Name   |

#### Address
| Column     | Description         |
|------------|---------------------|
| addressId  | Primary Key         |
| personId   | Foreign Key (Person)|
| city       | City                |
| state      | State               |

---

### Problem Statement
> **Write an SQL query to report first name, last name, city, and state of each person in the person table. If the address of a personId is not present in the address table, report null instead.**

---

### Sample Table Creation
```sql
CREATE TABLE PERSON (
    person_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'Primary Key',
    create_time DATETIME COMMENT 'Create Time',
    first_name VARCHAR(255),
    last_name VARCHAR(255)
) COMMENT='';
```

