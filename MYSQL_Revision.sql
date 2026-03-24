Create database My_sql_revision;
use My_sql_revision;
-- Table Creation
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50) NOT NULL,
    city VARCHAR(50),
    segment VARCHAR(20),
    signup_date DATE
);


CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_name VARCHAR(50),
    category VARCHAR(30),
    quantity INT CHECK (quantity > 0),
    price_per_unit INT CHECK (price_per_unit > 0),
    order_date DATE,
    payment_method VARCHAR(20),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);



-  5. Data Insertion
-- 🔹 Customers Data
INSERT INTO customers VALUES
(1, 'Ravi Kumar', 'Hyderabad', 'Premium', '2024-01-01'),
(2, 'Sneha Reddy', 'Bangalore', 'VIP', '2024-01-02'),
(3, 'Arjun Mehta', 'Chennai', 'Regular', '2024-01-03'),
(4, 'Neha Sharma', 'Mumbai', 'Premium', '2024-01-04'),
(5, 'Kiran Verma', 'Delhi', 'Regular', '2024-01-05'),
(6, 'Pooja Singh', 'Hyderabad', 'VIP', '2024-01-06'),
(7, 'Amit Patel', 'Ahmedabad', 'Regular', '2024-01-07'),
(8, 'Divya Nair', 'Kochi', 'Premium', '2024-01-08'),
(9, 'Rahul Das', 'Kolkata', 'Regular', '2024-01-09'),
(10, 'Anjali Gupta', 'Delhi', 'VIP', '2024-01-10');




-- 🔹 Orders Data
INSERT INTO orders VALUES
(101, 1, 'Laptop', 'Electronics', 1, 60000, '2024-02-01', 'Card'),
(102, 2, 'Mobile', 'Electronics', 1, 20000, '2024-02-02', 'UPI'),
(103, 3, 'T-Shirt', 'Clothing', 2, 800, '2024-02-03', 'COD'),
(104, 4, 'Jeans', 'Clothing', 1, 1500, '2024-02-04', 'Card'),
(105, 5, 'Rice Bag', 'Grocery', 3, 1200, '2024-02-05', 'UPI'),
(106, 1, 'Mobile', 'Electronics', 1, 18000, '2024-02-06', 'UPI'),
(107, 2, 'Laptop', 'Electronics', 1, 55000, '2024-02-07', 'Card'),
(108, 6, 'Rice Bag', 'Grocery', 2, 1100, '2024-02-08', 'COD'),
(109, 7, 'T-Shirt', 'Clothing', 3, 700, '2024-02-09', 'UPI'),
(110, 8, 'Jeans', 'Clothing', 2, 1400, '2024-02-10', 'Card'),
(111, 9, 'Mobile', 'Electronics', 1, 22000, '2024-02-11', 'UPI'),
(112, 10, 'Laptop', 'Electronics', 1, 65000, '2024-02-12', 'Card'),
(113, 3, 'Rice Bag', 'Grocery', 1, 1000, '2024-02-13', 'COD'),
(114, 4, 'T-Shirt', 'Clothing', 2, 900, '2024-02-14', 'UPI'),
(115, 6, 'Mobile', 'Electronics', 1, 21000, '2024-02-15', 'Card');



-- SQL Interview Questions (Retail Sales Case Study)

-- SECTION 1: WHERE Clause 
-- Q1. Find all orders where the category is Electronics
-- Q2. Get orders where amount (price_per_unit) is greater than 20000
-- Q3. Find orders placed after 2024-02-05
-- Q4. Get customers who belong to VIP segment
-- Q5. Find orders where payment method is UPI
-- Q6. Get orders where category is Clothing and quantity > 1

-- SECTION 2: ORDER BY + WHERE (Q7–Q9)
-- Q7. Get all orders sorted by price_per_unit in descending order
-- Q8. Find top 3 highest priced orders
-- Q9. Get Electronics orders sorted by order_date (latest first)

-- SECTION 3: GROUP BY Basics (Q10–Q13)
-- Q10. Find total number of orders per category
-- Q11. Calculate total revenue per category
-- 👉 (Hint: quantity * price_per_unit)
-- Q12. Find total orders placed by each customer
-- Q13. Find total quantity sold per product


-- SECTION 4: WHERE + GROUP BY 
-- Q14. Find total revenue for Electronics category
-- Q15. Count number of UPI transactions per category
-- Q16. Find total sales for orders placed after 2024-02-05
-- Q17. Find total quantity sold for Clothing products

-- SECTION 5: GROUP BY + HAVING (Q18–Q21)
-- Q18. Find categories where total revenue is greater than 50000
-- Q19. Find customers who placed more than 1 order
-- Q20. Find products where total quantity sold is greater than 3
-- Q21. Find categories with more than 2 orders

-- SECTION 6: WHERE + GROUP BY + HAVING 

-- Q22. Find total revenue for Electronics category where revenue > 50000
-- Q23. Find customers (only VIP) who placed more than 1 order
-- Q24. Find categories (only UPI payments) having total sales > 30000
-- Q25. Find customers who spent more than 50000 in total







