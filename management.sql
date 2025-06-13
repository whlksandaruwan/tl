CREATE DATABASE IF NOT EXISTS vehicle_service;
USE vehicle_service;

CREATE TABLE IF NOT EXISTS vehicle_parts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    part_type VARCHAR(50) NOT NULL,
    brand VARCHAR(50),
    quantity_in_stock INT DEFAULT 0 CHECK (quantity_in_stock >= 0),
    price DECIMAL(10,2) CHECK (price >= 0),
    status ENUM('In Stock', 'Out of Stock') DEFAULT 'In Stock'
);
