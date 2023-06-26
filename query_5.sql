SELECT sbj.name as subject_name, t.fullname as teacher_name
FROM subjects sbj
LEFT JOIN teachers t ON t.id = sbj.teacher_id
ORDER BY sbj.name;