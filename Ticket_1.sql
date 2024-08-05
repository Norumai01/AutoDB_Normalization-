# Ticket #1:

CREATE DATABASE AutomotiveDB;

USE AutomotiveDB;

CREATE TABLE UnnormalizedCars (
    CarID INT,
    CarModel VARCHAR(100),
    OwnerName VARCHAR(100),
    OwnerAddress VARCHAR(255),
    OwnerPhone VARCHAR(20),
    ServiceDates VARCHAR(255),
    ServiceDescriptions VARCHAR(255),
    TotalServiceCost DECIMAL(10, 2)
);

INSERT INTO UnnormalizedCars VALUES
(1, 'Toyota Camry', 'John Doe', '123 Elm St', '555-1234', '2021-01-10,2021-06-15', 'Oil Change,Tire Rotation', 150.00),
(2, 'Honda Accord', 'Alice Johnson', '456 Oak St', '555-8765', '2021-02-20,2021-08-30', 'Brake Inspection,Battery Replacement', 200.00),
(3, 'Ford Focus', 'Chris Evans', '789 Pine St', '555-6789', '2021-03-15', 'Transmission Repair', 500.00),
(4, 'Chevrolet Malibu', 'Emily Davis', '101 Maple St', '555-9876', '2021-04-25,2021-09-10', 'Engine Tune-Up,Alignment', 300.00),
(5, 'Nissan Altima', 'David Wilson', '202 Birch St', '555-2468', '2021-05-05,2021-11-20', 'Oil Change,Brake Replacement', 250.00),
(6, 'Hyundai Elantra', 'Susan Clark', '304 Cherry St', '555-3322', '2021-04-20,2021-10-10', 'Oil Change,Air Filter', 130.00),
(7, 'BMW 320i', 'Michael Brown', '987 Walnut St', '555-7788', '2021-02-28,2021-08-05', 'Brake Inspection,Transmission Repair', 650.00),
(8, 'Audi A4', 'Jennifer Lopez', '402 Cedar St', '555-9988', '2021-03-22,2021-09-12', 'Battery Replacement,Tire Rotation', 200.00),
(9, 'Mercedes C-Class', 'Robert King', '123 Oak St', '555-5544', '2021-05-18,2021-12-01', 'Engine Tune-Up,Alignment', 450.00),
(10, 'Volkswagen Passat', 'Emily Johnson', '456 Pine St', '555-1239', '2021-06-10,2021-11-20', 'Oil Change,Brake Replacement', 300.00);

Select * FROM automotivedb.unnormalizedcars;






