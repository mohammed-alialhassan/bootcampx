/*Total Students in Cohorts */

SELECT count(*)
FROM students
WHERE cohort_id < 4 /* or WHERE cohort_id IN (1, 2, 3); */