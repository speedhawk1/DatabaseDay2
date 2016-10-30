DROP DATABASE IF EXISTS demo;
CREATE DATABASE demo;
DROP TABLE IF EXISTS demo.courses;
CREATE TABLE demo.courses(
  id int AUTO_INCREMENT PRIMARY KEY,
  course char(20) NOT NULL ,
  score int(2)
) COMMENT 'course table';
INSERT INTO demo.courses VALUES (NULL, 'html',5);
INSERT INTO demo.courses VALUES (NULL, 'CSS',5);
INSERT INTO demo.courses VALUES (NULL, 'JavaSE',10);
INSERT INTO demo.courses VALUES (NULL, 'DataBase',10);
DESC demo.courses;

DROP TABLE if EXISTS demo.student;
CREATE TABLE demo.student(
  id int AUTO_INCREMENT PRIMARY KEY,
  name CHAR(10),
  age int(3) NOT NULL
) COMMENT 'student table';
INSERT INTO demo.student VALUES (NULL, '张三',19);
INSERT INTO demo.student VALUES (NULL, '李四',18);
INSERT INTO demo.student VALUES (NULL, '王五',20);
DESC demo.student;

DROP TABLE IF EXISTS demo.stu_courses
CREATE TABLE demo.stu_courses(
  id INT AUTO_INCREMENT PRIMARY KEY ,
  sid int(1),
  cid int(1)
) COMMENT 'student courses';

ALTER TABLE demo.stu_courses
  ADD CONSTRAINT courses_cid
FOREIGN KEY (cid)
REFERENCES demo.courses (id);

ALTER TABLE demo.stu_courses
  ADD CONSTRAINT student_sid
FOREIGN KEY (sid)
REFERENCES demo.student (id)

SHOW CREATE DATABASE demo



