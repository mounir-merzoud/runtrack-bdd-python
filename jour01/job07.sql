Enter password: ***********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 12
Server version: 8.0.30 MySQL Community Server - GPL

Copyright (c) 2000, 2022, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.
mysql> CREATE DATABASE LaPlateforme;
Query OK, 1 row affected (0.01 sec)

mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| laplateforme       |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
5 rows in set (0.02 sec)
mysql> USE LaPlateforme; -- Sélectionner la base de données
Database changed
mysql>
mysql> CREATE TABLE etudiant (
    ->     id INT AUTO_INCREMENT PRIMARY KEY,
    ->     nom VARCHAR(255) NOT NULL,
    ->     prenom VARCHAR(25) NOT NULL,
    ->     age INT NOT NULL,
    ->     email VARCHAR(255) NOT NULL
    -> );
mysql>
mysql> SHOW TABLES; -- Pour vérifier que la table a été créée
+------------------------+
| Tables_in_laplateforme |
+------------------------+
| etudiant               |
+------------------------+
1 row in set (0.01 sec)

mysql> SELECT
    ->     COLUMN_NAME AS 'Field',
    ->     COLUMN_TYPE AS 'Type',
    ->     IS_NULLABLE AS 'Null',
    ->     COLUMN_KEY AS 'Key',
    ->     COLUMN_DEFAULT AS 'Default',
    ->     EXTRA AS 'Extra'
    -> FROM
    ->     information_schema.columns
    -> WHERE
    ->     TABLE_SCHEMA = 'LaPlateforme' AND TABLE_NAME = 'etudiant';
+--------+--------------+------+-----+---------+----------------+
| Field  | Type         | Null | Key | Default | Extra          |
+--------+--------------+------+-----+---------+----------------+
| id     | int          | NO   | PRI | NULL    | auto_increment |
| nom    | varchar(255) | YES  |     | NULL    |                |
| prenom | varchar(25)  | YES  |     | NULL    |                |
| age    | int          | YES  |     | NULL    |                |
| email  | varchar(255) | YES  |     | NULL    |                |
+--------+--------------+------+-----+---------+----------------+
5 rows in set (0.00 sec)
mysql> INSERT INTO etudiant (nom, prenom, age, email)
    -> VALUES
    ->     ('Betty', 'Spaghetti', 23, 'betty.Spaghetti@laplateforme.io'),
    ->     ('Chuck', 'Steak', 45, 'chuck.steak@laplateforme.io'),
    ->     ('John', 'Doe', 18, 'john.doe@laplateforme.io'),
    ->     ('Binkie', 'Barnes', 16, 'binkie.barnes@laplateforme.io'),
    ->     ('Gertrude', 'Dupuis', 20, 'gertrude.dupuis@laplateforme.io');
    mysql> SELECT * FROM etudiant;
+----+----------+-----------+------+---------------------------------+
| id | nom      | prenom    | age  | email                           |
+----+----------+-----------+------+---------------------------------+
|  1 | Betty    | Spaghetti |   23 | betty.Spaghetti@laplateforme.io |
|  2 | Chuck    | Steak     |   45 | chuck.steak@laplateforme.io     |
|  3 | John     | Doe       |   18 | john.doe@laplateforme.io        |
|  4 | Binkie   | Barnes    |   16 | binkie.barnes@laplateforme.io   |
|  5 | Gertrude | Dupuis    |   20 | gertrude.dupuis@laplateforme.io |
+----+----------+-----------+------+---------------------------------+
5 rows in set (0.00 sec)