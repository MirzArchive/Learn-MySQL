SELECT *
FROM playground.employee
WHERE salary > (SELECT AVG(salary) FROM playground.employee);