CREATE TABLE sales (
    id SERIAL PRIMARY KEY,
    employee_name TEXT NOT NULL,
    region TEXT NOT NULL,
    amount NUMERIC(10, 2) NOT NULL,
    sale_date DATE NOT NULL
);
INSERT INTO sales (employee_name, region, amount, sale_date) VALUES
('Alice', 'North', 1200.50, '2025-07-01'),
('Bob', 'South', 950.00, '2025-07-02'),
('Alice', 'North', 1300.00, '2025-07-03'),
('Charlie', 'East', 1100.00, '2025-07-04'),
('David', 'West', 1000.00, '2025-07-05'),
('Bob', 'South', 1150.00, '2025-07-06'),
('Alice', 'North', 900.00, '2025-07-07'),
('Charlie', 'East', 1250.00, '2025-07-08'),
('David', 'West', 950.00, '2025-07-09'),
('Bob', 'South', 1050.00, '2025-07-10');

SELECT SUM(amount) as total_sales FROM sales;

Select region, count(*) FROM sales
Group by region;

Select region, sum(amount) FROM sales
Group by region;

Select region, avg(amount) FROM sales
Group by region;

Select region, max(amount) FROM sales
Group by region;

SELECT employee_name,sum(amount) FROM sales
Group by employee_name
Having sum(amount)>1000;
Select * from sales;
-- Total sales by region
select employee_name,count(*) as no_of_sales from sales
group by employee_name;
-- Average sales of an employee
SELECT employee_name,avg(amount)as avg_sales from sales
group by employee_name;
-- Employees with High Total Sales
SELECT employee_name, sum(amount)as total_sales from sales
group by employee_name
having sum(amount)>3000;
--  Regions with More Than 2 Sales
SELECT region,count(*)as no_of_sales from sales
group by region
having count(*)>2;
-- Employees with High Average Sales
SELECT employee_name,avg(amount)as avg_sales from sales
group by employee_name
having avg(amount)>1000;
--Top Performer
SELECT employee_name,sum(amount) as total_amount from sales
group by employee_name
order by sum(amount) desc
limit 1;
-- Most Active Region
SELECT region,count(*) as total_amount from sales
group by region
order by count(*) desc
limit 1;
-- Daily Sales Report
SELECT sale_date,sum(amount) as total_amount from sales
group by sale_date;
-- Employees with Multiple Sales in a Day
SELECT employee_name,sale_date,count(*) from sales
group by employee_name, sale_date
having count(*)>1;