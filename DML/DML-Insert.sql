--insert

SELECT *
FROM Customer

--transaction
BEGIN TRANSACTION
--Perintah2
rollback
commit

INSERT INTO Customer VALUES
('CU006', 'Ryan', 'Male', '085877690081', 'Jalan Bakti Karya 3')
COMMIT

BEGIN TRANSACTION
INSERT INTO Customer (CustomerID, CustomerName) VALUES
('CU007', 'Alexa')

SELECT * FROM Customer

ROLLBACK

BEGIN TRANSACTION
INSERT INTO Customer VALUES
('CU007', 'Putri', 'Female', '123123123', 'Jalan Mawar')
COMMIT

SELECT * FROM Customer
BEGIN TRANSACTION
INSERT INTO Customer VALUES
('CU008', 'Roy', 'Male', '02020202', 'Jalan Metaverse'),
('CU009', 'Boy', 'Male', '01010101', 'Jalan Metaverse')
COMMIT

