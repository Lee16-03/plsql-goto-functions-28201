-- ============================================
-- A2 - Salary Review
-- Airport Employee Management System
-- ============================================

SET SERVEROUTPUT ON;

DECLARE
    v_employee_id  employees.employee_id%TYPE := 102;
    v_name         VARCHAR2(100);
    v_salary       employees.monthly_salary%TYPE;
    v_hire_date    employees.hire_date%TYPE;
    v_years        NUMBER;
BEGIN
    -- Get employee information
    SELECT first_name || ' ' || last_name,
           monthly_salary,
           hire_date
    INTO   v_name,
           v_salary,
           v_hire_date
    FROM employees
    WHERE employee_id = v_employee_id;

    -- Calculate completed years of service
    v_years := TRUNC(MONTHS_BETWEEN(SYSDATE, v_hire_date) / 12);

    DBMS_OUTPUT.PUT_LINE('Employee: ' || v_name);
    DBMS_OUTPUT.PUT_LINE('Monthly Salary: ' || v_salary);
    DBMS_OUTPUT.PUT_LINE('Years of Service: ' || v_years);

    -- Salary review decision using GOTO
    IF v_years >= 5 AND v_salary < 5000 THEN
        GOTO review_required;
    ELSE
        GOTO no_review;
    END IF;

    <<review_required>>
    DBMS_OUTPUT.PUT_LINE('Salary Review: REQUIRED');
    GOTO finish;

    <<no_review>>
    DBMS_OUTPUT.PUT_LINE('Salary Review: NOT REQUIRED');

    <<finish>>
    DBMS_OUTPUT.PUT_LINE('Salary review check completed.');

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Employee not found.');

    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/