SELECT destination, min(price)
FROM playground.ticket
GROUP BY destination
HAVING min(price) < 1000;