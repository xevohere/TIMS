-- Show attendance record of a trainee
SELECT * 
FROM attendance
WHERE trainee_id = 1;

-- List all courses of a trainee
SELECT c.course_name
FROM courses c
JOIN attendance a ON c.course_id = a.course_id
WHERE a.trainee_id = 1;

-- Count how many days a trainee was present
SELECT COUNT(*) AS days_present
FROM attendance
WHERE trainee_id = 1 AND status = 'Present';

-- Show trainees in a particular department
SELECT tr.trainee_name
FROM trainees tr
JOIN courses c ON tr.course_id = c.course_id
JOIN departments d ON c.dept_id = d.dept_id
WHERE d.dept_name = 'Computer Science';

-- Show all trainees with their department name
SELECT tr.trainee_name, d.dept_name
FROM trainees tr
JOIN courses c ON tr.course_id = c.course_id
JOIN departments d ON c.dept_id = d.dept_id;

-- Show trainees with their course and trainer name
SELECT tr.trainee_name, c.course_name, tn.trainer_name
FROM trainees tr
JOIN courses c ON tr.course_id = c.course_id
JOIN trainers tn ON c.trainer_id = tn.trainer_id;
