SELECT MIN(price) AS price, destination
FROM playground.ticket
GROUP BY destination
WITH ROLLUP
HAVING MIN(price) < 1000;