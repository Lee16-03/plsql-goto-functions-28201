-- ============================================
-- B5 - Functions in SQL
-- Airport Employee Management System
-- ============================================

SELECT
    e.employee_id,
    e.first_name || ' ' || e.last_name AS employee_name,
    e.monthly_salary,
    
    fn_annual_salary(e.monthly_salary) AS annual_salary,
    
    fn_years_of_service(e.hire_date) AS years_of_service,
    
    fn_calculate_tax(
        fn_annual_salary(e.monthly_salary)
    ) AS estimated_tax,
    
    fn_dept_name(e.employee_id) AS department

FROM employees e
ORDER BY e.employee_id;