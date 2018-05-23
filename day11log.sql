MariaDB [(none)]> use CS2204s18;
ERROR 1049 (42000): Unknown database 'cs2204s18'
MariaDB [(none)]> use CS2204s18
ERROR 1049 (42000): Unknown database 'cs2204s18'
MariaDB [(none)]> use CSd2204s18;
Database changed
MariaDB [CSd2204s18]> select *from products;
+------+-----------------+-------+--------------+
| Code | Name            | Price | Manufacturer |
+------+-----------------+-------+--------------+
|    1 | Hard drive      |   240 |            5 |
|    2 | Memory          |   120 |            6 |
|    3 | ZIP drive       |   150 |            4 |
|    4 | Floppy disk     |     5 |            6 |
|    5 | Monitor         |   240 |            1 |
|    6 | DVD drive       |   180 |            2 |
|    7 | CD drive        |    90 |            2 |
|    8 | Printer         |   270 |            3 |
|    9 | Toner cartridge |    66 |            3 |
|   10 | DVD burner      |   180 |            2 |
|   11 | Printer         |    40 |            7 |
|   12 | Toner cartridge |    54 |            7 |
|   13 | DVD burner      |    78 |            7 |
+------+-----------------+-------+--------------+
13 rows in set (0.05 sec)

MariaDB [CSd2204s18]> create view V1 as select *from products;
Query OK, 0 rows affected (0.05 sec)

MariaDB [CSd2204s18]> show tables;
+----------------------+
| Tables_in_csd2204s18 |
+----------------------+
| ac_mast              |
| c1                   |
| c3                   |
| countries            |
| cust_mast            |
| customer             |
| departments          |
| dept                 |
| emp                  |
| employees            |
| job_history          |
| jobs                 |
| locations            |
| manu                 |
| movies               |
| moviesnew            |
| persons              |
| products             |
| regions              |
| trans                |
| v1                   |
+----------------------+
21 rows in set (0.00 sec)

MariaDB [CSd2204s18]> select *from v1;
+------+-----------------+-------+--------------+
| Code | Name            | Price | Manufacturer |
+------+-----------------+-------+--------------+
|    1 | Hard drive      |   240 |            5 |
|    2 | Memory          |   120 |            6 |
|    3 | ZIP drive       |   150 |            4 |
|    4 | Floppy disk     |     5 |            6 |
|    5 | Monitor         |   240 |            1 |
|    6 | DVD drive       |   180 |            2 |
|    7 | CD drive        |    90 |            2 |
|    8 | Printer         |   270 |            3 |
|    9 | Toner cartridge |    66 |            3 |
|   10 | DVD burner      |   180 |            2 |
|   11 | Printer         |    40 |            7 |
|   12 | Toner cartridge |    54 |            7 |
|   13 | DVD burner      |    78 |            7 |
+------+-----------------+-------+--------------+
13 rows in set (0.00 sec)

MariaDB [CSd2204s18]> create view V1 as select *from products where price>100;
ERROR 1050 (42S01): Table 'V1' already exists
MariaDB [CSd2204s18]> create view V2 as select *from products where price>100;
Query OK, 0 rows affected (0.03 sec)

MariaDB [CSd2204s18]> show tables;
+----------------------+
| Tables_in_csd2204s18 |
+----------------------+
| ac_mast              |
| c1                   |
| c3                   |
| countries            |
| cust_mast            |
| customer             |
| departments          |
| dept                 |
| emp                  |
| employees            |
| job_history          |
| jobs                 |
| locations            |
| manu                 |
| movies               |
| moviesnew            |
| persons              |
| products             |
| regions              |
| trans                |
| v1                   |
| v2                   |
+----------------------+
22 rows in set (0.02 sec)

MariaDB [CSd2204s18]> select *from v2;
+------+------------+-------+--------------+
| Code | Name       | Price | Manufacturer |
+------+------------+-------+--------------+
|    1 | Hard drive |   240 |            5 |
|    2 | Memory     |   120 |            6 |
|    3 | ZIP drive  |   150 |            4 |
|    5 | Monitor    |   240 |            1 |
|    6 | DVD drive  |   180 |            2 |
|    8 | Printer    |   270 |            3 |
|   10 | DVD burner |   180 |            2 |
+------+------------+-------+--------------+
7 rows in set (0.00 sec)

MariaDB [CSd2204s18]> drop v2;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'v2' at line 1
MariaDB [CSd2204s18]> drop table v2;
ERROR 1965 (42S02): 'csd2204s18.v2' is a view
MariaDB [CSd2204s18]> drop view v2;
Query OK, 0 rows affected (0.00 sec)

MariaDB [CSd2204s18]> create or replace view V1 as select *from products where price>100;
Query OK, 0 rows affected (0.06 sec)

MariaDB [CSd2204s18]> insert into v1 values(12,'USB Port', 89, 2);
ERROR 1062 (23000): Duplicate entry '12' for key 'PRIMARY'
MariaDB [CSd2204s18]> insert into v1 values(20,'USB Port', 89, 2);
Query OK, 1 row affected (0.06 sec)

MariaDB [CSd2204s18]> select *from v1;
+------+------------+-------+--------------+
| Code | Name       | Price | Manufacturer |
+------+------------+-------+--------------+
|    1 | Hard drive |   240 |            5 |
|    2 | Memory     |   120 |            6 |
|    3 | ZIP drive  |   150 |            4 |
|    5 | Monitor    |   240 |            1 |
|    6 | DVD drive  |   180 |            2 |
|    8 | Printer    |   270 |            3 |
|   10 | DVD burner |   180 |            2 |
+------+------------+-------+--------------+
7 rows in set (0.00 sec)

MariaDB [CSd2204s18]> select *from products;
+------+-----------------+-------+--------------+
| Code | Name            | Price | Manufacturer |
+------+-----------------+-------+--------------+
|    1 | Hard drive      |   240 |            5 |
|    2 | Memory          |   120 |            6 |
|    3 | ZIP drive       |   150 |            4 |
|    4 | Floppy disk     |     5 |            6 |
|    5 | Monitor         |   240 |            1 |
|    6 | DVD drive       |   180 |            2 |
|    7 | CD drive        |    90 |            2 |
|    8 | Printer         |   270 |            3 |
|    9 | Toner cartridge |    66 |            3 |
|   10 | DVD burner      |   180 |            2 |
|   11 | Printer         |    40 |            7 |
|   12 | Toner cartridge |    54 |            7 |
|   13 | DVD burner      |    78 |            7 |
|   20 | USB Port        |    89 |            2 |
+------+-----------------+-------+--------------+
14 rows in set (0.00 sec)

MariaDB [CSd2204s18]> insert into v1 values(21,'External Hard drive', 102, 2);
Query OK, 1 row affected (0.05 sec)

MariaDB [CSd2204s18]> select *from v1;
+------+---------------------+-------+--------------+
| Code | Name                | Price | Manufacturer |
+------+---------------------+-------+--------------+
|    1 | Hard drive          |   240 |            5 |
|    2 | Memory              |   120 |            6 |
|    3 | ZIP drive           |   150 |            4 |
|    5 | Monitor             |   240 |            1 |
|    6 | DVD drive           |   180 |            2 |
|    8 | Printer             |   270 |            3 |
|   10 | DVD burner          |   180 |            2 |
|   21 | External Hard drive |   102 |            2 |
+------+---------------------+-------+--------------+
8 rows in set (0.00 sec)

MariaDB [CSd2204s18]> delete from v1 where code=20;
Query OK, 0 rows affected (0.01 sec)

MariaDB [CSd2204s18]> select name, price fromthe products where name like '%drive';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'products where name like '%drive'' at line 1
MariaDB [CSd2204s18]> select name, price fromthe products where name like '%drive%';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'products where name like '%drive%'' at line 1
MariaDB [CSd2204s18]> select name, price from products where name like '%drive%';
+---------------------+-------+
| name                | price |
+---------------------+-------+
| Hard drive          |   240 |
| ZIP drive           |   150 |
| DVD drive           |   180 |
| CD drive            |    90 |
| External Hard drive |   102 |
+---------------------+-------+
5 rows in set (0.00 sec)

MariaDB [CSd2204s18]> create or replace view v2 as select name, price from products where name like '%drive%';
Query OK, 0 rows affected (0.05 sec)

MariaDB [CSd2204s18]> select *from v2;
+---------------------+-------+
| name                | price |
+---------------------+-------+
| Hard drive          |   240 |
| ZIP drive           |   150 |
| DVD drive           |   180 |
| CD drive            |    90 |
| External Hard drive |   102 |
+---------------------+-------+
5 rows in set (0.00 sec)

MariaDB [CSd2204s18]> select products.code, products.name, manu.name from manu inner join products on productus.manufacturer=manu.code;
ERROR 1054 (42S22): Unknown column 'productus.manufacturer' in 'on clause'
MariaDB [CSd2204s18]> select products.code, products.name, manu.name from manu inner join products on products.manufacturer=manu.code;
+------+---------------------+-------------------+
| code | name                | name              |
+------+---------------------+-------------------+
|    1 | Hard drive          | Fujitsu           |
|    2 | Memory              | Winchester        |
|    3 | ZIP drive           | Iomega            |
|    4 | Floppy disk         | Winchester        |
|    5 | Monitor             | Sony              |
|    6 | DVD drive           | Creative Labs     |
|    7 | CD drive            | Creative Labs     |
|    8 | Printer             | Hewlett-Packard   |
|    9 | Toner cartridge     | Hewlett-Packard   |
|   10 | DVD burner          | Creative Labs     |
|   11 | Printer             | moxDroid Labs Inc |
|   12 | Toner cartridge     | moxDroid Labs Inc |
|   13 | DVD burner          | moxDroid Labs Inc |
|   20 | USB Port            | Creative Labs     |
|   21 | External Hard drive | Creative Labs     |
+------+---------------------+-------------------+
15 rows in set (0.00 sec)

MariaDB [CSd2204s18]> createor replce view V3 as select products.code, products.name, manu.name from manu inner join products on products.manufacturer=manu.code;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'createor replce view V3 as select products.code, products.name, manu.name from m' at line 1
MariaDB [CSd2204s18]> createor replce view V3 as select products.code, products.name, manu.name from manu inner join products on products.manufacturer=manu.code;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'createor replce view V3 as select products.code, products.name, manu.name from m' at line 1
MariaDB [CSd2204s18]> create or replce view V3 as select products.code, products.name, manu.name from manu inner join products on products.manufacturer=manu.code;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'replce view V3 as select products.code, products.name, manu.name from manu inner' at line 1
MariaDB [CSd2204s18]> create or replace view V3 as select products.code, products.name, manu.name from manu inner join products on products.manufacturer=manu.code;
ERROR 1060 (42S21): Duplicate column name 'name'
MariaDB [CSd2204s18]> create or replace view V3 as select products.code, products.name'Products', manu.name 'Manufacturer' from manu inner join products on products.manufacturer=manu.code;
Query OK, 0 rows affected (0.03 sec)

MariaDB [CSd2204s18]> select *from V3;
+------+---------------------+-------------------+
| code | Products            | Manufacturer      |
+------+---------------------+-------------------+
|    1 | Hard drive          | Fujitsu           |
|    2 | Memory              | Winchester        |
|    3 | ZIP drive           | Iomega            |
|    4 | Floppy disk         | Winchester        |
|    5 | Monitor             | Sony              |
|    6 | DVD drive           | Creative Labs     |
|    7 | CD drive            | Creative Labs     |
|    8 | Printer             | Hewlett-Packard   |
|    9 | Toner cartridge     | Hewlett-Packard   |
|   10 | DVD burner          | Creative Labs     |
|   11 | Printer             | moxDroid Labs Inc |
|   12 | Toner cartridge     | moxDroid Labs Inc |
|   13 | DVD burner          | moxDroid Labs Inc |
|   20 | USB Port            | Creative Labs     |
|   21 | External Hard drive | Creative Labs     |
+------+---------------------+-------------------+
15 rows in set (0.00 sec)

MariaDB [CSd2204s18]> create or replace view V4 as select first_name, last_name, salary from employees where salary > all(Select avg(salary) from employees group by department_id);
Query OK, 0 rows affected (0.05 sec)

MariaDB [CSd2204s18]> select *from V4;
+------------+-----------+----------+
| first_name | last_name | salary   |
+------------+-----------+----------+
| Steven     | King      | 24000.00 |
+------------+-----------+----------+
1 row in set (0.00 sec)

MariaDB [CSd2204s18]> drop view V5;
ERROR 1051 (42S02): Unknown table 'csd2204s18.v5'
MariaDB [CSd2204s18]> drop view if exists V5;
Query OK, 0 rows affected, 1 warning (0.00 sec)

MariaDB [CSd2204s18]> drop view if exists V1;
Query OK, 0 rows affected (0.02 sec)

MariaDB [CSd2204s18]> show tables;
+----------------------+
| Tables_in_csd2204s18 |
+----------------------+
| ac_mast              |
| c1                   |
| c3                   |
| countries            |
| cust_mast            |
| customer             |
| departments          |
| dept                 |
| emp                  |
| employees            |
| job_history          |
| jobs                 |
| locations            |
| manu                 |
| movies               |
| moviesnew            |
| persons              |
| products             |
| regions              |
| trans                |
| v2                   |
| v3                   |
| v4                   |
+----------------------+
23 rows in set (0.00 sec)

MariaDB [CSd2204s18]> show databases;
+--------------------+
| Database           |
+--------------------+
| csd2204s18         |
| information_schema |
| mysql              |
| performance_schema |
| phpmyadmin         |
| test               |
+--------------------+
6 rows in set (0.00 sec)

MariaDB [CSd2204s18]> exit;
