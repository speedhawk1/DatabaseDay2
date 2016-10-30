
DROP DATABASE IF EXISTS demos;
CREATE DATABASE demos;
SHOW DATABASES ;
CREATE TABLE IF NOT EXISTS demos.exam(
  id int PRIMARY KEY AUTO_INCREMENT,
  ar int(2) COMMENT 'attendance record',
  wc int(2) COMMENT 'working capabilities',
  wa int(2) COMMENT 'working attitude',
  fom int(2) COMMENT 'finishing of missions'
) COMMENT '考核表';

ALTER TABLE demos.exam
    ADD COLUMN namesid CHAR(10) AFTER id;


INSERT INTO demos.exam VALUES (NULL ,'Apple',7,8,9,10);
INSERT INTO demos.exam VALUES (NULL ,'Bravo',6,7,8,9);
INSERT INTO demos.exam VALUES (NULL ,'Cat',7,8,9,10);
INSERT INTO demos.exam VALUES (NULL ,'Data',6,8,9,10);


SELECT * FROM demos.exam;