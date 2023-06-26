SELECT s.fullname as student_name, sbj.name as subject
FROM grades gr
LEFT JOIN subjects sbj ON sbj.id = gr.subject_id
LEFT JOIN students s ON s.id = gr.student_id
WHERE s.id = 7
GROUP BY s.fullname, sbj.name 
ORDER BY s.fullname;