CREATE DATABASE IF NOT EXISTS demosql;
USE demosql;

DROP TABLE IF EXISTS myTable;

CREATE TABLE myTable (
    id INT AUTO_INCREMENT,
    name VARCHAR(45) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO myTable (name) VALUES
('bob'),
('alice'),
('john');

