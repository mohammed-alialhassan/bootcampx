/* we're selecting/targeting the assignment table
/* we want * of duration from assignment (assignment.duration) as total_duration
/* we want to JOIN cohort.id as cohort.id WHERE cohort.id = FEB12 */

--------My answer attempt------------------------
SELECT SUM(assignments.duration) as total_duration
FROM assignments
JOIN cohorts ON cohorts.id as cohorts_id
WHERE cohorts.id = FEB12;

---------Correct answer--------------------------
SELECT sum(assignment_submissions.duration) as total_duration
FROM assignment_submissions
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name = 'FEB12';

----Where I went wrong-----------------------------
/*assignments_submissions not assignments because 
we want assignments completed?
-Forgot to add join that would identify students by id
Make sure to read instructions thoroughly
-Otherwise everything else is proper