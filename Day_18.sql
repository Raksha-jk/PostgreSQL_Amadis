CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    employee_name TEXT NOT NULL,
    department_id INT
);

INSERT INTO employees (employee_name, department_id) VALUES
('Alice', 1),
('Bob', 2),
('Charlie', 1),
('David', NULL),
('Eva', 3);

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name TEXT NOT NULL
);

INSERT INTO departments (department_id, department_name) VALUES
(1, 'HR'),
(2, 'Sales'),
(3, 'Engineering'),
(4, 'Finance');

CREATE TABLE salaries (
    employee_id INT,
    salary INT,
    month TEXT,
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);

INSERT INTO salaries (employee_id, salary, month) VALUES
(1, 50000, 'June'),
(1, 51000, 'July'),
(2, 45000, 'June'),
(3, 47000, 'June'),
(5, 60000, 'June'); -- Eva


SELECT d.department_name,
       COALESCE(SUM(s.salary), 0) AS total_salary
FROM departments d
LEFT JOIN employees e ON d.department_id = e.department_id
LEFT JOIN salaries s ON e.employee_id = s.employee_id AND s.month = 'June'
GROUP BY d.department_name;

SELECT e.employee_name from employees e
left join salaries s e.employee_id=s.employee_id
where month='June';

SELECT e.employee_name from employees e
left join salaries s on e.employee_id=s.employee_id
where month='June';

SELECT e.employee_name,s.salary from employees e
left join salaries s on e.employee_id=s.employee_id
where month='June';

SELECT e.employee_name,s.salary from employees e
left join salaries s on e.employee_id=s.employee_id;

SELECT e.employee_name,d.department_name,s.salary from employees e
left join departments d on e.department_id=d.department_id
left join salaries s on e.employee_id=s.employee_id;

SELECT s.salary,e.employee_name from employees e
right join salaries s on e.employee_id=s.employee_id;

SELECT e.employee_name
FROM employees e
LEFT JOIN salaries s ON e.employee_id = s.employee_id
WHERE s.salary IS NULL;

SELECT e.employee_name, SUM(s.salary) AS total_salary
FROM employees e
JOIN salaries s ON e.employee_id = s.employee_id
GROUP BY e.employee_name;

SELECT e.employee_name ,Max(s.salary) from employees e
left join salaries s on e.employee_id = s.employee_id
group by e.employee_name;

SELECT e.employee_name ,avg(s.salary) from employees e
left join salaries s on e.employee_id = s.employee_id
group by e.employee_name;

SELECT e.employee_name ,count(s.salary) from employees e
left join salaries s on e.employee_id = s.employee_id
group by e.employee_name;

SELECT e.employee_name ,sum(s.salary) from employees e
left join salaries s on e.employee_id = s.employee_id
where s.month='June'
group by e.employee_name;

SELECT d.department_name,
       COALESCE(SUM(s.salary), 0) AS total_salary
FROM departments d
LEFT JOIN employees e ON d.department_id = e.department_id
LEFT JOIN salaries s ON e.employee_id = s.employee_id AND s.month = 'June'
GROUP BY d.department_name;

SELECT d.department_name,sum(s.salary) from departments d
LEFT JOIN employees e ON d.department_id = e.department_id
LEFT JOIN salaries s ON e.employee_id = s.employee_id 
where s.month = 'June'
GROUP BY d.department_name;

SELECT d.department_name,
       COALESCE(SUM(s.salary), 0) AS total_salary
FROM departments d
LEFT JOIN employees e ON d.department_id = e.department_id
LEFT JOIN salaries s ON e.employee_id = s.employee_id AND s.month = 'June'
GROUP BY d.department_name;

with total_salaries as(
	select e.employee_name,sum(s.salary) as total from employees e
	left join salaries s on e.employee_id=s.employee_id
	group by e.employee_name
)
select employee_name,total
from total_salaries
where total=(SELECT Max(total) from total_salaries);

SELECT COALESCE(d.department_name, 'No Department') AS department,e.employee_name,COALESCE(SUM(s.salary), 0) AS total_salary
FROM employees e
LEFT JOIN departments d ON e.department_id = d.department_id
LEFT JOIN salaries s ON e.employee_id = s.employee_id
GROUP BY d.department_name, e.employee_name;