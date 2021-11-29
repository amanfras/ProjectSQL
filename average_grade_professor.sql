USE project_modulo_11;

SELECT p.professors_name,
    AVG(g.grades_grade)
FROM courses c
JOIN grades g
ON g.grades_course_id = c.courses_id
JOIN professors p
ON c.courses_professor_id = p.professors_id
GROUP BY c.courses_professor_id;
