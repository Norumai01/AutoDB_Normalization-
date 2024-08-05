USE AutomotiveDB;

# Ticket #3:

CREATE TABLE Owners (
	OwnerID INT,
    OwnerName VARCHAR(100),
    OwnerAddress VARCHAR(255),
    OwnerPhone VARCHAR(20),
    PRIMARY KEY (OwnerID)
);

CREATE TABLE Cars2NF (
	CarID INT,
    CarModel VARCHAR(100),
    OwnerID INT,
    PRIMARY KEY (CarID),
    FOREIGN KEY (OwnerID) REFERENCES Owners(OwnerID)
);

CREATE TABLE Services2NF (
	ServiceID INT,
    CarID INT,
    ServiceDate VARCHAR(255),
    ServiceDescription VARCHAR(255),
    ServiceCost DECIMAL(10,2),
    PRIMARY KEY (ServiceID),
    FOREIGN KEY (CarID) REFERENCES Cars2NF(CarID)
);

INSERT INTO Owners (OwnerID, OwnerName, OwnerAddress, OwnerPhone) VALUES
(1, 'John Doe', '123 Elm St', '555-1234'),
(2, 'Alice Johnson', '456 Oak St', '555-8765'),
(3, 'Chris Evans', '789 Pine St', '555-6789'),
(4, 'Emily Davis', '101 Maple St', '555-9876'),
(5, 'David Wilson', '202 Birch St', '555-2468'),
(6, 'Susan Clark', '304 Cherry St', '555-3322'),
(7, 'Michael Brown', '987 Walnut St', '555-7788'),
(8, 'Jennifer Lopez', '402 Cedar St', '555-9988'),
(9, 'Robert King', '123 Oak St', '555-5544'),
(10, 'Emily Johnson', '456 Pine St', '555-1239');

INSERT INTO Cars2NF (CarID, CarModel, OwnerID) VALUES
(1, 'Toyota Camry', 1),
(2, 'Honda Accord', 2),
(3, 'Ford Focus', 3),
(4, 'Chevrolet Malibu', 4),
(5, 'Nissan Altima', 5),
(6, 'Hyundai Elantra', 6),
(7, 'BMW 320i', 7),
(8, 'Audi A4', 8),
(9, 'Mercedes C-Class', 9),
(10, 'Volkswagen Passat', 10);

SELECT * FROM Owners;
SELECT * FROM Cars2NF;