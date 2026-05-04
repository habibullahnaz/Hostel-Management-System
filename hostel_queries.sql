----------STUDENT + ROOM + HOTEL
SELECT * FROM STUDENT;

SELECT s.name, r.room_id
FROM STUDENT s
JOIN ALLOCATION a ON s.student_id = a.student_id
JOIN ROOM r ON a.room_id = r.room_id;


--------Students with Fee Details
SELECT s.name, f.amount, f.status, f.due_date
FROM STUDENT s
JOIN FEE f ON s.student_id = f.student_id;

-------Students without room
SELECT s.name
FROM STUDENT s
LEFT JOIN ALLOCATION a ON s.student_id = a.student_id
WHERE a.room_id IS NULL;
