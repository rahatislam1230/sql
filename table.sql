create table student(
deptid number primary key,
deptname varchar2(20) unique not null,
location varchar2(20)

);
create table Department(
deptid number primary key,
deptname varchar2(20) unique not null,
location varchar2(20) DEFAULT 'Dhaka'

);
drop table student;
CREATE TABLE Employee (
    EmpID NUMBER PRIMARY KEY,
    EmpName VARCHAR2(40) NOT NULL,
    Salary NUMBER CHECK (Salary > 1000),
    DeptID NUMBER,
    CONSTRAINT fk_dept FOREIGN KEY (DeptID) REFERENCES Department(DeptID)
);
INSERT INTO Department VALUES (10, 'HR', 'Dhaka');
INSERT INTO Department VALUES (20, 'IT', 'Chittagong');

INSERT INTO Employee VALUES (101, 'Alice', 3000, 10);
INSERT INTO Employee VALUES (102, 'Bob', 2500, 20);
create table Department(
deptid number primary key,
deptname varchar2(20) unique not null,
location varchar2(20) DEFAULT 'Dhaka'

);
drop table student;
CREATE TABLE Employee (
    EmpID NUMBER PRIMARY KEY,
    EmpName VARCHAR2(40) NOT NULL,
    Salary NUMBER CHECK (Salary > 1000),
    DeptID NUMBER,
    CONSTRAINT fk_dept FOREIGN KEY (DeptID) REFERENCES Department(DeptID)
);
INSERT INTO Department VALUES (10, 'HR', 'Dhaka');
INSERT INTO Department VALUES (20, 'IT', 'Chittagong');

INSERT INTO Employee VALUES (101, 'Alice', 3000, 10);
INSERT INTO Employee VALUES (102, 'Bob', 2500, 20);
UPDATE Employee
SET Salary = Salary * 1.10
WHERE DeptID = 10;

DELETE FROM Employee
WHERE Salary < 2000;
TRUNCATE TABLE Employee;
ALTER TABLE Employee
ADD HireDate DATE DEFAULT SYSDATE;
ALTER TABLE Employee
ADD Status VARCHAR2(10) DEFAULT 'Active';


UPDATE Employee
SET Status = 'Inactive'
WHERE Salary < 3000;
INSERT INTO Employee (EmpID, EmpName, Salary, DeptID)
VALUES (103, 'Charlie', 4000, 20);
