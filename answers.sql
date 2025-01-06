-- Create the Bill Management System Database
CREATE DATABASE bill_management_system;

-- Use the newly created database
USE bill_management_system;

-- Active: 1736183703121@@127.0.0.1@3306

-- Create categories table
CREATE TABLE categories (
    categoryID INT PRIMARY KEY AUTO_INCREMENT,
    categoryName VARCHAR(50)
);

-- Insert 5 categories
INSERT INTO categories (categoryName) VALUES 
('Electronics'),
('Furniture'),
('Utilities'),
('Groceries'),
('Transportation');

-- Create customer table
CREATE TABLE customer (
    customerID INT PRIMARY KEY AUTO_INCREMENT,
    customerName VARCHAR(50) NOT NULL,
    email VARCHAR(50),
    phoneNumber VARCHAR(11),
    customerAddress VARCHAR(20),
    dateCreated TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert 4 customer records
INSERT INTO customer (customerName, email, phoneNumber, customerAddress) VALUES
('John Doe', 'john.doe@example.com', '0712345678', 'Nairobi'),
('Jane Smith', 'jane.smith@example.com', '0787654321', 'Mombasa'),
('Alice Johnson', 'alice.j@example.com', '0723456789', 'Kisumu'),
('Bob Williams', 'bob.w@example.com', '0734567890', 'Nakuru');

-- Update customerAddress for customers with ID 1 and 2
UPDATE customer 
SET customerAddress = 'Lavington'
WHERE customerID IN (1, 2);

-- Delete category with categoryID 2
DELETE FROM categories 
WHERE categoryID = 2;