SELECT * FROM Warehouses;
SELECT * FROM Products;
SELECT * FROM Drivers;
SELECT * FROM Shipments;
SELECT * FROM Shipment_Items;
SELECT * FROM Routes;

SELECT s.shipment_id,w.warehouse_name,d.driver_name,s.shipment_date FROM Shipments s
JOIN Warehouses w ON s.warehouse_id = w.warehouse_id
JOIN Drivers d ON s.driver_id = d.driver_id
ORDER BY s.shipment_date DESC;

SELECT p.product_name,SUM(si.quantity) as total_shipped FROM Products p
JOIN Shipment_Items si ON p.product_id = si.product_id
GROUP BY p.product_name
ORDER BY total_shipped DESC;

SELECT s.shipment_id,s.shipment_date,w.warehouse_name FROM Shipments s
JOIN Warehouses w ON s.warehouse_id = w.warehouse_id
WHERE s.shipment_date >= '2025-07-20'
ORDER BY s.shipment_date DESC;


SELECT p.product_name,SUM(si.quantity) as total_quantity FROM Products p
JOIN Shipment_Items si ON p.product_id = si.product_id
JOIN Shipments s ON si.shipment_id = s.shipment_id
WHERE s.shipment_date >= CURRENT_DATE - INTERVAL '7 days'
GROUP BY p.product_id, p.product_name
ORDER BY total_quantity DESC;

SELECT s.shipment_id,w.warehouse_name,COUNT(DISTINCT si.product_id) AS unique_products FROM Shipment_Items si
JOIN Shipments s ON si.shipment_id = s.shipment_id
JOIN Warehouses w ON s.warehouse_id = w.warehouse_id
GROUP BY s.shipment_id,w.warehouse_name
HAVING COUNT(DISTINCT si.product_id) > 5;

SELECT d.driver_name,COUNT(s.shipment_id) AS delivery_count FROM drivers d
LEFT JOIN Shipments s ON d.driver_id=s.driver_id
WHERE s.shipment_date >= '2025-07-01' AND s.shipment_date <= '2025-08-01'
GROUP BY d.driver_name
HAVING COUNT(s.shipment_id)>10;

WITH warehouse_products AS(
	SELECT w.warehouse_name,p.product_name,SUM(si.quantity) as total_quantity, ROW_NUMBER() OVER (PARTITION BY w.warehouse_name ORDER BY SUM(si.quantity) DESC) AS rn
 FROM Warehouses w
	JOIN Shipments s ON w.warehouse_id = s.warehouse_id
	JOIN Shipment_Items si ON s.shipment_id = si.shipment_id
	JOIN Products p ON si.product_id = p.product_id
	GROUP BY w.warehouse_name, p.product_name
)
SELECT warehouse_name,product_name,total_quantity FROM warehouse_products
WHERE rn=1;