CREATE DATABASE online_bookstore_DB;
USE online_bookstore_DB;

CREATE TABLE Books (
    Book_ID INT PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    Author VARCHAR(150) NOT NULL,
    Genre VARCHAR(100),
    Published_Year INT,
    Price DECIMAL(10,2),
    Stock INT
);

CREATE TABLE Customers (
    Customer_ID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(150) UNIQUE,
    Phone BIGINT,
    City VARCHAR(100),
    Country VARCHAR(100)
);

CREATE TABLE Orders (
    Order_ID INT PRIMARY KEY,
    Customer_ID INT,
    Book_ID INT,
    Order_Date DATE,
    Quantity INT,
    Total_Amount DECIMAL(10,2),

    FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID)
);

ALTER TABLE Orders
ADD CONSTRAINT fk_book
FOREIGN KEY (Book_ID)
REFERENCES Books(Book_ID);

SHOW TABLES;



