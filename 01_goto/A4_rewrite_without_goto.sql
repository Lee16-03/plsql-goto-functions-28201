-- ============================================
-- A4 - Rewrite Without GOTO
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

    -- Structured alternative to GOTO
    IF v_salary > 5000 THEN
        DBMS_OUTPUT.PUT_LINE('High salary employee.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Normal salary employee.');
    END IF;

    DBMS_OUTPUT.PUT_LINE('Salary check completed.');

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Employee not found.');

    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/