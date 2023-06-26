SELECT gr.name as group_name, s.fullname as student_name, sbj.name as subject, g.grade as grade
FROM grades g
LEFT JOIN students s ON s.id = g.student_id
LEFT JOIN groups gr ON gr.id = s.group_id
LEFT JOIN subjects sbj ON sbj.id = g.subject_id
WHERE sbj.id = 2 AND gr.id = 1
ORDER BY s.fullname;