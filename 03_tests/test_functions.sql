SET SERVEROUTPUT ON;

DECLARE
    v_result NUMBER;
BEGIN
    DBMS_OUTPUT.PUT_LINE('===== FUNCTION TESTS =====');

    -- Test B1: Annual Salary
    v_result := fn_annual_salary(4800);

    IF v_result = 57600 THEN
        DBMS_OUTPUT.PUT_LINE('B1 Annual Salary: PASS');
    ELSE
        DBMS_OUTPUT.PUT_LINE('B1 Annual Salary: FAIL');
    END IF;


    -- Test B2: Years of Service
    v_result := fn_years_of_service(
        ADD_MONTHS(SYSDATE, -84)
    );

    IF v_result = 7 THEN
        DBMS_OUTPUT.PUT_LINE('B2 Years of Service: PASS');
    ELSE
        DBMS_OUTPUT.PUT_LINE('B2 Years of Service: FAIL');
    END IF;


    -- Test B3: Tax Calculator
    v_result := fn_calculate_tax(57600);

    IF v_result = 8640 THEN
        DBMS_OUTPUT.PUT_LINE('B3 Tax Calculator: PASS');
    ELSE
        DBMS_OUTPUT.PUT_LINE('B3 Tax Calculator: FAIL');
    END IF;


    -- Test B4: Department Name
    IF fn_dept_name(102) = 'Flight Operations' THEN
        DBMS_OUTPUT.PUT_LINE('B4 Department Name: PASS');
    ELSE
        DBMS_OUTPUT.PUT_LINE('B4 Department Name: FAIL');
    END IF;

    DBMS_OUTPUT.PUT_LINE('===== ALL FUNCTION TESTS COMPLETED =====');
END;
/