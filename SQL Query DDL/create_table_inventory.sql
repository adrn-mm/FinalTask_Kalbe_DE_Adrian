USE KALBE;

CREATE TABLE Inventory (
    Item_code INT PRIMARY KEY,
    Item_name VARCHAR(255) NOT NULL,
    Item_price INT NOT NULL,
    Item_total INT NOT NULL,
    CONSTRAINT uc_Item_code UNIQUE (Item_code)
);