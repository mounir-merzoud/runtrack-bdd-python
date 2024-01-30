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

