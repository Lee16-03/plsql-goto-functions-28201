# Airport Employee Management System

## Project Overview

This project is a PL/SQL-based Airport Employee Management System.
It demonstrates the use of GOTO statements, user-defined functions,
SQL queries, and payroll validation in Oracle Database.

The system manages airport employees, departments, salaries, hire dates,
and employee status.

## Database Tables

### Departments
Stores airport department information.

### Employees
Stores employee information including:
- Employee ID
- Employee name
- Department
- Job title
- Monthly salary
- Hire date
- Employee status

## Project Structure

text
00_setup/
    create_tables.sql

01_goto/
    A1_number_classifier.sql
    A2_salary_review.sql
    A3_illegal_goto.sql
    A4_rewrite_without_goto.sql

02_functions/
    B1_fn_annual_salary.sql
    B2_fn_years_of_service.sql
    B3_fn_calculate_tax.sql
    B4_fn_dept_name.sql
    C1_fn_validate_payroll.sql

03_tests/
    B5_functions_in_select.sql
    test_functions.sql
    test_validate_payroll.sql

#Part A - GOTO
A1: Salary classification
A2: Salary review check
A3: Demonstration and correction of an illegal GOTO
A4: Rewrite of the logic without GOTO

#Part B - Functions
B1: Annual salary calculation
B2: Years of service calculation
B3: Estimated tax calculation
B4: Department name lookup
B5: Functions used inside a SQL SELECT statement

##Part C - Payroll Validation
The payroll validation function checks whether an employee has valid payroll information and returns an appropriate validation message.
  #Testing
The project includes test scripts for the functions and payroll validation.
All implemented functions were tested successfully in Oracle SQL Developer.

  #Tools Used
Oracle Database
Oracle SQL Developer
PL/SQL
Git and GitHub

#Notes
AI tools were used for guidance, code drafting, and troubleshooting during the development of this assignment. The code was reviewed, tested, and adapted in Oracle SQL Developer, and I am responsible for understanding the submitted work.