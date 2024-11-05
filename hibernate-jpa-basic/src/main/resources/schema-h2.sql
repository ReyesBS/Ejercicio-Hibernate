DROP TABLE IF EXISTS TBL_TASK;

CREATE TABLE TBL_TASK (
    id INT AUTO_INCREMENT  PRIMARY KEY,
    task_name VARCHAR(250) NOT NULL,
    task_description VARCHAR(250) NOT NULL,
    employee_id INT,
    scope_id INT
);

DROP TABLE IF EXISTS TBL_EMPLOYEE;

CREATE TABLE TBL_EMPLOYEE (
    id INT AUTO_INCREMENT  PRIMARY KEY,
    first_name VARCHAR(250) NOT NULL,
    last_name VARCHAR(250) NOT NULL,
    email VARCHAR(250) DEFAULT NULL
);

DROP TABLE IF EXISTS TBL_SCOPE;

CREATE TABLE TBL_SCOPE(
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR (50),
  description VARCHAR (100)
);

ALTER TABLE TBL_TASK
ADD FOREIGN KEY (employee_id)
REFERENCES TBL_EMPLOYEE(id);

ALTER TABLE TBL_TASK
ADD FOREIGN KEY (scope_id)
REFERENCES TBL_SCOPE(id);