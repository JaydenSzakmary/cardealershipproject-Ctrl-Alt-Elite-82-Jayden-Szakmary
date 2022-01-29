--SELECT * 
--FROM invoices

CREATE OR REPLACE PROCEDURE addcar(
    car varchar,
    price integer
)

AS 
$$
BEGIN
    INSERT INTO cars(cars_make,cars_price)
    VALUES (car,price);
END;
$$
LANGUAGE plpgsql;

CALL addcar('Batmobile',99999999);
CALL addcar('Tesla Model X',7500000);

CREATE or REPLACE PROCEDURE service_invoice(
    car integer,
    tech integer,
    part integer,
    price integer
)

AS 
$$
BEGIN
    INSERT INTO invoices(cars_id,staff_techs_id,parts_id,invoices_price)
    VALUES (car,tech,part,price);
END;
$$
LANGUAGE plpgsql;

CALL service_invoice(3,2,2,30000);
CALL service_invoice(NULL,4,1,45000);

select *
FROM invoices 

