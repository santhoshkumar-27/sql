CREATE TABLE student (student_id INT PRIMARY KEY, student_name varchar(250), student_major varchar(350));
-- Or
CREATE TABLE student (student_id INT auto_increment, student_name varchar(250), student_major varchar(350), PRIMARY KEY(student_id));
-- with constraints 
CREATE TABLE student (
    student_id INT,
    student_name VARCHAR(250) NOT NULL,
    student_major VARCHAR(350),
    PRIMARY KEY (student_id)
);

CREATE TABLE student (
    student_id INT,
    student_name VARCHAR(250),
    student_major VARCHAR(350) default 'ARTS',
    PRIMARY KEY (student_id)
);

DESCRIBE student;

DROP TABLE student;

alter table student add student_gpa decimal(3, 2);

ALTER TABLE student drop column student_gpa;
-- insert data in table student;
insert into student values (1, 'Santhoshkumar');
insert into student values (2, 'Santhoshkumar1', 'Electrical');
insert into student values (3, 'Santhoshkumar2', 'MCA');
insert into student values (4, 'Santhoshkumar4', 'EEE');
insert into student (student_id, student_name) values (1, 'Santhoshkumar5');
insert into student (student_name, student_major) values ('santhoshkumar', 'Engineering');
insert into student (student_name, student_major) values ('sandy', 'arts');
insert into student (student_name, student_major) values ('kumar', 'doctor');
insert into student (student_name, student_major) values ('santhosh', 'Pharmist');


SELECT * FROM student;

update student set student_major = 'Eng' where student_major = 'Engineering'; -- specific row
update student set student_major = 'Eng' where student_major = 'Engineering' or student_major = 'doctor'; -- group of row
update student set student_major = 'Eng'; -- entire column

delete from student where student_id = 3; -- delete the specific row
delete from student where student_major = 'Eng' or student_major = 'Doctor'; -- delete a group of row
delete from student; -- delete the entire row
drop table student;
-- SET SQL_SAFE_UPDATES = 0; for disable the update production
-- SET SQL_SAFE_UPDATES = 1; for enable the update production