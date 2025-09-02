-- Create Database
CREATE DATABASE attendance_system;
USE attendance_system;

-- Departments Table
CREATE TABLE departments (
    dept_id INT AUTO_INCREMENT PRIMARY KEY,
    dept_name VARCHAR(100) NOT NULL UNIQUE
);

-- HOD Table
CREATE TABLE hods (
    hod_id INT AUTO_INCREMENT PRIMARY KEY,
    hod_name VARCHAR(100) NOT NULL,
    dept_id INT UNIQUE,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id) ON DELETE CASCADE
);

-- Trainers Table
CREATE TABLE trainers (
    trainer_id INT AUTO_INCREMENT PRIMARY KEY,
    trainer_name VARCHAR(100) NOT NULL,
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id) ON DELETE SET NULL
);

-- Courses Table
CREATE TABLE courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    dept_id INT,
    trainer_id INT,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id) ON DELETE CASCADE,
    FOREIGN KEY (trainer_id) REFERENCES trainers(trainer_id) ON DELETE SET NULL
);

-- Trainees Table
CREATE TABLE trainees (
    trainee_id INT AUTO_INCREMENT PRIMARY KEY,
    trainee_name VARCHAR(100) NOT NULL,
    dept_id INT,
    course_id INT,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id) ON DELETE SET NULL,
    FOREIGN KEY (course_id) REFERENCES courses(course_id) ON DELETE SET NULL
);

-- Attendance Table
CREATE TABLE attendance (
    attendance_id INT AUTO_INCREMENT PRIMARY KEY,
    trainee_id INT,
    course_id INT,
    date DATE NOT NULL,
    status ENUM('Present','Absent','Leave') DEFAULT 'Absent',
    FOREIGN KEY (trainee_id) REFERENCES trainees(trainee_id) ON DELETE CASCADE,
    FOREIGN KEY (course_id) REFERENCES courses(course_id) ON DELETE CASCADE
);
