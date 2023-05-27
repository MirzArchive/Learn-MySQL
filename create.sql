CREATE TABLE playground.employee
(
    id            INT PRIMARY KEY AUTO_INCREMENT,
    first_name    VARCHAR(255),
    last_name     VARCHAR(255),
    employed_date DATE,
    salary        DECIMAL(10, 2)
);

SELECT *
FROM playground.employee;