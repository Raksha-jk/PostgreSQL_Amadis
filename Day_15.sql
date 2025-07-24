CREATE TABLE employees(
	id SERIAL PRIMARY KEY,
	name VARCHAR(100),
	role VARCHAR(50),
	salary INTEGER
);
Delete from employees;

INSERT INTO employees (name, role, salary) VALUES
('Alice Johnson', 'Software Engineer', 75000),
('Bob Smith', 'Project Manager', 90000),
('Catherine Lee', 'Data Analyst', 65000),
('Daniel Kim', 'HR Manager', 70000),
('Eva Brown', 'UX Designer', 68000),
('Frank White', 'DevOps Engineer', 80000),
('Grace Liu', 'Software Engineer', 76000),
('Henry Thomas', 'CTO', 150000),
('Isla Martin', 'QA Tester', 62000),
('Jack Wilson', 'Intern', 30000),
('Karen Davis', 'Business Analyst', 72000),
('Liam Turner', 'Software Engineer', 77000),
('Mia Clark', 'Product Manager', 93000),
('Noah Walker', 'Marketing Executive', 61000),
('Olivia Adams', 'Technical Writer', 58000),
('Paul Harris', 'Finance Manager', 88000),
('Quinn Wright', 'HR Associate', 54000),
('Ruby Allen', 'Front-end Developer', 74000),
('Samuel Young', 'System Administrator', 81000),
('Tina Scott', 'Customer Support', 45000),
('Uma Patel', 'Data Scientist', 95000),
('Victor Evans', 'Back-end Developer', 79000),
('Wendy Green', 'Graphic Designer', 67000),
('Xander Hall', 'Database Administrator', 85000),
('Yasmine Lewis', 'Sales Executive', 62000),
('Zachary Baker', 'Network Engineer', 83000),
('Abigail Carter', 'Recruiter', 60000),
('Benjamin Rivera', 'Full Stack Developer', 88000),
('Chloe Bennett', 'QA Engineer', 66000),
('David Perez', 'UI Designer', 70000),
('Ella Ramirez', 'Mobile App Developer', 84000),
('Finn Cox', 'Security Analyst', 89000),
('Gabriella Ward', 'Office Assistant', 40000),
('Harrison Watson', 'Cloud Engineer', 91000),
('Isabelle Brooks', 'Content Strategist', 63000),
('Jayden Reed', 'SEO Specialist', 61000),
('Kayla Murphy', 'IT Support', 55000),
('Logan Foster', 'Finance Analyst', 72000),
('Madison James', 'Product Designer', 76000),
('Nathan Bell', 'Web Developer', 78000),
('Ophelia Russell', 'Legal Advisor', 97000),
('Preston Griffin', 'Operations Manager', 87000),
('Rachel Coleman', 'Social Media Manager', 59000),
('Sebastian Hayes', 'Research Scientist', 98000),
('Taylor Long', 'Executive Assistant', 53000),
('Uriah Patterson', 'Technical Recruiter', 61000),
('Vanessa Sanders', 'Game Developer', 86000),
('William Price', 'Chief Marketing Officer', 140000),
('Ximena Morales', 'Accounts Executive', 63000),
('Yosef Bryant', 'Machine Learning Engineer', 100000),
('Zoey Richardson', 'Business Development Manager', 92000);

TRUNCATE TABLE employees RESTART IDENTITY;


SELECT * FROM employees;

Select * from employees
where salary<70000;

ALTER TABLE employees
ADD COLUMN age INTEGER;

UPDATE employees
SET age=24
WHERE name='Alice Johnson';

ALTER TABLE employees
ALTER COLUMN age TYPE VARCHAR(2);

ALTER TABLE employees
DROP COLUMN age;

SELECT * FROM employees
WHERE name LIKE '%s';