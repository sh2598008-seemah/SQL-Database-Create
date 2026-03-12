use grand_hotel ;
CREATE TABLE Customer (
    Customer_id INT PRIMARY KEY,
    First_name VARCHAR(50),
    Last_name VARCHAR(50),
    Email VARCHAR(50),
    Phone_number VARCHAR(15)
    );
INSERT INTO Customer(
         Customer_id,First_name,Last_name,Email,Phone_number)
	VALUES
         (1001, 'Steven', 'King', 'SKING@gmail.com', '5151234567'),
         (1002,'Alexander', 'Hunold', 'AHUNOLD@gmail.com', '5904234567'),
         (1003,'Bruce', 'Ernst', 'BERNST@gmail.com', '5904234568'),
         (1004,'Nancy', 'Greenberg', 'NGREENBE', '5151244569'),
         (1005,'Adam', 'Fripp', 'AFRIPP@gmail.com', '6501232234');
         
CREATE TABLE Booking (
	Booking_id INT PRIMARY KEY,
    Customer_id INT,
	Check_in DATE,
    Check_out Date,
    Guest INT,
    Adult INT,
    Children INT
);
INSERT INTO Booking (
             Booking_id,Customer_id,Check_in,Check_out,Guest,Adult,Children)
    VALUES 
    (5001,1001,'2021-06-17','2021-09-21',4,2,2),
    (5002,1002,'2021-10-21','2021-12-25',2,2,0),
    (5003,1003,'2022-04-17','2022-10-07',5,3,2),
    (5004,1004,'2022-01-28','2022-09-30',1,1,0),
    (5005,1005,'2023-01-07','2023-05-18',2,1,1);
    
CREATE TABLE Room (
     Room_id INT PRIMARY KEY,
     Customer_id INT,
     Room_type VARCHAR(50),
     Amount DECIMAL(10,2)
);  
INSERT INTO Room (
        Room_id,Customer_id,Room_type,Amount)
	VALUES
    (101,1004,'Single_room',2000),
    (102,1003,'Double_room',4000),
    (103,1001,'Delux_room',7000),
    (104,1005,'Suit_room',10000),
    (105,1002,'Presidential_suit',15000);
    
CREATE TABLE Payment (
      Payment_id INT PRIMARY KEY,
      Booking_id INT,
      Amount DECIMAL(10,2),
      Payment_type VARCHAR(50),
      Payment_date date
);
INSERT INTO Payment (
         Payment_id,Booking_id,Amount,Payment_type,Payment_date)
	VALUES
        (9001,5001,7000,'UPI','2021-06-17'),
        (9002,5002,15000,'Card','2021-10-21'),
        (9003,5003,4000,'Cash','2022-04-17'),
        (9004,5004,2000,'Cash','2022-01-28'),
        (9005,5005,10000,'UPI','2023-01-07');
   