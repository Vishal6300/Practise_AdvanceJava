Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 10
Server version: 8.0.31 MySQL Community Server - GPL

Copyright (c) 2000, 2022, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| eva4               |
| firstproject       |
| information_schema |
| mysql              |
| performance_schema |
| pscproject         |
| sb101_db           |
| sb101_feb          |
| sys                |
| web21db            |
+--------------------+
10 rows in set (0.20 sec)

mysql> use sb101_feb;
Database changed
mysql> show tables;
+---------------------+
| Tables_in_sb101_feb |
+---------------------+
| employee            |
| product             |
| student             |
| students            |
+---------------------+
4 rows in set (0.01 sec)

mysql> select * from student;
+--------+---------+------------------+-------+----------------+
| rollNo | name    | email            | x_per | state          |
+--------+---------+------------------+-------+----------------+
|      1 | ABC     | abc@gmail.com    | 77.42 | Karnataka      |
|      2 | sudip   | sudip@ms         | 56.43 | Nepal
 |
|      3 | bhoomi  | bhoomi@gmail.com | 45.42 | Kerala         |
|      4 | hero    | hero@gmail.com   | 87.42 | Jharkhand      |
|      5 | Ram     | ram@gmail.com    | 93.12 | Bihar
 |
|      6 | Ravi    | ravi@ms          | 72.43 | UP
 |
|      7 | mosham  | mosham@ms        | 42.51 | UP
 |
|      8 | Rehan   | rehan@ms         | 59.11 | MP
 |
|      9 | Levis   | levis@ms         | 91.11 | KARNATAKA      |
|     10 | Shruthi | Shruthi@ms       | 97.11 | Kerala         |
|     11 | divya   | divya@francis    | 43.21 | Tripura        |
|     12 | Vivek   | vivek@francis    | 33.21 | Jharkhand      |
|     13 | Monoj   | manoj@masai      | 65.34 | Mizoram        |
|     14 | Monu    | monu@masai       | 35.34 | Madhya Pradesh |
|     15 | Roshan  | roshan@masai     | 65.34 | Uttar Pradesh  |
+--------+---------+------------------+-------+----------------+
15 rows in set (0.01 sec)

mysql> insert into student values(16,"Vivan","vivan@gmail.com",(Select MAX(x_per) from student,"Himachal Pradesh");
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '"Himachal Pradesh")' at line 1
mysql> insert into student values(16,"Vivan","vivan@gmail.com",(Select MAX(x_per) from student),"Himachal Pradesh");
ERROR 1093 (HY000): You can't specify target table 'student' for update in FROM clause
mysql> desc student;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| rollNo | int         | NO   | PRI | NULL    |       |
| name   | varchar(20) | YES  |     | NULL    |       |
| email  | varchar(20) | YES  | UNI | NULL    |       |
| x_per  | double(5,2) | YES  |     | 33.00   |       |
| state  | varchar(25) | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
5 rows in set (0.01 sec)

mysql> select * from student WHERE x_per> (Select avg(x_per) f
rom student);
+--------+---------+----------------+-------+---------------+
| rollNo | name    | email          | x_per | state         |
+--------+---------+----------------+-------+---------------+
|      1 | ABC     | abc@gmail.com  | 77.42 | Karnataka     |
|      4 | hero    | hero@gmail.com | 87.42 | Jharkhand     |
|      5 | Ram     | ram@gmail.com  | 93.12 | Bihar         |
|      6 | Ravi    | ravi@ms        | 72.43 | UP            |
|      9 | Levis   | levis@ms       | 91.11 | KARNATAKA     |
|     10 | Shruthi | Shruthi@ms     | 97.11 | Kerala        |
|     13 | Monoj   | manoj@masai    | 65.34 | Mizoram       |
|     15 | Roshan  | roshan@masai   | 65.34 | Uttar Pradesh |
+--------+---------+----------------+-------+---------------+
8 rows in set (0.00 sec)

mysql> (Select avg(x_per) from student);
+------------+
| avg(x_per) |
+------------+
|  64.301333 |
+------------+
1 row in set (0.00 sec)

mysql> Select * from student WHERE  x_per NOT IN (Select x_per
 FROM Student where State="Karnataka");
+--------+---------+------------------+-------+----------------+
| rollNo | name    | email            | x_per | state
 |
+--------+---------+------------------+-------+----------------+
|      2 | sudip   | sudip@ms         | 56.43 | Nepal
 |
|      3 | bhoomi  | bhoomi@gmail.com | 45.42 | Kerala         |
|      4 | hero    | hero@gmail.com   | 87.42 | Jharkhand      |
|      5 | Ram     | ram@gmail.com    | 93.12 | Bihar
 |
|      6 | Ravi    | ravi@ms          | 72.43 | UP
 |
|      7 | mosham  | mosham@ms        | 42.51 | UP
 |
|      8 | Rehan   | rehan@ms         | 59.11 | MP
 |
|     10 | Shruthi | Shruthi@ms       | 97.11 | Kerala         |
|     11 | divya   | divya@francis    | 43.21 | Tripura        |
|     12 | Vivek   | vivek@francis    | 33.21 | Jharkhand      |
|     13 | Monoj   | manoj@masai      | 65.34 | Mizoram        |
|     14 | Monu    | monu@masai       | 35.34 | Madhya Pradesh |
|     15 | Roshan  | roshan@masai     | 65.34 | Uttar Pradesh  |
+--------+---------+------------------+-------+----------------+
13 rows in set (0.00 sec)

mysql> Select * from student WHERE  x_per < ANY(Select x_per FROM Student where State="Karnataka");
+--------+--------+------------------+-------+----------------+
| rollNo | name   | email            | x_per | state
|
+--------+--------+------------------+-------+----------------+
|      1 | ABC    | abc@gmail.com    | 77.42 | Karnataka      |
|      2 | sudip  | sudip@ms         | 56.43 | Nepal
|
|      3 | bhoomi | bhoomi@gmail.com | 45.42 | Kerala
|
|      4 | hero   | hero@gmail.com   | 87.42 | Jharkhand      |
|      6 | Ravi   | ravi@ms          | 72.43 | UP
|
|      7 | mosham | mosham@ms        | 42.51 | UP
|
|      8 | Rehan  | rehan@ms         | 59.11 | MP
|
|     11 | divya  | divya@francis    | 43.21 | Tripura        |
|     12 | Vivek  | vivek@francis    | 33.21 | Jharkhand      |
|     13 | Monoj  | manoj@masai      | 65.34 | Mizoram        |
|     14 | Monu   | monu@masai       | 35.34 | Madhya Pradesh |
|     15 | Roshan | roshan@masai     | 65.34 | Uttar Pradesh  |
+--------+--------+------------------+-------+----------------+
12 rows in set (0.00 sec)

mysql> Select * from student WHERE  x_per < ALL(Select x_per FROM Student where State="Karnataka");
+--------+--------+------------------+-------+----------------+
| rollNo | name   | email            | x_per | state
|
+--------+--------+------------------+-------+----------------+
|      2 | sudip  | sudip@ms         | 56.43 | Nepal
|
|      3 | bhoomi | bhoomi@gmail.com | 45.42 | Kerala
|
|      6 | Ravi   | ravi@ms          | 72.43 | UP
|
|      7 | mosham | mosham@ms        | 42.51 | UP
|
|      8 | Rehan  | rehan@ms         | 59.11 | MP
|
|     11 | divya  | divya@francis    | 43.21 | Tripura        |
|     12 | Vivek  | vivek@francis    | 33.21 | Jharkhand      |
|     13 | Monoj  | manoj@masai      | 65.34 | Mizoram        |
|     14 | Monu   | monu@masai       | 35.34 | Madhya Pradesh |
|     15 | Roshan | roshan@masai     | 65.34 | Uttar Pradesh  |
+--------+--------+------------------+-------+----------------+
10 rows in set (0.00 sec)

mysql> create table transaction(tid int(10) Primary key, name
varchar(12) not null, amount int not null, email varchar(50) n
ot null);
Query OK, 0 rows affected, 1 warning (0.05 sec)

mysql> insert into transaction values(1,'Dinesh',4800,'dinesh@
ms'),(2,'Jayesh',4000,'jayesh@gmail.com');
Query OK, 2 rows affected (0.01 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select * from transaction;
+-----+--------+--------+------------------+
| tid | name   | amount | email            |
+-----+--------+--------+------------------+
|   1 | Dinesh |   4800 | dinesh@ms        |
|   2 | Jayesh |   4000 | jayesh@gmail.com |
+-----+--------+--------+------------------+
2 rows in set (0.00 sec)

mysql> START TRANSACTION;
Query OK, 0 rows affected (0.00 sec)

mysql> UPDATE transaction set amount= amount-1000 WHERE tid=1;

Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE transaction set amount= amount+1000 WHERE tid=2;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from transaction;
+-----+--------+--------+------------------+
| tid | name   | amount | email            |
+-----+--------+--------+------------------+
|   1 | Dinesh |   3800 | dinesh@ms        |
|   2 | Jayesh |   5000 | jayesh@gmail.com |
+-----+--------+--------+------------------+
2 rows in set (0.00 sec)

mysql> Rollback
    -> ;
Query OK, 0 rows affected (0.00 sec)

mysql> select * from transaction;
+-----+--------+--------+------------------+
| tid | name   | amount | email            |
+-----+--------+--------+------------------+
|   1 | Dinesh |   4800 | dinesh@ms        |
|   2 | Jayesh |   4000 | jayesh@gmail.com |
+-----+--------+--------+------------------+
2 rows in set (0.00 sec)

mysql> START TRANSACTION;
Query OK, 0 rows affected (0.00 sec)

mysql> UPDATE transaction set amount= amount-500 WHERE tid=1;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE transaction set amount= amount+500 WHERE tid=2;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from transaction;
+-----+--------+--------+------------------+
| tid | name   | amount | email            |
+-----+--------+--------+------------------+
|   1 | Dinesh |   4300 | dinesh@ms        |
|   2 | Jayesh |   4500 | jayesh@gmail.com |
+-----+--------+--------+------------------+
2 rows in set (0.00 sec)

mysql> Rollback;
Query OK, 0 rows affected (0.00 sec)

mysql> select * from transaction;
+-----+--------+--------+------------------+
| tid | name   | amount | email            |
+-----+--------+--------+------------------+
|   1 | Dinesh |   4800 | dinesh@ms        |
|   2 | Jayesh |   4000 | jayesh@gmail.com |
+-----+--------+--------+------------------+
2 rows in set (0.00 sec)

mysql> SET AUTOCOMMIT=0;
Query OK, 0 rows affected (0.00 sec)

mysql> UPDATE transaction set Amount=0;
Query OK, 2 rows affected (0.00 sec)
Rows matched: 2  Changed: 2  Warnings: 0

mysql> select * from transaction;
+-----+--------+--------+------------------+
| tid | name   | amount | email            |
+-----+--------+--------+------------------+
|   1 | Dinesh |      0 | dinesh@ms        |
|   2 | Jayesh |      0 | jayesh@gmail.com |
+-----+--------+--------+------------------+
2 rows in set (0.00 sec)



After restarting the MYSQLCommand
-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=--=

Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 11
Server version: 8.0.31 MySQL Community Server - GPL

Copyright (c) 2000, 2022, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> use sb101_feb;
Database changed
mysql> select * from transaction;
+-----+--------+--------+------------------+
| tid | name   | amount | email            |
+-----+--------+--------+------------------+
|   1 | Dinesh |   4800 | dinesh@ms        |
|   2 | Jayesh |   4000 | jayesh@gmail.com |
+-----+--------+--------+------------------+
2 rows in set (0.00 sec)
