CREATE TABLE parts(
    parts_id SERIAL PRIMARY KEY,
    parts_name VARCHAR(50),
    parts_manufacturer VARCHAR(50)
);

CREATE TABLE staff_technicians(
    staff_techs_id SERIAL PRIMARY KEY,
    staff_techs_certs VARCHAR(50)
);

CREATE TABLE staff_sales(
    staff_sales_id SERIAL PRIMARY KEY,
    staff_sales_name VARCHAR(50)
);

CREATE TABLE customers(
    customers_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(100),
    customer_address VARCHAR(50),
    customer_age INTEGER
);

CREATE TABLE cars(
    cars_id SERIAL PRIMARY KEY,
    cars_price INTEGER,
    cars_make VARCHAR(50),
    staff_sales_id INTEGER,
    customers_id INTEGER,
    FOREIGN KEY (staff_sales_id) REFERENCES staff_sales(staff_sales_id) ON DELETE CASCADE,
    FOREIGN KEY (customers_id) REFERENCES customers(customers_id) ON DELETE CASCADE
);

CREATE TABLE invoices(
    invoices_id SERIAL PRIMARY KEY,
    invoices_price INTEGER,
    cars_id INTEGER,
    staff_techs_id INTEGER,
    staff_sales_id INTEGER,
    parts_id INTEGER,
    FOREIGN KEY (cars_id) REFERENCES cars(cars_id) ON DELETE CASCADE,
    FOREIGN KEY (staff_techs_id) REFERENCES staff_technicians(staff_techs_id) ON DELETE CASCADE,
    FOREIGN KEY (staff_sales_id) REFERENCES staff_sales(staff_sales_id) ON DELETE CASCADE,
    FOREIGN KEY (parts_id) REFERENCES parts(parts_id) ON DELETE CASCADE
);

CREATE TABLE customers_invoices(
    invoices_id INTEGER,
    customers_id INTEGER,
    FOREIGN KEY (invoices_id) REFERENCES invoices(invoices_id) ON DELETE CASCADE,
    FOREIGN KEY (customers_id) REFERENCES customers(customers_id) ON DELETE CASCADE
);