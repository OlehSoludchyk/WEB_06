SELECT s.fullname as student_name, t.fullname as teacher, sbj.name as subject
FROM grades gr
LEFT JOIN students s ON s.id = gr.student_id
LEFT JOIN subjects sbj ON sbj.id = gr.subject_id
LEFT JOIN teachers t ON t.id = sbj.teacher_id
WHERE s.id = 10 AND t.id = 2
GROUP BY s.fullname, t.fullname, sbj.name 
ORDER BY s.fullname;