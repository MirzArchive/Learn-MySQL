DELIMITER $$
CREATE PROCEDURE check_not_attend()
BEGIN
    SELECT *
    FROM employee
    WHERE id NOT IN
          (SELECT a.id
           FROM employee a
                    INNER JOIN attendance b ON a.id = b.employee_id);
END $$
DELIMITER ;

CALL check_not_attend();