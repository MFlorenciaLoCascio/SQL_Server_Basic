----------2) Student-Analysis----------

/* A school recently conducted its annual examination and wishes to know the list of academically low
performing students to organize extra classe for them. Write a query to return the roll number and names
of students who have a total of less than 100 marks including all 3 subjects.

There are two tables: student_information and examination_marks. Their primary keys are roll_numer. */


SELECT S.roll_number, S.name

FROM student_information AS S

INNER JOIN examination_marks AS E

ON S.roll_number = E.roll_number

GROUP BY S.roll_number, S.name

HAVING (SUM(E.subject_one + E.subject_two + E.subject_three) < 100 ;