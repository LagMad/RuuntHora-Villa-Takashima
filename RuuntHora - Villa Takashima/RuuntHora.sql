CREATE DATABASE RuuntHora;
GO
USE RuuntHora;
GO

CREATE TABLE CUSTOMER
	(id_guest		varchar(16) NOT NULL,
	 name			varchar(30),
	 address		varchar(30),
	 no_telp		numeric(12),
	 email			varchar(30),
	 PRIMARY KEY (id_guest)
	 );

CREATE TABLE ROOM_TYPE
	(room_type		varchar(16) NOT NULL,
	 cost			varchar(15),
	 max_cap		varchar(4),
	 PRIMARY KEY (room_type)
	 );

CREATE TABLE ORDERS
	(id_order		varchar(16) NOT NULL,
	 check_in		varchar(20),
	 check_out		varchar(20),
	 total_cost		varchar(15),
	 id_guest		varchar(16),
	 room_type		varchar(16),
	 PRIMARY KEY (id_order),
	 FOREIGN KEY (room_type) REFERENCES ROOM_TYPE
	 );

DROP TABLE CUSTOMER
DROP TABLE ORDERS
DROP TABLE ROOM_TYPE