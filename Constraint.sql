
DROP DATABASE IF EXISTS employee;
CREATE DATABASE employee;
USE employee;

CREATE TABLE Departments_Info (
    department_id INT NOT NULL,
    department_name VARCHAR(30) NOT NULL UNIQUE,
    PRIMARY KEY (department_id)
);

CREATE TABLE Locations (
    location_id INT NOT NULL AUTO_INCREMENT,
    location VARCHAR(30) NOT NULL UNIQUE,
    PRIMARY KEY (location_id)
);

USE employee;

CREATE TABLE Employees (
    employee_id   INT  NOT NULL,
    employee_name VARCHAR(50) NOT NULL,
    gender  CHAR(1) NOT NULL,
    age     INT  NOT NULL,
    hire_date   DATE DEFAULT (CURRENT_DATE),
    designation  TEXT,
    salary  DECIMAL(10,2),
    email   VARCHAR(70),
    department_id INT,
    location_id  INT,
    PRIMARY KEY (employee_id),
    CHECK (gender IN ('M','F')),
    CHECK (age >= 18),
    FOREIGN KEY (department_id) REFERENCES Departments_Info(department_id),
    FOREIGN KEY (location_id) REFERENCES Locations(location_id)
);

Select * from Employees;