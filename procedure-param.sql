DROP PROCEDURE IF EXISTS get_cheapest_ticket;

DELIMITER $$
CREATE PROCEDURE get_cheapest_ticket(IN destination VARCHAR(255))
BEGIN
    SELECT *
    FROM playground.ticket a
    WHERE a.destination = destination
      AND a.price = (SELECT MIN(a.price)
                     FROM playground.ticket a
                     WHERE a.destination = destination);
END $$
DELIMITER ;

CALL get_cheapest_ticket('Surabaya');