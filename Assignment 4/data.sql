-- Insert Warehouses
INSERT INTO Warehouses (warehouse_name, location) VALUES
('Central Hub', 'New York'),
('West Coast Center', 'Los Angeles'),
('Midwest Distribution', 'Chicago'),
('Southeast Depot', 'Atlanta'),
('Northeast Storage', 'Boston'),
('Southwest Facility', 'Phoenix');

-- Insert Products
INSERT INTO Products (product_name, category) VALUES
('Laptop Computer', 'Electronics'),
('Office Chair', 'Furniture'),
('Smartphone', 'Electronics'),
('Desk Lamp', 'Furniture'),
('Tablet', 'Electronics'),
('Filing Cabinet', 'Furniture'),
('Monitor', 'Electronics'),
('Bookshelf', 'Furniture'),
('Printer', 'Electronics'),
('Conference Table', 'Furniture'),
('Headphones', 'Electronics'),
('Storage Box', 'Furniture');

-- Insert Drivers
INSERT INTO Drivers (driver_name) VALUES
('John Smith'),
('Maria Garcia'),
('David Johnson'),
('Sarah Wilson'),
('Michael Brown'),
('Lisa Anderson'),
('Robert Taylor'),
('Jennifer Davis'),
('William Miller'),
('Amanda Thompson'),
('James Rodriguez'),
('Karen White'),
('Christopher Lee'),
('Michelle Martin'),
('Daniel Garcia');

-- Insert Shipments (mix of recent dates to satisfy queries)
INSERT INTO Shipments (warehouse_id, driver_id, shipment_date) VALUES
-- Recent shipments (last 7 days) - using 2025-07-20 to 2025-07-26
(1, 1, '2025-07-26'), (1, 2, '2025-07-26'), (1, 3, '2025-07-25'),
(2, 1, '2025-07-25'), (2, 4, '2025-07-24'), (2, 5, '2025-07-24'),
(3, 2, '2025-07-23'), (3, 6, '2025-07-23'), (3, 7, '2025-07-22'),
(4, 3, '2025-07-22'), (4, 8, '2025-07-21'), (4, 9, '2025-07-21'),
(5, 4, '2025-07-20'), (5, 10, '2025-07-20'), (6, 5, '2025-07-20'),

-- July 2025 shipments for drivers with >10 deliveries
(1, 1, '2025-07-19'), (2, 1, '2025-07-18'), (3, 1, '2025-07-17'), (4, 1, '2025-07-16'), (5, 1, '2025-07-15'),
(6, 1, '2025-07-14'), (1, 1, '2025-07-13'), (2, 1, '2025-07-12'), (3, 1, '2025-07-11'), (4, 1, '2025-07-10'),
(5, 1, '2025-07-09'), (6, 1, '2025-07-08'), (1, 1, '2025-07-07'), (2, 1, '2025-07-06'), (3, 1, '2025-07-05'),

(1, 2, '2025-07-19'), (2, 2, '2025-07-18'), (3, 2, '2025-07-17'), (4, 2, '2025-07-16'), (5, 2, '2025-07-15'),
(6, 2, '2025-07-14'), (1, 2, '2025-07-13'), (2, 2, '2025-07-12'), (3, 2, '2025-07-11'), (4, 2, '2025-07-10'),
(5, 2, '2025-07-09'), (6, 2, '2025-07-08'), (1, 2, '2025-07-07'), (2, 2, '2025-07-06'),

(1, 3, '2025-07-19'), (2, 3, '2025-07-18'), (3, 3, '2025-07-17'), (4, 3, '2025-07-16'), (5, 3, '2025-07-15'),
(6, 3, '2025-07-14'), (1, 3, '2025-07-13'), (2, 3, '2025-07-12'), (3, 3, '2025-07-11'), (4, 3, '2025-07-10'),
(5, 3, '2025-07-09'), (6, 3, '2025-07-08'), (1, 3, '2025-07-07'),

(1, 4, '2025-07-19'), (2, 4, '2025-07-18'), (3, 4, '2025-07-17'), (4, 4, '2025-07-16'), (5, 4, '2025-07-15'),
(6, 4, '2025-07-14'), (1, 4, '2025-07-13'), (2, 4, '2025-07-12'), (3, 4, '2025-07-11'), (4, 4, '2025-07-10'),
(5, 4, '2025-07-09'), (6, 4, '2025-07-08'),

(1, 5, '2025-07-19'), (2, 5, '2025-07-18'), (3, 5, '2025-07-17'), (4, 5, '2025-07-16'), (5, 5, '2025-07-15'),
(6, 5, '2025-07-14'), (1, 5, '2025-07-13'), (2, 5, '2025-07-12'), (3, 5, '2025-07-11'), (4, 5, '2025-07-10'),
(5, 5, '2025-07-09'),

-- Additional shipments for variety
(1, 6, '2025-07-04'), (2, 7, '2025-07-03'), (3, 8, '2025-07-02'), (4, 9, '2025-07-01'),
(5, 10, '2025-06-30'), (6, 11, '2025-06-29'), (1, 12, '2025-06-28'), (2, 13, '2025-06-27');

-- Insert Shipment_Items (ensuring variety for all queries)
-- Recent shipments with multiple products
INSERT INTO Shipment_Items (shipment_id, product_id, quantity) VALUES
-- Shipment 1 (6+ unique products)
(1, 1, 5), (1, 2, 3), (1, 3, 8), (1, 4, 2), (1, 5, 6), (1, 6, 4), (1, 7, 1),
-- Shipment 2 (6+ unique products)
(2, 2, 10), (2, 4, 5), (2, 6, 7), (2, 8, 3), (2, 9, 2), (2, 10, 8), (2, 11, 4),
-- Shipment 3 (6+ unique products)
(3, 1, 12), (3, 3, 6), (3, 5, 9), (3, 7, 4), (3, 9, 3), (3, 11, 7), (3, 12, 2),
-- Shipment 4 (6+ unique products)
(4, 2, 8), (4, 4, 15), (4, 6, 5), (4, 8, 6), (4, 10, 9), (4, 12, 3), (4, 1, 4),
-- Shipment 5 (6+ unique products)
(5, 3, 20), (5, 5, 12), (5, 7, 8), (5, 9, 6), (5, 11, 10), (5, 1, 7), (5, 2, 5),
-- Shipment 6 (7+ unique products)
(6, 4, 18), (6, 6, 14), (6, 8, 11), (6, 10, 7), (6, 12, 9), (6, 1, 6), (6, 3, 13), (6, 5, 4),

-- More recent shipments
(7, 1, 25), (7, 2, 18), (7, 3, 12),
(8, 4, 22), (8, 5, 16), (8, 6, 9), (8, 7, 14), (8, 8, 7), (8, 9, 11),
(9, 7, 30), (9, 8, 20), (9, 9, 15),
(10, 10, 28), (10, 11, 19), (10, 12, 13), (10, 1, 8), (10, 2, 12), (10, 3, 6),
(11, 1, 35), (11, 4, 24), (11, 7, 17),
(12, 2, 40), (12, 5, 28), (12, 8, 21), (12, 11, 14), (12, 3, 10), (12, 6, 16),
(13, 3, 45), (13, 6, 32), (13, 9, 25),
(14, 4, 38), (14, 7, 29), (14, 10, 22), (14, 1, 15), (14, 5, 18), (14, 12, 11),
(15, 5, 50), (15, 8, 35), (15, 11, 28),

-- Additional items for other shipments to ensure good distribution
(16, 1, 15), (16, 2, 10), (16, 3, 8),
(17, 4, 12), (17, 5, 9), (17, 6, 6),
(18, 7, 18), (18, 8, 14), (18, 9, 11),
(19, 10, 20), (19, 11, 16), (19, 12, 13),
(20, 1, 22), (20, 2, 18), (20, 3, 15),
(21, 4, 25), (21, 5, 20), (21, 6, 17),
(22, 7, 28), (22, 8, 23), (22, 9, 19),
(23, 10, 30), (23, 11, 25), (23, 12, 21),
(24, 1, 32), (24, 2, 27), (24, 3, 23),
(25, 4, 35), (25, 5, 30), (25, 6, 26),
(26, 7, 38), (26, 8, 33), (26, 9, 29),
(27, 10, 40), (27, 11, 35), (27, 12, 31),
(28, 1, 42), (28, 2, 37), (28, 3, 33),
(29, 4, 45), (29, 5, 40), (29, 6, 36),
(30, 7, 48), (30, 8, 43), (30, 9, 39),
(31, 10, 50), (31, 11, 45), (31, 12, 41),
(32, 1, 52), (32, 2, 47), (32, 3, 43),
(33, 4, 55), (33, 5, 50), (33, 6, 46),
(34, 7, 58), (34, 8, 53), (34, 9, 49),
(35, 10, 60), (35, 11, 55), (35, 12, 51);

-- Insert Routes
INSERT INTO Routes (shipment_id, origin, destination, distance_km) VALUES
(1, 'New York', 'Philadelphia', 150),
(2, 'New York', 'Boston', 300),
(3, 'New York', 'Washington DC', 250),
(4, 'Los Angeles', 'San Diego', 200),
(5, 'Los Angeles', 'Las Vegas', 400),
(6, 'Los Angeles', 'San Francisco', 600),
(7, 'Chicago', 'Detroit', 350),
(8, 'Chicago', 'Milwaukee', 150),
(9, 'Chicago', 'Indianapolis', 250),
(10, 'Atlanta', 'Miami', 800),
(11, 'Atlanta', 'Tampa', 650),
(12, 'Atlanta', 'Charlotte', 400),
(13, 'Boston', 'Portland', 200),
(14, 'Boston', 'Hartford', 150),
(15, 'Phoenix', 'Tucson', 180),
(16, 'New York', 'Baltimore', 280),
(17, 'New York', 'Albany', 200),
(18, 'Los Angeles', 'Riverside', 100),
(19, 'Los Angeles', 'Long Beach', 50),
(20, 'Chicago', 'Springfield', 300),
(21, 'Chicago', 'Rockford', 120),
(22, 'Atlanta', 'Savannah', 350),
(23, 'Atlanta', 'Birmingham', 250),
(24, 'Boston', 'Worcester', 80),
(25, 'Boston', 'Springfield', 150),
(26, 'Phoenix', 'Flagstaff', 220),
(27, 'Phoenix', 'Mesa', 30),
(28, 'New York', 'Newark', 20),
(29, 'Los Angeles', 'Pasadena', 25),
(30, 'Chicago', 'Evanston', 40),
(31, 'Atlanta', 'Decatur', 15),
(32, 'Boston', 'Cambridge', 10),
(33, 'Phoenix', 'Scottsdale', 25),
(34, 'New York', 'Queens', 30),
(35, 'Los Angeles', 'Hollywood', 15);