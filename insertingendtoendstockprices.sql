
-- create
CREATE TABLE stock_prices (
    company_id INT,
    date DATE,
    open_price FLOAT,
    high_price FLOAT,
    low_price FLOAT,
    close_price FLOAT,
    PRIMARY KEY (company_id, date)
);
INSERT INTO stock_prices (company_id, date, open_price, high_price, low_price, close_price) VALUES
(1, '2024-11-24', 150.0, 155.0, 148.0, 154.0),
(2, '2024-11-24', 320.0, 330.0, 315.0, 325.0),
(3, '2024-11-24', 250.0, 260.0, 245.0, 255.0);
SELECT * FROM stock_prices WHERE company_id = 1;
