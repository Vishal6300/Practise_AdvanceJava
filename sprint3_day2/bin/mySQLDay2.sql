
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 8
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
10 rows in set (0.11 sec)

mysql> use sb101_feb;
Database changed
mysql> show tables;
+---------------------+
| Tables_in_sb101_feb |
+---------------------+
| product             |
| student             |
| students            |
+---------------------+
3 rows in set (0.01 sec)

mysql> select * from students;
+-------------+--------+------+-------------------+
| roll_number | name   | cgpa | registration_date |
+-------------+--------+------+-------------------+
| 1           | suraj  |  7.0 | 2022-02-12        |
| 2           | rehan  |  6.2 | 2021-12-21        |
| fw20_0280   | vishal |  9.0 | 2022-05-16        |
| fw21_211    | rehan  |  8.9 | 2022-06-21        |
+-------------+--------+------+-------------------+
4 rows in set (0.02 sec)

mysql> select * from student;
+--------+---------+------------------+-------+----------------+
| rollNo | name    | email            | x_per | state          |
+--------+---------+------------------+-------+----------------+
|      1 | ABC     | abc@gmail.com    | 77.42 | Karnataka      |
|      2 | sudip   | sudip@ms         | 56.43 | Nepal          |
|      3 | bhoomi  | bhoomi@gmail.com | 45.42 | Kerala         |
|      4 | hero    | hero@gmail.com   | 87.42 | Jharkhand      |
|      5 | Ram     | ram@gmail.com    | 93.12 | Bihar          |
|      6 | Ravi    | ravi@ms          | 72.43 | UP             |
|      7 | mosham  | mosham@ms        | 42.51 | UP             |
|      8 | Rehan   | rehan@ms         | 59.11 | MP             |
|      9 | Levis   | levis@ms         | 91.11 | KARNATAKA      |
|     10 | Shruthi | Shruthi@ms       | 97.11 | Kerala         |
|     11 | divya   | divya@francis    | 43.21 | Tripura        |
|     12 | Vivek   | vivek@francis    | 33.21 | Jharkhand      |
|     13 | Monoj   | manoj@masai      | 65.34 | Mizoram        |
|     14 | Monu    | monu@masai       | 35.34 | Madhya Pradesh |
|     15 | Roshan  | roshan@masai     | 65.34 | Uttar Pradesh  |
+--------+---------+------------------+-------+----------------+
15 rows in set (0.01 sec)

mysql> select x_per from student;
+-------+
| x_per |
+-------+
| 77.42 |
| 56.43 |
| 45.42 |
| 87.42 |
| 93.12 |
| 72.43 |
| 42.51 |
| 59.11 |
| 91.11 |
| 97.11 |
| 43.21 |
| 33.21 |
| 65.34 |
| 35.34 |
| 65.34 |
+-------+
15 rows in set (0.00 sec)

mysql> select dintinct(x_per) from student;
ERROR 1305 (42000): FUNCTION sb101_feb.dintinct does not exist
mysql> select distinct(x_per) from student;
+-------+
| x_per |
+-------+
| 77.42 |
| 56.43 |
| 45.42 |
| 87.42 |
| 93.12 |
| 72.43 |
| 42.51 |
| 59.11 |
| 91.11 |
| 97.11 |
| 43.21 |
| 33.21 |
| 65.34 |
| 35.34 |
+-------+
14 rows in set (0.00 sec)

mysql> select rollNo as "ROLL NUMBER", name 'Student Name', x_per 'Matric Exam persentage' from student;
+-------------+--------------+------------------------+
| ROLL NUMBER | Student Name | Matric Exam persentage |
+-------------+--------------+------------------------+
|           1 | ABC          |                  77.42 |
|           2 | sudip        |                  56.43 |
|           3 | bhoomi       |                  45.42 |
|           4 | hero         |                  87.42 |
|           5 | Ram          |                  93.12 |
|           6 | Ravi         |                  72.43 |
|           7 | mosham       |                  42.51 |
|           8 | Rehan        |                  59.11 |
|           9 | Levis        |                  91.11 |
|          10 | Shruthi      |                  97.11 |
|          11 | divya        |                  43.21 |
|          12 | Vivek        |                  33.21 |
|          13 | Monoj        |                  65.34 |
|          14 | Monu         |                  35.34 |
|          15 | Roshan       |                  65.34 |
+-------------+--------------+------------------------+
15 rows in set (0.00 sec)

mysql> select * from student where x_per>=60.00;
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

mysql> select * from student where x_per>=60.00 AND state="Karnataka";
+--------+-------+---------------+-------+-----------+
| rollNo | name  | email         | x_per | state     |
+--------+-------+---------------+-------+-----------+
|      1 | ABC   | abc@gmail.com | 77.42 | Karnataka |
|      9 | Levis | levis@ms      | 91.11 | KARNATAKA |
+--------+-------+---------------+-------+-----------+
2 rows in set (0.00 sec)

mysql> select * from student where email is null;
Empty set (0.01 sec)

mysql> select * from student where name LIKE '%C%;
    '> ';
Empty set (0.01 sec)

mysql> select * from student where name LIKE '%C%';
+--------+------+---------------+-------+-----------+
| rollNo | name | email         | x_per | state     |
+--------+------+---------------+-------+-----------+
|      1 | ABC  | abc@gmail.com | 77.42 | Karnataka |
+--------+------+---------------+-------+-----------+
1 row in set (0.00 sec)

mysql> select * from student where name LIKE '%a_';
+--------+--------+---------------+-------+---------------+
| rollNo | name   | email         | x_per | state         |
+--------+--------+---------------+-------+---------------+
|      5 | Ram    | ram@gmail.com | 93.12 | Bihar         |
|      7 | mosham | mosham@ms     | 42.51 | UP            |
|      8 | Rehan  | rehan@ms      | 59.11 | MP            |
|     15 | Roshan | roshan@masai  | 65.34 | Uttar Pradesh |
+--------+--------+---------------+-------+---------------+
4 rows in set (0.00 sec)

mysql> select * from student where name LIKE '_a%';
+--------+------+---------------+-------+-------+
| rollNo | name | email         | x_per | state |
+--------+------+---------------+-------+-------+
|      5 | Ram  | ram@gmail.com | 93.12 | Bihar |
|      6 | Ravi | ravi@ms       | 72.43 | UP    |
+--------+------+---------------+-------+-------+
2 rows in set (0.00 sec)

mysql> select * from student ;
+--------+---------+------------------+-------+----------------+
| rollNo | name    | email            | x_per | state          |
+--------+---------+------------------+-------+----------------+
|      1 | ABC     | abc@gmail.com    | 77.42 | Karnataka      |
|      2 | sudip   | sudip@ms         | 56.43 | Nepal          |
|      3 | bhoomi  | bhoomi@gmail.com | 45.42 | Kerala         |
|      4 | hero    | hero@gmail.com   | 87.42 | Jharkhand      |
|      5 | Ram     | ram@gmail.com    | 93.12 | Bihar          |
|      6 | Ravi    | ravi@ms          | 72.43 | UP             |
|      7 | mosham  | mosham@ms        | 42.51 | UP             |
|      8 | Rehan   | rehan@ms         | 59.11 | MP             |
|      9 | Levis   | levis@ms         | 91.11 | KARNATAKA      |
|     10 | Shruthi | Shruthi@ms       | 97.11 | Kerala         |
|     11 | divya   | divya@francis    | 43.21 | Tripura        |
|     12 | Vivek   | vivek@francis    | 33.21 | Jharkhand      |
|     13 | Monoj   | manoj@masai      | 65.34 | Mizoram        |
|     14 | Monu    | monu@masai       | 35.34 | Madhya Pradesh |
|     15 | Roshan  | roshan@masai     | 65.34 | Uttar Pradesh  |
+--------+---------+------------------+-------+----------------+
15 rows in set (0.00 sec)

mysql> select * from student ORDER BY x_per;
+--------+---------+------------------+-------+----------------+
| rollNo | name    | email            | x_per | state          |
+--------+---------+------------------+-------+----------------+
|     12 | Vivek   | vivek@francis    | 33.21 | Jharkhand      |
|     14 | Monu    | monu@masai       | 35.34 | Madhya Pradesh |
|      7 | mosham  | mosham@ms        | 42.51 | UP             |
|     11 | divya   | divya@francis    | 43.21 | Tripura        |
|      3 | bhoomi  | bhoomi@gmail.com | 45.42 | Kerala         |
|      2 | sudip   | sudip@ms         | 56.43 | Nepal          |
|      8 | Rehan   | rehan@ms         | 59.11 | MP             |
|     13 | Monoj   | manoj@masai      | 65.34 | Mizoram        |
|     15 | Roshan  | roshan@masai     | 65.34 | Uttar Pradesh  |
|      6 | Ravi    | ravi@ms          | 72.43 | UP             |
|      1 | ABC     | abc@gmail.com    | 77.42 | Karnataka      |
|      4 | hero    | hero@gmail.com   | 87.42 | Jharkhand      |
|      9 | Levis   | levis@ms         | 91.11 | KARNATAKA      |
|      5 | Ram     | ram@gmail.com    | 93.12 | Bihar          |
|     10 | Shruthi | Shruthi@ms       | 97.11 | Kerala         |
+--------+---------+------------------+-------+----------------+
15 rows in set (0.01 sec)

mysql> select * from student ORDER BY x_per ASC;
+--------+---------+------------------+-------+----------------+
| rollNo | name    | email            | x_per | state          |
+--------+---------+------------------+-------+----------------+
|     12 | Vivek   | vivek@francis    | 33.21 | Jharkhand      |
|     14 | Monu    | monu@masai       | 35.34 | Madhya Pradesh |
|      7 | mosham  | mosham@ms        | 42.51 | UP             |
|     11 | divya   | divya@francis    | 43.21 | Tripura        |
|      3 | bhoomi  | bhoomi@gmail.com | 45.42 | Kerala         |
|      2 | sudip   | sudip@ms         | 56.43 | Nepal          |
|      8 | Rehan   | rehan@ms         | 59.11 | MP             |
|     13 | Monoj   | manoj@masai      | 65.34 | Mizoram        |
|     15 | Roshan  | roshan@masai     | 65.34 | Uttar Pradesh  |
|      6 | Ravi    | ravi@ms          | 72.43 | UP             |
|      1 | ABC     | abc@gmail.com    | 77.42 | Karnataka      |
|      4 | hero    | hero@gmail.com   | 87.42 | Jharkhand      |
|      9 | Levis   | levis@ms         | 91.11 | KARNATAKA      |
|      5 | Ram     | ram@gmail.com    | 93.12 | Bihar          |
|     10 | Shruthi | Shruthi@ms       | 97.11 | Kerala         |
+--------+---------+------------------+-------+----------------+
15 rows in set (0.00 sec)

mysql> select * from student ORDER BY x_per DESC;
+--------+---------+------------------+-------+----------------+
| rollNo | name    | email            | x_per | state          |
+--------+---------+------------------+-------+----------------+
|     10 | Shruthi | Shruthi@ms       | 97.11 | Kerala         |
|      5 | Ram     | ram@gmail.com    | 93.12 | Bihar          |
|      9 | Levis   | levis@ms         | 91.11 | KARNATAKA      |
|      4 | hero    | hero@gmail.com   | 87.42 | Jharkhand      |
|      1 | ABC     | abc@gmail.com    | 77.42 | Karnataka      |
|      6 | Ravi    | ravi@ms          | 72.43 | UP             |
|     13 | Monoj   | manoj@masai      | 65.34 | Mizoram        |
|     15 | Roshan  | roshan@masai     | 65.34 | Uttar Pradesh  |
|      8 | Rehan   | rehan@ms         | 59.11 | MP             |
|      2 | sudip   | sudip@ms         | 56.43 | Nepal          |
|      3 | bhoomi  | bhoomi@gmail.com | 45.42 | Kerala         |
|     11 | divya   | divya@francis    | 43.21 | Tripura        |
|      7 | mosham  | mosham@ms        | 42.51 | UP             |
|     14 | Monu    | monu@masai       | 35.34 | Madhya Pradesh |
|     12 | Vivek   | vivek@francis    | 33.21 | Jharkhand      |
+--------+---------+------------------+-------+----------------+
15 rows in set (0.00 sec)

mysql> select * from student ORDER BY x_per , rollNo DESC;
+--------+---------+------------------+-------+----------------+
| rollNo | name    | email            | x_per | state          |
+--------+---------+------------------+-------+----------------+
|     12 | Vivek   | vivek@francis    | 33.21 | Jharkhand      |
|     14 | Monu    | monu@masai       | 35.34 | Madhya Pradesh |
|      7 | mosham  | mosham@ms        | 42.51 | UP             |
|     11 | divya   | divya@francis    | 43.21 | Tripura        |
|      3 | bhoomi  | bhoomi@gmail.com | 45.42 | Kerala         |
|      2 | sudip   | sudip@ms         | 56.43 | Nepal          |
|      8 | Rehan   | rehan@ms         | 59.11 | MP             |
|     15 | Roshan  | roshan@masai     | 65.34 | Uttar Pradesh  |
|     13 | Monoj   | manoj@masai      | 65.34 | Mizoram        |
|      6 | Ravi    | ravi@ms          | 72.43 | UP             |
|      1 | ABC     | abc@gmail.com    | 77.42 | Karnataka      |
|      4 | hero    | hero@gmail.com   | 87.42 | Jharkhand      |
|      9 | Levis   | levis@ms         | 91.11 | KARNATAKA      |
|      5 | Ram     | ram@gmail.com    | 93.12 | Bihar          |
|     10 | Shruthi | Shruthi@ms       | 97.11 | Kerala         |
+--------+---------+------------------+-------+----------------+
15 rows in set (0.00 sec)

mysql> select name,email, x_per from student ORDER BY name DESC;
+---------+------------------+-------+
| name    | email            | x_per |
+---------+------------------+-------+
| Vivek   | vivek@francis    | 33.21 |
| sudip   | sudip@ms         | 56.43 |
| Shruthi | Shruthi@ms       | 97.11 |
| Roshan  | roshan@masai     | 65.34 |
| Rehan   | rehan@ms         | 59.11 |
| Ravi    | ravi@ms          | 72.43 |
| Ram     | ram@gmail.com    | 93.12 |
| mosham  | mosham@ms        | 42.51 |
| Monu    | monu@masai       | 35.34 |
| Monoj   | manoj@masai      | 65.34 |
| Levis   | levis@ms         | 91.11 |
| hero    | hero@gmail.com   | 87.42 |
| divya   | divya@francis    | 43.21 |
| bhoomi  | bhoomi@gmail.com | 45.42 |
| ABC     | abc@gmail.com    | 77.42 |
+---------+------------------+-------+
15 rows in set (0.00 sec)

mysql> select name,email, x_per from student ORDER BY name DESC LIMIT 5;
+---------+---------------+-------+
| name    | email         | x_per |
+---------+---------------+-------+
| Vivek   | vivek@francis | 33.21 |
| sudip   | sudip@ms      | 56.43 |
| Shruthi | Shruthi@ms    | 97.11 |
| Roshan  | roshan@masai  | 65.34 |
| Rehan   | rehan@ms      | 59.11 |
+---------+---------------+-------+
5 rows in set (0.00 sec)

mysql> select name,email, x_per from student ORDER BY name DESC LIMIT 2,4;
+---------+--------------+-------+
| name    | email        | x_per |
+---------+--------------+-------+
| Shruthi | Shruthi@ms   | 97.11 |
| Roshan  | roshan@masai | 65.34 |
| Rehan   | rehan@ms     | 59.11 |
| Ravi    | ravi@ms      | 72.43 |
+---------+--------------+-------+
4 rows in set (0.00 sec)

mysql> select round(44.4), round(44.5), round(44.6);
+-------------+-------------+-------------+
| round(44.4) | round(44.5) | round(44.6) |
+-------------+-------------+-------------+
|          44 |          45 |          45 |
+-------------+-------------+-------------+
1 row in set (0.01 sec)

mysql> select abs(10), abs(-10);
+---------+----------+
| abs(10) | abs(-10) |
+---------+----------+
|      10 |       10 |
+---------+----------+
1 row in set (0.00 sec)

mysql> select round(44.4), round(44.5), round(44.6);
+-------------+-------------+-------------+
| round(44.4) | round(44.5) | round(44.6) |
+-------------+-------------+-------------+
|          44 |          45 |          45 |
+-------------+-------------+-------------+
1 row in set (0.00 sec)

mysql> select truncate(44.4), truncate(44.5), truncate(44.6);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '), truncate(44.5), truncate(44.6)' at line 1
mysql> select truncate(44.4,1), truncate(44.5,1), truncate(44.6,1);
+------------------+------------------+------------------+
| truncate(44.4,1) | truncate(44.5,1) | truncate(44.6,1) |
+------------------+------------------+------------------+
|             44.4 |             44.5 |             44.6 |
+------------------+------------------+------------------+
1 row in set (0.00 sec)

mysql> select truncate(44.47,1), truncate(44.52,1), truncate(44.62,1);
+-------------------+-------------------+-------------------+
| truncate(44.47,1) | truncate(44.52,1) | truncate(44.62,1) |
+-------------------+-------------------+-------------------+
|              44.4 |              44.5 |              44.6 |
+-------------------+-------------------+-------------------+
1 row in set (0.00 sec)

mysql> select replace('MESEI','E','A');
+--------------------------+
| replace('MESEI','E','A') |
+--------------------------+
| MASAI                    |
+--------------------------+
1 row in set (0.00 sec)

mysql> select CONCAT('MASAI','SCHOOL');
+--------------------------+
| CONCAT('MASAI','SCHOOL') |
+--------------------------+
| MASAISCHOOL              |
+--------------------------+
1 row in set (0.00 sec)

mysql> select CURDATE(), SYSDATE(). NOW();
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '. NOW()' at line 1
mysql> select CURDATE(), SYSDATE(), NOW();
+------------+---------------------+---------------------+
| CURDATE()  | SYSDATE()           | NOW()               |
+------------+---------------------+---------------------+
| 2023-03-16 | 2023-03-16 13:23:17 | 2023-03-16 13:23:17 |
+------------+---------------------+---------------------+
1 row in set (0.00 sec)

mysql> select CURDATE(), SLEEP(), SYSDATE();
ERROR 1582 (42000): Incorrect parameter count in the call to native function 'SLEEP'
mysql> select CURDATE(), SLEEP(2), SYSDATE();
+------------+----------+---------------------+
| CURDATE()  | SLEEP(2) | SYSDATE()           |
+------------+----------+---------------------+
| 2023-03-16 |        0 | 2023-03-16 13:23:52 |
+------------+----------+---------------------+
1 row in set (2.01 sec)

mysql> select NOW(), SLEEP(2), NOW();
+---------------------+----------+---------------------+
| NOW()               | SLEEP(2) | NOW()               |
+---------------------+----------+---------------------+
| 2023-03-16 13:24:24 |        0 | 2023-03-16 13:24:24 |
+---------------------+----------+---------------------+
1 row in set (2.01 sec)

mysql> SELECT DATE_FORMAT('2023-03-15','%d-%m-%y');
+--------------------------------------+
| DATE_FORMAT('2023-03-15','%d-%m-%y') |
+--------------------------------------+
| 15-03-23                             |
+--------------------------------------+
1 row in set (0.00 sec)

mysql> select count(email), count(x_per), count(*) from student;
+--------------+--------------+----------+
| count(email) | count(x_per) | count(*) |
+--------------+--------------+----------+
|           15 |           15 |       15 |
+--------------+--------------+----------+
1 row in set (0.01 sec)

mysql> select AVG(x_per) from student;
+------------+
| AVG(x_per) |
+------------+
|  64.301333 |
+------------+
1 row in set (0.00 sec)

mysql>