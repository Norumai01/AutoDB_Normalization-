USE AutomotiveDB;

# Ticket #4:

CREATE TABLE ServiceTypes (
	ServiceTypeID INT,
    ServiceDescription VARCHAR(255),
    ServiceCost DECIMAL(10,2),
    PRIMARY KEY (ServiceTypeID)
);

CREATE TABLE Services3NF (
	ServiceID INT,
    CarID INT,
    ServiceDate VARCHAR(255),
    ServiceTypeID INT,
    PRIMARY KEY (ServiceID),
    FOREIGN KEY (ServiceTypeID) REFERENCES ServiceTypes(ServiceTypeID),
    FOREIGN KEY (CarID) REFERENCES Cars2NF(CarID)
);

INSERT INTO ServiceTypes (ServiceTypeID, ServiceDescription, ServiceCost) VALUES
(1, 'Oil Change', 50.00),
(2, 'Tire Rotation', 100.00),
(3, 'Brake Inspection', 100.00),
(4, 'Battery Replacement', 100.00),
(5, 'Transmission Repair', 500.00),
(6, 'Engine Tune-Up', 150.00),
(7, 'Alignment', 150.00),
(8, 'Brake Replacement', 200.00);

INSERT INTO Services3NF (ServiceID, CarID, ServiceDate, ServiceTypeID) VALUES
(1, 1, '2021-01-10', 1),
(2, 1, '2021-06-15', 2),
(3, 2, '2021-02-20', 3),
(4, 2, '2021-08-30', 4),
(5, 3, '2021-03-15', 5),
(6, 4, '2021-04-25', 6),
(7, 4, '2021-09-10', 7),
(8, 5, '2021-05-05', 1),
(9, 5, '2021-11-20', 8),
(10, 6, '2021-04-20', 1),
(11, 6, '2021-10-10', 6),
(12, 7, '2021-02-28', 3),
(13, 7, '2021-08-05', 5),
(14, 8, '2021-03-22', 4),
(15, 8, '2021-09-12', 2),
(16, 9, '2021-05-18', 6),
(17, 9, '2021-12-01', 7),
(18, 10, '2021-06-10', 1),
(19, 10, '2021-11-20', 8);

SELECT * FROM ServiceTypes;
SELECT * FROM Services3NF;