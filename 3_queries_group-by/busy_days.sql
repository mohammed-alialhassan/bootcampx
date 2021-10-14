-----------My Answer-----------------------
SELECT day, count(assignments.id) as assignments_id
FROM assignments
GROUP BY day
WHERE assignments_id >= 10;

-------------Correct Answer-----------------
SELECT day, count(*) as total_assignments 
FROM assignments
GROUP BY day
HAVING count(*) >= 10
ORDER BY day;

/* need to use having for problem like this
-don't forget about what ORDER BY can do for you
-Read question and clarify instructions more to
understand what is needed
