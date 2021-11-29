USE project_modulo_11;

SELECT s.students_name,
    MAX(g.grades_grade)
FROM grades g
JOIN students s
ON g.grades_student_id = s.students_id
GROUP BY s.students_id;
