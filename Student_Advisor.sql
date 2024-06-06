----------1) Student-Advisor----------

/* A university has started a student-advisor plan which assings a professor as an advisor to each
student for academic guidance. Write a query to find the roll number and names of students who either 
have a male advisor whith a salary of more than 15.000 or a female advisor with a salary of more than 20.000.

There are two tables in the database: student_information and faculty_information is employee_ID. */

SELECT roll_number, name

FROM student_information AS S

INNER JOIN faculty_information AS F

ON S.advisor = F.employee_id

WHERE (F.gender = 'M' and F.salary > 15000) OR 
(F.gender = 'F' and F.salary > 20000) ;