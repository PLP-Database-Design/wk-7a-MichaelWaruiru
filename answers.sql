-- Question 1
CREATE TABLE productDetail (
  OrderID INT PRIMARY KEY,
  customerName VARCHAR(100),
  product VARCHAR(100)
);

-- Insert transformed data into the 1NF table
INSERT INTO productDetail (orderID, customerName, product)
VALUES
    (101, 'John Doe', 'Laptop'),
    (101, 'John Doe', 'Mouse'),
    (102, 'Jane Smith', 'Tablet'),
    (102, 'Jane Smith', 'Keyboard'),
    (102, 'Jane Smith', 'Mouse'),
    (103, 'Emily Clark', 'Phone');

SELECT * FROM productDetail;

-- Question 2
CREATE TABLE orders (
  orderID INT PRIMARY KEY,
  customerName VARCHAR(100)
)

-- Insert data into orders table
INSERT INTO orders (orderID, customerName) 
VALUES  (101, 'John Doe'),
        (102, 'Jane Smith'),
        (103, 'Emily Clark');

-- Create a new table for orderProducts
CREATE TABLE orderProducts(
  orderID INT,
  product VARCHAR(100),
  quantity INT,
  PRIMARY KEY(orderID, product),
  FOREIGN KEY(orderID) REFERENCES orders(orderID)
);

-- Insert data into the OrderProducts table
INSERT INTO orderProducts (orderID, product, quantity)
VALUES
    (101, 'Laptop', 2),
    (101, 'Mouse', 1),
    (102, 'Tablet', 3),
    (102, 'Keyboard', 1),
    (102, 'Mouse', 2),
    (103, 'Phone', 1);

SELECT * FROM orders;
SELECT * FROM orderProducts;