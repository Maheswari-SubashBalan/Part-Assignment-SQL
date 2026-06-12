Use Employee;

CREATE TABLE Employees (
    employee_id   INT  NOT NULL,
    employee_name VARCHAR(50),
    gender        CHAR(1),
    age           INT,
    hire_date     DATE,
    designation   VARCHAR(100),
    salary        DECIMAL(10,2),
    department_id INT,
    location_id   INT,
    PRIMARY KEY (employee_id),
    FOREIGN KEY (department_id) REFERENCES Departments(department_id),
    FOREIGN KEY (location_id)   REFERENCES Location(location_id)
);

Alter table Employees add column email Varchar(50);
Alter table Employees modify column designation text;
Use employee;
Alter table employees drop column age;

Alter table employees 
Rename column hire_date to date_of_joining;

Truncate table employees;

Use employee;
Drop Table Employees;

DROP DATABASE employee;
