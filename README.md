Name      : M Sivananthan 
<BR>
Company: CODTECH IT SOLUTIONS
<BR>
Intern ID : CT08DS6401
<BR>
Domain  : SQL
<BR>
Duration: Augest to September 2024
<BR>
Mentor : Muzammil Ahmed
## Student Database Management System

Welcome to the **Student Database Management System (SDMS)** repository! This project aims to provide a comprehensive solution for managing student records, including personal information, academic performance, and administrative tasks. It serves as a practical learning experience in SQL commands, database design principles, and data manipulation techniques.

### **Project Overview**

The SDMS is designed to help educational institutions efficiently manage student data, streamline administrative processes, and generate insightful reports. Key objectives of this project include:

- **Database Design**: Create a relational database that effectively captures the relationships between students, courses, grades, and administrative data.
  
- **Data Manipulation**: Implement SQL queries for inserting, updating, deleting, and retrieving student data.
  
- **Student Management**: Manage student profiles, enrollment, and academic progress.
  
- **Course Management**: Maintain course information, including schedules, instructors, and enrollment.
  
- **Reporting**: Generate reports and statistics that provide insights into student performance, enrollment trends, and administrative metrics.
  
- **Future Enhancements**: Outline potential improvements and features for the SDMS.

### **Database Design**

The database consists of several primary tables, including:

- **Students**
- **Courses**
- **Enrollments**
- **Grades**
- **Instructors**
- **Departments**

### **SQL Queries**

Here are some key SQL commands used in the project:

1. **Create Database**
   ```sql
   CREATE DATABASE Student_Database_Management_System;
   ```

2. **Use Database**
   ```sql
   USE Student_Database_Management_System;
   ```

3. **Create Tables**
   - **Students Table**
     ```sql
     CREATE TABLE Students (
         StudentID INT PRIMARY KEY AUTO_INCREMENT,
         FirstName VARCHAR(50) NOT NULL,
         LastName VARCHAR(50) NOT NULL,
         Email VARCHAR(100) NOT NULL UNIQUE,
         PhoneNumber VARCHAR(15),
         DateOfBirth DATE NOT NULL,
         EnrollmentDate DATE NOT NULL,
         GraduationDate DATE,
         DepartmentID INT,
         FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
     );
     ```
     <img src="Screenshot (163).png">

   - **Courses Table**
     ```sql
     CREATE TABLE Courses (
         CourseID INT PRIMARY KEY AUTO_INCREMENT,
         CourseCode VARCHAR(10) NOT NULL UNIQUE,
         CourseName VARCHAR(100) NOT NULL,
         Credits INT NOT NULL,
         DepartmentID INT,
         FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
     );
     ```
     <img src="Screenshot (164).png">
   - **Enrollments Table**
     ```sql
     CREATE TABLE Enrollments (
         EnrollmentID INT PRIMARY KEY AUTO_INCREMENT,
         StudentID INT,
         CourseID INT,
         Semester VARCHAR(20) NOT NULL,
         AcademicYear VARCHAR(9) NOT NULL,
         FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
         FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
     );
     ```
     <img src="Screenshot (165).png">
   - **Grades Table**
     ```sql
     CREATE TABLE Grades (
         GradeID INT PRIMARY KEY AUTO_INCREMENT,
         EnrollmentID INT,
         Grade DECIMAL(4,2) NOT NULL,
         FOREIGN KEY (EnrollmentID) REFERENCES Enrollments(EnrollmentID)
     );
     ```
     <img src="Screenshot (166).png">
     <img src="Screenshot (167).png">
     <img src="Screenshot (168).png">
     <img src="Screenshot (169).png">
     <img src="Screenshot (170).png">
     
### **Contact Information**
     
For any inquiries or contributions, feel free to reach out:

[GitHub Profile](https://github.com/MSivananthan)

