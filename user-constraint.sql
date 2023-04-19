ALTER TABLE playground.user
    ADD CONSTRAINT pk_user_id PRIMARY KEY (id),
    ALTER id SET DEFAULT (UUID()),
    MODIFY name VARCHAR(255) NOT NULL,
    ADD CONSTRAINT uq_user_email UNIQUE (email),
    MODIFY email VARCHAR(255) NOT NULL,
    MODIFY password VARCHAR(255) NOT NULL,
    MODIFY role ENUM ('admin', 'user') NOT NULL;