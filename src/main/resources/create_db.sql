CREATE DATABASE student_grades_db;
USE student_grades_db;

CREATE TABLE student (
                         id BIGINT AUTO_INCREMENT PRIMARY KEY,
                         name VARCHAR(255) NOT NULL
);

CREATE TABLE grade (
                       id BIGINT AUTO_INCREMENT PRIMARY KEY,
                       subject VARCHAR(255) NOT NULL,
                       score INT NOT NULL,
                       student_id BIGINT,
                       FOREIGN KEY (student_id) REFERENCES student(id) ON DELETE CASCADE
);
