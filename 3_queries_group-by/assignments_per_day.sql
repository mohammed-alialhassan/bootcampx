/* we want the total number of assignments EACH DAY of bootcamp
- So I think we playing around with assignments
-We need to group by the day from assignments (assignments.day as day_number)
-Using count function (count(*)) we want to target assignments.id */

--------MY answer----------------------------
SELECT day, count(assignments.id) as assignments_id
FROM assignments
GROUP BY day;
WHERE assignments.id IS NOT NULL;

--------Correct Answer-------------------------
SELECT day, count(*) as total_assignments 
FROM assignments
GROUP BY day
ORDER BY day;

/*BIG NOTE: both give the same output!!! Good job Ali

ROOM FOR IMPROVEMENT
-naming convention for count element is off
