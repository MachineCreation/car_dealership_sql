CREATE TABLE customer (
  customer_id SERIAL primary key,
  first_name VARCHAR(100),
  last_name VARCHAR(100)
);

CREATE TABLE salesperson (
  sales_id SERIAL primary key,
  first_name VARCHAR(100),
  last_name VARCHAR(100)
);

CREATE TABLE service_tech (
  tech_id SERIAL primary key,
  first_name VARCHAR(50),
  last_name VARCHAR(50)
);\

CREATE TABLE vendor (
  vendor_ID SERIAL primary key,
  vendor_name VARCHAR(100),
  contact VARCHAR(15)
);

CREATE TABLE car (
  vehical_serial SERIAL primary key,
  make VARCHAR(50),
  model VARCHAR(50),
  purchase_price NUMERIC(6,2),
  customer_id INTEGER not null,
  foreign key (customer_id) references customer(customer_id)
);

CREATE TABLE invoice (
  invoice_id SERIAL primary key,
  total NUMERIC(5,2),
  purchase BOOLEAN,
  service BOOLEAN,
  vehical_serial INTEGER not null,
  sales_id INTEGER not null,
  foreign key (vehical_serial) references car(vehical_serial),
  foreign key (sales_id) references salesperson(sales_id)
);

CREATE TABLE service_ticket (
  ticket_id SERIAL primary key,
  hours NUMERIC(2,1),
  needs_parts BOOLEAN,
  order_id INTEGER not null,
  foreign key (order_id) references parts_order(order_id)
);

CREATE TABLE maintenance_record (
  maintenance_id SERIAL primary key,
  ticket_id INTEGER not null,
  tech_id INTEGER not null,
  foreign key (ticket_id) references service_ticket(ticket_id),
  foreign key (tech_id) references service_tech(tech_id)
);

CREATE TABLE parts_order (
  order_id SERIAL primary key,
  part_name VARCHAR(100),
  cost NUMERIC(5,2),
  vendor_id INTEGER not null,
  foreign key (vendor_id) references vendor(vendor_id)
);
