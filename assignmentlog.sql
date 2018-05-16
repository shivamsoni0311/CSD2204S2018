MariaDB [(none)]> create table AC_MAST(
    -> ac_type varchar(3),
    -> ac_no int(4),
    -> cust_no int(5),
    -> bal float(10,2),
    -> od_limit float(10,2),
    -> constraint PK_ACMAST Primary key(ac_type,ac_no));
ERROR 1046 (3D000): No database selected
MariaDB [(none)]> use csd2204s18
Database changed
MariaDB [csd2204s18]> create table AC_MAST(
    -> ac_type varchar(3),
    -> ac_no int(4),
    -> cust_no int(5),
    -> bal float(10,2),
    -> od_limit float(10,2),
    -> constraint PK_ACMAST Primary key(ac_type,ac_no));
Query OK, 0 rows affected (0.20 sec)

MariaDB [csd2204s18]> desc AC_MAST;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| ac_type  | varchar(3)  | NO   | PRI | NULL    |       |
| ac_no    | int(4)      | NO   | PRI | NULL    |       |
| cust_no  | int(5)      | YES  |     | NULL    |       |
| bal      | float(10,2) | YES  |     | NULL    |       |
| od_limit | float(10,2) | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

MariaDB [csd2204s18]> 
MariaDB [csd2204s18]> create table CUST_MAST(
    -> cust_no int(5) primry key,
    -> name varchar(500),
    -> add1 varchar(500),
    -> add2 varchar(500),
    -> add3 varchar(500),
    -> city varchar(30),
    -> state varchar(20));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'key,
name varchar(500),
add1 varchar(500),
add2 varchar(500),
add3 varchar(500),' at line 2
MariaDB [csd2204s18]> create table CUST_MAST(
    -> cust_no int(5) primary key,
    -> name varchar(50),
    -> add1 varchar(50),
    -> add2 varchar(50),
    -> add3 varchar(50),
    -> city varchar(30),
    -> state varchar(20));
Query OK, 0 rows affected (0.22 sec)

MariaDB [csd2204s18]> desc CUST_MAST;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| cust_no | int(5)      | NO   | PRI | NULL    |       |
| name    | varchar(50) | YES  |     | NULL    |       |
| add1    | varchar(50) | YES  |     | NULL    |       |
| add2    | varchar(50) | YES  |     | NULL    |       |
| add3    | varchar(50) | YES  |     | NULL    |       |
| city    | varchar(30) | YES  |     | NULL    |       |
| state   | varchar(20) | YES  |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
7 rows in set (0.02 sec)

MariaDB [csd2204s18]> 
MariaDB [csd2204s18]> create table TRANS(
    -> ac_type varchar(3),
    -> ac_no int(4),
    -> tdate date,
    -> counter int(2),
    -> amount float(10,2),
    -> desc varchar(30),
    -> constraint PK_TRANS Primary key(ac_type,ac_no,tdate));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'desc varchar(30),
constraint PK_TRANS Primary key(ac_type,ac_no,tdate))' at line 7
MariaDB [csd2204s18]> create table TRANS(
    -> ac_type varchar(3),
    -> ac_no int(4),
    -> tdate date,
    -> counter int(2),
    -> amount float(10,2),
    -> desc varchar(30),
    -> constraint PK_TRANS Primary key(ac_type,ac_no,tdate)); 
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'desc varchar(30),
constraint PK_TRANS Primary key(ac_type,ac_no,tdate))' at line 7
MariaDB [csd2204s18]> create table TRANS(
    -> ac_type varchar(3),
    -> ac_no int(4),
    -> tdate date,
    -> counter int(2),
    -> amount float(10,2),
    -> desc varchar(30),
    -> Primary key(ac_type,ac_no,tdate)); 
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'desc varchar(30),
Primary key(ac_type,ac_no,tdate))' at line 7
MariaDB [csd2204s18]> create table TRANS(
    -> ac_type varchar(3),
    -> ac_no int(4),
    -> tdate date,
    -> counter int(2),
    -> amount float(10,2),
    -> desp varchar(30),
    -> constraint PK_TRANS Primary key(ac_type,ac_no,tdate)); 
Query OK, 0 rows affected (0.19 sec)

MariaDB [csd2204s18]> 
MariaDB [csd2204s18]> create table DEPT(
    -> dno int(3) primary key,
    -> name varchar(15),
    -> loc varchar(20));
Query OK, 0 rows affected (0.18 sec)

MariaDB [csd2204s18]> 
MariaDB [csd2204s18]> create table EMP(
    -> empno int(5) primary key,
    -> name varchar(50),
    -> jdate date,
    -> dept int(3),
    -> desig varchar(20),
    -> basic float(10,2),
    -> da float(10,2),
    -> hra float(10,2),
    -> pf float(10,2),
    -> it float(10,2));
Query OK, 0 rows affected (0.23 sec)

MariaDB [csd2204s18]> insert into AC_MAST (ac_type, ac_no, cust_no, bal, od_limit) values ('saving', 5659, 45671, '228117.90', '1057.02');
Query OK, 1 row affected, 1 warning (0.06 sec)

MariaDB [csd2204s18]> insert into AC_MAST (ac_type, ac_no, cust_no, bal, od_limit) values ('saving', 5660, 45672, '112216.03', '4356.76');
Query OK, 1 row affected, 1 warning (0.08 sec)

MariaDB [csd2204s18]> insert into AC_MAST (ac_type, ac_no, cust_no, bal, od_limit) values ('chequing', 5661, 45673, '43884.74', '792.98');
Query OK, 1 row affected, 1 warning (0.09 sec)

MariaDB [csd2204s18]> insert into AC_MAST (ac_type, ac_no, cust_no, bal, od_limit) values ('saving', 5662, 45674, '68132.00', '2762.28');
Query OK, 1 row affected, 1 warning (0.05 sec)

MariaDB [csd2204s18]> insert into AC_MAST (ac_type, ac_no, cust_no, bal, od_limit) values ('saving', 5663, 45675, '702.60', '3957.15');
Query OK, 1 row affected, 1 warning (0.06 sec)

MariaDB [csd2204s18]> insert into AC_MAST (ac_type, ac_no, cust_no, bal, od_limit) values ('chequing', 5664, 45676, '22325.29', '579.89');
Query OK, 1 row affected, 1 warning (0.03 sec)

MariaDB [csd2204s18]> insert into AC_MAST (ac_type, ac_no, cust_no, bal, od_limit) values ('chequing', 5665, 45677, '199731.49', '3538.76');
Query OK, 1 row affected, 1 warning (0.05 sec)

MariaDB [csd2204s18]> insert into AC_MAST (ac_type, ac_no, cust_no, bal, od_limit) values ('saving', 5666, 45678, '98338.53', '516.20');
Query OK, 1 row affected, 1 warning (0.03 sec)

MariaDB [csd2204s18]> insert into AC_MAST (ac_type, ac_no, cust_no, bal, od_limit) values ('saving', 5667, 45679, '6665.71', '168.12');
Query OK, 1 row affected, 1 warning (0.06 sec)

MariaDB [csd2204s18]> insert into AC_MAST (ac_type, ac_no, cust_no, bal, od_limit) values ('chequing', 5668, 45680, '143590.73', '4571.06');
Query OK, 1 row affected, 1 warning (0.06 sec)

MariaDB [csd2204s18]> insert into AC_MAST (ac_type, ac_no, cust_no, bal, od_limit) values ('saving', 5669, 45681, '119967.83', '2962.35');
Query OK, 1 row affected, 1 warning (0.05 sec)

MariaDB [csd2204s18]> insert into AC_MAST (ac_type, ac_no, cust_no, bal, od_limit) values ('chequing', 5670, 45682, '228959.40', '4483.31');
Query OK, 1 row affected, 1 warning (0.05 sec)

MariaDB [csd2204s18]> insert into AC_MAST (ac_type, ac_no, cust_no, bal, od_limit) values ('chequing', 5671, 45683, '43606.12', '2446.87');
Query OK, 1 row affected, 1 warning (0.05 sec)

MariaDB [csd2204s18]> insert into AC_MAST (ac_type, ac_no, cust_no, bal, od_limit) values ('chequing', 5672, 45684, '72306.01', '4174.24');
Query OK, 1 row affected, 1 warning (0.03 sec)

MariaDB [csd2204s18]> insert into AC_MAST (ac_type, ac_no, cust_no, bal, od_limit) values ('saving', 5673, 45685, '55744.43', '3183.69');
Query OK, 1 row affected, 1 warning (0.05 sec)

MariaDB [csd2204s18]> insert into AC_MAST (ac_type, ac_no, cust_no, bal, od_limit) values ('chequing', 5674, 45686, '139313.30', '501.29');
Query OK, 1 row affected, 1 warning (0.03 sec)

MariaDB [csd2204s18]> insert into AC_MAST (ac_type, ac_no, cust_no, bal, od_limit) values ('chequing', 5675, 45687, '219167.15', '2335.48');
Query OK, 1 row affected, 1 warning (0.05 sec)

MariaDB [csd2204s18]> insert into AC_MAST (ac_type, ac_no, cust_no, bal, od_limit) values ('chequing', 5676, 45688, '30127.11', '1574.84');
Query OK, 1 row affected, 1 warning (0.08 sec)

MariaDB [csd2204s18]> insert into AC_MAST (ac_type, ac_no, cust_no, bal, od_limit) values ('saving', 5677, 45689, '165959.95', '917.14');
Query OK, 1 row affected, 1 warning (0.05 sec)

MariaDB [csd2204s18]> insert into AC_MAST (ac_type, ac_no, cust_no, bal, od_limit) values ('saving', 5678, 45690, '31124.07', '3861.66');
Query OK, 1 row affected, 1 warning (0.05 sec)

MariaDB [csd2204s18]> insert into AC_MAST (ac_type, ac_no, cust_no, bal, od_limit) values ('saving', 5679, 45691, '203925.52', '1656.92');
Query OK, 1 row affected, 1 warning (0.05 sec)

MariaDB [csd2204s18]> insert into AC_MAST (ac_type, ac_no, cust_no, bal, od_limit) values ('chequing', 5680, 45692, '49560.88', '1823.52');
Query OK, 1 row affected, 1 warning (0.03 sec)

MariaDB [csd2204s18]> insert into AC_MAST (ac_type, ac_no, cust_no, bal, od_limit) values ('chequing', 5681, 45693, '202144.62', '1667.10');
Query OK, 1 row affected, 1 warning (0.05 sec)

MariaDB [csd2204s18]> insert into AC_MAST (ac_type, ac_no, cust_no, bal, od_limit) values ('chequing', 5682, 45694, '104430.74', '2775.14');
Query OK, 1 row affected, 1 warning (0.03 sec)

MariaDB [csd2204s18]> insert into AC_MAST (ac_type, ac_no, cust_no, bal, od_limit) values ('chequing', 5683, 45695, '57543.94', '353.50');
Query OK, 1 row affected, 1 warning (0.05 sec)

MariaDB [csd2204s18]> insert into AC_MAST (ac_type, ac_no, cust_no, bal, od_limit) values ('saving', 5684, 45696, '68643.89', '1081.08');
Query OK, 1 row affected, 1 warning (0.08 sec)

MariaDB [csd2204s18]> insert into AC_MAST (ac_type, ac_no, cust_no, bal, od_limit) values ('chequing', 5685, 45697, '224668.81', '2619.50');
Query OK, 1 row affected, 1 warning (0.08 sec)

MariaDB [csd2204s18]> insert into AC_MAST (ac_type, ac_no, cust_no, bal, od_limit) values ('chequing', 5686, 45698, '220244.71', '4798.46');
Query OK, 1 row affected, 1 warning (0.05 sec)

MariaDB [csd2204s18]> insert into AC_MAST (ac_type, ac_no, cust_no, bal, od_limit) values ('saving', 5687, 45699, '85182.01', '1245.93');
Query OK, 1 row affected, 1 warning (0.05 sec)

MariaDB [csd2204s18]> insert into AC_MAST (ac_type, ac_no, cust_no, bal, od_limit) values ('chequing', 5688, 45700, '198640.22', '97.91');
Query OK, 1 row affected, 1 warning (0.05 sec)

MariaDB [csd2204s18]> insert into AC_MAST (ac_type, ac_no, cust_no, bal, od_limit) values ('saving', 5689, 45701, '181648.74', '3119.72');
Query OK, 1 row affected, 1 warning (0.06 sec)

MariaDB [csd2204s18]> insert into AC_MAST (ac_type, ac_no, cust_no, bal, od_limit) values ('chequing', 5690, 45702, '212095.42', '4644.23');
Query OK, 1 row affected, 1 warning (0.03 sec)

MariaDB [csd2204s18]> insert into AC_MAST (ac_type, ac_no, cust_no, bal, od_limit) values ('chequing', 5691, 45703, '162259.98', '1912.89');
Query OK, 1 row affected, 1 warning (0.06 sec)

MariaDB [csd2204s18]> insert into AC_MAST (ac_type, ac_no, cust_no, bal, od_limit) values ('chequing', 5692, 45704, '153640.04', '1157.20');
Query OK, 1 row affected, 1 warning (0.05 sec)

MariaDB [csd2204s18]> insert into AC_MAST (ac_type, ac_no, cust_no, bal, od_limit) values ('chequing', 5693, 45705, '235435.65', '3017.17');
Query OK, 1 row affected, 1 warning (0.08 sec)

MariaDB [csd2204s18]> insert into AC_MAST (ac_type, ac_no, cust_no, bal, od_limit) values ('saving', 5694, 45706, '108464.69', '315.53');
Query OK, 1 row affected, 1 warning (0.03 sec)

MariaDB [csd2204s18]> insert into AC_MAST (ac_type, ac_no, cust_no, bal, od_limit) values ('saving', 5695, 45707, '84261.74', '4830.45');
Query OK, 1 row affected, 1 warning (0.05 sec)

MariaDB [csd2204s18]> insert into AC_MAST (ac_type, ac_no, cust_no, bal, od_limit) values ('saving', 5696, 45708, '204415.78', '8.91');
Query OK, 1 row affected, 1 warning (0.01 sec)

MariaDB [csd2204s18]> insert into AC_MAST (ac_type, ac_no, cust_no, bal, od_limit) values ('saving', 5697, 45709, '245834.01', '4908.23');
Query OK, 1 row affected, 1 warning (0.03 sec)

MariaDB [csd2204s18]> insert into AC_MAST (ac_type, ac_no, cust_no, bal, od_limit) values ('saving', 5698, 45710, '218934.29', '1594.35');
Query OK, 1 row affected, 1 warning (0.05 sec)

MariaDB [csd2204s18]> insert into AC_MAST (ac_type, ac_no, cust_no, bal, od_limit) values ('saving', 5699, 45711, '37093.17', '2005.15');
Query OK, 1 row affected, 1 warning (0.05 sec)

MariaDB [csd2204s18]> insert into AC_MAST (ac_type, ac_no, cust_no, bal, od_limit) values ('saving', 5700, 45712, '166171.07', '4868.58');
Query OK, 1 row affected, 1 warning (0.05 sec)

MariaDB [csd2204s18]> insert into AC_MAST (ac_type, ac_no, cust_no, bal, od_limit) values ('saving', 5701, 45713, '209288.48', '2945.92');
Query OK, 1 row affected, 1 warning (0.05 sec)

MariaDB [csd2204s18]> insert into AC_MAST (ac_type, ac_no, cust_no, bal, od_limit) values ('chequing', 5702, 45714, '194823.30', '723.06');
Query OK, 1 row affected, 1 warning (0.03 sec)

MariaDB [csd2204s18]> insert into AC_MAST (ac_type, ac_no, cust_no, bal, od_limit) values ('saving', 5703, 45715, '183315.69', '628.54');
Query OK, 1 row affected, 1 warning (0.05 sec)

MariaDB [csd2204s18]> insert into AC_MAST (ac_type, ac_no, cust_no, bal, od_limit) values ('saving', 5704, 45716, '108603.73', '1346.96');
Query OK, 1 row affected, 1 warning (0.05 sec)

MariaDB [csd2204s18]> insert into AC_MAST (ac_type, ac_no, cust_no, bal, od_limit) values ('chequing', 5705, 45717, '38263.09', '4765.89');
Query OK, 1 row affected, 1 warning (0.05 sec)

MariaDB [csd2204s18]> insert into AC_MAST (ac_type, ac_no, cust_no, bal, od_limit) values ('saving', 5706, 45718, '22108.09', '2318.12');
Query OK, 1 row affected, 1 warning (0.05 sec)

MariaDB [csd2204s18]> insert into AC_MAST (ac_type, ac_no, cust_no, bal, od_limit) values ('chequing', 5707, 45719, '234482.99', '2394.40');
Query OK, 1 row affected, 1 warning (0.06 sec)

MariaDB [csd2204s18]> insert into AC_MAST (ac_type, ac_no, cust_no, bal, od_limit) values ('saving', 5708, 45720, '26996.95', '2388.78');
Query OK, 1 row affected, 1 warning (0.03 sec)

MariaDB [csd2204s18]> select *from AC_MAST
    -> ;
+---------+-------+---------+-----------+----------+
| ac_type | ac_no | cust_no | bal       | od_limit |
+---------+-------+---------+-----------+----------+
| che     |  5661 |   45673 |  43884.74 |   792.98 |
| che     |  5664 |   45676 |  22325.29 |   579.89 |
| che     |  5665 |   45677 | 199731.48 |  3538.76 |
| che     |  5668 |   45680 | 143590.73 |  4571.06 |
| che     |  5670 |   45682 | 228959.41 |  4483.31 |
| che     |  5671 |   45683 |  43606.12 |  2446.87 |
| che     |  5672 |   45684 |  72306.01 |  4174.24 |
| che     |  5674 |   45686 | 139313.30 |   501.29 |
| che     |  5675 |   45687 | 219167.16 |  2335.48 |
| che     |  5676 |   45688 |  30127.11 |  1574.84 |
| che     |  5680 |   45692 |  49560.88 |  1823.52 |
| che     |  5681 |   45693 | 202144.62 |  1667.10 |
| che     |  5682 |   45694 | 104430.74 |  2775.14 |
| che     |  5683 |   45695 |  57543.94 |   353.50 |
| che     |  5685 |   45697 | 224668.81 |  2619.50 |
| che     |  5686 |   45698 | 220244.70 |  4798.46 |
| che     |  5688 |   45700 | 198640.22 |    97.91 |
| che     |  5690 |   45702 | 212095.42 |  4644.23 |
| che     |  5691 |   45703 | 162259.98 |  1912.89 |
| che     |  5692 |   45704 | 153640.05 |  1157.20 |
| che     |  5693 |   45705 | 235435.66 |  3017.17 |
| che     |  5702 |   45714 | 194823.30 |   723.06 |
| che     |  5705 |   45717 |  38263.09 |  4765.89 |
| che     |  5707 |   45719 | 234482.98 |  2394.40 |
| sav     |  5659 |   45671 | 228117.91 |  1057.02 |
| sav     |  5660 |   45672 | 112216.03 |  4356.76 |
| sav     |  5662 |   45674 |  68132.00 |  2762.28 |
| sav     |  5663 |   45675 |    702.60 |  3957.15 |
| sav     |  5666 |   45678 |  98338.53 |   516.20 |
| sav     |  5667 |   45679 |   6665.71 |   168.12 |
| sav     |  5669 |   45681 | 119967.83 |  2962.35 |
| sav     |  5673 |   45685 |  55744.43 |  3183.69 |
| sav     |  5677 |   45689 | 165959.95 |   917.14 |
| sav     |  5678 |   45690 |  31124.07 |  3861.66 |
| sav     |  5679 |   45691 | 203925.52 |  1656.92 |
| sav     |  5684 |   45696 |  68643.89 |  1081.08 |
| sav     |  5687 |   45699 |  85182.01 |  1245.93 |
| sav     |  5689 |   45701 | 181648.73 |  3119.72 |
| sav     |  5694 |   45706 | 108464.69 |   315.53 |
| sav     |  5695 |   45707 |  84261.74 |  4830.45 |
| sav     |  5696 |   45708 | 204415.78 |     8.91 |
| sav     |  5697 |   45709 | 245834.02 |  4908.23 |
| sav     |  5698 |   45710 | 218934.30 |  1594.35 |
| sav     |  5699 |   45711 |  37093.17 |  2005.15 |
| sav     |  5700 |   45712 | 166171.06 |  4868.58 |
| sav     |  5701 |   45713 | 209288.48 |  2945.92 |
| sav     |  5703 |   45715 | 183315.69 |   628.54 |
| sav     |  5704 |   45716 | 108603.73 |  1346.96 |
| sav     |  5706 |   45718 |  22108.09 |  2318.12 |
| sav     |  5708 |   45720 |  26996.95 |  2388.78 |
+---------+-------+---------+-----------+----------+
50 rows in set (0.00 sec)

MariaDB [csd2204s18]> insert into CUST_MAST (cust_no, name, add1, add2, add3, city, state) values (45671, 'VAcnus', '92', 'Shelley', 'Place', 'Albany', 'New York');
Query OK, 1 row affected (0.05 sec)

MariaDB [csd2204s18]> insert into CUST_MAST (cust_no, name, add1, add2, add3, city, state) values (45672, 'AA-', '32', 'Esch', 'Street', 'Evansville', 'Indiana');
Query OK, 1 row affected (0.03 sec)

MariaDB [csd2204s18]> insert into CUST_MAST (cust_no, name, add1, add2, add3, city, state) values (45673, 'BAcrengA"re', '24266', 'Arapahoe', 'Drive', 'San Antonio', 'Texas');
Query OK, 1 row affected (0.08 sec)

MariaDB [csd2204s18]> insert into CUST_MAST (cust_no, name, add1, add2, add3, city, state) values (45674, 'StAcvina', '930', 'Graedel', 'Circle', 'Spokane', 'Washington');
Query OK, 1 row affected (0.03 sec)

MariaDB [csd2204s18]> insert into CUST_MAST (cust_no, name, add1, add2, add3, city, state) values (45675, 'AgnA"s', '1', 'Cherokee', 'Drive', 'Carson City', 'Nevada');
Query OK, 1 row affected (0.03 sec)

MariaDB [csd2204s18]> insert into CUST_MAST (cust_no, name, add1, add2, add3, city, state) values (45676, 'LAca', '92948', 'Pennsylvania', 'Avenue', 'Pittsburgh', 'Pennsylvania');
Query OK, 1 row affected (0.05 sec)

MariaDB [csd2204s18]> insert into CUST_MAST (cust_no, name, add1, add2, add3, city, state) values (45677, 'KAcvina', '54', 'Oneill', 'Plaza', 'Terre Haute', 'Indiana');
Query OK, 1 row affected (0.03 sec)

MariaDB [csd2204s18]> insert into CUST_MAST (cust_no, name, add1, add2, add3, city, state) values (45678, 'OcAcane', '49', 'Harper', 'Street', 'San Diego', 'California');
Query OK, 1 row affected (0.05 sec)

MariaDB [csd2204s18]> insert into CUST_MAST (cust_no, name, add1, add2, add3, city, state) values (45679, 'GAsta', '7325', 'Mayer', 'Alley', 'Tampa', 'Florida');
Query OK, 1 row affected (0.06 sec)

MariaDB [csd2204s18]> insert into CUST_MAST (cust_no, name, add1, add2, add3, city, state) values (45680, 'ClAclia', '3', 'Loftsgordon', 'Lane', 'Toledo', 'Ohio');
Query OK, 1 row affected (0.06 sec)

MariaDB [csd2204s18]> insert into CUST_MAST (cust_no, name, add1, add2, add3, city, state) values (45681, 'EsbjArn', '43', 'Carey', 'Avenue', 'Chicago', 'Illinois');
Query OK, 1 row affected (0.05 sec)

MariaDB [csd2204s18]> insert into CUST_MAST (cust_no, name, add1, add2, add3, city, state) values (45682, 'ChloAc', '77494', 'Gulseth', 'Plaza', 'Indianapolis', 'Indiana');
Query OK, 1 row affected (0.05 sec)

MariaDB [csd2204s18]> insert into CUST_MAST (cust_no, name, add1, add2, add3, city, state) values (45683, 'Marie-A"ve', '2366', 'Springview', 'Alley', 'Dallas', 'Texas');
Query OK, 1 row affected (0.02 sec)

MariaDB [csd2204s18]> insert into CUST_MAST (cust_no, name, add1, add2, add3, city, state) values (45684, 'Marie-thAcrA"se', '30', 'Barby', 'Alley', 'Arlington', 'Texas');
Query OK, 1 row affected (0.05 sec)

MariaDB [csd2204s18]> insert into CUST_MAST (cust_no, name, add1, add2, add3, city, state) values (45685, 'SAclA"ne', '140', 'Ruskin', 'Trail', 'San Francisco', 'California');
Query OK, 1 row affected (0.05 sec)

MariaDB [csd2204s18]> insert into CUST_MAST (cust_no, name, add1, add2, add3, city, state) values (45686, 'MAcdiamass', '0432', 'Crescent Oaks', 'Road', 'Lake Worth', 'Florida');
Query OK, 1 row affected (0.05 sec)

MariaDB [csd2204s18]> insert into CUST_MAST (cust_no, name, add1, add2, add3, city, state) values (45687, 'MarlA"ne', '70', 'Eastlawn', 'Lane', 'San Antonio', 'Texas');
Query OK, 1 row affected (0.05 sec)

MariaDB [csd2204s18]> insert into CUST_MAST (cust_no, name, add1, add2, add3, city, state) values (45688, 'GAcrald', '99', 'Waubesa', 'Terrace', 'Jackson', 'Mississippi');
Query OK, 1 row affected (0.05 sec)

MariaDB [csd2204s18]> insert into CUST_MAST (cust_no, name, add1, add2, add3, city, state) values (45689, 'DafnAce', '35', 'Montana', 'Junction', 'Houston', 'Texas');
Query OK, 1 row affected (0.03 sec)

MariaDB [csd2204s18]> insert into CUST_MAST (cust_no, name, add1, add2, add3, city, state) values (45690, 'RenAce', '55547', 'Forest', 'Way', 'Atlanta', 'Georgia');
Query OK, 1 row affected (0.05 sec)

MariaDB [csd2204s18]> insert into CUST_MAST (cust_no, name, add1, add2, add3, city, state) values (45691, 'AnnotAce', '36829', 'Heffernan', 'Trail', 'Long Beach', 'California');
Query OK, 1 row affected (0.05 sec)

MariaDB [csd2204s18]> insert into CUST_MAST (cust_no, name, add1, add2, add3, city, state) values (45692, 'A-sten', '4', 'Sommers', 'Circle', 'Shreveport', 'Louisiana');
Query OK, 1 row affected (0.06 sec)

MariaDB [csd2204s18]> insert into CUST_MAST (cust_no, name, add1, add2, add3, city, state) values (45693, 'SimplifiAcs', '108', '8th', 'Court', 'New York City', 'New York');
Query OK, 1 row affected (0.06 sec)

MariaDB [csd2204s18]> insert into CUST_MAST (cust_no, name, add1, add2, add3, city, state) values (45694, 'CloAc', '0091', 'Ohio', 'Hill', 'Charlotte', 'North Carolina');
Query OK, 1 row affected (0.05 sec)

MariaDB [csd2204s18]> insert into CUST_MAST (cust_no, name, add1, add2, add3, city, state) values (45695, 'MilAcna', '15', 'Rockefeller', 'Terrace', 'Boston', 'Massachusetts');
Query OK, 1 row affected (0.05 sec)

MariaDB [csd2204s18]> insert into CUST_MAST (cust_no, name, add1, add2, add3, city, state) values (45696, 'MaA_ly', '887', 'Marcy', 'Court', 'Northridge', 'California');
Query OK, 1 row affected (0.03 sec)

MariaDB [csd2204s18]> insert into CUST_MAST (cust_no, name, add1, add2, add3, city, state) values (45697, 'AngAclique', '57', 'Northfield', 'Road', 'Stockton', 'California');
Query OK, 1 row affected (0.03 sec)

MariaDB [csd2204s18]> insert into CUST_MAST (cust_no, name, add1, add2, add3, city, state) values (45698, 'AdAclie', '5', 'Claremont', 'Way', 'Syracuse', 'New York');
Query OK, 1 row affected (0.06 sec)

MariaDB [csd2204s18]> insert into CUST_MAST (cust_no, name, add1, add2, add3, city, state) values (45699, 'LAca', '3', 'Russell', 'Point', 'San Jose', 'California');
Query OK, 1 row affected (0.03 sec)

MariaDB [csd2204s18]> insert into CUST_MAST (cust_no, name, add1, add2, add3, city, state) values (45700, 'NAchAcmie', '197', 'Gerald', 'Parkway', 'San Diego', 'California');
Query OK, 1 row affected (0.05 sec)

MariaDB [csd2204s18]> insert into CUST_MAST (cust_no, name, add1, add2, add3, city, state) values (45701, 'AdAclie', '1', '8th', 'Point', 'Ridgely', 'Maryland');
Query OK, 1 row affected (0.03 sec)

MariaDB [csd2204s18]> insert into CUST_MAST (cust_no, name, add1, add2, add3, city, state) values (45702, 'CrAcAcz', '75', 'Namekagon', 'Lane', 'Trenton', 'New Jersey');
Query OK, 1 row affected (0.05 sec)

MariaDB [csd2204s18]> insert into CUST_MAST (cust_no, name, add1, add2, add3, city, state) values (45703, 'CamAclia', '514', 'Wayridge', 'Point', 'Hollywood', 'Florida');
Query OK, 1 row affected (0.01 sec)

MariaDB [csd2204s18]> insert into CUST_MAST (cust_no, name, add1, add2, add3, city, state) values (45704, 'MAclanie', '25385', 'Prairie Rose', 'Junction', 'Hialeah', 'Florida');
Query OK, 1 row affected (0.01 sec)

MariaDB [csd2204s18]> insert into CUST_MAST (cust_no, name, add1, add2, add3, city, state) values (45705, 'DA ', '9', 'School', 'Trail', 'Stockton', 'California');
Query OK, 1 row affected (0.05 sec)

MariaDB [csd2204s18]> insert into CUST_MAST (cust_no, name, add1, add2, add3, city, state) values (45706, 'LiA"', '109', 'Meadow Vale', 'Drive', 'Boston', 'Massachusetts');
Query OK, 1 row affected (0.05 sec)

MariaDB [csd2204s18]> insert into CUST_MAST (cust_no, name, add1, add2, add3, city, state) values (45707, 'OcAcanne', '0078', 'Northridge', 'Trail', 'Columbia', 'South Carolina');
Query OK, 1 row affected (0.05 sec)

MariaDB [csd2204s18]> insert into CUST_MAST (cust_no, name, add1, add2, add3, city, state) values (45708, 'JosAce', '39526', 'Gina', 'Drive', 'Newport News', 'Virginia');
Query OK, 1 row affected (0.05 sec)

MariaDB [csd2204s18]> insert into CUST_MAST (cust_no, name, add1, add2, add3, city, state) values (45709, 'LAcana', '85', 'Delaware', 'Parkway', 'North Las Vegas', 'Nevada');
Query OK, 1 row affected (0.05 sec)

MariaDB [csd2204s18]> insert into CUST_MAST (cust_no, name, add1, add2, add3, city, state) values (45710, 'MarylA"ne', '33', 'Dayton', 'Terrace', 'Washington', 'District of Columbia');
Query OK, 1 row affected (0.05 sec)

MariaDB [csd2204s18]> insert into CUST_MAST (cust_no, name, add1, add2, add3, city, state) values (45711, 'ClAcmentine', '087', 'Starling', 'Point', 'Raleigh', 'North Carolina');
Query OK, 1 row affected (0.06 sec)

MariaDB [csd2204s18]> insert into CUST_MAST (cust_no, name, add1, add2, add3, city, state) values (45712, 'BAcrAcnice', '55', 'Sunbrook', 'Crossing', 'Houston', 'Texas');
Query OK, 1 row affected (0.05 sec)

MariaDB [csd2204s18]> insert into CUST_MAST (cust_no, name, add1, add2, add3, city, state) values (45713, 'ClAcmence', '71', 'Parkside', 'Place', 'Kansas City', 'Kansas');
Query OK, 1 row affected (0.03 sec)

MariaDB [csd2204s18]> insert into CUST_MAST (cust_no, name, add1, add2, add3, city, state) values (45714, 'AdAclie', '603', 'Golf Course', 'Street', 'San Jose', 'California');
Query OK, 1 row affected (0.06 sec)

MariaDB [csd2204s18]> insert into CUST_MAST (cust_no, name, add1, add2, add3, city, state) values (45715, 'AnaA®l', '87104', 'Fieldstone', 'Terrace', 'Dallas', 'Texas');
Query OK, 1 row affected (0.03 sec)

MariaDB [csd2204s18]> insert into CUST_MAST (cust_no, name, add1, add2, add3, city, state) values (45716, 'ClAcmence', '153', 'Buena Vista', 'Junction', 'Miami', 'Florida');
Query OK, 1 row affected (0.05 sec)

MariaDB [csd2204s18]> insert into CUST_MAST (cust_no, name, add1, add2, add3, city, state) values (45717, 'PAl', '08', 'Clemons', 'Drive', 'Tacoma', 'Washington');
Query OK, 1 row affected (0.05 sec)

MariaDB [csd2204s18]> insert into CUST_MAST (cust_no, name, add1, add2, add3, city, state) values (45718, 'DaniA"le', '7', 'Sheridan', 'Terrace', 'Dayton', 'Ohio');
Query OK, 1 row affected (0.05 sec)

MariaDB [csd2204s18]> insert into CUST_MAST (cust_no, name, add1, add2, add3, city, state) values (45719, 'LAcone', '513', 'Barby', 'Parkway', 'Washington', 'District of Columbia');
Query OK, 1 row affected (0.06 sec)

MariaDB [csd2204s18]> insert into CUST_MAST (cust_no, name, add1, add2, add3, city, state) values (45720, 'ErwAci', '8', 'Moland', 'Park', 'Decatur', 'Georgia');
Query OK, 1 row affected (0.05 sec)

MariaDB [csd2204s18]> select *from CUST_MAST;
+---------+-----------------+-------+---------------+----------+-----------------+----------------------+
| cust_no | name            | add1  | add2          | add3     | city            | state                |
+---------+-----------------+-------+---------------+----------+-----------------+----------------------+
|   45671 | VAcnus          | 92    | Shelley       | Place    | Albany          | New York             |
|   45672 | AA-             | 32    | Esch          | Street   | Evansville      | Indiana              |
|   45673 | BAcrengA"re     | 24266 | Arapahoe      | Drive    | San Antonio     | Texas                |
|   45674 | StAcvina        | 930   | Graedel       | Circle   | Spokane         | Washington           |
|   45675 | AgnA"s          | 1     | Cherokee      | Drive    | Carson City     | Nevada               |
|   45676 | LAca            | 92948 | Pennsylvania  | Avenue   | Pittsburgh      | Pennsylvania         |
|   45677 | KAcvina         | 54    | Oneill        | Plaza    | Terre Haute     | Indiana              |
|   45678 | OcAcane         | 49    | Harper        | Street   | San Diego       | California           |
|   45679 | GAsta          | 7325  | Mayer         | Alley    | Tampa           | Florida              |
|   45680 | ClAclia         | 3     | Loftsgordon   | Lane     | Toledo          | Ohio                 |
|   45681 | EsbjArn        | 43    | Carey         | Avenue   | Chicago         | Illinois             |
|   45682 | ChloAc          | 77494 | Gulseth       | Plaza    | Indianapolis    | Indiana              |
|   45683 | Marie-A"ve      | 2366  | Springview    | Alley    | Dallas          | Texas                |
|   45684 | Marie-thAcrA"se | 30    | Barby         | Alley    | Arlington       | Texas                |
|   45685 | SAclA"ne        | 140   | Ruskin        | Trail    | San Francisco   | California           |
|   45686 | MAcdiamass      | 0432  | Crescent Oaks | Road     | Lake Worth      | Florida              |
|   45687 | MarlA"ne        | 70    | Eastlawn      | Lane     | San Antonio     | Texas                |
|   45688 | GAcrald         | 99    | Waubesa       | Terrace  | Jackson         | Mississippi          |
|   45689 | DafnAce         | 35    | Montana       | Junction | Houston         | Texas                |
|   45690 | RenAce          | 55547 | Forest        | Way      | Atlanta         | Georgia              |
|   45691 | AnnotAce        | 36829 | Heffernan     | Trail    | Long Beach      | California           |
|   45692 | A-sten          | 4     | Sommers       | Circle   | Shreveport      | Louisiana            |
|   45693 | SimplifiAcs     | 108   | 8th           | Court    | New York City   | New York             |
|   45694 | CloAc           | 0091  | Ohio          | Hill     | Charlotte       | North Carolina       |
|   45695 | MilAcna         | 15    | Rockefeller   | Terrace  | Boston          | Massachusetts        |
|   45696 | MaA_ly          | 887   | Marcy         | Court    | Northridge      | California           |
|   45697 | AngAclique      | 57    | Northfield    | Road     | Stockton        | California           |
|   45698 | AdAclie         | 5     | Claremont     | Way      | Syracuse        | New York             |
|   45699 | LAca            | 3     | Russell       | Point    | San Jose        | California           |
|   45700 | NAchAcmie       | 197   | Gerald        | Parkway  | San Diego       | California           |
|   45701 | AdAclie         | 1     | 8th           | Point    | Ridgely         | Maryland             |
|   45702 | CrAcAcz         | 75    | Namekagon     | Lane     | Trenton         | New Jersey           |
|   45703 | CamAclia        | 514   | Wayridge      | Point    | Hollywood       | Florida              |
|   45704 | MAclanie        | 25385 | Prairie Rose  | Junction | Hialeah         | Florida              |
|   45705 | DA              | 9     | School        | Trail    | Stockton        | California           |
|   45706 | LiA"            | 109   | Meadow Vale   | Drive    | Boston          | Massachusetts        |
|   45707 | OcAcanne        | 0078  | Northridge    | Trail    | Columbia        | South Carolina       |
|   45708 | JosAce          | 39526 | Gina          | Drive    | Newport News    | Virginia             |
|   45709 | LAcana          | 85    | Delaware      | Parkway  | North Las Vegas | Nevada               |
|   45710 | MarylA"ne       | 33    | Dayton        | Terrace  | Washington      | District of Columbia |
|   45711 | ClAcmentine     | 087   | Starling      | Point    | Raleigh         | North Carolina       |
|   45712 | BAcrAcnice      | 55    | Sunbrook      | Crossing | Houston         | Texas                |
|   45713 | ClAcmence       | 71    | Parkside      | Place    | Kansas City     | Kansas               |
|   45714 | AdAclie         | 603   | Golf Course   | Street   | San Jose        | California           |
|   45715 | AnaA®l          | 87104 | Fieldstone    | Terrace  | Dallas          | Texas                |
|   45716 | ClAcmence       | 153   | Buena Vista   | Junction | Miami           | Florida              |
|   45717 | PAl            | 08    | Clemons       | Drive    | Tacoma          | Washington           |
|   45718 | DaniA"le        | 7     | Sheridan      | Terrace  | Dayton          | Ohio                 |
|   45719 | LAcone          | 513   | Barby         | Parkway  | Washington      | District of Columbia |
|   45720 | ErwAci          | 8     | Moland        | Park     | Decatur         | Georgia              |
+---------+-----------------+-------+---------------+----------+-----------------+----------------------+
50 rows in set (0.00 sec)

MariaDB [csd2204s18]> Exit;
