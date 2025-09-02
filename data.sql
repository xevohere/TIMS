--Departments
INSERT INTO departments (dept_name) VALUES ('Computer Science'), ('Electronics');

-- HODs
INSERT INTO hods (hod_name, dept_id) VALUES ('Dr. Sharma', 1), ('Dr. Verma', 2);

-- Trainers
INSERT INTO trainers (trainer_name, dept_id) VALUES ('Mr. Raj', 1), ('Ms. Neha', 2);

-- Courses
INSERT INTO courses (course_name, dept_id, trainer_id) 
VALUES ('Database Systems', 1, 1), 
       ('Digital Circuits', 2, 2);

-- Trainees
INSERT INTO trainees (trainee_name, dept_id, course_id) 
VALUES ('Alok Kumar', 1, 1), 
       ('Indu Sharma', 2, 2);

-- Attendance
INSERT INTO attendance (trainee_id, course_id, date, status) 
VALUES (1, 1, '2025-08-30', 'Present'),
       (2, 2, '2025-08-30', 'Absent');
