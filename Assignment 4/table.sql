-- 1. Warehouses
CREATE TABLE Warehouses (
    warehouse_id SERIAL PRIMARY KEY,
    warehouse_name TEXT,
    location TEXT
);

-- 2. Products
CREATE TABLE Products (
    product_id SERIAL PRIMARY KEY,
    product_name TEXT,
    category TEXT
);

-- 3. Drivers
CREATE TABLE Drivers (
    driver_id SERIAL PRIMARY KEY,
    driver_name TEXT
);

-- 4. Shipments
CREATE TABLE Shipments (
    shipment_id SERIAL PRIMARY KEY,
    warehouse_id INTEGER REFERENCES Warehouses(warehouse_id),
    driver_id INTEGER REFERENCES Drivers(driver_id),
    shipment_date DATE
);

-- 5. Shipment_Items
CREATE TABLE Shipment_Items (
    shipment_item_id SERIAL PRIMARY KEY,
    shipment_id INTEGER REFERENCES Shipments(shipment_id),
    product_id INTEGER REFERENCES Products(product_id),
    quantity INTEGER
);

-- 6. Routes
CREATE TABLE Routes (
    route_id SERIAL PRIMARY KEY,
    shipment_id INTEGER REFERENCES Shipments(shipment_id),
    origin TEXT,
    destination TEXT,
    distance_km INTEGER
);
