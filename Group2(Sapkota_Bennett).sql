CREATE TABLE books2 (
BookID VARCHAR2(20),
title VARCHAR2(70)
CONSTRAINT title_not_null NOT NULL,
author_first_name VARCHAR2(30),
author_last_name VARCHAR2(30)
CONSTRAINT last_name_not_null NOT NULL,
rating NUMBER,
price DECIMAL(4,2),
pub_date Date,
Genre VARCHAR(80),
CONSTRAINT books2_pk PRIMARY KEY (BookID),
CONSTRAINT rating_1_to_10 CHECK (rating IS NULL OR
(rating >= 1 and rating <= 10)),
CONSTRAINT author_title_unique UNIQUE (author_last_name, title));

INSERT INTO books2 VALUES ('A001','Looking fr Alaska','John' ,'Green',  10, 50.00, TO_DATE('2005-03-14', 'YYYY-MM-DD'), 'Romance');

INSERT INTO books2 VALUES ('A002', 'To kill a Mockingbird', 'Harper', 'Lee', 10, 75.00, TO_DATE('2005-07-05', 'YYYY-MM-DD'), 'Southern Gothic fiction');

INSERT INTO books2 VALUES ('A003',  'The Great Gatsby','F.Scott' ,'Fitzgerald', 10, 78.00, TO_DATE('2021-01-18', 'YYYY-MM-DD'), 'Tragedy');

INSERT INTO books2 VALUES ('A004','The Catcher in the Rye', 'J.D.' ,'Salinger',  6, 45.00, TO_DATE('1951-07-16', 'YYYY-MM-DD'), 'Young adult fiction');

INSERT INTO books2 VALUES ('A005', 'Animal Farm','Gerorge', 'Orwell',  5, 40.00, TO_DATE('1945-08-17', 'YYYY-MM-DD'), 'Political satire');

INSERT INTO books2 VALUES ('A006','Melville', 'Moby', 'Dick',  8, 70.00,TO_DATE('2012-04-14', 'YYYY-MM-DD'), 'Romance');

INSERT INTO books2 VALUES ('A007', 'Jane Eyre', 'Charlotte', 'Bronte', 4, 35.00,TO_DATE('1847-10-18', 'YYYY-MM-DD'), 'Social Criticism');

INSERT INTO books2 VALUES ('A008', 'Beloved','Toni', 'Morrison',  7, 65.00, TO_DATE('1987-09-14', 'YYYY-MM-DD'), 'Historical Fiction');

INSERT INTO books2 VALUES ('A009',  'Pride and Prejudice','Jane', 'Austen', 10, 85.00, TO_DATE('1813-01-28', 'YYYY-MM-DD'), 'Romance');

INSERT INTO books2 VALUES ('A010','Anne of Green Gables', 'Lucy', 'Montgomery', 8, 80.00, TO_DATE('1908-04-14', 'YYYY-MM-DD'), 'Romance');


Create Table Customers2 ( 
CustomerID int, 
LastName VARCHAR(30), 
FirstName VARCHAR(30), 
Shipping_Address VARCHAR(100), 
City VARCHAR(30), 
Email VARCHAR(30), 
CONSTRAINT Customers2_pk PRIMARY KEY (CustomerID)
); 

  

INSERT INTO customers2 VALUES ('0110','Walker', 'Monica', '234 Summervale ave','Missisauga','Monicawalker@gmail.com'); 

INSERT INTO customers2 VALUES ('0121','Brown', 'Christopher', '85 Boor Street East ','Toronto', 'C.brown@hotmail.com '); 

INSERT INTO customers2 VALUES ('0132','Morgan', 'Alex', '31 Garden Cres ','Hamilton', 'AlexMorgan@gmail.com'); 

INSERT INTO customers2 VALUES ('0143', 'StLouis', 'Linda', '165 Jameson Ave', 'Toronto', 'Lstlouis@hotmail.com'); 

INSERT INTO customers2 VALUES ('0154', 'Davis', 'Anthony', '29 Alsop Ave', 'Markham', 'AnthonyD@gmail.com'); 

INSERT INTO customers2 VALUES ('0165', 'Dantas', 'Claire', '129 Langford street', 'Toronto', 'DantasC@hotmail.com'); 

INSERT INTO customers2 VALUES ('0176', 'Johnson', 'Ben', '76 Charles Sturdy Road', 'Markham', 'BJohnson@hotmail.com'); 

INSERT INTO customers2 VALUES ('0187', 'Martin', 'Tim', '370 Highway 7 East', 'Brampton', 'TimMartin@hotmail.com'); 

INSERT INTO customers2 VALUES ('0198', 'Sorella', 'Heather', '151 Upper Duke Ave', 'Richmond Hill', 'SorellaH@gmail.com'); 

INSERT INTO customers2 VALUES ('0209', 'Fox', 'Rick', '8675 Bayview Ave', 'Richmond Hill', 'RickFoxx@gmail.com'); 

 
Create Table Orders2  

(OrderID int,
BookID VARCHAR2(20),
CustomerID int,
FirstName VARCHAR(30), 
LastName VARCHAR(30),     
Shipping_Address VARCHAR(100), 
City VARCHAR(30), 
Email VARCHAR(30),
Order_item VARCHAR(100),
Order_status VARCHAR (100),
Order_Date DATE,
CONSTRAINT Orders2_pk PRIMARY KEY (OrderID),
CONSTRAINT Orders2_fk1 FOREIGN KEY (CustomerID) REFERENCES Customers2(CustomerID),
CONSTRAINT Orders2_fk2 FOREIGN KEY (BookID) REFERENCES books2(BookID)
);

  

INSERT INTO orders2 VALUES (121,'A005','0110', 'Walker', 'Monica', '234 Summervale ave','Missisauga','Monicawalker@gmail.com', 'Animal Farm','Shipped',TO_DATE('2023-03-14', 'YYYY-MM-DD')); 

INSERT INTO orders2 VALUES (122,'A007','0121', 'Brown', 'Christopher', '85 Boor Street East ','Toronto', 'C.brown@hotmail.com ' , 'Jane Eyre', 'Processing',TO_DATE('2023-03-15', 'YYYY-MM-DD')); 

INSERT INTO orders2 VALUES (123, 'A008','0132','Morgan', 'Alex', '31 Garden Cres ','Hamilton', 'AlexMorgan@gmail.com','Beloved', 'Shipped',TO_DATE('2023-03-18', 'YYYY-MM-DD')); 

INSERT INTO orders2 VALUES (124, 'A004','0143', 'StLouis', 'Linda', '165 Jameson Ave', 'Toronto', 'Lstlouis@hotmail.com','The Catcher in the Rye', 'Processing',TO_DATE('2023-03-19', 'YYYY-MM-DD')); 

INSERT INTO orders2 VALUES (125, 'A005','0154','Davis', 'Anthony', '29 Alsop Ave', 'Markham', 'AnthonyD@gmail.com', 'Animal Farm','Shipped',TO_DATE('2023-03-16', 'YYYY-MM-DD')); 

INSERT INTO orders2 VALUES (126, 'A003','0165', 'Dantas', 'Claire', '129 Langford street', 'Toronto', 'DantasC@hotmail.com', 'The Great Gatsby','Shipped',TO_DATE('2023-03-13', 'YYYY-MM-DD')); 

INSERT INTO orders2 VALUES (127, 'A006','0176','Johnson', 'Ben', '76 Charles Sturdy Road', 'Markham', 'BJohnson@hotmail.com','Melville', 'Processing',TO_DATE('2023-03-21', 'YYYY-MM-DD')); 

INSERT INTO orders2 VALUES (128, 'A002','0187', 'Martin', 'Tim', '370 Highway 7 East', 'Brampton', 'TimMartin@hotmail.com', 'To Kill a mocking Bird', 'Confirmed',TO_DATE('2023-02-12', 'YYYY-MM-DD')); 

INSERT INTO orders2 VALUES (129, 'A007','0198', 'Sorella', 'Heather', '151 Upper Duke Ave', 'Richmond Hill', 'SorellaH@gmail.com', 'Jane Eyre', 'Shipped',TO_DATE('2023-02-13', 'YYYY-MM-DD')); 

INSERT INTO orders2 VALUES (130, 'A008','0209', 'Fox', 'Rick', '8675 Bayview Ave', 'Richmond Hill', 'RickFoxx@gmail.com', 'Beloved','Confirmed',TO_DATE('2023-03-14', 'YYYY-MM-DD'));

Create Table Payment2  
(PaymentID int,
OrderID int,
Shipping_Charge decimal (4,2),
Tax decimal(4,2),
Order_Price decimal(4,2),
Subtotal decimal(4,2),
Payment_Method VARCHAR (30),
CONSTRAINT Payment2_pk PRIMARY KEY (PaymentID),
FOREIGN KEY (OrderID) REFERENCES Orders2(OrderID)
);
INSERT INTO Payment2 VALUES (1000, 121, 5.20, 3.50, 40.00, 48.70, 'Visa'); 

INSERT INTO Payment2 VALUES (1001, 122, 8.90, 5.30, 35.00, 49.20,  'Visa'); 

INSERT INTO Payment2 VALUES (1002, 123, 10.20, 4.65, 65.00, 79.85, 'Debit'); 

INSERT INTO Payment2 VALUES (1003, 124, 5.00, 9.85, 45.00, 59.85, 'Master Card'); 

INSERT INTO Payment2 VALUES (1004, 125, 12.60, 3.50, 40.00, 56.10, 'Debit'); 

INSERT INTO Payment2 VALUES (1005, 126, 7.50, 12.38, 78.00, 97.88,  'Debit'); 

INSERT INTO Payment2 VALUES (1006, 127, 4.00, 3.45, 70.00, 77.45,  'Debit'); 

INSERT INTO Payment2 VALUES (1007, 128, 3.50, 4.55, 75.00, 83.05,  'Visa'); 

INSERT INTO Payment2 VALUES (1008, 129, 7.50, 5.30, 35.00, 47.80,  'Master Card'); 

INSERT INTO Payment2 VALUES (1009, 130, 8.90, 4.65, 65.00, 78.55,  'Visa');


CREATE TABLE Return2 (
ReturnID int,
ORDERID int,
Return_Date Date,
Return_Reason VARCHAR (50),
CONSTRAINT Return2_pk PRIMARY KEY (ReturnID),
FOREIGN KEY (OrderID) REFERENCES Orders2(OrderID)
);

INSERT INTO Return2 VALUES (101,121,TO_DATE('2023-02-13', 'YYYY-MM-DD'),'Wrong Book Delivered'); 

INSERT INTO Return2 VALUES (102,123,TO_DATE('2023-03-07', 'YYYY-MM-DD'), 'Damaged Book Delivered'); 

INSERT INTO Return2 VALUES (103,126,TO_DATE('2023-03-18', 'YYYY-MM-DD'), 'Some Pages were torned out');

INSERT INTO Return2 VALUES (104,128,TO_DATE('2023-03-05', 'YYYY-MM-DD'), 'Made a wrong Order'); 

INSERT INTO Return2 VALUES (105,129,TO_DATE('2023-03-16', 'YYYY-MM-DD'), 'Made a wrong Order'); 


CREATE TABLE Employee2(
EmployeeID int,
Employee_Name VARCHAR(90),
Employee_Position VARCHAR(90),
Employee_Email VARCHAR(100),
CONSTRAINT Employee2_pk PRIMARY KEY(EmployeeID)
);

INSERT INTO Employee2 VALUES (234,'James Shrestha', 'Marketing Manager','james35@gmail.com'); 

INSERT INTO Employee2 VALUES (235,'Rose Mary', 'Sales Associate', 'Rose66@email.com '); 

INSERT INTO Employee2 VALUES (236, 'Selena Gomez','Customer Service Associate', 'Selena@gmail.com'); 

INSERT INTO Employee2 VALUES (237, 'Sujata Moktan', 'Web Developer', 'sujatamkt15@hotmail.com'); 

INSERT INTO Employee2 VALUES (238, 'David John', 'Security Designer', 'David44@yahoo.com'); 

INSERT INTO Employee2 VALUES (239, 'Hailey Bieber', 'Sales Associate', 'Hailey6@gmail.com'); 

INSERT INTO Employee2 VALUES (240, 'Srija Dhungel', 'Sales Associate', 'Srija15@outlook.com'); 

INSERT INTO Employee2 VALUES (241, 'Roby Brown', 'Sales Associate', 'Roby2@gmail.com'); 

INSERT INTO Employee2 VALUES (242,'Rige Pokhrel', 'Sales Associate', 'Rige25@yahoo.com'); 

INSERT INTO Employee2 VALUES (243,'Srisa Pokhrel', 'Managing Director', 'srisa25@yahoo.com'); 


CREATE TABLE Employee_log (
    LogID int NOT NULL,
    EmployeeID int NOT NULL,
    Activity_Performed VARCHAR(150) NOT NULL,
    activity_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    CONSTRAINT Employee_log_pk PRIMARY KEY(LogID),
    FOREIGN KEY (EmployeeID) REFERENCES Employee2(EmployeeID)
);


INSERT INTO Employee_log VALUES (001,234,'Added New Book', CURRENT_TIMESTAMP ); 

INSERT INTO Employee_log VALUES (002, 235,'Marked a book out of stock', CURRENT_TIMESTAMP ); 

INSERT INTO Employee_log VALUES (003,236,'Completed Delivery', CURRENT_TIMESTAMP ); 

INSERT INTO Employee_log VALUES (004, 237,'Assisted Virtual Merchandising', CURRENT_TIMESTAMP ); 

INSERT INTO Employee_log VALUES (005,238,'Highlighted most seller books', CURRENT_TIMESTAMP ); 

INSERT INTO Employee_log VALUES (006, 239,'Listed Out of stock books', CURRENT_TIMESTAMP ); 

INSERT INTO Employee_log VALUES (007,240,'Added some book review', CURRENT_TIMESTAMP ); 

INSERT INTO Employee_log VALUES (008, 241,'Restocked some books', CURRENT_TIMESTAMP ); 

INSERT INTO Employee_log VALUES (009,242,'Restocked some books', CURRENT_TIMESTAMP ); 

INSERT INTO Employee_log VALUES (010, 243,'Marked a book out of stock', CURRENT_TIMESTAMP ); 


--2. Sequence [3 marks]
--a. Create at least one sequence
CREATE SEQUENCE EmployeeLog_Sequence
start with 3
increment by 1
minvalue 0
maxvalue 100
cycle; 
--b. Use it to insert sample data
INSERT into Employee_log VALUES(EmployeeLog_Sequence.nextval,243,'Restocked 5 Jane Eyre', CURRENT_TIMESTAMP);


--c. Use it to update table(s)
DECLARE
  next_value NUMBER;
BEGIN
  SELECT EmployeeLog_Sequence.NEXTVAL-1 INTO next_value FROM dual;
  UPDATE Employee_log
  SET Activity_Performed = 'Restocked 6 Jane Eyre'
  WHERE LOGID = next_value;

  SELECT EmployeeLog_Sequence.NEXTVAL INTO next_value FROM dual;
END;
/

--3. Indexes [2 marks]
--a. Search is one of common functionalities, index plays a critical role in search
--b. create few indexes for those tables where search is performed frequently 
CREATE INDEX books_title_index ON books2 (title);
CREATE INDEX customer_id_index ON customers2(FirstName);
CREATE INDEX Orders_shipping_index ON Orders2(Shipping_Address);


--4. Triggers [6 marks]
--a. Create at least 3 triggers for table entry/updating behind the scenes
--b. Provide screenshots to demonstrate that the triggers can work properly
--Trigger1
CREATE OR REPLACE TRIGGER ratings_analyzations
BEFORE INSERT OR UPDATE ON books2
FOR EACH ROW
BEGIN
  IF :NEW.rating NOT BETWEEN 1 AND 10 THEN
    :NEW.rating := NULL;
  END IF;
END;
/
INSERT INTO books2 VALUES ('A011','Five Feets Apart','Rachael' ,'Lippincott',  15, 50.00, TO_DATE('2018-11-20', 'YYYY-MM-DD'), 'Romance');
SELECT * FROM books2 ORDER BY BOOKID ASC;

--Trigger2
CREATE OR REPLACE TRIGGER lowercase_conversion_of_email
BEFORE INSERT ON customers2
FOR EACH ROW
BEGIN
  :NEW.email := LOWER(:NEW.email);
END;
/
INSERT INTO customers2 VALUES ('0210', 'Raymond', 'Tate', '371 Morningside Ave.', 'Morning side', 'Raymond@Gmail.com');
SELECT * FROM customers2 ORDER BY CUSTOMERID ASC;

--Trigger3
CREATE OR REPLACE TRIGGER update_order_date
BEFORE INSERT ON orders2
FOR EACH ROW
BEGIN
  :NEW.order_date := SYSDATE;
END;
/

INSERT INTO orders2 (OrderID, BookID, CustomerID, FirstName, LastName, Shipping_Address, City, Email, Order_item, Order_status)
VALUES (131, 'A008','0210', 'Raymond', 'Tate', '371 Morningside Ave.', 'Morning side', 'Raymond@Gmail.com', 'Beloved','Confirmed');
SELECT * FROM orders2 ORDER BY ORDERID ASC;

--5. Packages [12 marks]
--a. Implement at least 3 procedures
--Procedure1 Adding new employee
CREATE OR REPLACE PROCEDURE add_employee (
    p_employee_id IN Employee2.EmployeeID%TYPE,
    p_employee_name IN Employee2.Employee_Name%TYPE,
    p_employee_position IN Employee2.Employee_Position%TYPE,
    p_employee_email IN Employee2.Employee_Email%TYPE
) AS
BEGIN
    INSERT INTO Employee2 (
        EmployeeID, Employee_Name, Employee_Position, Employee_Email
    ) VALUES (
        p_employee_id, p_employee_name, p_employee_position, p_employee_email
    );
    COMMIT;
END add_employee;
/

DECLARE
    q_employee_id Employee2.EmployeeID%TYPE := 244;
    q_employee_name Employee2.Employee_Name%TYPE := 'Riza Yonjan';
    q_employee_position Employee2.Employee_Position%TYPE := 'Sales Associate';
    q_employee_email Employee2.Employee_Email%TYPE := 'yriza@gmail.com';
BEGIN
    add_employee(
        p_employee_id => q_employee_id,
        p_employee_name => q_employee_name,
        p_employee_position => q_employee_position,
        p_employee_email => q_employee_email
    );
    DBMS_OUTPUT.PUT_LINE('New employee added successfully');
END;
/
SELECT * from Employee2;
--Procedure2
CREATE PROCEDURE updating_book_price (
    p_bookid IN books2.BOOKID%TYPE,
    p_updated_price IN books2.PRICE%TYPE
) AS
BEGIN
    UPDATE books2
    SET price = p_updated_price
    WHERE BookID = p_bookid;
    COMMIT;
END updating_book_price;
/

DECLARE
  q_bookid books2.BOOKID%TYPE := 'A001';
  q_updated_price books2.PRICE%TYPE := 55;
BEGIN
  updating_book_price(p_bookid => q_bookid,
                      p_updated_price => q_updated_price);
   DBMS_OUTPUT.PUT_LINE('Book price updated successfully');
END;
/

--Procedure3
CREATE OR REPLACE PROCEDURE updating_order_status (
  p_orderid IN Orders2.OrderID%TYPE,
  p_updated_status IN Orders2.Order_status%TYPE
)
AS
BEGIN
  UPDATE Orders2
  SET Order_status = p_updated_status
  WHERE OrderID = p_orderid;
  COMMIT;
END;
/
DECLARE
 q_orderid Orders2.OrderID%TYPE := 122;
  q_updated_status Orders2.Order_status%TYPE := 'Delivered';
BEGIN
  updating_order_status(p_orderid => q_orderid,
                      p_updated_status => q_updated_status);
   DBMS_OUTPUT.PUT_LINE('Order Status Updated Successfully');
END;
/



