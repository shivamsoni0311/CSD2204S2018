MariaDB [(none)]> show variables like 'version';
+---------------+-----------------+
| Variable_name | Value           |
+---------------+-----------------+
| version       | 10.1.21-MariaDB |
+---------------+-----------------+
1 row in set (0.00 sec)

MariaDB [(none)]> show database;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'database' at line 1
MariaDB [(none)]> show database
    -> \c
MariaDB [(none)]> show database;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'database' at line 1
MariaDB [(none)]> create database CSD2240S18
    -> \c
MariaDB [(none)]> create database CSD2240S18;
ERROR 1044 (42000): Access denied for user ''@'localhost' to database 'csd2240s18'
MariaDB [(none)]> tee C:\Users\737779\Downloads\SQL Database\day3log.sql
MariaDB [(none)]> tee C:\Users\737779\Downloads\SQL Database\day3log.txt
MariaDB [(none)]> show variables like 'version';
+---------------+-----------------+
| Variable_name | Value           |
+---------------+-----------------+
| version       | 10.1.21-MariaDB |
+---------------+-----------------+
1 row in set (0.00 sec)

MariaDB [(none)]> show database;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'database' at line 1
MariaDB [(none)]> create database CSD2240S18;
ERROR 1044 (42000): Access denied for user ''@'localhost' to database 'csd2240s18'
MariaDB [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| test               |
+--------------------+
2 rows in set (0.00 sec)

MariaDB [(none)]> create databases CSD2240S18;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'databases CSD2240S18' at line 1
MariaDB [(none)]> create database CSD2240S18;
ERROR 1044 (42000): Access denied for user ''@'localhost' to database 'csd2240s18'
MariaDB [(none)]> create database CSD2204S18;
ERROR 1044 (42000): Access denied for user ''@'localhost' to database 'csd2204s18'
MariaDB [(none)]> create database CSD2204S18;
Query OK, 1 row affected (0.01 sec)

MariaDB [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| csd2204s18         |
| information_schema |
| mysql              |
| performance_schema |
| phpmyadmin         |
| shivam             |
| test               |
+--------------------+
7 rows in set (0.00 sec)

MariaDB [(none)]> CREATE TABLE CUSTOMER(
    -> custID varchar(5) primary key,
    -> Name varchar(50),
    -> Nickname varchar(10);
ERROR 1046 (3D000): No database selected
MariaDB [(none)]> use CSD2204S18
Database changed
MariaDB [CSD2204S18]> Create Table customer(
    -> custID varchar(5) primary key,
    -> name varchar(50),
    -> nickname varchar(10),
    -> city varchar(20),
    -> postalcode varchar(10),
    -> age integer(3));
Query OK, 0 rows affected (0.20 sec)

MariaDB [CSD2204S18]> show table
    -> \c
MariaDB [CSD2204S18]> show table customer
    -> \c
MariaDB [CSD2204S18]> show table customer;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'customer' at line 1
