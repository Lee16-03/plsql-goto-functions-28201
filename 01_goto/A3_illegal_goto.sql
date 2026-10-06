-- ============================================
-- A3 - Illegal GOTO and Fix
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

    GOTO salary_check;

    IF v_salary > 5000 THEN
        <<salary_check>>
        DBMS_OUTPUT.PUT_LINE('High salary employee.');
    END IF;

    DBMS_OUTPUT.PUT_LINE('Check completed.');

END;
/