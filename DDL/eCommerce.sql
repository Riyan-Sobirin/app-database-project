-- Membuat Database eCommerce
CREATE DATABASE eCommerce
-- Memilih Database eCommerce
USE eCommerce


--dibawah ini adalah query untuk membuat tabel customer
CREATE TABLE Customer (
	CustomerID CHAR (5) NOT NULL PRIMARY KEY,
	CONSTRAINT cekCustomerID 
	CHECK(CustomerID LIKE 'CU[0-9][0-9][0-9]'),

	CustomerName VARCHAR (50) NOT NULL,

	CustomerGender VARCHAR (10),
	CONSTRAINT cekCustomerGender 
	CHECK(CustomerGender = 'Male' or CustomerGender = 'Female'),

	CustomerPhone VARCHAR (13),
	CustomerAddress VARCHAR (100)  

)

--dibawah ini adalah query untuk membuat tabel staff
CREATE TABLE Staff(
	StaffID CHAR(5) NOT NULL PRIMARY KEY,
	CONSTRAINT cekStaffID CHECK(StaffID LIKE 'SF[0-9][0-9][0-9]'),

	StaffName VARCHAR(50) NOT NULL,
	
	StaffGender VARCHAR(10),
	CONSTRAINT cekStaffGender CHECK(StaffGender = 'Male' or StaffGender = 'Female'),  

	StaffPhone VARCHAR(13),
	StaffAddress VARCHAR(100),

	StaffSalary NUMERIC(11,2),

	StaffPosition VARCHAR(20)
)

--dibawah ini adalah query untuk membuat tabel ItemType
CREATE TABLE ItemType(
	ItemTypeId CHAR(5) NOT NULL PRIMARY KEY,
	ItemTypeName VARCHAR(50) NOT NULL,
	CONSTRAINT cekIDItemType CHECK(ItemTypeId LIKE 'IT[0-9][0-9][0-9]')
)

--dibawah ini adalah query untuk membuat tabel Item
CREATE TABLE Item(
	--foreign key
	ItemId CHAR(5) NOT NULL PRIMARY KEY,
	
	ItemTypeId CHAR(5) NOT NULL
	REFERENCES ItemType ON UPDATE CASCADE ON DELETE CASCADE,

	ItemName VARCHAR(50) NOT NULL,

	Price NUMERIC(11,2),

	Quantity INTEGER,
	CONSTRAINT cekItemID CHECK(ItemId LIKE 'IM[0-9][0-9][0-9]')
)

--dibawah ini adalah query untuk membuat tabel HeaderSellTransaction
CREATE TABLE HeaderSellTransaction(
	TransactionId CHAR(5) NOT NULL PRIMARY KEY,
	
	CustomerID CHAR(5) NOT NULL 
	REFERENCES Customer ON UPDATE CASCADE ON DELETE CASCADE,

	StaffID CHAR(5) NOT NULL 
	REFERENCES Staff ON UPDATE CASCADE ON DELETE CASCADE,

	TransactionDate DATE, 

	PaymentType VARCHAR(20),
	CONSTRAINT cekIDTrans CHECK(TransactionId LIKE 'TR[0-9][0-9][0-9]')
)

--dibawah ini adalah query untuk membuat tabel DetailSellTransaction
CREATE TABLE DetailSellTransaction(
	TransactionId CHAR(5) NOT NULL 
	REFERENCES HeaderSellTransaction ON UPDATE CASCADE ON DELETE CASCADE,

	ItemId CHAR(5) NOT NULL
	REFERENCES Item ON UPDATE CASCADE ON DELETE CASCADE,

	PRIMARY KEY(TransactionId, ItemId)
)
