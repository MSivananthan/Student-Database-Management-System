
--1. Tables Overview
--We'll create three main tables:
--Students: To store personal details of the students.
--Courses: To store information about the courses offered.
--Enrollments: To manage the relationship between students and courses, including grades.
--crete a database
    create database student_database_management_system;
--use database
     use student_database_management_system;
--2. Table Definitions
Students TableCREATE TABLE Students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    date_of_birth DATE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(15),
    enrollment_date DATE NOT NULL
);
--Courses Table

CREATE TABLE Courses (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(100) NOT NULL,
    course_description TEXT,
    credits INT NOT NULL
);

--Enrollments Table

CREATE TABLE Enrollments (
    enrollment_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    course_id INT,
    grade CHAR(2),
    enrollment_date DATE NOT NULL,
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);
--Sample Data Insertion
--Inserting Sample Students

INSERT INTO Students (first_name, last_name, date_of_birth, email, phone, enrollment_date) VALUES
('John', 'Doe', '2000-01-15', 'john.doe@example.com', '123-456-7890', '2020-09-01'),
('Jane', 'Smith', '1999-05-22', 'jane.smith@example.com', '098-765-4321', '2020-09-01'),
('Alice', 'Johnson', '2001-03-10', 'alice.johnson@example.com', '234-567-8901', '2021-01-15'),
('Bob', 'Brown', '2000-11-30', 'bob.brown@example.com', '345-678-9012', '2020-09-01'),
('Charlie', 'Davis', '1998-07-25', 'charlie.davis@example.com', '456-789-0123', '2019-09-01'),
('Diana', 'Wilson', '1999-12-05', 'diana.wilson@example.com', '567-890-1234', '2020-09-01'),
('Ethan', 'Martinez', '2002-02-18', 'ethan.martinez@example.com', '678-901-2345', '2021-01-15'),
('Fiona', 'Garcia', '2000-04-12', 'fiona.garcia@example.com', '789-012-3456', '2020-09-01'),
('George', 'Hernandez', '1999-08-20', 'george.hernandez@example.com', '890-123-4567', '2020-09-01'),
('Hannah', 'Lopez', '2001-06-15', 'hannah.lopez@example.com', '901-234-5678', '2021-01-15');

--Inserting Sample Courses

INSERT INTO Courses (course_name, course_description, credits) VALUES
('Database Management', 'Introduction to database systems.', 3),
('Web Development', 'Learn to build web applications.', 4),
('Data Structures', 'Study of data organization and manipulation.', 3),
('Operating Systems', 'Understanding computer operating systems.', 4),
('Software Engineering', 'Principles of software development.', 3),
('Artificial Intelligence', 'Introduction to AI concepts and applications.', 4),
('Machine Learning', 'Fundamentals of machine learning algorithms.', 3),
('Computer Networks', 'Basics of networking and communication.', 4),
('Cybersecurity', 'Understanding security principles and practices.', 3),
('Mobile App Development', 'Creating applications for mobile devices.', 4);


INSERT INTO Enrollments (student_id, course_id, grade, enrollment_date) VALUES
(1, 1, 'A', '2020-09-01'),
(1, 2, 'B', '2020-09-01'),
(2, 1, 'A', '2020-09-01'),
(2, 3, 'B+', '2020-09-01'),
(3, 4, 'A-', '2021-01-15'),
(3, 5, 'B', '2021-01-15'),
(4, 2, 'C', '2020-09-01'),
(5, 6, 'A+', '2019-09-01'),
(6, 7, 'B-', '2020-09-01'),
(7, 8, 'A', '2021-01-15'),
(8, 9, 'C+', '2020-09-01'),
(9, 10, 'B', '2020-09-01'),
(10, 1, 'A-', '2021-01-15');

--SQL Queries
--Retrieve All Students
sql
SELECT * FROM Students;

--Retrieve All Courses
sql
SELECT * FROM Courses;

---Retrieve Enrollments with Student and Course Details

SELECT 
    s.first_name, 
    s.last_name, 
    c.course_name, 
    e.grade 
FROM 
    Enrollments e
JOIN 
    Students s ON e.student_id = s.student_id
JOIN 
    Courses c ON e.course_id = c.course_id;

---Find Students Enrolled in a Specific Course

SELECT 
    s.first_name, 
    s.last_name 
FROM 
    Enrollments e
JOIN 
    Students s ON e.student_id = s.student_id
WHERE 
    e.course_id = 1;  -- Change the course_id as needed

---Update a Student's Grade
UPDATE Enrollments 
SET grade = 'A+' 
WHERE student_id = 1 AND course_id = 2;

---Delete a Student Record

DELETE FROM Enrollments WHERE student_id = 2;
DELETE FROM Students WHERE student_id = 2;
