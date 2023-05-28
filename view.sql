CREATE VIEW playground.employee_attendance AS
SELECT a.first_name, a.last_name, b.attendance_date
FROM playground.employee a
INNER JOIN playground.attendance b ON a.id = b.employee_id;