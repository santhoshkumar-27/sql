select student_name, student_major from student;
select student_name, student_major from student order by student_name desc;
select student_name, student_major from student order by student_name, student_id desc; -- first it will group the student_name and then group with student_id
select student_name, student_major from student order by student_name, student_id desc limit 2; -- with limit
select * from student where student_major = 'arts' or student_major = 'engineering'; -- filtering
select student_name from student where student_major = 'arts' or student_major = 'engineering';
select * from student where student_id > 3 and student_name = 'santhoshkumar';
select * from student;
-- operator <, >, <=, >=, <>, AND, OR 
select * from student where student_major in ('arts', 'doctor', 'pharmist'); -- it can return the entries based on the group of values
select * from student where student_major in ('arts', 'doctor', 'pharmist') and student_id > 8;

-- two primary key is composite key