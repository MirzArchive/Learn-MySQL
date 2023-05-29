DELIMITER $$
CREATE PROCEDURE check_not_attend()
BEGIN
    SELECT *
    FROM playground.employee
    WHERE id NOT IN
          (SELECT a.id
           FROM playground.employee a
                    INNER JOIN playground.attendance b ON a.id = b.employee_id);
END $$
DELIMITER ;

CALL check_not_attend();