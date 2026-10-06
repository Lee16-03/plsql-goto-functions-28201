-- ============================================
-- B2 - Years of Service Function
-- Airport Employee Management System
-- ============================================

CREATE OR REPLACE FUNCTION fn_years_of_service (
    p_hire_date IN DATE
)
RETURN NUMBER
IS
BEGIN
    RETURN TRUNC(MONTHS_BETWEEN(SYSDATE, p_hire_date) / 12);
END;
/