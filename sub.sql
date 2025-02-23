CREATE Table employee (
  employee_id SERIAL PRIMARY KEY,
  employee_name VARCHAR(50) NOT NUll,
  department_name VARCHAR(50),
  salary DECIMAL(10, 2),
  hire_date DATE
)

INSERT INTO employee (employee_name, department_name, salary, hire_date) VALUES
('John Doe', 'HR', 55000.00, '2020-03-15'),
('Alice Smith', 'IT', 72000.50, '2019-07-22'),
('Bob Johnson', 'Finance', 65000.75, '2021-10-10'),
('Charlie Brown', 'Marketing', 60000.25, '2018-12-05'),
('David Williams', 'Sales', 58000.00, '2022-06-30'),
('Emma Jones', 'HR', 53000.40, '2023-01-18'),
('Frank Miller', 'IT', 75000.00, '2017-09-12'),
('Grace Davis', 'Finance', 67000.30, '2022-11-25'),
('Henry Wilson', 'Marketing', 61000.90, '2020-04-14'),
('Isabella Martin', 'Sales', 59000.20, '2021-08-07'),
('Sophia Carter', 'IT', 78000.00, '2020-09-21'),
('Ethan Martinez', 'Finance', 69000.50, '2018-05-11'),
('Olivia Robinson', 'HR', 54000.25, '2022-02-14'),
('Liam Thompson', 'Sales', 60000.75, '2019-11-28'),
('Mia Hernandez', 'Marketing', 63000.80, '2021-07-19'),
('Noah Clark', 'IT', 77000.30, '2017-03-09'),
('Ava Lewis', 'Finance', 70000.00, '2023-04-05'),
('William Young', 'HR', 52000.45, '2020-06-12'),
('James Allen', 'Marketing', 65000.60, '2019-12-30'),
('Charlotte Scott', 'Sales', 61000.90, '2021-10-02'),
('Daniel White', 'IT', 76000.00, '2018-01-23'),
('Samantha Harris', 'Finance', 69000.10, '2020-07-17'),
('Matthew Moore', 'HR', 55000.30, '2021-09-11'),
('Natalie Taylor', 'Marketing', 62000.50, '2019-05-25'),
('Ryan King', 'Sales', 60500.70, '2022-03-08'),
('Jessica Walker', 'IT', 75500.90, '2016-08-14'),
('Oliver Hall', 'Finance', 68000.00, '2017-10-26'),
('Amelia Allen', 'HR', 54000.20, '2023-06-18'),
('Lucas Wright', 'Marketing', 64000.30, '2018-09-05'),
('Ella Lopez', 'Sales', 59500.40, '2020-04-22'),
('Benjamin Adams', 'IT', 78500.00, '2015-12-11'),
('Victoria Nelson', 'Finance', 71000.80, '2019-03-30'),
('Jackson Carter', 'HR', 53000.60, '2021-11-07'),
('Chloe Mitchell', 'Marketing', 66000.10, '2016-06-25'),
('Mason Hill', 'Sales', 60000.90, '2022-09-15'),
('Emily Perez', 'IT', 75000.70, '2018-07-13'),
('Andrew Baker', 'Finance', 68500.50, '2020-10-19'),
('Hannah Roberts', 'HR', 55500.40, '2019-02-27'),
('Landon Campbell', 'Marketing', 63000.20, '2023-01-09'),
('Zoe Green', 'Sales', 62000.30, '2017-11-08');


SELECT * FROM employee;

SELECT max(salary) from employee WHERE department_name = 'HR';

SELECT * from employee WHERE salary > (SELECT max(salary) from employee WHERE department_name = 'HR');



SELECT *, (SELECT sum(salary) FROM employee) FROM employee;

SELECT department_name, sum(salary) from employee GROUP BY department_name;

SELECT * FROM (SELECT department_name, sum(salary) from employee GROUP BY department_name);

SELECT * FROM employee WHERE department_name in (SELECT department_name from employee WHERE department_name LIKE '%a%');
