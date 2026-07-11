# 📚 Online Book Store SQL Project

A complete SQL project demonstrating database design, data analysis, and business insights using an Online Book Store database.

---

## 📌 Project Overview

This project simulates an online bookstore database where customers purchase books from different genres.

The project demonstrates:

- Database Design
- SQL Table Creation
- Data Import
- Basic SQL Queries
- Advanced SQL Queries
- Aggregate Functions
- Joins
- Group By
- Subqueries
- Business Insights

---

## 🛠 Technologies Used

- MySQL 8.0
- SQL
- CSV Dataset
- Git & GitHub

---

## 📂 Database Structure

The database contains three tables.

### 1. Books

Stores book information.

Columns:

- Book_ID
- Title
- Author
- Genre
- Price
- Published_Year
- Stock

---

### 2. Customers

Stores customer information.

Columns:

- Customer_ID
- Name
- Email
- City
- Country

---

### 3. Orders

Stores customer orders.

Columns:

- Order_ID
- Customer_ID
- Book_ID
- Quantity
- Order_Date
- Total_Amount

---

# Database Relationship

Customers
    │
    │ Customer_ID
    │
Orders
    │
    │ Book_ID
    │
Books

---

# Basic SQL Queries

The project includes basic SQL operations such as:

✔ Retrieve Fiction books

✔ Books published after 1950

✔ Customers from Denmark

✔ Orders placed in November 2023

✔ Total stock available

✔ Most expensive book

✔ Customers ordering multiple quantities

✔ Orders above $20

✔ Available genres

✔ Lowest stock book

✔ Total revenue

---

# Advanced SQL Queries

The project also includes advanced business analysis queries.

### Total Books Sold by Genre

Uses JOIN and GROUP BY to calculate total sales.

---

### Average Fantasy Book Price

Calculates average price using AVG().

---

### Customers with Multiple Orders

Uses GROUP BY and HAVING.

---

### Most Frequently Ordered Book

Ranks books based on number of orders.

---

### Top 3 Most Expensive Fantasy Books

Uses ORDER BY with LIMIT.

---

### Books Sold by Author

Calculates total books sold for each author.

---

### Customers Spending More Than $30

Lists customers with high-value purchases.

---

### Highest Spending Customer

Identifies the customer generating the highest revenue.

---

### Remaining Book Stock

Calculates stock remaining after fulfilling all orders.

---

# SQL Concepts Covered

- SELECT
- WHERE
- ORDER BY
- DISTINCT
- LIMIT
- Aggregate Functions
- INNER JOIN
- GROUP BY
- HAVING
- Subqueries
- SUM()
- AVG()
- MAX()
- MIN()
- COUNT()

---

# Business Insights

This project helps answer questions like:

- Which genre sells the most?
- Who is the highest spending customer?
- Which books need restocking?
- Which authors sell the most?
- What is the total revenue?
- Which books are most popular?

---

# Dataset

The project uses three CSV files:

- Books.csv
- Customers.csv
- Orders.csv

---

# How to Run

1. Clone the repository

```bash
git clone https://github.com/yourusername/Online-BookStore-SQL-Project.git
```

2. Open MySQL Workbench.

3. Create the database.

```sql
CREATE DATABASE online_bookstore_db;
USE online_bookstore_db;
```

4. Run

- create_tables.sql
- insert_data.sql

5. Execute

```
online_bookstore_queries.sql
```

---

# Learning Outcomes

After completing this project, you will understand:

- Relational Database Design
- Primary and Foreign Keys
- Data Import
- SQL Query Writing
- Data Analysis using SQL
- Business Reporting

---

# Author

Ashish Kumar

MBA Business Analytics

GitHub: https://github.com/ashishkumar-y
