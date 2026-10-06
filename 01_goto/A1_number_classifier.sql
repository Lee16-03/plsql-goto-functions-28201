-- ============================================
-- A1 - Number Classifier
-- Airport Employee Management System
-- ============================================

SET SERVEROUTPUT ON;

DECLARE
    v_salary       employees.monthly_salary%TYPE;
    v_employee_id  employees.employee_id%TYPE := 101;
    v_name         VARCHAR2(100);
BEGIN
    -- Get the employee's name and salary
    SELECT first_name || ' ' || last_name,
           monthly_salary
    INTO   v_name,
           v_salary
    FROM employees
    WHERE employee_id = v_employee_id;

    DBMS_OUTPUT.PUT_LINE('Employee: ' || v_name);
    DBMS_OUTPUT.PUT_LINE('Monthly Salary: ' || v_salary);

    -- Classify the salary using GOTO
    IF v_salary < 3000 THEN
        GOTO entry_level;

    ELSIF v_salary <= 5000 THEN
        GOTO standard_level;

    ELSE
        GOTO senior_level;
    END IF;

    <<entry_level>>
    DBMS_OUTPUT.PUT_LINE('Classification: Entry Level');
    GOTO finish;

    <<standard_level>>
    DBMS_OUTPUT.PUT_LINE('Classification: Standard');
    GOTO finish;

    <<senior_level>>
    DBMS_OUTPUT.PUT_LINE('Classification: Senior');

    <<finish>>
    DBMS_OUTPUT.PUT_LINE('Classification completed.');

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Employee not found.');

    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/