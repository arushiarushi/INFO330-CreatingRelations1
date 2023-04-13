CREATE TABLE IF NOT EXISTS student_courses (
studentid  INTEGER REFERENCES students(id), 
course VARCHAR(40) REFERENCES courses(code), 
grade FLOAT DEFAULT NULL,
PRIMARY KEY (studentid, course)
);

INSERT INTO student_courses (studentid, course, grade) VALUES
(1, 'INFO330A', 3.9), (1, 'INFO448A',  3.5), (1, 'INFO314',  4.0), 
(3, 'INFO330A', 3.4), (3, 'INFO449A', 3.5),
(2, 'BAW0100', 4.0), (2, 'BAW100A', 3.2),
(4, 'BAW0100', 2.8);