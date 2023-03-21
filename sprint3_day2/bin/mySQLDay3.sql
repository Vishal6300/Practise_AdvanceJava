Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 9
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
10 rows in set (0.06 sec)

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

mysql> create table employee(eid int primary key,ename varchar(12), dept varchar(12), salary int , designation varchar(12));
Query OK, 0 rows affected (0.10 sec)

mysql> desc employee;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| eid         | int         | NO   | PRI | NULL    |       |
| ename       | varchar(12) | YES  |     | NULL    |       |
| dept        | varchar(12) | YES  |     | NULL    |       |
| salary      | int         | YES  |     | NULL    |       |
| designation | varchar(12) | YES  |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
5 rows in set (0.01 sec)

mysql> insert into employee(101,"Roshan","SALES",45000,"HR");
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '101,"Roshan","SALES",45000,"HR")' at line 1
mysql> insert into employee values(101,"Roshan","SALES",45000,"HR");
Query OK, 1 row affected (0.01 sec)

mysql> insert into employee values(102,"Ravi","OFFICE",25000,"HR");
Query OK, 1 row affected (0.01 sec)

mysql> insert into employee values(103,"Sannidayal","Mechanical",15000,"SM");
Query OK, 1 row affected (0.01 sec)

mysql> insert into employee values(104,"Mohit","HRM",27000,"SM");
Query OK, 1 row affected (0.00 sec)

mysql> select dept, SUM(salary) TOTAL_SAL from employee group by dept Having SUM(salary) > 25000;
+-------+-----------+
| dept  | TOTAL_SAL |
+-------+-----------+
| SALES |     45000 |
| HRM   |     27000 |
+-------+-----------+
2 rows in set (0.01 sec)

mysql> select * from product;
+-----+--------+----------+--------+
| pid | pname  | quantity | price  |
+-----+--------+----------+--------+
| 102 | Iphone |       12 | 120000 |
| 103 | Ipod   |       10 |   1200 |
+-----+--------+----------+--------+
2 rows in set (0.04 sec)

mysql> use  sb101_db;
Database changed
mysql> show tables;
+--------------------+
| Tables_in_sb101_db |
+--------------------+
| department         |
| employee           |
| product            |
+--------------------+
3 rows in set (0.01 sec)

mysql> select * from product;
+-----------+-------------+-------+----------+
| productid | productName | price | quantity |
+-----------+-------------+-------+----------+
|      1001 | earpods     |  1199 |        2 |
|      1002 | powebank    |  2099 |        5 |
+-----------+-------------+-------+----------+
2 rows in set (0.03 sec)

mysql> create table soldier(sol_id varchar(4) primary key, sol_name varchar(12) not null, sol_age int, col_id varchar(12), constraint fk_sol FOREIGN KEY(col_id) references(sol_id));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(sol_id))' at line 1
mysql> create table soldier(sol_id varchar(4) primary key, sol_name varchar(12) not null, sol_age int, col_id varchar(4), constraint fk_sol FOREIGN KEY(col_id) references(sol_id));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(sol_id))' at line 1
mysql> create table soldier(sol_id varchar(4) primary key, sol_name varchar(12) not null, sol_age int, col_id varchar(4), constraint fk_sol FOREIGN KEY(col_id) references soldier(sol_id));
Query OK, 0 rows affected (0.10 sec)

mysql> desc soldier;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| sol_id   | varchar(4)  | NO   | PRI | NULL    |       |
| sol_name | varchar(12) | NO   |     | NULL    |       |
| sol_age  | int         | YES  |     | NULL    |       |
| col_id   | varchar(4)  | YES  | MUL | NULL    |       |
+----------+-------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

mysql> insert into soldier values("S001","ABC",34,NULL);
Query OK, 1 row affected (0.01 sec)

mysql> insert into soldier values("S002","BCD",24,"S001");
Query OK, 1 row affected (0.01 sec)

mysql> insert into soldier values("S003","EFG",27,"S001");
Query OK, 1 row affected (0.01 sec)

mysql> insert into soldier values("S004","HIJ",28,NULL);
Query OK, 1 row affected (0.00 sec)

mysql> insert into soldier values("S005","KLM",35,"S004");
Query OK, 1 row affected (0.01 sec)

mysql> select * from soldier;
+--------+----------+---------+--------+
| sol_id | sol_name | sol_age | col_id |
+--------+----------+---------+--------+
| S001   | ABC      |      34 | NULL   |
| S002   | BCD      |      24 | S001   |
| S003   | EFG      |      27 | S001   |
| S004   | HIJ      |      28 | NULL   |
| S005   | KLM      |      35 | S004   |
+--------+----------+---------+--------+
5 rows in set (0.00 sec)

mysql> select s.sol_name SOLDIER_NAME, C.sol_name COL_name from soldier s INNER JOIN soldier C ON S.col_id = C.sol_id;
+--------------+----------+
| SOLDIER_NAME | COL_name |
+--------------+----------+
| BCD          | ABC      |
| EFG          | ABC      |
| KLM          | HIJ      |
+--------------+----------+
3 rows in set (0.00 sec)

mysql> show tables;
+--------------------+
| Tables_in_sb101_db |
+--------------------+
| department         |
| employee           |
| product            |
| soldier            |
+--------------------+
4 rows in set (0.01 sec)

mysql> use  sb101_feb;
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
|      2 | sudip   | sudip@ms         | 56.43 | Nepal          |
|      3 | bhoomi  | bhoomi@gmail.com | 45.42 | Kerala         |
|      4 | hero    | hero@gmail.com   | 87.42 | Jharkhand      |
|      5 | Ram     | ram@gmail.com    | 93.12 | Bihar          |
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

mysql> select max(x_per) from student WHERE state='Karnataka');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ')' at line 1
mysql> select max(x_per) from student WHERE state='Karnataka';
+------------+
| max(x_per) |
+------------+
|      91.11 |
+------------+
1 row in set (0.01 sec)

mysql> select * from student WHERE x_per >77.42;
+--------+---------+----------------+-------+-----------+
| rollNo | name    | email          | x_per | state     |
+--------+---------+----------------+-------+-----------+
|      4 | hero    | hero@gmail.com | 87.42 | Jharkhand |
|      5 | Ram     | ram@gmail.com  | 93.12 | Bihar     |
|      9 | Levis   | levis@ms       | 91.11 | KARNATAKA |
|     10 | Shruthi | Shruthi@ms     | 97.11 | Kerala    |
+--------+---------+----------------+-------+-----------+
4 rows in set (0.00 sec)

mysql> select * from student WHERE (select max(x_per) from student WHERE state='Karnataka');
+--------+---------+------------------+-------+----------------+
| rollNo | name    | email            | x_per | state          |
+--------+---------+------------------+-------+----------------+
|      1 | ABC     | abc@gmail.com    | 77.42 | Karnataka      |
|      2 | sudip   | sudip@ms         | 56.43 | Nepal          |
|      3 | bhoomi  | bhoomi@gmail.com | 45.42 | Kerala         |
|      4 | hero    | hero@gmail.com   | 87.42 | Jharkhand      |
|      5 | Ram     | ram@gmail.com    | 93.12 | Bihar          |
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
15 rows in set (0.00 sec)

mysql> select * from student WHERE x_per > (select max(x_per) from student WHERE state='Karnataka');
+--------+---------+---------------+-------+--------+
| rollNo | name    | email         | x_per | state  |
+--------+---------+---------------+-------+--------+
|      5 | Ram     | ram@gmail.com | 93.12 | Bihar  |
|     10 | Shruthi | Shruthi@ms    | 97.11 | Kerala |
+--------+---------+---------------+-------+--------+
2 rows in set (0.00 sec)

mysql> select * from student WHERE x_per = MAX(x_per);
ERROR 1111 (HY000): Invalid use of group function
mysql> select * from student WHERE x_per = (select MAX(x_per) from student;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> select * from student WHERE x_per = (select MAX(x_per) from student);
+--------+---------+------------+-------+--------+
| rollNo | name    | email      | x_per | state  |
+--------+---------+------------+-------+--------+
|     10 | Shruthi | Shruthi@ms | 97.11 | Kerala |
+--------+---------+------------+-------+--------+
1 row in set (0.00 sec)

mysql>