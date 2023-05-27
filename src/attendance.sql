DROP TABLE IF EXISTS playground.attendance;

CREATE TABLE playground.attendance
(
    id                 INT PRIMARY KEY AUTO_INCREMENT,
    employee_id        INT,
    attendance_date DATE DEFAULT (NOW()),
    CONSTRAINT fk_attendance_employee_id FOREIGN KEY (employee_id) REFERENCES employee (id) ON DELETE CASCADE ON UPDATE CASCADE
);