
mysql> create database sb101_march;
Query OK, 1 row affected (0.02 sec)

mysql> use sb101_march;
Database changed
mysql> create table student(rollNo varchar(12) primary key,name varchar(12) not null, cg
pa decimal(3,1) Default 4.0, dob date);
Query OK, 0 rows affected (0.07 sec)

mysql> desc student;
+--------+--------------+------+-----+---------+-------+
| Field  | Type         | Null | Key | Default | Extra |
+--------+--------------+------+-----+---------+-------+
| rollNo | varchar(12)  | NO   | PRI | NULL    |       |
| name   | varchar(12)  | NO   |     | NULL    |       |
| cgpa   | decimal(3,1) | YES  |     | 4.0     |       |
| dob    | date         | YES  |     | NULL    |       |
+--------+--------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

mysql> select * from student;
+--------+--------+------+------------+
| rollNo | name   | cgpa | dob        |
+--------+--------+------+------------+
| R001   | Sachin |  8.5 | 2000-01-01 |
| R002   | Rohan  |  7.9 | 1997-04-15 |
+--------+--------+------+------------+
2 rows in set (0.00 sec)

mysql>