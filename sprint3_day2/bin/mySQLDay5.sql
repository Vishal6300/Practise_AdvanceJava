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
15 rows in set (0.00 sec)

mysql> Show index from student;
+---------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| Table   | Non_unique | Key_name | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment | Visible | Expression |
+---------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| student |          0 | PRIMARY  |            1 | rollNo      | A         |          13 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
| student |          0 | email    |            1 | email       | A         |          13 |     NULL |   NULL | YES  | BTREE      |         |               | YES     | NULL       |
+---------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
2 rows in set (0.03 sec)

mysql> select * from student WHERE name="abc";
+--------+------+---------------+-------+-----------+
| rollNo | name | email         | x_per | state     |
+--------+------+---------------+-------+-----------+
|      1 | ABC  | abc@gmail.com | 77.42 | Karnataka |
+--------+------+---------------+-------+-----------+
1 row in set (0.00 sec)

mysql> EXPLAIN select * from student WHERE name="abc";
+----+-------------+---------+------------+------+---------------+------+---------+------+------+----------+-------------+
| id | select_type | table   | partitions | type | possible_keys | key  | key_len | ref  | rows | filtered | Extra       |
+----+-------------+---------+------------+------+---------------+------+---------+------+------+----------+-------------+
|  1 | SIMPLE      | student | NULL       | ALL  | NULL          | NULL | NULL    | NULL |   13 |    10.00 | Using where |
+----+-------------+---------+------------+------+---------------+------+---------+------+------+----------+-------------+
1 row in set, 1 warning (0.01 sec)

mysql>