INSERT INTO staff_technicians(staff_techs_certs) VALUES
('Certified Auto Glass Technician (AGT)'),
('EPA Amusement Operators Safety Certification (EPA)'),
('Air Conditioning Service Certification'),
('Certified Welding Engineer'),
('Commercial Driver License (CDL)');

INSERT INTO staff_sales(staff_sales_name) VALUES
('Willabert Georgios Gilroy'),
('Venceslaus Halil Davidsen'),
('Jehan Ansgar Antonis'),
('Maria İrfan Christian'),
('Teodor Rochus Hu');

INSERT INTO customers(customer_name,customer_address,customer_age) VALUES
('Tiger Klaasen','492 Ann Drive',18),
('Culann Ortiz','169 N. Country Dr.',56),
('Misho Dirkx','5 Kirkland Street',28),
('Lage Orsini','95 Grandrose Dr.',34),
('Saga Bertrand','939 W. Rockland Street',65);

INSERT INTO parts(parts_name,parts_manufacturer) VALUES
('Catalytic Converter','Magnaflow®'),
('Brake Pad Set','SureStop®'),
('Fog Lights','JC Whitney®'),
('Air Filter','K&N®'),
('Water Pump','DriveMotive');

INSERT INTO cars(staff_sales_id,customers_id,cars_price,cars_make) VALUES
(4,1,4270000,'Hyundai Palisade'),
(4,1,3298800,'BMW X2'),
(2,1,1950000,'Honda Civic'),
(5,4,3568900,'Acura TLX'),
(1,5,96999900,'Aventador LP');

INSERT INTO invoices(cars_id,staff_sales_id,invoices_price) VALUES
(1,4,4280000),
(2,4,3299800),
(3,2,1960000),
(4,5,3570000),
(5,1,96999999);

INSERT INTO customers_invoices(invoices_id,customers_id) VALUES
(1,1),
(2,1),
(3,1),
(4,4),
(5,5);


