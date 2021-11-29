USE project_modulo_11;

SELECT c.courses_name,
    g.grades_grade,
    s.students_name,
    s.students_email,
    p.professors_name,
    p.professors_email
    
FROM courses c
JOIN professors p
ON c.courses_professor_id = p.professors_id
JOIN grades g
ON g.grades_course_id = c.courses_id
JOIN students s
ON g.grades_student_id = s.students_id;