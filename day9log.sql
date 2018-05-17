MariaDB [csd2204s18]> desc countries;
+--------------+---------------+------+-----+---------+-------+
| Field        | Type          | Null | Key | Default | Extra |
+--------------+---------------+------+-----+---------+-------+
| COUNTRY_ID   | varchar(2)    | NO   | PRI | NULL    |       |
| COUNTRY_NAME | varchar(40)   | YES  |     | NULL    |       |
| REGION_ID    | decimal(10,0) | YES  | MUL | NULL    |       |
+--------------+---------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

MariaDB [csd2204s18]> desc jobs;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| JOB_ID     | varchar(10)  | NO   | PRI |         |       |
| JOB_TITLE  | varchar(35)  | NO   |     | NULL    |       |
| MIN_SALARY | decimal(6,0) | YES  |     | NULL    |       |
| MAX_SALARY | decimal(6,0) | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

MariaDB [csd2204s18]> desc locations;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| LOCATION_ID    | decimal(4,0) | NO   | PRI | 0       |       |
| STREET_ADDRESS | varchar(40)  | YES  |     | NULL    |       |
| POSTAL_CODE    | varchar(12)  | YES  |     | NULL    |       |
| CITY           | varchar(30)  | NO   | MUL | NULL    |       |
| STATE_PROVINCE | varchar(25)  | YES  | MUL | NULL    |       |
| COUNTRY_ID     | varchar(2)   | YES  | MUL | NULL    |       |
+----------------+--------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

MariaDB [csd2204s18]> desc regions;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| REGION_ID   | decimal(5,0) | NO   | PRI | NULL    |       |
| REGION_NAME | varchar(25)  | YES  | UNI | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

MariaDB [csd2204s18]> select salary from employess where last_name like 'bull';
ERROR 1146 (42S02): Table 'csd2204s18.employess' doesn't exist
MariaDB [csd2204s18]> select salary from employees where last_name like 'bull';
+---------+
| salary  |
+---------+
| 4100.00 |
+---------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select first_name, last_name, salary from employees where salary>4100;
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
| Jennifer    | Whalen     |  4400.00 |
| Michael     | Hartstein  | 13000.00 |
| Pat         | Fay        |  6000.00 |
| Susan       | Mavris     |  6500.00 |
| Hermann     | Baer       | 10000.00 |
| Shelley     | Higgins    | 12000.00 |
| William     | Gietz      |  8300.00 |
+-------------+------------+----------+
63 rows in set (0.00 sec)

MariaDB [csd2204s18]> select first_name, last_name, salary from employees where salary>( select salary from employees where last_name like 'bull');
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
| Jennifer    | Whalen     |  4400.00 |
| Michael     | Hartstein  | 13000.00 |
| Pat         | Fay        |  6000.00 |
| Susan       | Mavris     |  6500.00 |
| Hermann     | Baer       | 10000.00 |
| Shelley     | Higgins    | 12000.00 |
| William     | Gietz      |  8300.00 |
+-------------+------------+----------+
63 rows in set (0.01 sec)

MariaDB [csd2204s18]> select *from department;
ERROR 1146 (42S02): Table 'csd2204s18.department' doesn't exist
MariaDB [csd2204s18]> select *from departments;
+---------------+----------------------+------------+-------------+
| DEPARTMENT_ID | DEPARTMENT_NAME      | MANAGER_ID | LOCATION_ID |
+---------------+----------------------+------------+-------------+
|            10 | Administration       |        200 |        1700 |
|            20 | Marketing            |        201 |        1800 |
|            30 | Purchasing           |        114 |        1700 |
|            40 | Human Resources      |        203 |        2400 |
|            50 | Shipping             |        121 |        1500 |
|            60 | IT                   |        103 |        1400 |
|            70 | Public Relations     |        204 |        2700 |
|            80 | Sales                |        145 |        2500 |
|            90 | Executive            |        100 |        1700 |
|           100 | Finance              |        108 |        1700 |
|           110 | Accounting           |        205 |        1700 |
|           120 | Treasury             |          0 |        1700 |
|           130 | Corporate Tax        |          0 |        1700 |
|           140 | Control And Credit   |          0 |        1700 |
|           150 | Shareholder Services |          0 |        1700 |
|           160 | Benefits             |          0 |        1700 |
|           170 | Manufacturing        |          0 |        1700 |
|           180 | Construction         |          0 |        1700 |
|           190 | Contracting          |          0 |        1700 |
|           200 | Operations           |          0 |        1700 |
|           210 | IT Support           |          0 |        1700 |
|           220 | NOC                  |          0 |        1700 |
|           230 | IT Helpdesk          |          0 |        1700 |
|           240 | Government Sales     |          0 |        1700 |
|           250 | Retail Sales         |          0 |        1700 |
|           260 | Recruiting           |          0 |        1700 |
|           270 | Payroll              |          0 |        1700 |
+---------------+----------------------+------------+-------------+
27 rows in set (0.00 sec)

MariaDB [csd2204s18]> select department_id, department_name from departments where department_name like 'IT%';
+---------------+-----------------+
| department_id | department_name |
+---------------+-----------------+
|            60 | IT              |
|           210 | IT Support      |
|           230 | IT Helpdesk     |
+---------------+-----------------+
3 rows in set (0.00 sec)

MariaDB [csd2204s18]> select first_name, last_name, department_id from employees where (select department_id from departments where department_name like 'IT%');
ERROR 1242 (21000): Subquery returns more than 1 row
MariaDB [csd2204s18]> select first_name, last_name, department_id from employees where (select department_id from departments where department_name in 'IT%');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ''IT%')' at line 1
MariaDB [csd2204s18]> select first_name, last_name, department_id from employees where department_id IN (select department_id, department_name from departments where department_name like 'IT%');
ERROR 1241 (21000): Operand should contain 1 column(s)
MariaDB [csd2204s18]> select first_name, last_name, department_id from employees where department_id IN (select department_id from departments where department_name like 'IT%');
+------------+-----------+---------------+
| first_name | last_name | department_id |
+------------+-----------+---------------+
| Alexander  | Hunold    |            60 |
| Bruce      | Ernst     |            60 |
| David      | Austin    |            60 |
| Valli      | Pataballa |            60 |
| Diana      | Lorentz   |            60 |
+------------+-----------+---------------+
5 rows in set (0.01 sec)

MariaDB [csd2204s18]> select *from epartments;
ERROR 1146 (42S02): Table 'csd2204s18.epartments' doesn't exist
MariaDB [csd2204s18]> select *from departments;
+---------------+----------------------+------------+-------------+
| DEPARTMENT_ID | DEPARTMENT_NAME      | MANAGER_ID | LOCATION_ID |
+---------------+----------------------+------------+-------------+
|            10 | Administration       |        200 |        1700 |
|            20 | Marketing            |        201 |        1800 |
|            30 | Purchasing           |        114 |        1700 |
|            40 | Human Resources      |        203 |        2400 |
|            50 | Shipping             |        121 |        1500 |
|            60 | IT                   |        103 |        1400 |
|            70 | Public Relations     |        204 |        2700 |
|            80 | Sales                |        145 |        2500 |
|            90 | Executive            |        100 |        1700 |
|           100 | Finance              |        108 |        1700 |
|           110 | Accounting           |        205 |        1700 |
|           120 | Treasury             |          0 |        1700 |
|           130 | Corporate Tax        |          0 |        1700 |
|           140 | Control And Credit   |          0 |        1700 |
|           150 | Shareholder Services |          0 |        1700 |
|           160 | Benefits             |          0 |        1700 |
|           170 | Manufacturing        |          0 |        1700 |
|           180 | Construction         |          0 |        1700 |
|           190 | Contracting          |          0 |        1700 |
|           200 | Operations           |          0 |        1700 |
|           210 | IT Support           |          0 |        1700 |
|           220 | NOC                  |          0 |        1700 |
|           230 | IT Helpdesk          |          0 |        1700 |
|           240 | Government Sales     |          0 |        1700 |
|           250 | Retail Sales         |          0 |        1700 |
|           260 | Recruiting           |          0 |        1700 |
|           270 | Payroll              |          0 |        1700 |
+---------------+----------------------+------------+-------------+
27 rows in set (0.00 sec)

MariaDB [csd2204s18]> select *from locations;
+-------------+---------------------------+--------------+---------------------+-------------------+------------+
| LOCATION_ID | STREET_ADDRESS            | POSTAL_CODE  | CITY                | STATE_PROVINCE    | COUNTRY_ID |
+-------------+---------------------------+--------------+---------------------+-------------------+------------+
|        1000 | 1297 Via Cola di Rie      | 989          | Roma                |                   | IT         |
|        1100 | 93091 Calle della Testa   | 10934        | Venice              |                   | IT         |
|        1200 | 2017 Shinjuku-ku          | 1689         | Tokyo               | Tokyo Prefecture  | JP         |
|        1300 | 9450 Kamiya-cho           | 6823         | Hiroshima           |                   | JP         |
|        1400 | 2014 Jabberwocky Rd       | 26192        | Southlake           | Texas             | US         |
|        1500 | 2011 Interiors Blvd       | 99236        | South San Francisco | California        | US         |
|        1600 | 2007 Zagora St            | 50090        | South Brunswick     | New Jersey        | US         |
|        1700 | 2004 Charade Rd           | 98199        | Seattle             | Washington        | US         |
|        1800 | 147 Spadina Ave           | M5V 2L7      | Toronto             | Ontario           | CA         |
|        1900 | 6092 Boxwood St           | YSW 9T2      | Whitehorse          | Yukon             | CA         |
|        2000 | 40-5-12 Laogianggen       | 190518       | Beijing             |                   | CN         |
|        2100 | 1298 Vileparle (E)        | 490231       | Bombay              | Maharashtra       | IN         |
|        2200 | 12-98 Victoria Street     | 2901         | Sydney              | New South Wales   | AU         |
|        2300 | 198 Clementi North        | 540198       | Singapore           |                   | SG         |
|        2400 | 8204 Arthur St            |              | London              |                   | UK         |
|        2500 | "Magdalen Centre          |  The Oxford  | OX9 9ZB             | Oxford            | Ox         |
|        2600 | 9702 Chester Road         | 9629850293   | Stretford           | Manchester        | UK         |
|        2700 | Schwanthalerstr. 7031     | 80925        | Munich              | Bavaria           | DE         |
|        2800 | Rua Frei Caneca 1360      | 01307-002    | Sao Paulo           | Sao Paulo         | BR         |
|        2900 | 20 Rue des Corps-Saints   | 1730         | Geneva              | Geneve            | CH         |
|        3000 | Murtenstrasse 921         | 3095         | Bern                | BE                | CH         |
|        3100 | Pieter Breughelstraat 837 | 3029SK       | Utrecht             | Utrecht           | NL         |
|        3200 | Mariano Escobedo 9991     | 11932        | Mexico City         | "Distrito Federal | "          |
+-------------+---------------------------+--------------+---------------------+-------------------+------------+
23 rows in set (0.00 sec)

MariaDB [csd2204s18]> select first_name, last_name from employees where manager_id !='0';
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

MariaDB [csd2204s18]> select country_id, location_id from locations where country_id='US'; 
+------------+-------------+
| country_id | location_id |
+------------+-------------+
| US         |        1400 |
| US         |        1500 |
| US         |        1600 |
| US         |        1700 |
+------------+-------------+
4 rows in set (0.00 sec)

MariaDB [csd2204s18]> select location_id from locations where country_id='US'; 
+-------------+
| location_id |
+-------------+
|        1400 |
|        1500 |
|        1600 |
|        1700 |
+-------------+
4 rows in set (0.00 sec)

MariaDB [csd2204s18]> select deprtment_id from departments where location_id in(1400,1500,1600,1700);
ERROR 1054 (42S22): Unknown column 'deprtment_id' in 'field list'
MariaDB [csd2204s18]> select department_id from departments where location_id in(1400,1500,1600,1700);
+---------------+
| department_id |
+---------------+
|            10 |
|            30 |
|            50 |
|            60 |
|            90 |
|           100 |
|           110 |
|           120 |
|           130 |
|           140 |
|           150 |
|           160 |
|           170 |
|           180 |
|           190 |
|           200 |
|           210 |
|           220 |
|           230 |
|           240 |
|           250 |
|           260 |
|           270 |
+---------------+
23 rows in set (0.00 sec)

MariaDB [csd2204s18]> select department_id from departments where location_id in(select location_id from locations where country_id='US');
+---------------+
| department_id |
+---------------+
|            60 |
|            50 |
|            10 |
|            30 |
|            90 |
|           100 |
|           110 |
|           120 |
|           130 |
|           140 |
|           150 |
|           160 |
|           170 |
|           180 |
|           190 |
|           200 |
|           210 |
|           220 |
|           230 |
|           240 |
|           250 |
|           260 |
|           270 |
+---------------+
23 rows in set (0.00 sec)

MariaDB [csd2204s18]> select first_name, last_name from employees where manager_id !='0' and department_id in (select department_id from departments where location_id in(select location_id from locations where country_id='US'));
+-------------+-------------+
| first_name  | last_name   |
+-------------+-------------+
| Alexander   | Hunold      |
| Bruce       | Ernst       |
| David       | Austin      |
| Valli       | Pataballa   |
| Diana       | Lorentz     |
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
| Den         | Raphaely    |
| Alexander   | Khoo        |
| Shelli      | Baida       |
| Sigal       | Tobias      |
| Guy         | Himuro      |
| Karen       | Colmenares  |
| Neena       | Kochhar     |
| Lex         | De Haan     |
| Nancy       | Greenberg   |
| Daniel      | Faviet      |
| John        | Chen        |
| Ismael      | Sciarra     |
| Jose Manuel | Urman       |
| Luis        | Popp        |
| Shelley     | Higgins     |
| William     | Gietz       |
+-------------+-------------+
67 rows in set (0.00 sec)

MariaDB [csd2204s18]> select manager_id from employees where manager_id !=0;
+------------+
| manager_id |
+------------+
|        100 |
|        100 |
|        100 |
|        100 |
|        100 |
|        100 |
|        100 |
|        100 |
|        100 |
|        100 |
|        100 |
|        100 |
|        100 |
|        100 |
|        101 |
|        101 |
|        101 |
|        101 |
|        101 |
|        102 |
|        103 |
|        103 |
|        103 |
|        103 |
|        108 |
|        108 |
|        108 |
|        108 |
|        108 |
|        114 |
|        114 |
|        114 |
|        114 |
|        114 |
|        120 |
|        120 |
|        120 |
|        120 |
|        120 |
|        120 |
|        120 |
|        120 |
|        121 |
|        121 |
|        121 |
|        121 |
|        121 |
|        121 |
|        121 |
|        121 |
|        122 |
|        122 |
|        122 |
|        122 |
|        122 |
|        122 |
|        122 |
|        122 |
|        123 |
|        123 |
|        123 |
|        123 |
|        123 |
|        123 |
|        123 |
|        123 |
|        124 |
|        124 |
|        124 |
|        124 |
|        124 |
|        124 |
|        124 |
|        124 |
|        145 |
|        145 |
|        145 |
|        145 |
|        145 |
|        145 |
|        146 |
|        146 |
|        146 |
|        146 |
|        146 |
|        146 |
|        147 |
|        147 |
|        147 |
|        147 |
|        147 |
|        147 |
|        148 |
|        148 |
|        148 |
|        148 |
|        148 |
|        148 |
|        149 |
|        149 |
|        149 |
|        149 |
|        149 |
|        149 |
|        201 |
|        205 |
+------------+
106 rows in set (0.00 sec)

MariaDB [csd2204s18]> select distinct(manager_id) from employees where manager_id !=0;
+------------+
| manager_id |
+------------+
|        100 |
|        101 |
|        102 |
|        103 |
|        108 |
|        114 |
|        120 |
|        121 |
|        122 |
|        123 |
|        124 |
|        145 |
|        146 |
|        147 |
|        148 |
|        149 |
|        201 |
|        205 |
+------------+
18 rows in set (0.06 sec)

MariaDB [csd2204s18]> select first_name, last_name from employees where employee_id in(select distinct(manager_id) from employees where manager_id !=0);
+------------+-----------+
| first_name | last_name |
+------------+-----------+
| Steven     | King      |
| Neena      | Kochhar   |
| Lex        | De Haan   |
| Alexander  | Hunold    |
| Nancy      | Greenberg |
| Den        | Raphaely  |
| Matthew    | Weiss     |
| Adam       | Fripp     |
| Payam      | Kaufling  |
| Shanta     | Vollman   |
| Kevin      | Mourgos   |
| John       | Russell   |
| Karen      | Partners  |
| Alberto    | Errazuriz |
| Gerald     | Cambrault |
| Eleni      | Zlotkey   |
| Michael    | Hartstein |
| Shelley    | Higgins   |
+------------+-----------+
18 rows in set (0.00 sec)

MariaDB [csd2204s18]> select avg(salary) from employees;
+-------------+
| avg(salary) |
+-------------+
| 6461.682243 |
+-------------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select first_name, last_name, salary from employees where salary>(select avg(salary) from employees);
+-------------+------------+----------+
| first_name  | last_name  | salary   |
+-------------+------------+----------+
| Steven      | King       | 24000.00 |
| Neena       | Kochhar    | 17000.00 |
| Lex         | De Haan    | 17000.00 |
| Alexander   | Hunold     |  9000.00 |
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
| Lisa        | Ozer       | 11500.00 |
| Harrison    | Bloom      | 10000.00 |
| Tayler      | Fox        |  9600.00 |
| William     | Smith      |  7400.00 |
| Elizabeth   | Bates      |  7300.00 |
| Ellen       | Abel       | 11000.00 |
| Alyssa      | Hutton     |  8800.00 |
| Jonathon    | Taylor     |  8600.00 |
| Jack        | Livingston |  8400.00 |
| Kimberely   | Grant      |  7000.00 |
| Michael     | Hartstein  | 13000.00 |
| Susan       | Mavris     |  6500.00 |
| Hermann     | Baer       | 10000.00 |
| Shelley     | Higgins    | 12000.00 |
| William     | Gietz      |  8300.00 |
+-------------+------------+----------+
51 rows in set (0.00 sec)

MariaDB [csd2204s18]> select *from employess limit 5;
ERROR 1146 (42S02): Table 'csd2204s18.employess' doesn't exist
MariaDB [csd2204s18]> select *from employees limit 5;
+-------------+------------+-----------+----------+--------------+------------+---------+----------+----------------+------------+---------------+
| EMPLOYEE_ID | FIRST_NAME | LAST_NAME | EMAIL    | PHONE_NUMBER | HIRE_DATE  | JOB_ID  | SALARY   | COMMISSION_PCT | MANAGER_ID | DEPARTMENT_ID |
+-------------+------------+-----------+----------+--------------+------------+---------+----------+----------------+------------+---------------+
|         100 | Steven     | King      | SKING    | 515.123.4567 | 1987-06-17 | AD_PRES | 24000.00 |           0.00 |          0 |            90 |
|         101 | Neena      | Kochhar   | NKOCHHAR | 515.123.4568 | 1987-06-18 | AD_VP   | 17000.00 |           0.00 |        100 |            90 |
|         102 | Lex        | De Haan   | LDEHAAN  | 515.123.4569 | 1987-06-19 | AD_VP   | 17000.00 |           0.00 |        100 |            90 |
|         103 | Alexander  | Hunold    | AHUNOLD  | 590.423.4567 | 1987-06-20 | IT_PROG |  9000.00 |           0.00 |        102 |            60 |
|         104 | Bruce      | Ernst     | BERNST   | 590.423.4568 | 1987-06-21 | IT_PROG |  6000.00 |           0.00 |        103 |            60 |
+-------------+------------+-----------+----------+--------------+------------+---------+----------+----------------+------------+---------------+
5 rows in set (0.00 sec)

MariaDB [csd2204s18]> select *from jobs limit 5;
+------------+-------------------------------+------------+------------+
| JOB_ID     | JOB_TITLE                     | MIN_SALARY | MAX_SALARY |
+------------+-------------------------------+------------+------------+
| AD_PRES    | President                     |      20000 |      40000 |
| AD_VP      | Administration Vice President |      15000 |      30000 |
| AD_ASST    | Administration Assistant      |       3000 |       6000 |
| FI_MGR     | Finance Manager               |       8200 |      16000 |
| FI_ACCOUNT | Accountant                    |       4200 |       9000 |
+------------+-------------------------------+------------+------------+
5 rows in set (0.00 sec)

MariaDB [csd2204s18]> select *from job-id from employees;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '-id from employees' at line 1
MariaDB [csd2204s18]> select *from job_id from employees;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'from employees' at line 1
MariaDB [csd2204s18]> select  job_id from employees;
+------------+
| job_id     |
+------------+
| AC_ACCOUNT |
| AC_MGR     |
| AD_ASST    |
| AD_PRES    |
| AD_VP      |
| AD_VP      |
| FI_ACCOUNT |
| FI_ACCOUNT |
| FI_ACCOUNT |
| FI_ACCOUNT |
| FI_ACCOUNT |
| FI_MGR     |
| HR_REP     |
| IT_PROG    |
| IT_PROG    |
| IT_PROG    |
| IT_PROG    |
| IT_PROG    |
| MK_MAN     |
| MK_REP     |
| PR_REP     |
| PU_CLERK   |
| PU_CLERK   |
| PU_CLERK   |
| PU_CLERK   |
| PU_CLERK   |
| PU_MAN     |
| SA_MAN     |
| SA_MAN     |
| SA_MAN     |
| SA_MAN     |
| SA_MAN     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SH_CLERK   |
| SH_CLERK   |
| SH_CLERK   |
| SH_CLERK   |
| SH_CLERK   |
| SH_CLERK   |
| SH_CLERK   |
| SH_CLERK   |
| SH_CLERK   |
| SH_CLERK   |
| SH_CLERK   |
| SH_CLERK   |
| SH_CLERK   |
| SH_CLERK   |
| SH_CLERK   |
| SH_CLERK   |
| SH_CLERK   |
| SH_CLERK   |
| SH_CLERK   |
| SH_CLERK   |
| ST_CLERK   |
| ST_CLERK   |
| ST_CLERK   |
| ST_CLERK   |
| ST_CLERK   |
| ST_CLERK   |
| ST_CLERK   |
| ST_CLERK   |
| ST_CLERK   |
| ST_CLERK   |
| ST_CLERK   |
| ST_CLERK   |
| ST_CLERK   |
| ST_CLERK   |
| ST_CLERK   |
| ST_CLERK   |
| ST_CLERK   |
| ST_CLERK   |
| ST_CLERK   |
| ST_CLERK   |
| ST_MAN     |
| ST_MAN     |
| ST_MAN     |
| ST_MAN     |
| ST_MAN     |
+------------+
107 rows in set (0.00 sec)

MariaDB [csd2204s18]> select  job_id, fist_name from employees;
ERROR 1054 (42S22): Unknown column 'fist_name' in 'field list'
MariaDB [csd2204s18]> select  job_id, first_name from employees;
+------------+-------------+
| job_id     | first_name  |
+------------+-------------+
| AD_PRES    | Steven      |
| AD_VP      | Neena       |
| AD_VP      | Lex         |
| IT_PROG    | Alexander   |
| IT_PROG    | Bruce       |
| IT_PROG    | David       |
| IT_PROG    | Valli       |
| IT_PROG    | Diana       |
| FI_MGR     | Nancy       |
| FI_ACCOUNT | Daniel      |
| FI_ACCOUNT | John        |
| FI_ACCOUNT | Ismael      |
| FI_ACCOUNT | Jose Manuel |
| FI_ACCOUNT | Luis        |
| PU_MAN     | Den         |
| PU_CLERK   | Alexander   |
| PU_CLERK   | Shelli      |
| PU_CLERK   | Sigal       |
| PU_CLERK   | Guy         |
| PU_CLERK   | Karen       |
| ST_MAN     | Matthew     |
| ST_MAN     | Adam        |
| ST_MAN     | Payam       |
| ST_MAN     | Shanta      |
| ST_MAN     | Kevin       |
| ST_CLERK   | Julia       |
| ST_CLERK   | Irene       |
| ST_CLERK   | James       |
| ST_CLERK   | Steven      |
| ST_CLERK   | Laura       |
| ST_CLERK   | Mozhe       |
| ST_CLERK   | James       |
| ST_CLERK   | TJ          |
| ST_CLERK   | Jason       |
| ST_CLERK   | Michael     |
| ST_CLERK   | Ki          |
| ST_CLERK   | Hazel       |
| ST_CLERK   | Renske      |
| ST_CLERK   | Stephen     |
| ST_CLERK   | John        |
| ST_CLERK   | Joshua      |
| ST_CLERK   | Trenna      |
| ST_CLERK   | Curtis      |
| ST_CLERK   | Randall     |
| ST_CLERK   | Peter       |
| SA_MAN     | John        |
| SA_MAN     | Karen       |
| SA_MAN     | Alberto     |
| SA_MAN     | Gerald      |
| SA_MAN     | Eleni       |
| SA_REP     | Peter       |
| SA_REP     | David       |
| SA_REP     | Peter       |
| SA_REP     | Christopher |
| SA_REP     | Nanette     |
| SA_REP     | Oliver      |
| SA_REP     | Janette     |
| SA_REP     | Patrick     |
| SA_REP     | Allan       |
| SA_REP     | Lindsey     |
| SA_REP     | Louise      |
| SA_REP     | Sarath      |
| SA_REP     | Clara       |
| SA_REP     | Danielle    |
| SA_REP     | Mattea      |
| SA_REP     | David       |
| SA_REP     | Sundar      |
| SA_REP     | Amit        |
| SA_REP     | Lisa        |
| SA_REP     | Harrison    |
| SA_REP     | Tayler      |
| SA_REP     | William     |
| SA_REP     | Elizabeth   |
| SA_REP     | Sundita     |
| SA_REP     | Ellen       |
| SA_REP     | Alyssa      |
| SA_REP     | Jonathon    |
| SA_REP     | Jack        |
| SA_REP     | Kimberely   |
| SA_REP     | Charles     |
| SH_CLERK   | Winston     |
| SH_CLERK   | Jean        |
| SH_CLERK   | Martha      |
| SH_CLERK   | Girard      |
| SH_CLERK   | Nandita     |
| SH_CLERK   | Alexis      |
| SH_CLERK   | Julia       |
| SH_CLERK   | Anthony     |
| SH_CLERK   | Kelly       |
| SH_CLERK   | Jennifer    |
| SH_CLERK   | Timothy     |
| SH_CLERK   | Randall     |
| SH_CLERK   | Sarah       |
| SH_CLERK   | Britney     |
| SH_CLERK   | Samuel      |
| SH_CLERK   | Vance       |
| SH_CLERK   | Alana       |
| SH_CLERK   | Kevin       |
| SH_CLERK   | Donald      |
| SH_CLERK   | Douglas     |
| AD_ASST    | Jennifer    |
| MK_MAN     | Michael     |
| MK_REP     | Pat         |
| HR_REP     | Susan       |
| PR_REP     | Hermann     |
| AC_MGR     | Shelley     |
| AC_ACCOUNT | William     |
+------------+-------------+
107 rows in set (0.00 sec)

MariaDB [csd2204s18]> select min_salary from jobs where job_id in(select  job_id, first_name from employees);
ERROR 1241 (21000): Operand should contain 1 column(s)
MariaDB [csd2204s18]> 
MariaDB [csd2204s18]> select min_salary from jobs where job_id in(select  job_id from employees);
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
19 rows in set (0.00 sec)

MariaDB [csd2204s18]> select job_id, min_salary from jobs where job_id in(select  job_id from employees);
+------------+------------+
| job_id     | min_salary |
+------------+------------+
| AD_PRES    |      20000 |
| AD_VP      |      15000 |
| AD_ASST    |       3000 |
| FI_MGR     |       8200 |
| FI_ACCOUNT |       4200 |
| AC_MGR     |       8200 |
| AC_ACCOUNT |       4200 |
| SA_MAN     |      10000 |
| SA_REP     |       6000 |
| PU_MAN     |       8000 |
| PU_CLERK   |       2500 |
| ST_MAN     |       5500 |
| ST_CLERK   |       2000 |
| SH_CLERK   |       2500 |
| IT_PROG    |       4000 |
| MK_MAN     |       9000 |
| MK_REP     |       4000 |
| HR_REP     |       4000 |
| PR_REP     |       4500 |
+------------+------------+
19 rows in set (0.00 sec)

MariaDB [csd2204s18]> select first_name, last_name, salary, job_id from employees;
+-------------+-------------+----------+------------+
| first_name  | last_name   | salary   | job_id     |
+-------------+-------------+----------+------------+
| Steven      | King        | 24000.00 | AD_PRES    |
| Neena       | Kochhar     | 17000.00 | AD_VP      |
| Lex         | De Haan     | 17000.00 | AD_VP      |
| Alexander   | Hunold      |  9000.00 | IT_PROG    |
| Bruce       | Ernst       |  6000.00 | IT_PROG    |
| David       | Austin      |  4800.00 | IT_PROG    |
| Valli       | Pataballa   |  4800.00 | IT_PROG    |
| Diana       | Lorentz     |  4200.00 | IT_PROG    |
| Nancy       | Greenberg   | 12000.00 | FI_MGR     |
| Daniel      | Faviet      |  9000.00 | FI_ACCOUNT |
| John        | Chen        |  8200.00 | FI_ACCOUNT |
| Ismael      | Sciarra     |  7700.00 | FI_ACCOUNT |
| Jose Manuel | Urman       |  7800.00 | FI_ACCOUNT |
| Luis        | Popp        |  6900.00 | FI_ACCOUNT |
| Den         | Raphaely    | 11000.00 | PU_MAN     |
| Alexander   | Khoo        |  3100.00 | PU_CLERK   |
| Shelli      | Baida       |  2900.00 | PU_CLERK   |
| Sigal       | Tobias      |  2800.00 | PU_CLERK   |
| Guy         | Himuro      |  2600.00 | PU_CLERK   |
| Karen       | Colmenares  |  2500.00 | PU_CLERK   |
| Matthew     | Weiss       |  8000.00 | ST_MAN     |
| Adam        | Fripp       |  8200.00 | ST_MAN     |
| Payam       | Kaufling    |  7900.00 | ST_MAN     |
| Shanta      | Vollman     |  6500.00 | ST_MAN     |
| Kevin       | Mourgos     |  5800.00 | ST_MAN     |
| Julia       | Nayer       |  3200.00 | ST_CLERK   |
| Irene       | Mikkilineni |  2700.00 | ST_CLERK   |
| James       | Landry      |  2400.00 | ST_CLERK   |
| Steven      | Markle      |  2200.00 | ST_CLERK   |
| Laura       | Bissot      |  3300.00 | ST_CLERK   |
| Mozhe       | Atkinson    |  2800.00 | ST_CLERK   |
| James       | Marlow      |  2500.00 | ST_CLERK   |
| TJ          | Olson       |  2100.00 | ST_CLERK   |
| Jason       | Mallin      |  3300.00 | ST_CLERK   |
| Michael     | Rogers      |  2900.00 | ST_CLERK   |
| Ki          | Gee         |  2400.00 | ST_CLERK   |
| Hazel       | Philtanker  |  2200.00 | ST_CLERK   |
| Renske      | Ladwig      |  3600.00 | ST_CLERK   |
| Stephen     | Stiles      |  3200.00 | ST_CLERK   |
| John        | Seo         |  2700.00 | ST_CLERK   |
| Joshua      | Patel       |  2500.00 | ST_CLERK   |
| Trenna      | Rajs        |  3500.00 | ST_CLERK   |
| Curtis      | Davies      |  3100.00 | ST_CLERK   |
| Randall     | Matos       |  2600.00 | ST_CLERK   |
| Peter       | Vargas      |  2500.00 | ST_CLERK   |
| John        | Russell     | 14000.00 | SA_MAN     |
| Karen       | Partners    | 13500.00 | SA_MAN     |
| Alberto     | Errazuriz   | 12000.00 | SA_MAN     |
| Gerald      | Cambrault   | 11000.00 | SA_MAN     |
| Eleni       | Zlotkey     | 10500.00 | SA_MAN     |
| Peter       | Tucker      | 10000.00 | SA_REP     |
| David       | Bernstein   |  9500.00 | SA_REP     |
| Peter       | Hall        |  9000.00 | SA_REP     |
| Christopher | Olsen       |  8000.00 | SA_REP     |
| Nanette     | Cambrault   |  7500.00 | SA_REP     |
| Oliver      | Tuvault     |  7000.00 | SA_REP     |
| Janette     | King        | 10000.00 | SA_REP     |
| Patrick     | Sully       |  9500.00 | SA_REP     |
| Allan       | McEwen      |  9000.00 | SA_REP     |
| Lindsey     | Smith       |  8000.00 | SA_REP     |
| Louise      | Doran       |  7500.00 | SA_REP     |
| Sarath      | Sewall      |  7000.00 | SA_REP     |
| Clara       | Vishney     | 10500.00 | SA_REP     |
| Danielle    | Greene      |  9500.00 | SA_REP     |
| Mattea      | Marvins     |  7200.00 | SA_REP     |
| David       | Lee         |  6800.00 | SA_REP     |
| Sundar      | Ande        |  6400.00 | SA_REP     |
| Amit        | Banda       |  6200.00 | SA_REP     |
| Lisa        | Ozer        | 11500.00 | SA_REP     |
| Harrison    | Bloom       | 10000.00 | SA_REP     |
| Tayler      | Fox         |  9600.00 | SA_REP     |
| William     | Smith       |  7400.00 | SA_REP     |
| Elizabeth   | Bates       |  7300.00 | SA_REP     |
| Sundita     | Kumar       |  6100.00 | SA_REP     |
| Ellen       | Abel        | 11000.00 | SA_REP     |
| Alyssa      | Hutton      |  8800.00 | SA_REP     |
| Jonathon    | Taylor      |  8600.00 | SA_REP     |
| Jack        | Livingston  |  8400.00 | SA_REP     |
| Kimberely   | Grant       |  7000.00 | SA_REP     |
| Charles     | Johnson     |  6200.00 | SA_REP     |
| Winston     | Taylor      |  3200.00 | SH_CLERK   |
| Jean        | Fleaur      |  3100.00 | SH_CLERK   |
| Martha      | Sullivan    |  2500.00 | SH_CLERK   |
| Girard      | Geoni       |  2800.00 | SH_CLERK   |
| Nandita     | Sarchand    |  4200.00 | SH_CLERK   |
| Alexis      | Bull        |  4100.00 | SH_CLERK   |
| Julia       | Dellinger   |  3400.00 | SH_CLERK   |
| Anthony     | Cabrio      |  3000.00 | SH_CLERK   |
| Kelly       | Chung       |  3800.00 | SH_CLERK   |
| Jennifer    | Dilly       |  3600.00 | SH_CLERK   |
| Timothy     | Gates       |  2900.00 | SH_CLERK   |
| Randall     | Perkins     |  2500.00 | SH_CLERK   |
| Sarah       | Bell        |  4000.00 | SH_CLERK   |
| Britney     | Everett     |  3900.00 | SH_CLERK   |
| Samuel      | McCain      |  3200.00 | SH_CLERK   |
| Vance       | Jones       |  2800.00 | SH_CLERK   |
| Alana       | Walsh       |  3100.00 | SH_CLERK   |
| Kevin       | Feeney      |  3000.00 | SH_CLERK   |
| Donald      | OConnell    |  2600.00 | SH_CLERK   |
| Douglas     | Grant       |  2600.00 | SH_CLERK   |
| Jennifer    | Whalen      |  4400.00 | AD_ASST    |
| Michael     | Hartstein   | 13000.00 | MK_MAN     |
| Pat         | Fay         |  6000.00 | MK_REP     |
| Susan       | Mavris      |  6500.00 | HR_REP     |
| Hermann     | Baer        | 10000.00 | PR_REP     |
| Shelley     | Higgins     | 12000.00 | AC_MGR     |
| William     | Gietz       |  8300.00 | AC_ACCOUNT |
+-------------+-------------+----------+------------+
107 rows in set (0.00 sec)

MariaDB [csd2204s18]> select first_name, last_name, salary, job_id from employees where salary=(select min_salary from jobs where employees.job_id=jobs.job_id);
+------------+------------+---------+----------+
| first_name | last_name  | salary  | job_id   |
+------------+------------+---------+----------+
| Karen      | Colmenares | 2500.00 | PU_CLERK |
| Martha     | Sullivan   | 2500.00 | SH_CLERK |
| Randall    | Perkins    | 2500.00 | SH_CLERK |
+------------+------------+---------+----------+
3 rows in set (0.02 sec)

MariaDB [csd2204s18]> select avg(salary) from employees;
+-------------+
| avg(salary) |
+-------------+
| 6461.682243 |
+-------------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select department_id from depatments where department_name like 'IT%';
ERROR 1146 (42S02): Table 'csd2204s18.depatments' doesn't exist
MariaDB [csd2204s18]> select department_id from departments where department_name like 'IT%';
+---------------+
| department_id |
+---------------+
|            60 |
|           210 |
|           230 |
+---------------+
3 rows in set (0.00 sec)

MariaDB [csd2204s18]> select first_name, last_name, salary, department_id from employees where salary >(select avg(salary) from employees) and department_id in(select department_id from departments where department_name like 'IT%');
+------------+-----------+---------+---------------+
| first_name | last_name | salary  | department_id |
+------------+-----------+---------+---------------+
| Alexander  | Hunold    | 9000.00 |            60 |
+------------+-----------+---------+---------------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> exit;
