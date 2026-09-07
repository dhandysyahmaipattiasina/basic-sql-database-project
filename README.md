# MySQL Library Database Project

## Overview

This project is an academic SQL database project developed using MySQL
and MySQL Workbench. The project focuses on relational database design,
data manipulation, JOIN operations, aggregation, and subqueries using
a library management scenario.

## Database Structure

The database consists of six related tables:

- `penerbit` — stores publisher information
- `penulis` — stores author information
- `kategori` — stores book categories
- `rak` — stores bookshelf information
- `buku` — stores book information
- `buku_penulis` — connects books with their authors

## SQL Skills Demonstrated

- Creating databases and tables
- Primary Key and Foreign Key
- INSERT, UPDATE, and DELETE
- SELECT and filtering
- INNER JOIN
- LEFT JOIN
- DISTINCT
- COUNT, AVG, and MAX
- GROUP BY
- HAVING
- Subqueries
- Nested queries
- Derived tables using `SELECT FROM (SELECT...)`
- Data validation and filtering

## Project Structure

```text
basic-sql-database-project/
│
├── README.md
│
├── sql/
│   ├── 01_create_database.sql
│   ├── 02_insert_data.sql
│   ├── 03_data_manipulation.sql
│   ├── 04_join.sql
│   └── 05_subquery.sql
│
└── screenshots/
    ├── database-structure.png
    ├── join-01.png
    ├── join-02.png
    ├── join-03.png
    ├── join-04.png
    ├── join-05.png
    ├── subquery-01.png
    ├── subquery-02.png
    ├── subquery-03.png
    ├── subquery-04.png
    ├── subquery-05.png
    ├── subquery-06.png
    ├── subquery-07.png
    └── subquery-08.png
