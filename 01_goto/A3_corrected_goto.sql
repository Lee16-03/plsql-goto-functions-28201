-- ============================================
-- A3 - Corrected GOTO
-- Airport Employee Management System
-- ============================================

SET SERVEROUTPUT ON;

DECLARE
    v_salary employees.monthly_salary%TYPE;
BEGIN
    SELECT monthly_salary
    INTO v_salary
    FROM employees
    WHERE employee_id = 101;

    IF v_salary > 5000 THEN
        GOTO high_salary;
    ELSE
        GOTO normal_salary;
    END IF;

    <<high_salary>>
    DBMS_OUTPUT.PUT_LINE('High salary employee.');
    GOTO finish;

    <<normal_salary>>
    DBMS_OUTPUT.PUT_LINE('Normal salary employee.');

    <<finish>>
    DBMS_OUTPUT.PUT_LINE('Salary check completed.');

END;
/