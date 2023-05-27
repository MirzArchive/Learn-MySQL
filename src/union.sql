SELECT COUNT(id) AS total_employee
FROM playground.employee
UNION
SELECT COUNT(id) AS total_attendance
FROM playground.attendance;