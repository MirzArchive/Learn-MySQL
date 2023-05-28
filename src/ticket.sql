CREATE TABLE ticket
(
    id          INT PRIMARY KEY AUTO_INCREMENT,
    destination VARCHAR(255),
    class       ENUM ('FIRST', 'BUSINESS', 'ECONOMY'),
    price       DECIMAL(10, 2)
);