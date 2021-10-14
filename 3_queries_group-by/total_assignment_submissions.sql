/* from greatest to smallest  so ASC
-select cohort name as cohort, count(assignment_submissions*) as total_submissions
-count(*)
-we need to join students ON cohort.id
-GROUP BY cohort */

---------My answer---------------------
SELECT cohort.name as cohort, count(assignment_submissions*) as total_submissions
FROM assignment_submissions
JOIN assignment_submissions ON cohort_id = cohort.id
Group By cohort;

-------Correct Answer------------------
SELECT cohorts.name as cohort, count(assignment_submissions.*) as total_submissions
FROM assignment_submissions
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY total_submissions DESC;

