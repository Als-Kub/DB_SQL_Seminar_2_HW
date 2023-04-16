CREATE DATABASE hw_1;

USE hw_1;

CREATE TABLE bucket
(id INT NOT NULL,
order_date DATE NOT NULL,
bucket VARCHAR(30) NOT NULL
);

INSERT bucket (id, order_date, bucket)
VALUES
("1", "2021-01-01", "101 to 300"),
("1", "2021-01-02", "101 to 300"),
("1", "2021-01-03", "less than equal to 100"),
("1", "2021-01-04", "101 to 300"),
("1", "2021-01-05", "greater than 300");

UPDATE bucket SET bucket = "Small order" WHERE bucket = "less than equal to 100";
UPDATE bucket SET bucket = "Average order" WHERE bucket = "101 to 300";
UPDATE bucket SET bucket = "Large order" WHERE bucket = "greater than 300";

SELECT * FROM bucket;

CREATE TABLE orders
(orderid INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
employeeid VARCHAR(10) NOT NULL,
amount DECIMAL(5,2) NOT NULL,
orderstatus VARCHAR(10) NOT NULL);


INSERT orders (employeeid, amount, orderstatus)
VALUES
("e03", "15.00", "OPEN"),
("e01", "25.50", "OPEN"),
("e05", "100.70", "CLOSED"),
("e02", "22.18", "OPEN"),
("e04", "9.50", "CANCELLED"),
("e0", "99.99", "OPEN");

SELECT * FROM orders;

SELECT orderid, orderstatus,
CASE orderstatus
	WHEN "OPEN"
		THEN "Order is in open state"
	WHEN "CLOSED"
		THEN "Order is closed"	
	ELSE "Order is cancelled"
END AS order_summary
FROM orders;

/* NULL означает отсутствие, неизвестность информации, в то время как 0 представляет арифметическое значение нуля*/
