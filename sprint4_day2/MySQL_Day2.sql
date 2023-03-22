Your MySQL connection id is 16
Server version: 8.0.31 MySQL Community Server - GPL

Copyright (c) 2000, 2022, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> use sb101_march;
Database changed
mysql> show tables;
+-----------------------+
| Tables_in_sb101_march |
+-----------------------+
| student               |
+-----------------------+
1 row in set (0.02 sec)

mysql> select * from student;
+--------+--------+------+------------+
| rollNo | name   | cgpa | dob        |
+--------+--------+------+------------+
| R001   | Sachin |  8.5 | 2000-01-01 |
| R002   | Rohan  |  7.9 | 1997-04-15 |
+--------+--------+------+------------+
2 rows in set (0.00 sec)

mysql> Create Table employee(
    -> id int primary key, auto_increment,
    -> eid varchar(4) UNIQUE not null,
    -> name varchar(12) not null,
    -> salary Decimal(3,1) Default 0.0,
    -> joining_date date not null
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ',
eid varchar(4) UNIQUE not null,
name varchar(12) not null,
salary Decimal(3,1)' at line 2
mysql>  Create Table employee(
    ->     -> id int primary key, auto_increment,
    ->     -> eid varchar(4) UNIQUE not null,
    ->     -> name varchar(12) not null,
    ->     -> salary Decimal(3,1) Default 0.0,
    ->     -> joining_date date not null
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '-> id int primary key, auto_increment,
    -> eid varchar(4) UNIQUE not null,
  ' at line 2
mysql> Create Table employee(
    ->     -> id int primary key auto_increment,
    ->     -> eid varchar(4) UNIQUE not null,
    ->     -> name varchar(12) not null,
    ->     -> salary Decimal(3,1) Default 0.0,
    ->     -> joining_date date not null
    ->     -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '-> id int primary key auto_increment,
    -> eid varchar(4) UNIQUE not null,
   ' at line 2
mysql>  Create Table employee(
    ->     -> id int primary key auto increment,
    ->     -> eid varchar(4) UNIQUE not null,
    ->     -> name varchar(12) not null,
    ->     -> salary Decimal(3,1) Default 0.0,
    ->     -> joining_date date not null
    ->     -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '-> id int primary key auto increment,
    -> eid varchar(4) UNIQUE not null,
   ' at line 2
mysql>  Create Table employee(
    ->     -> id int primary key auto-increment,
    ->     -> eid varchar(4) UNIQUE not null,
    ->     -> name varchar(12) not null,
    ->     -> salary Decimal(3,1) Default 0.0,
    ->     -> joining_date date not null
    ->     -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '-> id int primary key auto-increment,
    -> eid varchar(4) UNIQUE not null,
   ' at line 2
mysql> Create Table employee(id int primary key auto_increment,eid varchar(4) UNIQUE not null,name varchar(12) not null,salary Decimal(3,1) Default 0.0,joining_date date not null);
Query OK, 0 rows affected (0.07 sec)