
-- customer add info funtion
CREATE OR REPLACE FUNCTION add_customer(
_customer_id INTEGER,
_first_name VARCHAR,
_last_name VARCHAR
)
RETURNS void 
AS $MAIN$
BEGIN
	INSERT INTO customer(
		customer_id,
		first_name,
		last_name
		)
	VALUES(
		_customer_id,
		_first_name,
		_last_name);
END;
$MAIN$
LANGUAGE plpgsql;

--customers
add_customer(
1,
'Joe',
'Egan'
);

add_customer(
2,
'Joel',
'Emack'
);

add_customer(
3,
'Kevin',
'McMarr'
);

add_customer(
4,
'Mark',
'Cliff'
);

-- salesperson add info funtion
CREATE OR REPLACE FUNCTION add_salesperson(
_salesperson_id INTEGER,
_first_name VARCHAR,
_last_name VARCHAR
)
RETURNS void 
AS $MAIN$
BEGIN
	INSERT INTO salesperson(
		salesperson_id,
		first_name,
		last_name
		)
	VALUES(
		_salesperson_id,
		_first_name,
		_last_name
		);
END;
$MAIN$
LANGUAGE plpgsql;

--salesperson
add_salesperson(
1,
'Jef',
'Bridges'
);

add_salesperson(
2,
'James',
'Collins'
);

add_salesperson(
3,
'Jekel',
'Hide'
);


-- service_tech add info funtion
CREATE OR REPLACE FUNCTION add_service_tech(
_tech_id INTEGER,
_first_name VARCHAR,
_last_name VARCHAR
)
RETURNS void 
AS $MAIN$
BEGIN
	INSERT INTO service_tech(
		tech_id,
		first_name,
		last_name
		)
	VALUES(
		_tech_id,
		_first_name,
		_last_name);
END;
$MAIN$
LANGUAGE plpgsql;

add_service_tech(
1,
'Cam',
'Morgan'
);


add_service_tech(
2,
'Martin',
'Belcher'
);

add_salesperson(
3,
'Donny',
'Darko'
);


-- vendor add info funtion
CREATE OR REPLACE FUNCTION add_vendor(
_vendor_id INTEGER,
_vendor_name VARCHAR,
_contact VARCHAR
)
RETURNS void 
AS $MAIN$
BEGIN
	INSERT INTO vendor(
		vendor_id,
		vendor_name,
		contact
		)
	VALUES(
		_vendor_id,
		_vendor_name,
		_contact
		);
END;
$MAIN$
LANGUAGE plpgsql;


-- vendors

add_vendor(
0,
'No parts needed',
'*********'
);

add_vendor(
1,
'Jackson and Jackson',
'555-0123'
);

add_vendor(
2,
'Phill Collins INC',
'555-0124'
);

add_vendor(
3,
'Major Payne LLC',
'555-0125'
);

-- car add info funtion
CREATE OR REPLACE FUNCTION add_car (
  _vehical_serial INTEGER,
  _make VARCHAR,
  _model VARCHAR,
  _purchase_price NUMERIC,
  _customer_id INTEGER
)
RETURNS void 
AS $MAIN$
BEGIN
	INSERT INTO actor(
		vehical_serial,
  		make,
  		model,
  		purchase_price,
  		customer_id
		)
	VALUES(
		_vehical_serial,
  		_make,
  		_model,
  		_purchase_price,
  		_customer_id
  		);
END;
$MAIN$
LANGUAGE plpgsql;

add_car (
1,
'Ford',
'C-Max',
15000.00,
1
);

add_car (
2,
'Ford',
'Bronco',
20000.00,
2
);

add_car (
3,
'Toyota',
'Carola',
25000.00,
3
);

add_car (
4,
'Honda',
'Accord',
30000.00,
4
);

-- Invoice add info funtion
CREATE OR REPLACE FUNCTION add_invoice (
  _invoice_id INTEGER,
  _total NUMERIC,
  _purchase BOOLEAN,
  _service BOOLEAN,
  _vehical_serial INTEGER,
  _sales_id INTEGER
)
RETURNS void 
AS $MAIN$
BEGIN
	INSERT INTO invoice(
  		invoice_id,
 		total,
  		purchase,
  		service,
  		vehical_serial,
  		sales_id
		)
	VALUES(
		_invoice_id,
 		_total,
  		_purchase,
  		_service,
  		_vehical_serial,
  		_sales_id
  		);
END;
$MAIN$
LANGUAGE plpgsql;

--Invoice Info

add_invoice(
1,
15000.00,
true,
false,
1,
1
);

add_invoice(
2,
150.00,
false,
true,
2,
2
);

-- Invoice add info funtion
CREATE OR REPLACE FUNCTION add_parts_order (
  order_id INTEGER,
  part_name VARCHAR,
  cost NUMERIC,
  vendor_id INTEGER
)
RETURNS void 
AS $MAIN$
BEGIN
	INSERT INTO parts_order(
  		order_id,
  		part_name,
  		cost,
  		vendor_id
		)
	VALUES(
  		_order_id,
  		_part_name,
  		_cost,
  		_vendor_id
  		);
END;
$MAIN$
LANGUAGE plpgsql;

-- parts order info

add_parts_order (
1,
'Carberator',
100.00,
1
);

-- service ticket add info funtion
CREATE OR REPLACE FUNCTION add_service_ticket (
  ticket_id INTEGER,
  hours NUMERIC,
  needs_parts BOOLEAN,
  order_id INTEGER
)
RETURNS void 
AS $MAIN$
BEGIN
	INSERT INTO service_ticket (
  		ticket_id,
  		hours,
  		needs_parts,
  		order_id
		)
	VALUES(
  		_ticket_id,
  		_hours,
  		_needs_parts,
  		_order_id
  		);
END;
$MAIN$
LANGUAGE plpgsql;

-- SERVICE TICKET INFO

add_service _ticket (
1,
1,
true,
1
);

add_service _ticket (
2,
2,
false,
0
);

-- maintenance reecord add info funtion
CREATE OR REPLACE FUNCTION add_maintenance_record (
  maintenance_id INTEGER,
  ticket_id INTEGER,
  tech_id INTEGER
)
RETURNS void 
AS $MAIN$
BEGIN
	INSERT INTO maintenance_record (
  		maintenance_id,
  		ticket_id,
  		tech_id
		)
	VALUES(
  		_maintenance_id,
  		_ticket_id,
  		_tech_id
  		);
END;
$MAIN$
LANGUAGE plpgsql;

-- maintanence record info

add_maintanence_record(
1,
1,
1
);

add_maintanence_record(
2,
2,
2
);










