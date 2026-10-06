-- ============================================
-- Airport Employee Management System
-- 00_setup/create_tables.sql
-- ============================================

-- Create departments table
CREATE TABLE departments (
    department_id   NUMBER(2) PRIMARY KEY,
    department_name VARCHAR2(50) NOT NULL
);

-- Create employees table
CREATE TABLE employees (
    employee_id      NUMBER(4) PRIMARY KEY,
    first_name       VARCHAR2(30) NOT NULL,
    last_name        VARCHAR2(30) NOT NULL,
    department_id    NUMBER(2) NOT NULL,
    job_title        VARCHAR2(50) NOT NULL,
    monthly_salary   NUMBER(8,2) NOT NULL,
    hire_date        DATE NOT NULL,
    status           VARCHAR2(20) DEFAULT 'ACTIVE' NOT NULL,

    CONSTRAINT fk_employee_department
        FOREIGN KEY (department_id)
        REFERENCES departments(department_id),

    CONSTRAINT chk_employee_salary
        CHECK (monthly_salary > 0),

    CONSTRAINT chk_employee_status
        CHECK (status IN ('ACTIVE', 'INACTIVE'))
);

-- Insert departments
INSERT INTO departments
    (department_id, department_name)
VALUES
    (10, 'Airport Security');

INSERT INTO departments
    (department_id, department_name)
VALUES
    (20, 'Flight Operations');

INSERT INTO departments
    (department_id, department_name)
VALUES
    (30, 'Ground Services');

INSERT INTO departments
    (department_id, department_name)
VALUES
    (40, 'Maintenance');

INSERT INTO departments
    (department_id, department_name)
VALUES
    (50, 'Customer Service');

INSERT INTO departments
    (department_id, department_name)
VALUES
    (60, 'Administration');


-- Insert employees
INSERT INTO employees
    (employee_id, first_name, last_name, department_id,
     job_title, monthly_salary, hire_date, status)
VALUES
    (101, 'Ahmed', 'Hassan', 10,
     'Security Officer', 3200, DATE '2021-03-15', 'ACTIVE');

INSERT INTO employees
    (employee_id, first_name, last_name, department_id,
     job_title, monthly_salary, hire_date, status)
VALUES
    (102, 'Sara', 'Ali', 20,
     'Operations Coordinator', 4800, DATE '2019-07-10', 'ACTIVE');

INSERT INTO employees
    (employee_id, first_name, last_name, department_id,
     job_title, monthly_salary, hire_date, status)
VALUES
    (103, 'Omar', 'Khalid', 30,
     'Ground Agent', 2800, DATE '2023-01-20', 'ACTIVE');

INSERT INTO employees
    (employee_id, first_name, last_name, department_id,
     job_title, monthly_salary, hire_date, status)
VALUES
    (104, 'Lina', 'Saleh', 50,
     'Customer Service Agent', 3500, DATE '2022-05-01', 'ACTIVE');

INSERT INTO employees
    (employee_id, first_name, last_name, department_id,
     job_title, monthly_salary, hire_date, status)
VALUES
    (105, 'Daniel', 'Smith', 40,
     'Aircraft Technician', 5200, DATE '2018-11-12', 'ACTIVE');

INSERT INTO employees
    (employee_id, first_name, last_name, department_id,
     job_title, monthly_salary, hire_date, status)
VALUES
    (106, 'Maria', 'Costa', 60,
     'HR Officer', 4500, DATE '2020-09-18', 'ACTIVE');

INSERT INTO employees
    (employee_id, first_name, last_name, department_id,
     job_title, monthly_salary, hire_date, status)
VALUES
    (107, 'James', 'Brown', 20,
     'Operations Manager', 7200, DATE '2016-02-08', 'ACTIVE');

INSERT INTO employees
    (employee_id, first_name, last_name, department_id,
     job_title, monthly_salary, hire_date, status)
VALUES
    (108, 'Noor', 'Ahmed', 30,
     'Ground Supervisor', 4000, DATE '2021-12-01', 'ACTIVE');

COMMIT;


SELECT *
FROM departments
ORDER BY department_id;

SELECT *
FROM employees
ORDER BY employee_id;

