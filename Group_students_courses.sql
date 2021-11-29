USE project_modulo_11;

SELECT c.courses_name,
    GROUP_CONCAT(s.students_name)
FROM courses c
JOIN grades g
ON c.courses_id = g.grades_course_id
JOIN students s
ON g.grades_student_id = s.students_id
GROUP BY c.courses_name;