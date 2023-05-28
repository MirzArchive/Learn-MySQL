SELECT destination, min(price)
FROM playground.ticket
GROUP BY destination;