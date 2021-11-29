USE project_modulo_11;

SELECT s.students_name,
	p.professors_name,
    COUNT(*) AS common
FROM courses c
JOIN professors p
ON c.courses_professor_id = p.professors_id
JOIN grades g
ON c.courses_id = g.grades_course_id
JOIN students s
ON g.grades_student_id = s.students_id
GROUP BY s.students_name, p.professors_name
ORDER BY common DESC;