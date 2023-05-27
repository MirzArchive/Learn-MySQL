CREATE TABLE playground.user
(
    id       VARCHAR(36),
    name     VARCHAR(255),
    email    VARCHAR(255),
    password VARCHAR(255),
    role     ENUM ('admin', 'user')
);