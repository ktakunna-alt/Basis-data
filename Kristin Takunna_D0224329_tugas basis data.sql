Microsoft Windows [Version 10.0.26100.6899]
(c) Microsoft Corporation. All rights reserved.

C:\Users\ASUS>cd\xampp\mysql\bin

C:\xampp\mysql\bin>mysql -u root
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 10
Server version: 10.4.32-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> -- Nama: Kristin Takunna
MariaDB [(none)]> -- NIM: D0224329
MariaDB [(none)]> -- Kelas: informatika D
MariaDB [(none)]> --
MariaDB [(none)]> create database My_cafe;
Query OK, 1 row affected (0.002 sec)

MariaDB [(none)]> use My_cafe;
Database changed
MariaDB [My_cafe]> DROP TABLE IF EXISTS menu_items;
Query OK, 0 rows affected, 1 warning (0.001 sec)

MariaDB [My_cafe]>
MariaDB [My_cafe]> CREATE TABLE menu_items (
    ->     item_id INT PRIMARY KEY,
    ->     nama_menu VARCHAR(50),
    ->     kategori VARCHAR(30),
    ->     harga DECIMAL(10,2)
    -> );
Query OK, 0 rows affected (0.076 sec)

MariaDB [My_cafe]> desc menu_items;
+-----------+---------------+------+-----+---------+-------+
| Field     | Type          | Null | Key | Default | Extra |
+-----------+---------------+------+-----+---------+-------+
| item_id   | int(11)       | NO   | PRI | NULL    |       |
| nama_menu | varchar(50)   | YES  |     | NULL    |       |
| kategori  | varchar(30)   | YES  |     | NULL    |       |
| harga     | decimal(10,2) | YES  |     | NULL    |       |
+-----------+---------------+------+-----+---------+-------+
4 rows in set (0.006 sec)

MariaDB [My_cafe]> INSERT INTO menu_items (item_id, nama_menu, kategori, harga) VALUES
    -> (1, 'Kopi Susu Gula Aren', 'Minuman', 25000),
    -> (2, 'Es Teh Lemon', 'Minuman', 18000),
    -> (3, 'Matcha Latte', 'Minuman', 32000),
    -> (4, 'Coklat Panas', 'Minuman', 23000),
    -> (5, 'Jus Stroberi', 'Minuman', 27000),
    -> (6, 'Cheesecake Klasik', 'Dessert', 35000),
    -> (7, 'Bolu Red Velvet', 'Dessert', 42000),
    -> (8, 'Brownies Coklat', 'Dessert', 30000),
    -> (9, 'Roti Croissant', 'Roti', 21000),
    -> (10, 'Roti Sobek Coklat', 'Roti', 20000),
    -> (11, 'Kue Kacang', 'Snack', 15000),
    -> (12, 'Puding Coklat', 'Dessert', 18000),
    -> (13, 'Mie Goreng Mini', 'Snack', 22000),
    -> (14, 'Teh Tarik', 'Minuman', 20000),
    -> (15, 'Kue Muffin Blueberry', 'Roti', 24000);
Query OK, 15 rows affected (0.062 sec)
Records: 15  Duplicates: 0  Warnings: 0

MariaDB [My_cafe]> select * from menu_items;
+---------+----------------------+----------+----------+
| item_id | nama_menu            | kategori | harga    |
+---------+----------------------+----------+----------+
|       1 | Kopi Susu Gula Aren  | Minuman  | 25000.00 |
|       2 | Es Teh Lemon         | Minuman  | 18000.00 |
|       3 | Matcha Latte         | Minuman  | 32000.00 |
|       4 | Coklat Panas         | Minuman  | 23000.00 |
|       5 | Jus Stroberi         | Minuman  | 27000.00 |
|       6 | Cheesecake Klasik    | Dessert  | 35000.00 |
|       7 | Bolu Red Velvet      | Dessert  | 42000.00 |
|       8 | Brownies Coklat      | Dessert  | 30000.00 |
|       9 | Roti Croissant       | Roti     | 21000.00 |
|      10 | Roti Sobek Coklat    | Roti     | 20000.00 |
|      11 | Kue Kacang           | Snack    | 15000.00 |
|      12 | Puding Coklat        | Dessert  | 18000.00 |
|      13 | Mie Goreng Mini      | Snack    | 22000.00 |
|      14 | Teh Tarik            | Minuman  | 20000.00 |
|      15 | Kue Muffin Blueberry | Roti     | 24000.00 |
+---------+----------------------+----------+----------+
15 rows in set (0.001 sec)

MariaDB [My_cafe]> DROP TABLE IF EXISTS customers;
Query OK, 0 rows affected, 1 warning (0.001 sec)

MariaDB [My_cafe]>
MariaDB [My_cafe]> CREATE TABLE customers (
    ->     customer_id INT PRIMARY KEY,
    ->     nama_pelanggan VARCHAR(50),
    ->     nomor_telepon VARCHAR(20),
    ->     status_member VARCHAR(20)
    -> );
Query OK, 0 rows affected (0.016 sec)

MariaDB [My_cafe]> INSERT INTO customers (customer_id, nama_pelanggan, nomor_telepon, status_member) VALUES
    -> (1, 'Alya Putri', '0812001001', 'Silver'),
    -> (2, 'Bima Saputra', '0812001002', 'Gold'),
    -> (3, 'Citra Lestari', '0812001003', 'Non Member'),
    -> (4, 'Dewi Nurul', '0812001004', 'Silver'),
    -> (5, 'Edgar Pratama', '0812001005', 'Gold'),
    -> (6, 'Fiona Zahra', '0812001006', 'Non Member'),
    -> (7, 'Gilang Arya', '0812001007', 'Silver'),
    -> (8, 'Hana Kumala', '0812001008', 'Non Member'),
    -> (9, 'Indra Tegar', '0812001009', 'Gold'),
    -> (10, 'Jihan Aulia', '0812001010', 'Non Member'),
    -> (11, 'Kevin Mulyadi', '0812001011', 'Silver'),
    -> (12, 'Laras Puspita', '0812001012', 'Gold'),
    -> (13, 'Miko Fernando', '0812001013', 'Non Member'),
    -> (14, 'Nayla Humaira', '0812001014', 'Silver'),
    -> (15, 'Oscar Prasetyo', '0812001015', 'Gold');
Query OK, 15 rows affected (0.065 sec)
Records: 15  Duplicates: 0  Warnings: 0

MariaDB [My_cafe]> SELECT * FROM CUSTOMERS;
+-------------+----------------+---------------+---------------+
| customer_id | nama_pelanggan | nomor_telepon | status_member |
+-------------+----------------+---------------+---------------+
|           1 | Alya Putri     | 0812001001    | Silver        |
|           2 | Bima Saputra   | 0812001002    | Gold          |
|           3 | Citra Lestari  | 0812001003    | Non Member    |
|           4 | Dewi Nurul     | 0812001004    | Silver        |
|           5 | Edgar Pratama  | 0812001005    | Gold          |
|           6 | Fiona Zahra    | 0812001006    | Non Member    |
|           7 | Gilang Arya    | 0812001007    | Silver        |
|           8 | Hana Kumala    | 0812001008    | Non Member    |
|           9 | Indra Tegar    | 0812001009    | Gold          |
|          10 | Jihan Aulia    | 0812001010    | Non Member    |
|          11 | Kevin Mulyadi  | 0812001011    | Silver        |
|          12 | Laras Puspita  | 0812001012    | Gold          |
|          13 | Miko Fernando  | 0812001013    | Non Member    |
|          14 | Nayla Humaira  | 0812001014    | Silver        |
|          15 | Oscar Prasetyo | 0812001015    | Gold          |
+-------------+----------------+---------------+---------------+
15 rows in set (0.001 sec)

MariaDB [My_cafe]> DROP TABLE IF EXISTS orders;
Query OK, 0 rows affected, 1 warning (0.002 sec)

MariaDB [My_cafe]>
MariaDB [My_cafe]> CREATE TABLE orders (
    ->     order_id INT PRIMARY KEY,
    ->     customer_id INT,
    ->     item_id INT,
    ->     jumlah INT,
    ->     tanggal_pesan DATE,
    ->     FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    ->     FOREIGN KEY (item_id) REFERENCES menu_items(item_id)
    -> );
Query OK, 0 rows affected (0.078 sec)

MariaDB [My_cafe]> INSERT INTO orders (order_id, customer_id, item_id, jumlah, tanggal_pesan) VALUES
    -> (1, 1, 1, 2, '2025-10-01'),
    -> (2, 2, 3, 1, '2025-10-01'),
    -> (3, 3, 9, 3, '2025-10-02'),
    -> (4, 4, 4, 1, '2025-10-02'),
    -> (5, 5, 7, 2, '2025-10-02'),
    -> (6, 6, 2, 1, '2025-10-03'),
    -> (7, 7, 11, 4, '2025-10-03'),
    -> (8, 8, 6, 1, '2025-10-03'),
    -> (9, 9, 5, 2, '2025-10-04'),
    -> (10, 10, 8, 1, '2025-10-04'),
    -> (11, 11, 12, 2, '2025-10-04'),
    -> (12, 12, 14, 1, '2025-10-04'),
    -> (13, 13, 1, 1, '2025-10-05'),
    -> (14, 14, 15, 2, '2025-10-05'),
    -> (15, 15, 10, 3, '2025-10-05');
Query OK, 15 rows affected (0.008 sec)
Records: 15  Duplicates: 0  Warnings: 0

MariaDB [My_cafe]> SELECT * FROM ORDERS;
+----------+-------------+---------+--------+---------------+
| order_id | customer_id | item_id | jumlah | tanggal_pesan |
+----------+-------------+---------+--------+---------------+
|        1 |           1 |       1 |      2 | 2025-10-01    |
|        2 |           2 |       3 |      1 | 2025-10-01    |
|        3 |           3 |       9 |      3 | 2025-10-02    |
|        4 |           4 |       4 |      1 | 2025-10-02    |
|        5 |           5 |       7 |      2 | 2025-10-02    |
|        6 |           6 |       2 |      1 | 2025-10-03    |
|        7 |           7 |      11 |      4 | 2025-10-03    |
|        8 |           8 |       6 |      1 | 2025-10-03    |
|        9 |           9 |       5 |      2 | 2025-10-04    |
|       10 |          10 |       8 |      1 | 2025-10-04    |
|       11 |          11 |      12 |      2 | 2025-10-04    |
|       12 |          12 |      14 |      1 | 2025-10-04    |
|       13 |          13 |       1 |      1 | 2025-10-05    |
|       14 |          14 |      15 |      2 | 2025-10-05    |
|       15 |          15 |      10 |      3 | 2025-10-05    |
+----------+-------------+---------+--------+---------------+
15 rows in set (0.001 sec)

MariaDB [My_cafe]> -- WHERE
MariaDB [My_cafe]> Cari menu kategori minuman
    -> --
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'Cari menu kategori minuman' at line 1
MariaDB [My_cafe]> -- Cari menu kategori minuman
MariaDB [My_cafe]> SELECT * FROM menu_items
    -> WHERE kategori = 'Minuman';
+---------+---------------------+----------+----------+
| item_id | nama_menu           | kategori | harga    |
+---------+---------------------+----------+----------+
|       1 | Kopi Susu Gula Aren | Minuman  | 25000.00 |
|       2 | Es Teh Lemon        | Minuman  | 18000.00 |
|       3 | Matcha Latte        | Minuman  | 32000.00 |
|       4 | Coklat Panas        | Minuman  | 23000.00 |
|       5 | Jus Stroberi        | Minuman  | 27000.00 |
|      14 | Teh Tarik           | Minuman  | 20000.00 |
+---------+---------------------+----------+----------+
6 rows in set (0.003 sec)

MariaDB [My_cafe]> -- cari pelanggan member gold
MariaDB [My_cafe]> SELECT * FROM customers
    -> WHERE status_member = 'Gold';
+-------------+----------------+---------------+---------------+
| customer_id | nama_pelanggan | nomor_telepon | status_member |
+-------------+----------------+---------------+---------------+
|           2 | Bima Saputra   | 0812001002    | Gold          |
|           5 | Edgar Pratama  | 0812001005    | Gold          |
|           9 | Indra Tegar    | 0812001009    | Gold          |
|          12 | Laras Puspita  | 0812001012    | Gold          |
|          15 | Oscar Prasetyo | 0812001015    | Gold          |
+-------------+----------------+---------------+---------------+
5 rows in set (0.001 sec)

MariaDB [My_cafe]> -- cari order lebih dari 2
MariaDB [My_cafe]> SELECT * FROM orders
    -> WHERE jumlah > 2;
+----------+-------------+---------+--------+---------------+
| order_id | customer_id | item_id | jumlah | tanggal_pesan |
+----------+-------------+---------+--------+---------------+
|        3 |           3 |       9 |      3 | 2025-10-02    |
|        7 |           7 |      11 |      4 | 2025-10-03    |
|       15 |          15 |      10 |      3 | 2025-10-05    |
+----------+-------------+---------+--------+---------------+
3 rows in set (0.001 sec)

MariaDB [My_cafe]> -- cari yang mengandung kata kue
MariaDB [My_cafe]> SELECT * FROM menu_items
    -> WHERE nama_menu LIKE '%Kue%';
+---------+----------------------+----------+----------+
| item_id | nama_menu            | kategori | harga    |
+---------+----------------------+----------+----------+
|      11 | Kue Kacang           | Snack    | 15000.00 |
|      15 | Kue Muffin Blueberry | Roti     | 24000.00 |
+---------+----------------------+----------+----------+
2 rows in set (0.062 sec)

MariaDB [My_cafe]> -- QUERY BETWEEN
MariaDB [My_cafe]> -- Harga antara 20 - 30rb
MariaDB [My_cafe]> SELECT * FROM menu_items
    -> WHERE harga BETWEEN 20000 AND 30000;
+---------+----------------------+----------+----------+
| item_id | nama_menu            | kategori | harga    |
+---------+----------------------+----------+----------+
|       1 | Kopi Susu Gula Aren  | Minuman  | 25000.00 |
|       4 | Coklat Panas         | Minuman  | 23000.00 |
|       5 | Jus Stroberi         | Minuman  | 27000.00 |
|       8 | Brownies Coklat      | Dessert  | 30000.00 |
|       9 | Roti Croissant       | Roti     | 21000.00 |
|      10 | Roti Sobek Coklat    | Roti     | 20000.00 |
|      13 | Mie Goreng Mini      | Snack    | 22000.00 |
|      14 | Teh Tarik            | Minuman  | 20000.00 |
|      15 | Kue Muffin Blueberry | Roti     | 24000.00 |
+---------+----------------------+----------+----------+
9 rows in set (0.001 sec)

MariaDB [My_cafe]> -- tanggal pesan 2 sampai 4 oktober
MariaDB [My_cafe]> SELECT * FROM orders
    -> WHERE tanggal_pesan BETWEEN '2025-10-02' AND '2025-10-04';
+----------+-------------+---------+--------+---------------+
| order_id | customer_id | item_id | jumlah | tanggal_pesan |
+----------+-------------+---------+--------+---------------+
|        3 |           3 |       9 |      3 | 2025-10-02    |
|        4 |           4 |       4 |      1 | 2025-10-02    |
|        5 |           5 |       7 |      2 | 2025-10-02    |
|        6 |           6 |       2 |      1 | 2025-10-03    |
|        7 |           7 |      11 |      4 | 2025-10-03    |
|        8 |           8 |       6 |      1 | 2025-10-03    |
|        9 |           9 |       5 |      2 | 2025-10-04    |
|       10 |          10 |       8 |      1 | 2025-10-04    |
|       11 |          11 |      12 |      2 | 2025-10-04    |
|       12 |          12 |      14 |      1 | 2025-10-04    |
+----------+-------------+---------+--------+---------------+
10 rows in set (0.046 sec)

MariaDB [My_cafe]> -- jumlah porsi 1-2
MariaDB [My_cafe]> SELECT * FROM orders
    -> WHERE jumlah BETWEEN 1 AND 2;
+----------+-------------+---------+--------+---------------+
| order_id | customer_id | item_id | jumlah | tanggal_pesan |
+----------+-------------+---------+--------+---------------+
|        1 |           1 |       1 |      2 | 2025-10-01    |
|        2 |           2 |       3 |      1 | 2025-10-01    |
|        4 |           4 |       4 |      1 | 2025-10-02    |
|        5 |           5 |       7 |      2 | 2025-10-02    |
|        6 |           6 |       2 |      1 | 2025-10-03    |
|        8 |           8 |       6 |      1 | 2025-10-03    |
|        9 |           9 |       5 |      2 | 2025-10-04    |
|       10 |          10 |       8 |      1 | 2025-10-04    |
|       11 |          11 |      12 |      2 | 2025-10-04    |
|       12 |          12 |      14 |      1 | 2025-10-04    |
|       13 |          13 |       1 |      1 | 2025-10-05    |
|       14 |          14 |      15 |      2 | 2025-10-05    |
+----------+-------------+---------+--------+---------------+
12 rows in set (0.001 sec)

MariaDB [My_cafe]>s
