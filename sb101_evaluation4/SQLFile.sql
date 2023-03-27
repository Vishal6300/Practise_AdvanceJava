Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 26
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
| employee              |
| mobile                |
| student               |
+-----------------------+
3 rows in set (0.05 sec)

mysql> create table Company(company_id varchar(4) primary key,company_name varchar(20) unique not null,turnover_in_crores bigint default 0,registration_date date);
Query OK, 0 rows affected (0.13 sec)

mysql> desc comapny;
ERROR 1146 (42S02): Table 'sb101_march.comapny' doesn't exist
mysql> desc company;
+--------------------+-------------+------+-----+---------+-------+
| Field              | Type        | Null | Key | Default | Extra |
+--------------------+-------------+------+-----+---------+-------+
| company_id         | varchar(4)  | NO   | PRI | NULL    |       |
| company_name       | varchar(20) | NO   | UNI | NULL    |       |
| turnover_in_crores | bigint      | YES  |     | 0       |       |
| registration_date  | date        | YES  |     | NULL    |       |
+--------------------+-------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

mysql> create table Car(car_id varchar(4) primary key,model_name varchar(20) unique not null,price int not null,total_seats int,company_id varchar(4) foreign key);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'foreign key)' at line 1
mysql> create table Car(car_id varchar(4) primary key,model_name varchar(20) unique not null,price int not null,total_seats int,company_id varchar(4) foreign key(company));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'foreign key(company))' at line 1
mysql> create table Car(car_id varchar(4) primary key,model_name varchar(20) unique not null,price int not null,total_seats int,company_id varchar(4), foreign key(company_id) REFERENCES company(company_id));
Query OK, 0 rows affected (0.13 sec)

mysql> desc Car;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| car_id      | varchar(4)  | NO   | PRI | NULL    |       |
| model_name  | varchar(20) | NO   | UNI | NULL    |       |
| price       | int         | NO   |     | NULL    |       |
| total_seats | int         | YES  |     | NULL    |       |
| company_id  | varchar(4)  | YES  | MUL | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
5 rows in set (0.01 sec)

mysql> insert into company('CM01','Suzuki',7542,'1973-01-01');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''CM01','Suzuki',7542,'1973-01-01')' at line 1
mysql> insert into company values('CM01','Suzuki',7542,'1973-01-01');
Query OK, 1 row affected (0.02 sec)

mysql> insert into company values('CM02','Hyundai',6542,'1994-01-01');
Query OK, 1 row affected (0.00 sec)

mysql> insert into company values('CM03','Skoda',2542,'2004-01-01');
Query OK, 1 row affected (0.01 sec)

mysql> insert into company values('CM04','Volkswagen',4956,'2005-01-01');
Query OK, 1 row affected (0.01 sec)

mysql> select * from company;
+------------+--------------+--------------------+-------------------+
| company_id | company_name | turnover_in_crores | registration_date |
+------------+--------------+--------------------+-------------------+
| CM01       | Suzuki       |               7542 | 1973-01-01        |
| CM02       | Hyundai      |               6542 | 1994-01-01        |
| CM03       | Skoda        |               2542 | 2004-01-01        |
| CM04       | Volkswagen   |               4956 | 2005-01-01        |
+------------+--------------+--------------------+-------------------+
4 rows in set (0.00 sec)

mysql> select * from Car;
+--------+------------+--------+-------------+------------+
| car_id | model_name | price  | total_seats | company_id |
+--------+------------+--------+-------------+------------+
| CR01   | i10        | 560000 |           5 | CM02       |
+--------+------------+--------+-------------+------------+
1 row in set (0.00 sec)

mysql> select * from Car;
+--------+------------+--------+-------------+------------+
| car_id | model_name | price  | total_seats | company_id |
+--------+------------+--------+-------------+------------+
| CR01   | i10        | 560000 |           5 | CM02       |
| CR02   | alto       | 451000 |           5 | CM01       |
| CR03   | pulo       | 685000 |           5 | CM04       |
+--------+------------+--------+-------------+------------+
3 rows in set (0.00 sec)

mysql> select * from Car;
+--------+------------+--------+-------------+------------+
| car_id | model_name | price  | total_seats | company_id |
+--------+------------+--------+-------------+------------+
| CR01   | i10        | 560000 |           5 | CM02       |
| CR02   | alto       | 451000 |           5 | CM01       |
| CR03   | pulo       | 685000 |           5 | CM04       |
| CR04   | Jetta      | 799000 |           5 | CM04       |
| CR05   | Ertiga     | 115000 |           7 | CM01       |
+--------+------------+--------+-------------+------------+
5 rows in set (0.00 sec)

mysql>