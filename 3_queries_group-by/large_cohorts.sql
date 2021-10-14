/* we selecting cohort name
-we access the students table 
-ORDER BY count(students.name) as student_count
/since we have cohort.id in students, we will want to join with cohorts
and access the name through the FK in the students table (cohorts.id) */
-------my answer---------
SELECT cohort.id, count(students_id) as student_count
FROM students
JOIN cohort.id ON cohorts
GROUP BY cohort.name 
WHERE student_count >= 18;

------Correct answer--------
SELECT cohorts.name as cohort_name, count(students.*) AS student_count 
FROM cohorts
JOIN students ON cohorts.id = cohort_id
GROUP BY cohort_name 
HAVING count(students.*) >= 18
ORDER BY student_count;