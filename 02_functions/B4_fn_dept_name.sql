-- ============================================
-- B4 - Department Name Function
-- Airport Employee Management System
-- ============================================

CREATE OR REPLACE FUNCTION fn_dept_name (
    p_employee_id IN NUMBER
)
RETURN VARCHAR2
IS
    v_department_name departments.department_name%TYPE;
BEGIN
    SELECT d.department_name
    INTO v_department_name
    FROM employees e
    JOIN departments d
        ON e.department_id = d.department_id
    WHERE e.employee_id = p_employee_id;

    RETURN v_department_name;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 'Department not found';
END;
/

SET SERVEROUTPUT ON;

BEGIN
    DBMS_OUTPUT.PUT_LINE(
        'Employee ID: 102'
    );

    DBMS_OUTPUT.PUT_LINE(
        'Department: ' || fn_dept_name(102)
    );
END;
/