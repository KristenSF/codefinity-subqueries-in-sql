SELECT employee_id, name, department_id, hire_date, salary
FROM employees
WHERE hire_date >=
    (SELECT DATE '2021-01-02'- INTERVAL '6 MONTH');
    