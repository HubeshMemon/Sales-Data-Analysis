--This table will showcase Sales data of 5 different branches of a restaurant located in different cities.

CREATE TABLE Sale_data (
Order_ID INTEGER,
Date_Purchased TEXT,
Product VARCHAR (100),
Price NUMERIC(10, 2),
Quantity NUMERIC(10, 2),
Purchase_Type VARCHAR (100),
Payment_Method VARCHAR (100),
Manager VARCHAR (100),
City VARCHAR (100)
);

--DELETE FROM sale_data
--WHERE manager = 'WalterMuller';

SELECT * FROM sale_data;