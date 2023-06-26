SELECT s.fullname as student_name, g.id as group_id
FROM students s
LEFT JOIN groups as g ON g.id = s.group_id
WHERE g.id = 2
ORDER BY s.fullname;