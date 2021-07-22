INSERT INTO department (_name)
VALUE ("Sales");
INSERT INTO department (name)
VALUE ("Engineering");
INSERT INTO department (name)
VALUE ("Finance");
INSERT INTO department (name)
VALUE ("Legal");
INSERT INTO department (name)
VALUE ("Human Resources");

-- EMPLOYEE ROLE SEEDS -------
INSERT INTO role (title, salary, department_id)
VALUE ("Lead Engineer", 100000, 2);
INSERT INTO role (title, salary, department_id)
VALUE ("Legal Team Lead", 120000, 4);
INSERT INTO role (title, salary, department_id)
VALUE ("Accountant", 123000, 3);
INSERT INTO role (title, salary, department_id)
VALUE ("Sales Lead", 123400, 1);
INSERT INTO role (title, salary, department_id)
VALUE ("Salesperson", 12345, 1);
INSERT INTO role (title, salary, department_id)
VALUE ("Software Engineer", 1234567, 2);
INSERT INTO role (title, salary, department_id)
VALUE ("Lawyer", 12345678, 4);

-- EMPLOYEE SEEDS -------
INSERT INTO employee (first_name, last_name, manager_id, role_id)
VALUE ("Mannie", "Espinoza", null, 3);
INSERT INTO employee (first_name, last_name, manager_id, role_id)
VALUE ("Michael", "Jordan", null, 2);
INSERT INTO employee (first_name, last_name, manager_id, role_id)
VALUE ("Kobe","Bryant",null,1);
INSERT INTO employee (first_name, last_name, manager_id, role_id)
VALUE ("Kareen", "Abdu", 1, 7);
INSERT INTO employee (first_name, last_name, manager_id, role_id)
VALUE ("Yaniss", "Antedeakumbo", 4, 6);
INSERT INTO employee (first_name, last_name, manager_id, role_id)
VALUE ("Jason", "Baker", 1, 5);
INSERT INTO employee (first_name, last_name, manager_id, role_id)
VALUE ("Tom", "Nice", 2, 4);