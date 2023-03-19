Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 10
Server version: 8.0.31 MySQL Community Server - GPL

Copyright (c) 2000, 2022, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> use sb101_feb;
Database changed
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