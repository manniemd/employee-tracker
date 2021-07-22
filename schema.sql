DROP DATABASE IF EXISTS employeeTracker_db;

CREATE DATABASE employeeTracker_db;

USE employeeTracker_db;

CREATE TABLE Department (
id INT PRIMARY KEY AUTO_INCREMENT,
_name VARCHAR(30)
);
CREATE TABLE _Role (
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
title VARCHAR (30),
salary DECIMAL NOT NULL,
Department_id INT NOT NULL,
FOREIGN KEY (department_id) REFERENCES Department(id)
);

CREATE TABLE Employee (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(30) NOT NULL,
role_id INT NOT NULL,
manager_id INT,
FOREIGN KEY (role_id) REFERENCES _Role(id),
FOREIGN KEY (manager_id) REFERENCES Employee(id)
);

SELECT * FROM Department;
SELECT * FROM _Role;
SELECT * FROM Employee;