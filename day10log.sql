MariaDB [(none)]> select *from employees where last_name like "Bell";
ERROR 1046 (3D000): No database selected
MariaDB [(none)]> use csd2204s8;
ERROR 1049 (42000): Unknown database 'csd2204s8'
MariaDB [(none)]> use csd2204s18;
Database changed
MariaDB [csd2204s18]> select *from employees where last_name like "Bell";
+-------------+------------+-----------+-------+--------------+------------+----------+---------+----------------+------------+---------------+
| EMPLOYEE_ID | FIRST_NAME | LAST_NAME | EMAIL | PHONE_NUMBER | HIRE_DATE  | JOB_ID   | SALARY  | COMMISSION_PCT | MANAGER_ID | DEPARTMENT_ID |
+-------------+------------+-----------+-------+--------------+------------+----------+---------+----------------+------------+---------------+
|         192 | Sarah      | Bell      | SBELL | 650.501.1876 | 1987-09-17 | SH_CLERK | 4000.00 |           0.00 |        123 |            50 |
+-------------+------------+-----------+-------+--------------+------------+----------+---------+----------------+------------+---------------+
1 row in set (0.03 sec)

MariaDB [csd2204s18]> select first_name, last_name, salary from employees where salary>(select salary from employees where las_name like "bell");
ERROR 1054 (42S22): Unknown column 'las_name' in 'where clause'
MariaDB [csd2204s18]> select first_name, last_name, salary from employees where salary>(select salary from employees where last_name like "bell");
+-------------+------------+----------+
| first_name  | last_name  | salary   |
+-------------+------------+----------+
| Steven      | King       | 24000.00 |
| Neena       | Kochhar    | 17000.00 |
| Lex         | De Haan    | 17000.00 |
| Alexander   | Hunold     |  9000.00 |
| Bruce       | Ernst      |  6000.00 |
| David       | Austin     |  4800.00 |
| Valli       | Pataballa  |  4800.00 |
| Diana       | Lorentz    |  4200.00 |
| Nancy       | Greenberg  | 12000.00 |
| Daniel      | Faviet     |  9000.00 |
| John        | Chen       |  8200.00 |
| Ismael      | Sciarra    |  7700.00 |
| Jose Manuel | Urman      |  7800.00 |
| Luis        | Popp       |  6900.00 |
| Den         | Raphaely   | 11000.00 |
| Matthew     | Weiss      |  8000.00 |
| Adam        | Fripp      |  8200.00 |
| Payam       | Kaufling   |  7900.00 |
| Shanta      | Vollman    |  6500.00 |
| Kevin       | Mourgos    |  5800.00 |
| John        | Russell    | 14000.00 |
| Karen       | Partners   | 13500.00 |
| Alberto     | Errazuriz  | 12000.00 |
| Gerald      | Cambrault  | 11000.00 |
| Eleni       | Zlotkey    | 10500.00 |
| Peter       | Tucker     | 10000.00 |
| David       | Bernstein  |  9500.00 |
| Peter       | Hall       |  9000.00 |
| Christopher | Olsen      |  8000.00 |
| Nanette     | Cambrault  |  7500.00 |
| Oliver      | Tuvault    |  7000.00 |
| Janette     | King       | 10000.00 |
| Patrick     | Sully      |  9500.00 |
| Allan       | McEwen     |  9000.00 |
| Lindsey     | Smith      |  8000.00 |
| Louise      | Doran      |  7500.00 |
| Sarath      | Sewall     |  7000.00 |
| Clara       | Vishney    | 10500.00 |
| Danielle    | Greene     |  9500.00 |
| Mattea      | Marvins    |  7200.00 |
| David       | Lee        |  6800.00 |
| Sundar      | Ande       |  6400.00 |
| Amit        | Banda      |  6200.00 |
| Lisa        | Ozer       | 11500.00 |
| Harrison    | Bloom      | 10000.00 |
| Tayler      | Fox        |  9600.00 |
| William     | Smith      |  7400.00 |
| Elizabeth   | Bates      |  7300.00 |
| Sundita     | Kumar      |  6100.00 |
| Ellen       | Abel       | 11000.00 |
| Alyssa      | Hutton     |  8800.00 |
| Jonathon    | Taylor     |  8600.00 |
| Jack        | Livingston |  8400.00 |
| Kimberely   | Grant      |  7000.00 |
| Charles     | Johnson    |  6200.00 |
| Nandita     | Sarchand   |  4200.00 |
| Alexis      | Bull       |  4100.00 |
| Jennifer    | Whalen     |  4400.00 |
| Michael     | Hartstein  | 13000.00 |
| Pat         | Fay        |  6000.00 |
| Susan       | Mavris     |  6500.00 |
| Hermann     | Baer       | 10000.00 |
| Shelley     | Higgins    | 12000.00 |
| William     | Gietz      |  8300.00 |
+-------------+------------+----------+
64 rows in set (0.00 sec)

MariaDB [csd2204s18]> select min_salary from jobs;
+------------+
| min_salary |
+------------+
|      20000 |
|      15000 |
|       3000 |
|       8200 |
|       4200 |
|       8200 |
|       4200 |
|      10000 |
|       6000 |
|       8000 |
|       2500 |
|       5500 |
|       2000 |
|       2500 |
|       4000 |
|       9000 |
|       4000 |
|       4000 |
|       4500 |
+------------+
19 rows in set, 3 warnings (0.05 sec)

MariaDB [csd2204s18]> select min_salary, job_id from jobs;
+------------+------------+
| min_salary | job_id     |
+------------+------------+
|      20000 | AD_PRES    |
|      15000 | AD_VP      |
|       3000 | AD_ASST    |
|       8200 | FI_MGR     |
|       4200 | FI_ACCOUNT |
|       8200 | AC_MGR     |
|       4200 | AC_ACCOUNT |
|      10000 | SA_MAN     |
|       6000 | SA_REP     |
|       8000 | PU_MAN     |
|       2500 | PU_CLERK   |
|       5500 | ST_MAN     |
|       2000 | ST_CLERK   |
|       2500 | SH_CLERK   |
|       4000 | IT_PROG    |
|       9000 | MK_MAN     |
|       4000 | MK_REP     |
|       4000 | HR_REP     |
|       4500 | PR_REP     |
+------------+------------+
19 rows in set (0.00 sec)

MariaDB [csd2204s18]> select min(min_salary) from jobs;
+-----------------+
| min(min_salary) |
+-----------------+
|            2000 |
+-----------------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select min(min_salary)+1000 from jobs;
+----------------------+
| min(min_salary)+1000 |
+----------------------+
|                 3000 |
+----------------------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select fist_name, last_name, salary from employees where salary=(select min(min_salary)+1000 from jobs);
ERROR 1054 (42S22): Unknown column 'fist_name' in 'field list'
MariaDB [csd2204s18]> select first_name, last_name, salary from employees where salary=(select min(min_salary)+1000 from jobs);
+------------+-----------+---------+
| first_name | last_name | salary  |
+------------+-----------+---------+
| Anthony    | Cabrio    | 3000.00 |
| Kevin      | Feeney    | 3000.00 |
+------------+-----------+---------+
2 rows in set (0.00 sec)

MariaDB [csd2204s18]> desc jobs;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| JOB_ID     | varchar(10)  | NO   | PRI |         |       |
| JOB_TITLE  | varchar(35)  | NO   |     | NULL    |       |
| MIN_SALARY | decimal(6,0) | YES  |     | NULL    |       |
| MAX_SALARY | decimal(6,0) | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

MariaDB [csd2204s18]> show tables;
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
+----------------------+
20 rows in set (0.00 sec)

MariaDB [csd2204s18]> desc departments;
+-----------------+--------------+------+-----+---------+-------+
| Field           | Type         | Null | Key | Default | Extra |
+-----------------+--------------+------+-----+---------+-------+
| DEPARTMENT_ID   | decimal(4,0) | NO   | PRI | 0       |       |
| DEPARTMENT_NAME | varchar(30)  | NO   |     | NULL    |       |
| MANAGER_ID      | decimal(6,0) | YES  | MUL | NULL    |       |
| LOCATION_ID     | decimal(4,0) | YES  | MUL | NULL    |       |
+-----------------+--------------+------+-----+---------+-------+
4 rows in set (0.02 sec)

MariaDB [csd2204s18]> select first_name, last_name, salary from employees where salay> all(select avg(salary) from employees group by department_id);
ERROR 1054 (42S22): Unknown column 'salay' in 'IN/ALL/ANY subquery'
MariaDB [csd2204s18]> select first_name, last_name, salary from employees where salary> all(select avg(salary) from employees group by department_id);
+------------+-----------+----------+
| first_name | last_name | salary   |
+------------+-----------+----------+
| Steven     | King      | 24000.00 |
+------------+-----------+----------+
1 row in set (0.03 sec)

MariaDB [csd2204s18]> desc employees;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| EMPLOYEE_ID    | decimal(6,0) | NO   | PRI | 0       |       |
| FIRST_NAME     | varchar(20)  | YES  |     | NULL    |       |
| LAST_NAME      | varchar(25)  | NO   | MUL | NULL    |       |
| EMAIL          | varchar(25)  | NO   | UNI | NULL    |       |
| PHONE_NUMBER   | varchar(20)  | YES  |     | NULL    |       |
| HIRE_DATE      | date         | NO   |     | NULL    |       |
| JOB_ID         | varchar(10)  | NO   | MUL | NULL    |       |
| SALARY         | decimal(8,2) | YES  |     | NULL    |       |
| COMMISSION_PCT | decimal(2,2) | YES  |     | NULL    |       |
| MANAGER_ID     | decimal(6,0) | YES  | MUL | NULL    |       |
| DEPARTMENT_ID  | decimal(4,0) | YES  | MUL | NULL    |       |
+----------------+--------------+------+-----+---------+-------+
11 rows in set (0.00 sec)

MariaDB [csd2204s18]> select max(salary) from employees where job_id='SH_CLERK';
+-------------+
| max(salary) |
+-------------+
|     4200.00 |
+-------------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select max(salary) from employees where job_id='SH_CLERK';
+-------------+
| max(salary) |
+-------------+
|     4200.00 |
+-------------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select first_name, last_name, salary from employees where salary>(select max(salary) from employees where job_id='SH_CLERK');
+-------------+------------+----------+
| first_name  | last_name  | salary   |
+-------------+------------+----------+
| Steven      | King       | 24000.00 |
| Neena       | Kochhar    | 17000.00 |
| Lex         | De Haan    | 17000.00 |
| Alexander   | Hunold     |  9000.00 |
| Bruce       | Ernst      |  6000.00 |
| David       | Austin     |  4800.00 |
| Valli       | Pataballa  |  4800.00 |
| Nancy       | Greenberg  | 12000.00 |
| Daniel      | Faviet     |  9000.00 |
| John        | Chen       |  8200.00 |
| Ismael      | Sciarra    |  7700.00 |
| Jose Manuel | Urman      |  7800.00 |
| Luis        | Popp       |  6900.00 |
| Den         | Raphaely   | 11000.00 |
| Matthew     | Weiss      |  8000.00 |
| Adam        | Fripp      |  8200.00 |
| Payam       | Kaufling   |  7900.00 |
| Shanta      | Vollman    |  6500.00 |
| Kevin       | Mourgos    |  5800.00 |
| John        | Russell    | 14000.00 |
| Karen       | Partners   | 13500.00 |
| Alberto     | Errazuriz  | 12000.00 |
| Gerald      | Cambrault  | 11000.00 |
| Eleni       | Zlotkey    | 10500.00 |
| Peter       | Tucker     | 10000.00 |
| David       | Bernstein  |  9500.00 |
| Peter       | Hall       |  9000.00 |
| Christopher | Olsen      |  8000.00 |
| Nanette     | Cambrault  |  7500.00 |
| Oliver      | Tuvault    |  7000.00 |
| Janette     | King       | 10000.00 |
| Patrick     | Sully      |  9500.00 |
| Allan       | McEwen     |  9000.00 |
| Lindsey     | Smith      |  8000.00 |
| Louise      | Doran      |  7500.00 |
| Sarath      | Sewall     |  7000.00 |
| Clara       | Vishney    | 10500.00 |
| Danielle    | Greene     |  9500.00 |
| Mattea      | Marvins    |  7200.00 |
| David       | Lee        |  6800.00 |
| Sundar      | Ande       |  6400.00 |
| Amit        | Banda      |  6200.00 |
| Lisa        | Ozer       | 11500.00 |
| Harrison    | Bloom      | 10000.00 |
| Tayler      | Fox        |  9600.00 |
| William     | Smith      |  7400.00 |
| Elizabeth   | Bates      |  7300.00 |
| Sundita     | Kumar      |  6100.00 |
| Ellen       | Abel       | 11000.00 |
| Alyssa      | Hutton     |  8800.00 |
| Jonathon    | Taylor     |  8600.00 |
| Jack        | Livingston |  8400.00 |
| Kimberely   | Grant      |  7000.00 |
| Charles     | Johnson    |  6200.00 |
| Jennifer    | Whalen     |  4400.00 |
| Michael     | Hartstein  | 13000.00 |
| Pat         | Fay        |  6000.00 |
| Susan       | Mavris     |  6500.00 |
| Hermann     | Baer       | 10000.00 |
| Shelley     | Higgins    | 12000.00 |
| William     | Gietz      |  8300.00 |
+-------------+------------+----------+
61 rows in set (0.00 sec)

MariaDB [csd2204s18]> select first_name, last_name, salary from employees where salary>(select max(salary) from employees where job_id='SH_CLERK') order by asc;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'asc' at line 1
MariaDB [csd2204s18]> select first_name, last_name, salary from employees where salary>(select max(salary) from employees where job_id='SH_CLERK')order by salary;
+-------------+------------+----------+
| first_name  | last_name  | salary   |
+-------------+------------+----------+
| Jennifer    | Whalen     |  4400.00 |
| David       | Austin     |  4800.00 |
| Valli       | Pataballa  |  4800.00 |
| Kevin       | Mourgos    |  5800.00 |
| Bruce       | Ernst      |  6000.00 |
| Pat         | Fay        |  6000.00 |
| Sundita     | Kumar      |  6100.00 |
| Amit        | Banda      |  6200.00 |
| Charles     | Johnson    |  6200.00 |
| Sundar      | Ande       |  6400.00 |
| Susan       | Mavris     |  6500.00 |
| Shanta      | Vollman    |  6500.00 |
| David       | Lee        |  6800.00 |
| Luis        | Popp       |  6900.00 |
| Sarath      | Sewall     |  7000.00 |
| Oliver      | Tuvault    |  7000.00 |
| Kimberely   | Grant      |  7000.00 |
| Mattea      | Marvins    |  7200.00 |
| Elizabeth   | Bates      |  7300.00 |
| William     | Smith      |  7400.00 |
| Nanette     | Cambrault  |  7500.00 |
| Louise      | Doran      |  7500.00 |
| Ismael      | Sciarra    |  7700.00 |
| Jose Manuel | Urman      |  7800.00 |
| Payam       | Kaufling   |  7900.00 |
| Lindsey     | Smith      |  8000.00 |
| Matthew     | Weiss      |  8000.00 |
| Christopher | Olsen      |  8000.00 |
| Adam        | Fripp      |  8200.00 |
| John        | Chen       |  8200.00 |
| William     | Gietz      |  8300.00 |
| Jack        | Livingston |  8400.00 |
| Jonathon    | Taylor     |  8600.00 |
| Alyssa      | Hutton     |  8800.00 |
| Allan       | McEwen     |  9000.00 |
| Peter       | Hall       |  9000.00 |
| Alexander   | Hunold     |  9000.00 |
| Daniel      | Faviet     |  9000.00 |
| Patrick     | Sully      |  9500.00 |
| Danielle    | Greene     |  9500.00 |
| David       | Bernstein  |  9500.00 |
| Tayler      | Fox        |  9600.00 |
| Hermann     | Baer       | 10000.00 |
| Harrison    | Bloom      | 10000.00 |
| Janette     | King       | 10000.00 |
| Peter       | Tucker     | 10000.00 |
| Eleni       | Zlotkey    | 10500.00 |
| Clara       | Vishney    | 10500.00 |
| Gerald      | Cambrault  | 11000.00 |
| Ellen       | Abel       | 11000.00 |
| Den         | Raphaely   | 11000.00 |
| Lisa        | Ozer       | 11500.00 |
| Alberto     | Errazuriz  | 12000.00 |
| Shelley     | Higgins    | 12000.00 |
| Nancy       | Greenberg  | 12000.00 |
| Michael     | Hartstein  | 13000.00 |
| Karen       | Partners   | 13500.00 |
| John        | Russell    | 14000.00 |
| Lex         | De Haan    | 17000.00 |
| Neena       | Kochhar    | 17000.00 |
| Steven      | King       | 24000.00 |
+-------------+------------+----------+
61 rows in set (0.00 sec)

MariaDB [csd2204s18]> select first_name, last_name, salary from employees where salary>(select max(salary) from employees where job_id='SH_CLERK')asc;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'asc' at line 1
MariaDB [csd2204s18]> select first_name, last_name, salary from employees where salary>(select max(salary) from employees where job_id='SH_CLERK')order by salary;
+-------------+------------+----------+
| first_name  | last_name  | salary   |
+-------------+------------+----------+
| Jennifer    | Whalen     |  4400.00 |
| David       | Austin     |  4800.00 |
| Valli       | Pataballa  |  4800.00 |
| Kevin       | Mourgos    |  5800.00 |
| Bruce       | Ernst      |  6000.00 |
| Pat         | Fay        |  6000.00 |
| Sundita     | Kumar      |  6100.00 |
| Amit        | Banda      |  6200.00 |
| Charles     | Johnson    |  6200.00 |
| Sundar      | Ande       |  6400.00 |
| Susan       | Mavris     |  6500.00 |
| Shanta      | Vollman    |  6500.00 |
| David       | Lee        |  6800.00 |
| Luis        | Popp       |  6900.00 |
| Sarath      | Sewall     |  7000.00 |
| Oliver      | Tuvault    |  7000.00 |
| Kimberely   | Grant      |  7000.00 |
| Mattea      | Marvins    |  7200.00 |
| Elizabeth   | Bates      |  7300.00 |
| William     | Smith      |  7400.00 |
| Nanette     | Cambrault  |  7500.00 |
| Louise      | Doran      |  7500.00 |
| Ismael      | Sciarra    |  7700.00 |
| Jose Manuel | Urman      |  7800.00 |
| Payam       | Kaufling   |  7900.00 |
| Lindsey     | Smith      |  8000.00 |
| Matthew     | Weiss      |  8000.00 |
| Christopher | Olsen      |  8000.00 |
| Adam        | Fripp      |  8200.00 |
| John        | Chen       |  8200.00 |
| William     | Gietz      |  8300.00 |
| Jack        | Livingston |  8400.00 |
| Jonathon    | Taylor     |  8600.00 |
| Alyssa      | Hutton     |  8800.00 |
| Allan       | McEwen     |  9000.00 |
| Peter       | Hall       |  9000.00 |
| Alexander   | Hunold     |  9000.00 |
| Daniel      | Faviet     |  9000.00 |
| Patrick     | Sully      |  9500.00 |
| Danielle    | Greene     |  9500.00 |
| David       | Bernstein  |  9500.00 |
| Tayler      | Fox        |  9600.00 |
| Hermann     | Baer       | 10000.00 |
| Harrison    | Bloom      | 10000.00 |
| Janette     | King       | 10000.00 |
| Peter       | Tucker     | 10000.00 |
| Eleni       | Zlotkey    | 10500.00 |
| Clara       | Vishney    | 10500.00 |
| Gerald      | Cambrault  | 11000.00 |
| Ellen       | Abel       | 11000.00 |
| Den         | Raphaely   | 11000.00 |
| Lisa        | Ozer       | 11500.00 |
| Alberto     | Errazuriz  | 12000.00 |
| Shelley     | Higgins    | 12000.00 |
| Nancy       | Greenberg  | 12000.00 |
| Michael     | Hartstein  | 13000.00 |
| Karen       | Partners   | 13500.00 |
| John        | Russell    | 14000.00 |
| Lex         | De Haan    | 17000.00 |
| Neena       | Kochhar    | 17000.00 |
| Steven      | King       | 24000.00 |
+-------------+------------+----------+
61 rows in set (0.00 sec)

MariaDB [csd2204s18]> select first_name, last_name, salary from employees where salary> any(select salary from employees where job_id='SH_CLERK')order by salary;
+-------------+-------------+----------+
| first_name  | last_name   | salary   |
+-------------+-------------+----------+
| Donald      | OConnell    |  2600.00 |
| Douglas     | Grant       |  2600.00 |
| Randall     | Matos       |  2600.00 |
| Guy         | Himuro      |  2600.00 |
| Irene       | Mikkilineni |  2700.00 |
| John        | Seo         |  2700.00 |
| Sigal       | Tobias      |  2800.00 |
| Girard      | Geoni       |  2800.00 |
| Vance       | Jones       |  2800.00 |
| Mozhe       | Atkinson    |  2800.00 |
| Michael     | Rogers      |  2900.00 |
| Timothy     | Gates       |  2900.00 |
| Shelli      | Baida       |  2900.00 |
| Kevin       | Feeney      |  3000.00 |
| Anthony     | Cabrio      |  3000.00 |
| Alexander   | Khoo        |  3100.00 |
| Alana       | Walsh       |  3100.00 |
| Jean        | Fleaur      |  3100.00 |
| Curtis      | Davies      |  3100.00 |
| Winston     | Taylor      |  3200.00 |
| Julia       | Nayer       |  3200.00 |
| Stephen     | Stiles      |  3200.00 |
| Samuel      | McCain      |  3200.00 |
| Laura       | Bissot      |  3300.00 |
| Jason       | Mallin      |  3300.00 |
| Julia       | Dellinger   |  3400.00 |
| Trenna      | Rajs        |  3500.00 |
| Renske      | Ladwig      |  3600.00 |
| Jennifer    | Dilly       |  3600.00 |
| Kelly       | Chung       |  3800.00 |
| Britney     | Everett     |  3900.00 |
| Sarah       | Bell        |  4000.00 |
| Alexis      | Bull        |  4100.00 |
| Diana       | Lorentz     |  4200.00 |
| Nandita     | Sarchand    |  4200.00 |
| Jennifer    | Whalen      |  4400.00 |
| Valli       | Pataballa   |  4800.00 |
| David       | Austin      |  4800.00 |
| Kevin       | Mourgos     |  5800.00 |
| Pat         | Fay         |  6000.00 |
| Bruce       | Ernst       |  6000.00 |
| Sundita     | Kumar       |  6100.00 |
| Charles     | Johnson     |  6200.00 |
| Amit        | Banda       |  6200.00 |
| Sundar      | Ande        |  6400.00 |
| Susan       | Mavris      |  6500.00 |
| Shanta      | Vollman     |  6500.00 |
| David       | Lee         |  6800.00 |
| Luis        | Popp        |  6900.00 |
| Oliver      | Tuvault     |  7000.00 |
| Kimberely   | Grant       |  7000.00 |
| Sarath      | Sewall      |  7000.00 |
| Mattea      | Marvins     |  7200.00 |
| Elizabeth   | Bates       |  7300.00 |
| William     | Smith       |  7400.00 |
| Louise      | Doran       |  7500.00 |
| Nanette     | Cambrault   |  7500.00 |
| Ismael      | Sciarra     |  7700.00 |
| Jose Manuel | Urman       |  7800.00 |
| Payam       | Kaufling    |  7900.00 |
| Lindsey     | Smith       |  8000.00 |
| Christopher | Olsen       |  8000.00 |
| Matthew     | Weiss       |  8000.00 |
| John        | Chen        |  8200.00 |
| Adam        | Fripp       |  8200.00 |
| William     | Gietz       |  8300.00 |
| Jack        | Livingston  |  8400.00 |
| Jonathon    | Taylor      |  8600.00 |
| Alyssa      | Hutton      |  8800.00 |
| Allan       | McEwen      |  9000.00 |
| Daniel      | Faviet      |  9000.00 |
| Alexander   | Hunold      |  9000.00 |
| Peter       | Hall        |  9000.00 |
| Patrick     | Sully       |  9500.00 |
| Danielle    | Greene      |  9500.00 |
| David       | Bernstein   |  9500.00 |
| Tayler      | Fox         |  9600.00 |
| Hermann     | Baer        | 10000.00 |
| Peter       | Tucker      | 10000.00 |
| Janette     | King        | 10000.00 |
| Harrison    | Bloom       | 10000.00 |
| Eleni       | Zlotkey     | 10500.00 |
| Clara       | Vishney     | 10500.00 |
| Den         | Raphaely    | 11000.00 |
| Ellen       | Abel        | 11000.00 |
| Gerald      | Cambrault   | 11000.00 |
| Lisa        | Ozer        | 11500.00 |
| Shelley     | Higgins     | 12000.00 |
| Alberto     | Errazuriz   | 12000.00 |
| Nancy       | Greenberg   | 12000.00 |
| Michael     | Hartstein   | 13000.00 |
| Karen       | Partners    | 13500.00 |
| John        | Russell     | 14000.00 |
| Lex         | De Haan     | 17000.00 |
| Neena       | Kochhar     | 17000.00 |
| Steven      | King        | 24000.00 |
+-------------+-------------+----------+
96 rows in set (0.00 sec)

MariaDB [csd2204s18]> select first_name, last_name, salary from employees where salary< any(select salary from employees where job_id='SH_CLERK')order by salary;
+------------+-------------+---------+
| first_name | last_name   | salary  |
+------------+-------------+---------+
| TJ         | Olson       | 2100.00 |
| Hazel      | Philtanker  | 2200.00 |
| Steven     | Markle      | 2200.00 |
| Ki         | Gee         | 2400.00 |
| James      | Landry      | 2400.00 |
| Martha     | Sullivan    | 2500.00 |
| James      | Marlow      | 2500.00 |
| Randall    | Perkins     | 2500.00 |
| Karen      | Colmenares  | 2500.00 |
| Peter      | Vargas      | 2500.00 |
| Joshua     | Patel       | 2500.00 |
| Douglas    | Grant       | 2600.00 |
| Donald     | OConnell    | 2600.00 |
| Guy        | Himuro      | 2600.00 |
| Randall    | Matos       | 2600.00 |
| Irene      | Mikkilineni | 2700.00 |
| John       | Seo         | 2700.00 |
| Mozhe      | Atkinson    | 2800.00 |
| Vance      | Jones       | 2800.00 |
| Sigal      | Tobias      | 2800.00 |
| Girard     | Geoni       | 2800.00 |
| Michael    | Rogers      | 2900.00 |
| Timothy    | Gates       | 2900.00 |
| Shelli     | Baida       | 2900.00 |
| Kevin      | Feeney      | 3000.00 |
| Anthony    | Cabrio      | 3000.00 |
| Alana      | Walsh       | 3100.00 |
| Jean       | Fleaur      | 3100.00 |
| Alexander  | Khoo        | 3100.00 |
| Curtis     | Davies      | 3100.00 |
| Stephen    | Stiles      | 3200.00 |
| Julia      | Nayer       | 3200.00 |
| Samuel     | McCain      | 3200.00 |
| Winston    | Taylor      | 3200.00 |
| Jason      | Mallin      | 3300.00 |
| Laura      | Bissot      | 3300.00 |
| Julia      | Dellinger   | 3400.00 |
| Trenna     | Rajs        | 3500.00 |
| Renske     | Ladwig      | 3600.00 |
| Jennifer   | Dilly       | 3600.00 |
| Kelly      | Chung       | 3800.00 |
| Britney    | Everett     | 3900.00 |
| Sarah      | Bell        | 4000.00 |
| Alexis     | Bull        | 4100.00 |
+------------+-------------+---------+
44 rows in set (0.00 sec)

MariaDB [csd2204s18]> select first_name, last_name from employess where manager-id!=0;
ERROR 1146 (42S02): Table 'csd2204s18.employess' doesn't exist
MariaDB [csd2204s18]> select first_name, last_name from employees where manager-id!=0;
ERROR 1054 (42S22): Unknown column 'manager' in 'where clause'
MariaDB [csd2204s18]> select first_name, last_name from employees where manager_id!=0;
+-------------+-------------+
| first_name  | last_name   |
+-------------+-------------+
| Neena       | Kochhar     |
| Lex         | De Haan     |
| Alexander   | Hunold      |
| Bruce       | Ernst       |
| David       | Austin      |
| Valli       | Pataballa   |
| Diana       | Lorentz     |
| Nancy       | Greenberg   |
| Daniel      | Faviet      |
| John        | Chen        |
| Ismael      | Sciarra     |
| Jose Manuel | Urman       |
| Luis        | Popp        |
| Den         | Raphaely    |
| Alexander   | Khoo        |
| Shelli      | Baida       |
| Sigal       | Tobias      |
| Guy         | Himuro      |
| Karen       | Colmenares  |
| Matthew     | Weiss       |
| Adam        | Fripp       |
| Payam       | Kaufling    |
| Shanta      | Vollman     |
| Kevin       | Mourgos     |
| Julia       | Nayer       |
| Irene       | Mikkilineni |
| James       | Landry      |
| Steven      | Markle      |
| Laura       | Bissot      |
| Mozhe       | Atkinson    |
| James       | Marlow      |
| TJ          | Olson       |
| Jason       | Mallin      |
| Michael     | Rogers      |
| Ki          | Gee         |
| Hazel       | Philtanker  |
| Renske      | Ladwig      |
| Stephen     | Stiles      |
| John        | Seo         |
| Joshua      | Patel       |
| Trenna      | Rajs        |
| Curtis      | Davies      |
| Randall     | Matos       |
| Peter       | Vargas      |
| John        | Russell     |
| Karen       | Partners    |
| Alberto     | Errazuriz   |
| Gerald      | Cambrault   |
| Eleni       | Zlotkey     |
| Peter       | Tucker      |
| David       | Bernstein   |
| Peter       | Hall        |
| Christopher | Olsen       |
| Nanette     | Cambrault   |
| Oliver      | Tuvault     |
| Janette     | King        |
| Patrick     | Sully       |
| Allan       | McEwen      |
| Lindsey     | Smith       |
| Louise      | Doran       |
| Sarath      | Sewall      |
| Clara       | Vishney     |
| Danielle    | Greene      |
| Mattea      | Marvins     |
| David       | Lee         |
| Sundar      | Ande        |
| Amit        | Banda       |
| Lisa        | Ozer        |
| Harrison    | Bloom       |
| Tayler      | Fox         |
| William     | Smith       |
| Elizabeth   | Bates       |
| Sundita     | Kumar       |
| Ellen       | Abel        |
| Alyssa      | Hutton      |
| Jonathon    | Taylor      |
| Jack        | Livingston  |
| Kimberely   | Grant       |
| Charles     | Johnson     |
| Winston     | Taylor      |
| Jean        | Fleaur      |
| Martha      | Sullivan    |
| Girard      | Geoni       |
| Nandita     | Sarchand    |
| Alexis      | Bull        |
| Julia       | Dellinger   |
| Anthony     | Cabrio      |
| Kelly       | Chung       |
| Jennifer    | Dilly       |
| Timothy     | Gates       |
| Randall     | Perkins     |
| Sarah       | Bell        |
| Britney     | Everett     |
| Samuel      | McCain      |
| Vance       | Jones       |
| Alana       | Walsh       |
| Kevin       | Feeney      |
| Donald      | OConnell    |
| Douglas     | Grant       |
| Jennifer    | Whalen      |
| Michael     | Hartstein   |
| Pat         | Fay         |
| Susan       | Mavris      |
| Hermann     | Baer        |
| Shelley     | Higgins     |
| William     | Gietz       |
+-------------+-------------+
106 rows in set (0.00 sec)

MariaDB [csd2204s18]> select first_name, last_name from employees where employees_id not in (select distinct(manager_id) from employees where manager_id!=0);
ERROR 1054 (42S22): Unknown column 'employees_id' in 'IN/ALL/ANY subquery'
MariaDB [csd2204s18]> select first_name, last_name from employees where employee_id not in (select distinct(manager_id) from employees where manager_id!=0);
+-------------+-------------+
| first_name  | last_name   |
+-------------+-------------+
| Bruce       | Ernst       |
| David       | Austin      |
| Valli       | Pataballa   |
| Diana       | Lorentz     |
| Daniel      | Faviet      |
| John        | Chen        |
| Ismael      | Sciarra     |
| Jose Manuel | Urman       |
| Luis        | Popp        |
| Alexander   | Khoo        |
| Shelli      | Baida       |
| Sigal       | Tobias      |
| Guy         | Himuro      |
| Karen       | Colmenares  |
| Julia       | Nayer       |
| Irene       | Mikkilineni |
| James       | Landry      |
| Steven      | Markle      |
| Laura       | Bissot      |
| Mozhe       | Atkinson    |
| James       | Marlow      |
| TJ          | Olson       |
| Jason       | Mallin      |
| Michael     | Rogers      |
| Ki          | Gee         |
| Hazel       | Philtanker  |
| Renske      | Ladwig      |
| Stephen     | Stiles      |
| John        | Seo         |
| Joshua      | Patel       |
| Trenna      | Rajs        |
| Curtis      | Davies      |
| Randall     | Matos       |
| Peter       | Vargas      |
| Peter       | Tucker      |
| David       | Bernstein   |
| Peter       | Hall        |
| Christopher | Olsen       |
| Nanette     | Cambrault   |
| Oliver      | Tuvault     |
| Janette     | King        |
| Patrick     | Sully       |
| Allan       | McEwen      |
| Lindsey     | Smith       |
| Louise      | Doran       |
| Sarath      | Sewall      |
| Clara       | Vishney     |
| Danielle    | Greene      |
| Mattea      | Marvins     |
| David       | Lee         |
| Sundar      | Ande        |
| Amit        | Banda       |
| Lisa        | Ozer        |
| Harrison    | Bloom       |
| Tayler      | Fox         |
| William     | Smith       |
| Elizabeth   | Bates       |
| Sundita     | Kumar       |
| Ellen       | Abel        |
| Alyssa      | Hutton      |
| Jonathon    | Taylor      |
| Jack        | Livingston  |
| Kimberely   | Grant       |
| Charles     | Johnson     |
| Winston     | Taylor      |
| Jean        | Fleaur      |
| Martha      | Sullivan    |
| Girard      | Geoni       |
| Nandita     | Sarchand    |
| Alexis      | Bull        |
| Julia       | Dellinger   |
| Anthony     | Cabrio      |
| Kelly       | Chung       |
| Jennifer    | Dilly       |
| Timothy     | Gates       |
| Randall     | Perkins     |
| Sarah       | Bell        |
| Britney     | Everett     |
| Samuel      | McCain      |
| Vance       | Jones       |
| Alana       | Walsh       |
| Kevin       | Feeney      |
| Donald      | OConnell    |
| Douglas     | Grant       |
| Jennifer    | Whalen      |
| Pat         | Fay         |
| Susan       | Mavris      |
| Hermann     | Baer        |
| William     | Gietz       |
+-------------+-------------+
89 rows in set (0.02 sec)

MariaDB [csd2204s18]> select b.first_name, b.last_name from employees b where  not exist (select 'X' from employees a where a.manager_id=b.employee_id);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'select 'X' from employees a where a.manager_id=b.employee_id)' at line 1
MariaDB [csd2204s18]> select b.first_name, b.last_name from employees b where  not exist (select 'X' from employees a where a.manager_id = b.employee_id);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'select 'X' from employees a where a.manager_id = b.employee_id)' at line 1
MariaDB [csd2204s18]> select employee_id, first_name, last_name from employees;
+-------------+-------------+-------------+
| employee_id | first_name  | last_name   |
+-------------+-------------+-------------+
|         100 | Steven      | King        |
|         101 | Neena       | Kochhar     |
|         102 | Lex         | De Haan     |
|         103 | Alexander   | Hunold      |
|         104 | Bruce       | Ernst       |
|         105 | David       | Austin      |
|         106 | Valli       | Pataballa   |
|         107 | Diana       | Lorentz     |
|         108 | Nancy       | Greenberg   |
|         109 | Daniel      | Faviet      |
|         110 | John        | Chen        |
|         111 | Ismael      | Sciarra     |
|         112 | Jose Manuel | Urman       |
|         113 | Luis        | Popp        |
|         114 | Den         | Raphaely    |
|         115 | Alexander   | Khoo        |
|         116 | Shelli      | Baida       |
|         117 | Sigal       | Tobias      |
|         118 | Guy         | Himuro      |
|         119 | Karen       | Colmenares  |
|         120 | Matthew     | Weiss       |
|         121 | Adam        | Fripp       |
|         122 | Payam       | Kaufling    |
|         123 | Shanta      | Vollman     |
|         124 | Kevin       | Mourgos     |
|         125 | Julia       | Nayer       |
|         126 | Irene       | Mikkilineni |
|         127 | James       | Landry      |
|         128 | Steven      | Markle      |
|         129 | Laura       | Bissot      |
|         130 | Mozhe       | Atkinson    |
|         131 | James       | Marlow      |
|         132 | TJ          | Olson       |
|         133 | Jason       | Mallin      |
|         134 | Michael     | Rogers      |
|         135 | Ki          | Gee         |
|         136 | Hazel       | Philtanker  |
|         137 | Renske      | Ladwig      |
|         138 | Stephen     | Stiles      |
|         139 | John        | Seo         |
|         140 | Joshua      | Patel       |
|         141 | Trenna      | Rajs        |
|         142 | Curtis      | Davies      |
|         143 | Randall     | Matos       |
|         144 | Peter       | Vargas      |
|         145 | John        | Russell     |
|         146 | Karen       | Partners    |
|         147 | Alberto     | Errazuriz   |
|         148 | Gerald      | Cambrault   |
|         149 | Eleni       | Zlotkey     |
|         150 | Peter       | Tucker      |
|         151 | David       | Bernstein   |
|         152 | Peter       | Hall        |
|         153 | Christopher | Olsen       |
|         154 | Nanette     | Cambrault   |
|         155 | Oliver      | Tuvault     |
|         156 | Janette     | King        |
|         157 | Patrick     | Sully       |
|         158 | Allan       | McEwen      |
|         159 | Lindsey     | Smith       |
|         160 | Louise      | Doran       |
|         161 | Sarath      | Sewall      |
|         162 | Clara       | Vishney     |
|         163 | Danielle    | Greene      |
|         164 | Mattea      | Marvins     |
|         165 | David       | Lee         |
|         166 | Sundar      | Ande        |
|         167 | Amit        | Banda       |
|         168 | Lisa        | Ozer        |
|         169 | Harrison    | Bloom       |
|         170 | Tayler      | Fox         |
|         171 | William     | Smith       |
|         172 | Elizabeth   | Bates       |
|         173 | Sundita     | Kumar       |
|         174 | Ellen       | Abel        |
|         175 | Alyssa      | Hutton      |
|         176 | Jonathon    | Taylor      |
|         177 | Jack        | Livingston  |
|         178 | Kimberely   | Grant       |
|         179 | Charles     | Johnson     |
|         180 | Winston     | Taylor      |
|         181 | Jean        | Fleaur      |
|         182 | Martha      | Sullivan    |
|         183 | Girard      | Geoni       |
|         184 | Nandita     | Sarchand    |
|         185 | Alexis      | Bull        |
|         186 | Julia       | Dellinger   |
|         187 | Anthony     | Cabrio      |
|         188 | Kelly       | Chung       |
|         189 | Jennifer    | Dilly       |
|         190 | Timothy     | Gates       |
|         191 | Randall     | Perkins     |
|         192 | Sarah       | Bell        |
|         193 | Britney     | Everett     |
|         194 | Samuel      | McCain      |
|         195 | Vance       | Jones       |
|         196 | Alana       | Walsh       |
|         197 | Kevin       | Feeney      |
|         198 | Donald      | OConnell    |
|         199 | Douglas     | Grant       |
|         200 | Jennifer    | Whalen      |
|         201 | Michael     | Hartstein   |
|         202 | Pat         | Fay         |
|         203 | Susan       | Mavris      |
|         204 | Hermann     | Baer        |
|         205 | Shelley     | Higgins     |
|         206 | William     | Gietz       |
+-------------+-------------+-------------+
107 rows in set (0.00 sec)

MariaDB [csd2204s18]> desc departments;
+-----------------+--------------+------+-----+---------+-------+
| Field           | Type         | Null | Key | Default | Extra |
+-----------------+--------------+------+-----+---------+-------+
| DEPARTMENT_ID   | decimal(4,0) | NO   | PRI | 0       |       |
| DEPARTMENT_NAME | varchar(30)  | NO   |     | NULL    |       |
| MANAGER_ID      | decimal(6,0) | YES  | MUL | NULL    |       |
| LOCATION_ID     | decimal(4,0) | YES  | MUL | NULL    |       |
+-----------------+--------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

MariaDB [csd2204s18]> desc employees;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| EMPLOYEE_ID    | decimal(6,0) | NO   | PRI | 0       |       |
| FIRST_NAME     | varchar(20)  | YES  |     | NULL    |       |
| LAST_NAME      | varchar(25)  | NO   | MUL | NULL    |       |
| EMAIL          | varchar(25)  | NO   | UNI | NULL    |       |
| PHONE_NUMBER   | varchar(20)  | YES  |     | NULL    |       |
| HIRE_DATE      | date         | NO   |     | NULL    |       |
| JOB_ID         | varchar(10)  | NO   | MUL | NULL    |       |
| SALARY         | decimal(8,2) | YES  |     | NULL    |       |
| COMMISSION_PCT | decimal(2,2) | YES  |     | NULL    |       |
| MANAGER_ID     | decimal(6,0) | YES  | MUL | NULL    |       |
| DEPARTMENT_ID  | decimal(4,0) | YES  | MUL | NULL    |       |
+----------------+--------------+------+-----+---------+-------+
11 rows in set (0.00 sec)

MariaDB [csd2204s18]> select employee_id, first_name, last_name, department_id from employees and (select department_name from departments);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'and (select department_name from departments)' at line 1
MariaDB [csd2204s18]> select employee_id, first_name, last_name, department_id from employees and select department_name from departments;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'and select department_name from departments' at line 1
MariaDB [csd2204s18]> select employee_id, first_name, last_name, department_id from employees;
+-------------+-------------+-------------+---------------+
| employee_id | first_name  | last_name   | department_id |
+-------------+-------------+-------------+---------------+
|         100 | Steven      | King        |            90 |
|         101 | Neena       | Kochhar     |            90 |
|         102 | Lex         | De Haan     |            90 |
|         103 | Alexander   | Hunold      |            60 |
|         104 | Bruce       | Ernst       |            60 |
|         105 | David       | Austin      |            60 |
|         106 | Valli       | Pataballa   |            60 |
|         107 | Diana       | Lorentz     |            60 |
|         108 | Nancy       | Greenberg   |           100 |
|         109 | Daniel      | Faviet      |           100 |
|         110 | John        | Chen        |           100 |
|         111 | Ismael      | Sciarra     |           100 |
|         112 | Jose Manuel | Urman       |           100 |
|         113 | Luis        | Popp        |           100 |
|         114 | Den         | Raphaely    |            30 |
|         115 | Alexander   | Khoo        |            30 |
|         116 | Shelli      | Baida       |            30 |
|         117 | Sigal       | Tobias      |            30 |
|         118 | Guy         | Himuro      |            30 |
|         119 | Karen       | Colmenares  |            30 |
|         120 | Matthew     | Weiss       |            50 |
|         121 | Adam        | Fripp       |            50 |
|         122 | Payam       | Kaufling    |            50 |
|         123 | Shanta      | Vollman     |            50 |
|         124 | Kevin       | Mourgos     |            50 |
|         125 | Julia       | Nayer       |            50 |
|         126 | Irene       | Mikkilineni |            50 |
|         127 | James       | Landry      |            50 |
|         128 | Steven      | Markle      |            50 |
|         129 | Laura       | Bissot      |            50 |
|         130 | Mozhe       | Atkinson    |            50 |
|         131 | James       | Marlow      |            50 |
|         132 | TJ          | Olson       |            50 |
|         133 | Jason       | Mallin      |            50 |
|         134 | Michael     | Rogers      |            50 |
|         135 | Ki          | Gee         |            50 |
|         136 | Hazel       | Philtanker  |            50 |
|         137 | Renske      | Ladwig      |            50 |
|         138 | Stephen     | Stiles      |            50 |
|         139 | John        | Seo         |            50 |
|         140 | Joshua      | Patel       |            50 |
|         141 | Trenna      | Rajs        |            50 |
|         142 | Curtis      | Davies      |            50 |
|         143 | Randall     | Matos       |            50 |
|         144 | Peter       | Vargas      |            50 |
|         145 | John        | Russell     |            80 |
|         146 | Karen       | Partners    |            80 |
|         147 | Alberto     | Errazuriz   |            80 |
|         148 | Gerald      | Cambrault   |            80 |
|         149 | Eleni       | Zlotkey     |            80 |
|         150 | Peter       | Tucker      |            80 |
|         151 | David       | Bernstein   |            80 |
|         152 | Peter       | Hall        |            80 |
|         153 | Christopher | Olsen       |            80 |
|         154 | Nanette     | Cambrault   |            80 |
|         155 | Oliver      | Tuvault     |            80 |
|         156 | Janette     | King        |            80 |
|         157 | Patrick     | Sully       |            80 |
|         158 | Allan       | McEwen      |            80 |
|         159 | Lindsey     | Smith       |            80 |
|         160 | Louise      | Doran       |            80 |
|         161 | Sarath      | Sewall      |            80 |
|         162 | Clara       | Vishney     |            80 |
|         163 | Danielle    | Greene      |            80 |
|         164 | Mattea      | Marvins     |            80 |
|         165 | David       | Lee         |            80 |
|         166 | Sundar      | Ande        |            80 |
|         167 | Amit        | Banda       |            80 |
|         168 | Lisa        | Ozer        |            80 |
|         169 | Harrison    | Bloom       |            80 |
|         170 | Tayler      | Fox         |            80 |
|         171 | William     | Smith       |            80 |
|         172 | Elizabeth   | Bates       |            80 |
|         173 | Sundita     | Kumar       |            80 |
|         174 | Ellen       | Abel        |            80 |
|         175 | Alyssa      | Hutton      |            80 |
|         176 | Jonathon    | Taylor      |            80 |
|         177 | Jack        | Livingston  |            80 |
|         178 | Kimberely   | Grant       |             0 |
|         179 | Charles     | Johnson     |            80 |
|         180 | Winston     | Taylor      |            50 |
|         181 | Jean        | Fleaur      |            50 |
|         182 | Martha      | Sullivan    |            50 |
|         183 | Girard      | Geoni       |            50 |
|         184 | Nandita     | Sarchand    |            50 |
|         185 | Alexis      | Bull        |            50 |
|         186 | Julia       | Dellinger   |            50 |
|         187 | Anthony     | Cabrio      |            50 |
|         188 | Kelly       | Chung       |            50 |
|         189 | Jennifer    | Dilly       |            50 |
|         190 | Timothy     | Gates       |            50 |
|         191 | Randall     | Perkins     |            50 |
|         192 | Sarah       | Bell        |            50 |
|         193 | Britney     | Everett     |            50 |
|         194 | Samuel      | McCain      |            50 |
|         195 | Vance       | Jones       |            50 |
|         196 | Alana       | Walsh       |            50 |
|         197 | Kevin       | Feeney      |            50 |
|         198 | Donald      | OConnell    |            50 |
|         199 | Douglas     | Grant       |            50 |
|         200 | Jennifer    | Whalen      |            10 |
|         201 | Michael     | Hartstein   |            20 |
|         202 | Pat         | Fay         |            20 |
|         203 | Susan       | Mavris      |            40 |
|         204 | Hermann     | Baer        |            70 |
|         205 | Shelley     | Higgins     |           110 |
|         206 | William     | Gietz       |           110 |
+-------------+-------------+-------------+---------------+
107 rows in set (0.00 sec)

MariaDB [csd2204s18]> select department_name, department_id from departments;
+----------------------+---------------+
| department_name      | department_id |
+----------------------+---------------+
| Administration       |            10 |
| Marketing            |            20 |
| Purchasing           |            30 |
| Human Resources      |            40 |
| Shipping             |            50 |
| IT                   |            60 |
| Public Relations     |            70 |
| Sales                |            80 |
| Executive            |            90 |
| Finance              |           100 |
| Accounting           |           110 |
| Treasury             |           120 |
| Corporate Tax        |           130 |
| Control And Credit   |           140 |
| Shareholder Services |           150 |
| Benefits             |           160 |
| Manufacturing        |           170 |
| Construction         |           180 |
| Contracting          |           190 |
| Operations           |           200 |
| IT Support           |           210 |
| NOC                  |           220 |
| IT Helpdesk          |           230 |
| Government Sales     |           240 |
| Retail Sales         |           250 |
| Recruiting           |           260 |
| Payroll              |           270 |
+----------------------+---------------+
27 rows in set (0.00 sec)

MariaDB [csd2204s18]> select employee_id, first_name, last_name, department_id from employees where department_id in (select department_name, department_id from departments);
ERROR 1241 (21000): Operand should contain 1 column(s)
MariaDB [csd2204s18]> select employee_id, first_name, last_name, department_id from employees where department_id in (select department_name from departments);
+-------------+------------+-----------+---------------+
| employee_id | first_name | last_name | department_id |
+-------------+------------+-----------+---------------+
|         178 | Kimberely  | Grant     |             0 |
+-------------+------------+-----------+---------------+
1 row in set, 2863 warnings (0.03 sec)

MariaDB [csd2204s18]> select employee_id, first_name, last_name, department_id from employees where department_id = (select department_name from departments);
ERROR 1242 (21000): Subquery returns more than 1 row
MariaDB [csd2204s18]> select employee_id, first_name, last_name from employees where department_id in  (select department_name from departments);
+-------------+------------+-----------+
| employee_id | first_name | last_name |
+-------------+------------+-----------+
|         178 | Kimberely  | Grant     |
+-------------+------------+-----------+
1 row in set, 2863 warnings (0.00 sec)

MariaDB [csd2204s18]> select employee_id, first_name, last_name from employees where department_idin  (select department_name from departments);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'select department_name from departments)' at line 1
MariaDB [csd2204s18]> select first_name, last_name, (select department_name from deprtments d where d.department_id=e.department_id) "department name" from employees e;
ERROR 1146 (42S02): Table 'csd2204s18.deprtments' doesn't exist
MariaDB [csd2204s18]> select first_name, last_name, (select department_name from departments d where d.department_id=e.department_id) "department name" from employees e;
+-------------+-------------+------------------+
| first_name  | last_name   | department name  |
+-------------+-------------+------------------+
| Steven      | King        | Executive        |
| Neena       | Kochhar     | Executive        |
| Lex         | De Haan     | Executive        |
| Alexander   | Hunold      | IT               |
| Bruce       | Ernst       | IT               |
| David       | Austin      | IT               |
| Valli       | Pataballa   | IT               |
| Diana       | Lorentz     | IT               |
| Nancy       | Greenberg   | Finance          |
| Daniel      | Faviet      | Finance          |
| John        | Chen        | Finance          |
| Ismael      | Sciarra     | Finance          |
| Jose Manuel | Urman       | Finance          |
| Luis        | Popp        | Finance          |
| Den         | Raphaely    | Purchasing       |
| Alexander   | Khoo        | Purchasing       |
| Shelli      | Baida       | Purchasing       |
| Sigal       | Tobias      | Purchasing       |
| Guy         | Himuro      | Purchasing       |
| Karen       | Colmenares  | Purchasing       |
| Matthew     | Weiss       | Shipping         |
| Adam        | Fripp       | Shipping         |
| Payam       | Kaufling    | Shipping         |
| Shanta      | Vollman     | Shipping         |
| Kevin       | Mourgos     | Shipping         |
| Julia       | Nayer       | Shipping         |
| Irene       | Mikkilineni | Shipping         |
| James       | Landry      | Shipping         |
| Steven      | Markle      | Shipping         |
| Laura       | Bissot      | Shipping         |
| Mozhe       | Atkinson    | Shipping         |
| James       | Marlow      | Shipping         |
| TJ          | Olson       | Shipping         |
| Jason       | Mallin      | Shipping         |
| Michael     | Rogers      | Shipping         |
| Ki          | Gee         | Shipping         |
| Hazel       | Philtanker  | Shipping         |
| Renske      | Ladwig      | Shipping         |
| Stephen     | Stiles      | Shipping         |
| John        | Seo         | Shipping         |
| Joshua      | Patel       | Shipping         |
| Trenna      | Rajs        | Shipping         |
| Curtis      | Davies      | Shipping         |
| Randall     | Matos       | Shipping         |
| Peter       | Vargas      | Shipping         |
| John        | Russell     | Sales            |
| Karen       | Partners    | Sales            |
| Alberto     | Errazuriz   | Sales            |
| Gerald      | Cambrault   | Sales            |
| Eleni       | Zlotkey     | Sales            |
| Peter       | Tucker      | Sales            |
| David       | Bernstein   | Sales            |
| Peter       | Hall        | Sales            |
| Christopher | Olsen       | Sales            |
| Nanette     | Cambrault   | Sales            |
| Oliver      | Tuvault     | Sales            |
| Janette     | King        | Sales            |
| Patrick     | Sully       | Sales            |
| Allan       | McEwen      | Sales            |
| Lindsey     | Smith       | Sales            |
| Louise      | Doran       | Sales            |
| Sarath      | Sewall      | Sales            |
| Clara       | Vishney     | Sales            |
| Danielle    | Greene      | Sales            |
| Mattea      | Marvins     | Sales            |
| David       | Lee         | Sales            |
| Sundar      | Ande        | Sales            |
| Amit        | Banda       | Sales            |
| Lisa        | Ozer        | Sales            |
| Harrison    | Bloom       | Sales            |
| Tayler      | Fox         | Sales            |
| William     | Smith       | Sales            |
| Elizabeth   | Bates       | Sales            |
| Sundita     | Kumar       | Sales            |
| Ellen       | Abel        | Sales            |
| Alyssa      | Hutton      | Sales            |
| Jonathon    | Taylor      | Sales            |
| Jack        | Livingston  | Sales            |
| Kimberely   | Grant       | NULL             |
| Charles     | Johnson     | Sales            |
| Winston     | Taylor      | Shipping         |
| Jean        | Fleaur      | Shipping         |
| Martha      | Sullivan    | Shipping         |
| Girard      | Geoni       | Shipping         |
| Nandita     | Sarchand    | Shipping         |
| Alexis      | Bull        | Shipping         |
| Julia       | Dellinger   | Shipping         |
| Anthony     | Cabrio      | Shipping         |
| Kelly       | Chung       | Shipping         |
| Jennifer    | Dilly       | Shipping         |
| Timothy     | Gates       | Shipping         |
| Randall     | Perkins     | Shipping         |
| Sarah       | Bell        | Shipping         |
| Britney     | Everett     | Shipping         |
| Samuel      | McCain      | Shipping         |
| Vance       | Jones       | Shipping         |
| Alana       | Walsh       | Shipping         |
| Kevin       | Feeney      | Shipping         |
| Donald      | OConnell    | Shipping         |
| Douglas     | Grant       | Shipping         |
| Jennifer    | Whalen      | Administration   |
| Michael     | Hartstein   | Marketing        |
| Pat         | Fay         | Marketing        |
| Susan       | Mavris      | Human Resources  |
| Hermann     | Baer        | Public Relations |
| Shelley     | Higgins     | Accounting       |
| William     | Gietz       | Accounting       |
+-------------+-------------+------------------+
107 rows in set (0.01 sec)

MariaDB [csd2204s18]> desc employees;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| EMPLOYEE_ID    | decimal(6,0) | NO   | PRI | 0       |       |
| FIRST_NAME     | varchar(20)  | YES  |     | NULL    |       |
| LAST_NAME      | varchar(25)  | NO   | MUL | NULL    |       |
| EMAIL          | varchar(25)  | NO   | UNI | NULL    |       |
| PHONE_NUMBER   | varchar(20)  | YES  |     | NULL    |       |
| HIRE_DATE      | date         | NO   |     | NULL    |       |
| JOB_ID         | varchar(10)  | NO   | MUL | NULL    |       |
| SALARY         | decimal(8,2) | YES  |     | NULL    |       |
| COMMISSION_PCT | decimal(2,2) | YES  |     | NULL    |       |
| MANAGER_ID     | decimal(6,0) | YES  | MUL | NULL    |       |
| DEPARTMENT_ID  | decimal(4,0) | YES  | MUL | NULL    |       |
+----------------+--------------+------+-----+---------+-------+
11 rows in set (0.00 sec)

MariaDB [csd2204s18]> select avg(salary) from employees;
+-------------+
| avg(salary) |
+-------------+
| 6461.682243 |
+-------------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> desc departments;
+-----------------+--------------+------+-----+---------+-------+
| Field           | Type         | Null | Key | Default | Extra |
+-----------------+--------------+------+-----+---------+-------+
| DEPARTMENT_ID   | decimal(4,0) | NO   | PRI | 0       |       |
| DEPARTMENT_NAME | varchar(30)  | NO   |     | NULL    |       |
| MANAGER_ID      | decimal(6,0) | YES  | MUL | NULL    |       |
| LOCATION_ID     | decimal(4,0) | YES  | MUL | NULL    |       |
+-----------------+--------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

MariaDB [csd2204s18]> select distinct(department_id), avg(salary) from employees;
+---------------+-------------+
| department_id | avg(salary) |
+---------------+-------------+
|            90 | 6461.682243 |
+---------------+-------------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select distinct(department_id) from employees;
+---------------+
| department_id |
+---------------+
|             0 |
|            10 |
|            20 |
|            30 |
|            40 |
|            50 |
|            60 |
|            70 |
|            80 |
|            90 |
|           100 |
|           110 |
+---------------+
12 rows in set (0.00 sec)

MariaDB [csd2204s18]> select distinct(department_id) from employees and select avg(salary) from employees;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'and select avg(salary) from employees' at line 1
MariaDB [csd2204s18]> select department_id from employees group by department_id;
+---------------+
| department_id |
+---------------+
|             0 |
|            10 |
|            20 |
|            30 |
|            40 |
|            50 |
|            60 |
|            70 |
|            80 |
|            90 |
|           100 |
|           110 |
+---------------+
12 rows in set (0.00 sec)

MariaDB [csd2204s18]> select department_id from employees group by department_id where salary= (select avg(salary) from employees);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'where salary= (select avg(salary) from employees)' at line 1
MariaDB [csd2204s18]> select department_id, avg(salary) from employees;
+---------------+-------------+
| department_id | avg(salary) |
+---------------+-------------+
|            90 | 6461.682243 |
+---------------+-------------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select department_id, avg(salary) from employees group by department_id;
+---------------+--------------+
| department_id | avg(salary)  |
+---------------+--------------+
|             0 |  7000.000000 |
|            10 |  4400.000000 |
|            20 |  9500.000000 |
|            30 |  4150.000000 |
|            40 |  6500.000000 |
|            50 |  3475.555556 |
|            60 |  5760.000000 |
|            70 | 10000.000000 |
|            80 |  8955.882353 |
|            90 | 19333.333333 |
|           100 |  8600.000000 |
|           110 | 10150.000000 |
+---------------+--------------+
12 rows in set (0.00 sec)

MariaDB [csd2204s18]> select first_name, last_name, salary from employees e where salary> (select avg(salary) from employees group by department_id having department_id=e.department_id);
+------------+-----------+----------+
| first_name | last_name | salary   |
+------------+-----------+----------+
| Steven     | King      | 24000.00 |
| Alexander  | Hunold    |  9000.00 |
| Bruce      | Ernst     |  6000.00 |
| Nancy      | Greenberg | 12000.00 |
| Daniel     | Faviet    |  9000.00 |
| Den        | Raphaely  | 11000.00 |
| Matthew    | Weiss     |  8000.00 |
| Adam       | Fripp     |  8200.00 |
| Payam      | Kaufling  |  7900.00 |
| Shanta     | Vollman   |  6500.00 |
| Kevin      | Mourgos   |  5800.00 |
| Renske     | Ladwig    |  3600.00 |
| Trenna     | Rajs      |  3500.00 |
| John       | Russell   | 14000.00 |
| Karen      | Partners  | 13500.00 |
| Alberto    | Errazuriz | 12000.00 |
| Gerald     | Cambrault | 11000.00 |
| Eleni      | Zlotkey   | 10500.00 |
| Peter      | Tucker    | 10000.00 |
| David      | Bernstein |  9500.00 |
| Peter      | Hall      |  9000.00 |
| Janette    | King      | 10000.00 |
| Patrick    | Sully     |  9500.00 |
| Allan      | McEwen    |  9000.00 |
| Clara      | Vishney   | 10500.00 |
| Danielle   | Greene    |  9500.00 |
| Lisa       | Ozer      | 11500.00 |
| Harrison   | Bloom     | 10000.00 |
| Tayler     | Fox       |  9600.00 |
| Ellen      | Abel      | 11000.00 |
| Nandita    | Sarchand  |  4200.00 |
| Alexis     | Bull      |  4100.00 |
| Kelly      | Chung     |  3800.00 |
| Jennifer   | Dilly     |  3600.00 |
| Sarah      | Bell      |  4000.00 |
| Britney    | Everett   |  3900.00 |
| Michael    | Hartstein | 13000.00 |
| Shelley    | Higgins   | 12000.00 |
+------------+-----------+----------+
38 rows in set (0.00 sec)

MariaDB [csd2204s18]> select distinct(salary) from employees e1 where 5=(select count(distinct salary) from employees e2 where e2.salary>=e1.salary);
+----------+
| salary   |
+----------+
| 13000.00 |
+----------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select distinct(salary) from employees e1 where 3=(select count(distinct salary) from employees e2 where e2.salary<=e1.salary);
+---------+
| salary  |
+---------+
| 2400.00 |
+---------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select *from(select*from employees order by employee-id desc limit 10) order by employee_id asc;
ERROR 1248 (42000): Every derived table must have its own alias
MariaDB [csd2204s18]> select *from(select*from employees order by employee_id desc limit 10) order by employee_id asc;
ERROR 1248 (42000): Every derived table must have its own alias
MariaDB [csd2204s18]> select *from(select*from employees order by employee_id desc limit 10)e1 order by employee_id asc;
+-------------+------------+-----------+----------+--------------+------------+------------+----------+----------------+------------+---------------+
| EMPLOYEE_ID | FIRST_NAME | LAST_NAME | EMAIL    | PHONE_NUMBER | HIRE_DATE  | JOB_ID     | SALARY   | COMMISSION_PCT | MANAGER_ID | DEPARTMENT_ID |
+-------------+------------+-----------+----------+--------------+------------+------------+----------+----------------+------------+---------------+
|         197 | Kevin      | Feeney    | KFEENEY  | 650.507.9822 | 1987-09-22 | SH_CLERK   |  3000.00 |           0.00 |        124 |            50 |
|         198 | Donald     | OConnell  | DOCONNEL | 650.507.9833 | 1987-09-23 | SH_CLERK   |  2600.00 |           0.00 |        124 |            50 |
|         199 | Douglas    | Grant     | DGRANT   | 650.507.9844 | 1987-09-24 | SH_CLERK   |  2600.00 |           0.00 |        124 |            50 |
|         200 | Jennifer   | Whalen    | JWHALEN  | 515.123.4444 | 1987-09-25 | AD_ASST    |  4400.00 |           0.00 |        101 |            10 |
|         201 | Michael    | Hartstein | MHARTSTE | 515.123.5555 | 1987-09-26 | MK_MAN     | 13000.00 |           0.00 |        100 |            20 |
|         202 | Pat        | Fay       | PFAY     | 603.123.6666 | 1987-09-27 | MK_REP     |  6000.00 |           0.00 |        201 |            20 |
|         203 | Susan      | Mavris    | SMAVRIS  | 515.123.7777 | 1987-09-28 | HR_REP     |  6500.00 |           0.00 |        101 |            40 |
|         204 | Hermann    | Baer      | HBAER    | 515.123.8888 | 1987-09-29 | PR_REP     | 10000.00 |           0.00 |        101 |            70 |
|         205 | Shelley    | Higgins   | SHIGGINS | 515.123.8080 | 1987-09-30 | AC_MGR     | 12000.00 |           0.00 |        101 |           110 |
|         206 | William    | Gietz     | WGIETZ   | 515.123.8181 | 1987-10-01 | AC_ACCOUNT |  8300.00 |           0.00 |        205 |           110 |
+-------------+------------+-----------+----------+--------------+------------+------------+----------+----------------+------------+---------------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> select department_id, department_name from departments where department_id not in(select distinct9department_id) from employees);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'from employees)' at line 1
MariaDB [csd2204s18]> select department_id, department_name from departments where department_id not in(select distinct(department_id) from employees);
+---------------+----------------------+
| department_id | department_name      |
+---------------+----------------------+
|           120 | Treasury             |
|           130 | Corporate Tax        |
|           140 | Control And Credit   |
|           150 | Shareholder Services |
|           160 | Benefits             |
|           170 | Manufacturing        |
|           180 | Construction         |
|           190 | Contracting          |
|           200 | Operations           |
|           210 | IT Support           |
|           220 | NOC                  |
|           230 | IT Helpdesk          |
|           240 | Government Sales     |
|           250 | Retail Sales         |
|           260 | Recruiting           |
|           270 | Payroll              |
+---------------+----------------------+
16 rows in set (0.00 sec)

MariaDB [csd2204s18]> select salary from employees order by salary desc limit 3;
+----------+
| salary   |
+----------+
| 24000.00 |
| 17000.00 |
| 17000.00 |
+----------+
3 rows in set (0.00 sec)

MariaDB [csd2204s18]> select distinct(salary) from employees order by salary desc limit 3;
+----------+
| salary   |
+----------+
| 24000.00 |
| 17000.00 |
| 14000.00 |
+----------+
3 rows in set (0.00 sec)

MariaDB [csd2204s18]> eit;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'eit' at line 1
MariaDB [csd2204s18]> exit;
