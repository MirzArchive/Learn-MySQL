SELECT CONCAT(a.first_name, ' ', a.last_name) AS full_name, b.attendance_date
FROM playground.employee a
INNER JOIN playground.attendance b ON a.id = b.employee_id;