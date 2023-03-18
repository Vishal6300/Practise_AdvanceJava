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