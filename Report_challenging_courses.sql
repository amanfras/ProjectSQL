USE project_modulo_11;

SELECT c.courses_name,
    AVG(g.grades_grade)
FROM courses c
JOIN grades g
ON g.grades_course_id = c.courses_id
GROUP BY c.courses_name
ORDER BY AVG(g.grades_grade);