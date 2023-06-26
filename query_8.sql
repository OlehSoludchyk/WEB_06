SELECT t.fullname as teacher, sbj.name as subject, ROUND(AVG(g.grade), 2) as avg_grade
FROM grades g
LEFT JOIN teachers t ON t.id = sbj.teacher_id
LEFT JOIN subjects sbj ON sbj.id = g.subject_id
WHERE t.id = 2
GROUP BY t.fullname, sbj.name
ORDER BY avg_grade DESC;