-- ============================================
-- C1 - Payroll Validator
-- Airport Employee Management System
-- ============================================

CREATE OR REPLACE FUNCTION fn_validate_payroll (
    p_employee_id IN NUMBER
)
RETURN VARCHAR2
IS
    v_salary       employees.monthly_salary%TYPE;
    v_status       employees.status%TYPE;
    v_department   VARCHAR2(50);
    v_annual       NUMBER;
    v_tax          NUMBER;
BEGIN
    -- Get employee salary and status
    SELECT monthly_salary, status
    INTO v_salary, v_status
    FROM employees
    WHERE employee_id = p_employee_id;

    -- Get department using our B4 function
    v_department := fn_dept_name(p_employee_id);

    -- Calculate annual salary using B1
    v_annual := fn_annual_salary(v_salary);

    -- Calculate estimated tax using B3
    v_tax := fn_calculate_tax(v_annual);

    -- Validate payroll information
    IF v_salary <= 0 THEN
        RETURN 'INVALID: Salary must be greater than zero';

    ELSIF v_department = 'Department not found' THEN
        RETURN 'INVALID: Department not found';

    ELSIF v_status <> 'ACTIVE' THEN
        RETURN 'INVALID: Employee is not active';

    ELSE
        RETURN 'VALID: Payroll verified - Annual Salary: '
               || v_annual
               || ', Estimated Tax: '
               || v_tax;
    END IF;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 'INVALID: Employee not found';

    WHEN OTHERS THEN
        RETURN 'INVALID: ' || SQLERRM;
END;
/

SET SERVEROUTPUT ON;

BEGIN
    DBMS_OUTPUT.PUT_LINE(
        'Employee: Ahmed Hassan'
    );

    DBMS_OUTPUT.PUT_LINE(
        fn_validate_payroll(101)
    );
END;
/