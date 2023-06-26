SELECT gr.name, sbj.name, ROUND(AVG(g.grade), 2) as avg_grade
FROM grades g
LEFT JOIN students s ON s.id = g.student_id
LEFT JOIN groups gr ON gr.id = s.group_id
LEFT JOIN subjects sbj ON sbj.id = g.subject_id
WHERE sbj.id = 5
GROUP BY gr.id
ORDER BY avg_grade DESC;






