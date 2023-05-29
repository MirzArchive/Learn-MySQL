DROP TRIGGER IF EXISTS tr_employee_before_update;

CREATE TRIGGER tr_employee_before_update
    BEFORE UPDATE
    ON playground.employee
    FOR EACH ROW
    SET NEW.bonus = (DATEDIFF(NOW(), NEW.employed_date) / 30) * 10;

UPDATE playground.employee
SET employed_date = '2023-01-10'
WHERE id = 4;

SELECT *
FROM playground.employee;