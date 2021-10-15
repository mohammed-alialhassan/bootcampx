SELECT teachers.name as name, count(*) as assistance_requests
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
WHERE name = ('Waylon Boehm');

----Correct answer------------
SELECT count(assistance_requests.*) as total_assistances, teachers.name
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
WHERE name = 'Waylon Boehm'
GROUP BY teachers.name;