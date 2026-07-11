-- 1 Retrieve all books in the "Fiction" genre
SELECT * FROM Books WHERE Genre='Fiction';

-- 2 Find books published after the year 1950
SELECT * FROM Books WHERE Published_Year >=1950;

-- 3 List all customers from Canada
SELECT * FROM customers WHERE Country = 'Denmark';

-- 4 Show orders placed in November 2023
SELECT * FROM Orders WHERE Order_Date BETWEEN '2023-11-01' AND '2023-11-30';

-- 5 Retrieve the total stock of books available
SELECT SUM(Stock) AS Total_Stocks FROM Books ;

-- 6 Find the details of the most expensive book
SELECT * FROM Books ORDER BY Price DESC LIMIT 1;

SELECT * FROM Books WHERE Price = (SELECT MAX(Price) FROM Books);

-- 7 Show all customers who ordered more than 1 quantity of a book

SELECT Customers.Customer_ID, Customers.Name, Customers.Email,orders.Quantity 
From Customers INNER JOIN orders
ON Customers.Customer_ID = orders.Customer_ID
where orders.Quantity >1
;

-- 8 Retrieve all orders where the total amount exceeds $20
SELECT * FROM Orders WHERE Total_Amount > 20;

-- 9 List all genres available in the Books table
SELECT DISTINCT Genre FROM Books;

-- 10 Find the book with the lowest stock
SELECT * FROM Books WHERE Stock= (SELECT MIN(Stock) FROM Books);

-- 11 Calculate the total revenue generated from all orders
SELECT SUM(Total_Amount) AS Total_Revenue FROM Orders;





-- ADVANCE

-- 1. Retrieve the total number of books sold for each genre
SELECT Books.Genre, SUM(Orders.Quantity) AS Total_Book_Sold
FROM Orders INNER JOIN Books 
ON Orders.Book_ID = Books.Book_ID
group by Books.Genre ;

 
-- 2. Find the average price of books in the "Fantasy" genre
SELECT AVG(Price) AS Avg_Price FROM books WHERE Genre="Fantasy";


-- 3. List customers who have placed at least 2 orders
SELECT Customers.Customer_ID, Customers.Name, count(Orders.Order_ID) AS Order_count
FROM Customers INNER JOIN Orders
ON Customers.Customer_ID = Orders.Customer_ID 
GROUP BY Customers.Customer_ID
HAVING count(Orders.Order_ID) >=2 ;

-- 4 FIND THE MOST FRQUENT ORDEED BOOK

SELECT Books.Book_ID, Books.Title, count(Orders.Order_ID) as order_count 
FROM Books JOIN Orders
ON Books.Book_ID = Orders.Book_ID
GROUP BY Books.Book_ID
order by order_count desc;

-- 5 Show the TOP 3 expensive books of 'fantasy' genre
SELECT * from Books
WHERE Genre = 'Fantasy'
ORDER BY Books.Price DESC LIMIT 3;

-- 6 Reterive the total number of books sold by each authors
SELECT Books.Author, SUM(Orders.Quantity) AS Total_Quantity
From Books JOIN Orders
ON Books.Book_ID = Orders.Book_ID
GROUP BY Books.Author;

-- 7 List the cities where customers who spent over $30 are located

SELECT distinct Customers.Name, Customers.City, Orders.Total_Amount
From Customers JOIN Orders 
ON Customers.Customer_ID = Orders.Customer_ID 
WHERE Orders.Total_Amount >= 30
ORDER BY Orders.Total_Amount ;


-- 8 Find the customer who spent the most on orders
SELECT Customers.Customer_ID, Customers.Name, SUM(Orders.Total_Amount) AS Total_Spent
From Customers JOIN Orders 
ON Customers.Customer_ID = Orders.Customer_ID 
GROUP BY Customers.Customer_ID, Customers.Name
ORDER BY Total_Spent DESC LIMIT 1 ;


-- 9 Calculate the stock remaining after fulfilling all orders

SELECT distinct Books.Book_ID, Books.Title, Books.Stock, SUM(Orders.Quantity) AS sold_quantity,(Books.Stock - SUM(Orders.Quantity)) AS Avl_stock
FROM Orders JOIN Books
ON Books.Book_ID = Orders.Book_ID
GROUP BY Books.Book_ID, Books.Title
ORDER BY Books.Book_ID;




