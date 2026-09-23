SELECT d.name
FROM departments AS d
JOIN employees   AS e
  ON d.department_id = e.department_id
GROUP BY d.name
HAVING AVG(e.salary) > (
  SELECT AVG(salary)
  FROM employees
);