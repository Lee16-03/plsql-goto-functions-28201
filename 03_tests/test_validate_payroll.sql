SET SERVEROUTPUT ON;

BEGIN
    DBMS_OUTPUT.PUT_LINE('===== PAYROLL VALIDATION TESTS =====');

    -- Test 1: Valid employee
    DBMS_OUTPUT.PUT_LINE('Test 1 - Employee 101:');
    DBMS_OUTPUT.PUT_LINE(fn_validate_payroll(101));

    -- Test 2: Employee does not exist
    DBMS_OUTPUT.PUT_LINE('Test 2 - Employee 9999:');
    DBMS_OUTPUT.PUT_LINE(fn_validate_payroll(9999));

    DBMS_OUTPUT.PUT_LINE('===== PAYROLL TESTS COMPLETED =====');
END;
/