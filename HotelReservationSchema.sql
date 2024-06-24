-- Create the Hotel Reservation System Database
CREATE DATABASE HotelReservationSystem;
GO

-- Switch context to the new database
USE HotelReservationSystem;
GO

-- Create Hotels Table
CREATE TABLE Hotels (
    hotel_id INT PRIMARY KEY,
    name NVARCHAR(255),
    address NVARCHAR(255),
    phone_number NVARCHAR(20),
    email NVARCHAR(100),
    rating INT,
    currency NVARCHAR(3)
);
GO

-- Create Rooms Table
CREATE TABLE Rooms (
    room_id INT PRIMARY KEY,
    hotel_id INT,
    type NVARCHAR(50),
    number NVARCHAR(10),
    price DECIMAL(10, 2),
    currency NVARCHAR(3),
    FOREIGN KEY (hotel_id) REFERENCES Hotels(hotel_id)
);
GO

-- Create RoomFeatures Table
CREATE TABLE RoomFeatures (
    feature_id INT PRIMARY KEY,
    description NVARCHAR(255)
);
GO

-- Create RoomFeatureLinks Table
CREATE TABLE RoomFeatureLinks (
    room_id INT,
    feature_id INT,
    PRIMARY KEY (room_id, feature_id),
    FOREIGN KEY (room_id) REFERENCES Rooms(room_id),
    FOREIGN KEY (feature_id) REFERENCES RoomFeatures(feature_id)
);
GO

-- Create Customers Table
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    name NVARCHAR(255),
    email NVARCHAR(255) UNIQUE,
    phone_number NVARCHAR(20)
);
GO

-- Create Reservations Table
CREATE TABLE Reservations (
    reservation_id INT PRIMARY KEY,
    customer_id INT,
    room_id INT,
    start_date DATE,
    end_date DATE,
    status NVARCHAR(50),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (room_id) REFERENCES Rooms(room_id)
);
GO

-- Create Payments Table
CREATE TABLE Payments (
    payment_id INT PRIMARY KEY,
    reservation_id INT,
    amount DECIMAL(10, 2),
    currency NVARCHAR(3),
    payment_date DATE,
    payment_method NVARCHAR(50),
    FOREIGN KEY (reservation_id) REFERENCES Reservations(reservation_id)
);
GO
