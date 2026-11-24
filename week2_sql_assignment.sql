-- =====================================================================
-- Week 2 Assignment: Introduction to SQL
-- Database : sales
-- Topics   : SELECT, WHERE, ORDER BY, LIMIT
-- =====================================================================

-- ---------------------------------------------------------------------
-- Setup: confirm the database exists and select it
-- ---------------------------------------------------------------------
SHOW DATABASES;
USE sales;


-- ---------------------------------------------------------------------
-- Question 1: Retrieve Payment Information
-- Retrieve checkNumber, paymentDate and amount from the payments table.
-- ---------------------------------------------------------------------
SELECT
    checkNumber,
    paymentDate,
    amount
FROM payments;


-- ---------------------------------------------------------------------
-- Question 2: Find Orders in Process
-- Retrieve orderDate, requiredDate and status from the orders table,
-- only where status is 'In Process', newest orders first.
-- ---------------------------------------------------------------------
SELECT
    orderDate,
    requiredDate,
    status
FROM orders
WHERE status = 'In Process'
ORDER BY orderDate DESC;


-- ---------------------------------------------------------------------
-- Question 3: Find Sales Representatives
-- Retrieve firstName, lastName and email from the employees table,
-- only where jobTitle is 'Sales Rep', sorted by employeeNumber descending.
-- ---------------------------------------------------------------------
SELECT
    firstName,
    lastName,
    email
FROM employees
WHERE jobTitle = 'Sales Rep'
ORDER BY employeeNumber DESC;


-- ---------------------------------------------------------------------
-- Question 4: Retrieve Office Information
-- Retrieve all columns and all records from the offices table.
-- ---------------------------------------------------------------------
SELECT *
FROM offices;


-- ---------------------------------------------------------------------
-- Question 5: Retrieve the Five Cheapest Products
-- Retrieve productName and quantityInStock from the products table,
-- sorted by buyPrice ascending, limited to 5 records.
-- ---------------------------------------------------------------------
SELECT
    productName,
    quantityInStock
FROM products
ORDER BY buyPrice ASC
LIMIT 5;
