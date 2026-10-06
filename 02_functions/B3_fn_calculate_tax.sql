-- ============================================
-- B3 - Tax Calculator Function
-- Airport Employee Management System
-- ============================================

CREATE OR REPLACE FUNCTION fn_calculate_tax (
    p_annual_salary IN NUMBER
)
RETURN NUMBER
IS
    v_tax NUMBER;
BEGIN
    IF p_annual_salary <= 36000 THEN
        v_tax := p_annual_salary * 0.10;

    ELSIF p_annual_salary <= 60000 THEN
        v_tax := p_annual_salary * 0.15;

    ELSE
        v_tax := p_annual_salary * 0.20;
    END IF;

    RETURN v_tax;
END;
/

SET SERVEROUTPUT ON;

BEGIN
    DBMS_OUTPUT.PUT_LINE(
        'Annual Salary: 57600'
    );

    DBMS_OUTPUT.PUT_LINE(
        'Estimated Tax: ' || fn_calculate_tax(57600)
    );
END;
/