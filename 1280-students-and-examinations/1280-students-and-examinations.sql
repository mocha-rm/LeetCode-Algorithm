-- select s.student_id, s.student_name, e.subject_name, count(e.subject_name) as attended_exams
-- from Students s
-- left join Examinations e on s.student_id = e.student_id
-- group by s.student_id, s.student_name, e.subject_name
-- order by s.student_id, e.subject_name


SELECT s.student_id, s.student_name, sub.subject_name, COUNT(e.subject_name) AS attended_exams
FROM Students s
CROSS JOIN Subjects sub
LEFT JOIN Examinations e ON s.student_id = e.student_id AND sub.subject_name = e.subject_name
GROUP BY s.student_id, s.student_name, sub.subject_name
ORDER BY s.student_id, sub.subject_name;