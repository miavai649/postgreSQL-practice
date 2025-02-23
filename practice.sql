CREATE Table employees (
  employee_id SERIAL PRIMARY KEY,
  employee_name VARCHAR(50),
  department_id INT REFERENCES departments(department_id),
  salary DECIMAL(10, 2),
  hire_date DATE
)

CREATE Table departments (
  department_id SERIAL PRIMARY KEY,
  department_name VARCHAR(50) 
)

INSERT INTO departments (department_name) VALUES
('HR'),
('Finance'),
('Engineering'),
('Marketing'),
('Sales');

INSERT INTO employees (employee_name, department_id, salary, hire_date) VALUES
('John Doe', 1, 55000.00, '2020-06-15'),
('Alice Smith', 2, 67000.00, '2019-09-23'),
('Bob Johnson', 3, 75000.00, '2021-01-10'),
('Charlie Brown', 4, 58000.00, '2022-07-30'),
('David Williams', 5, 62000.00, '2018-03-25'),
('Emma Jones', 1, 53000.00, '2023-05-12'),
('Frank Miller', 3, 80000.00, '2017-11-05'),
('Grace Davis', 2, 70000.00, '2019-12-17'),
('Henry Wilson', 4, 59000.00, '2021-08-08'),
('Isabella Martin', 5, 61000.00, '2020-04-20');

SELECT * FROM employees;

SELECT * FROM departments;


SELECT * FROM employees JOIN departments on employees.department_id = departments.department_id;

SELECT * FROM employees JOIN departments USING(department_id);

SELECT department_name, round(avg(salary)) as avg_salary FROM employees JOIN departments USING(department_id) GROUP BY department_name;

SELECT department_name, count(*) as total_employee  FROM employees JOIN departments USING(department_id) GROUP BY department_name;

SELECT department_name, round(avg(salary)) as avg_salary FROM employees JOIN departments USING(department_id) GROUP BY department_name ORDER BY avg_salary DESC LIMIT 1;

SELECT to_char(hire_date, 'yyyy') as hire_year, count(*) from employees GROUP BY hire_year;

CREATE TABLE orders (
  order_id SERIAL PRIMARY KEY,
  customer_id INT,
  order_date DATE,
  total_amount DECIMAL(10, 2)
)

INSERT INTO orders (customer_id, order_date, total_amount) VALUES
(3, '2023-07-18', 110.25),
(1, '2024-03-15', 120.50),
(2, '2022-12-05', 140.00),
(2, '2023-11-30', 95.50),
(2, '2023-02-05', 180.99),
(3, '2022-08-25', 220.45),
(2, '2024-09-10', 90.75),
(1, '2022-04-12', 75.00),
(3, '2024-06-22', 250.00);



SELECT * from orders;

SELECT customer_id, count(order_id), sum(total_amount) as total_spent  from orders GROUP BY customer_id HAVING count(order_id) > 2;

SELECT extract(month from order_date) as month, sum(total_amount) FROM orders WHERE extract(year from order_date) = 2023 GROUP BY month;