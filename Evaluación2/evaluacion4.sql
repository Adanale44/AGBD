--1
SELECT j.job_title AS "Trabajos",COUNT(e.employee_id) AS "Empleados",SUM(e.salary) AS "Gasto Total en Sueldos" FROM employees e
JOIN jobs j ON e.job_id = j.job_id
GROUP BY  j.job_title

--2
SELECT e.first_name, e.last_name,d.department_name,l.city, j.job_title from employees e
join departments d on e.department_id = d.department_id
join locations l on d.location_id = l.location_id
join jobs j on e.job_id = j.job_id

--3
UPDATE employees set salary = salary +((salary *55) /100)
WHERE salary < 7500 IN (SELECT department_name from departments
 where department_name = "IT" OR department_name = "Finance")

 --4
DELETE FROM locations
where location_id = 1800

DELETE FROM departments
department_id = 2 

--5
UPDATE employees set phone_number = "333.444.555"
where phone_number is NULL

--6
INSERT INTO departments (department_name, location_id)
VALUES ('Consultants', (SELECT location_id FROM locations WHERE street_address = '2004 Charade Rd' AND city = 'Seattle'));
-----
INSERT INTO jobs (job_title, min_salary,max_salary)
VALUES ('Consultant', 1200 , 3000);
-----
INSERT INTO employees (first_name, last_name, email, phone_number, hire_date, salary, job_id, department_id, manager_id)
VALUES('Raul', 'Lopez', 'rlopez@gmail.com', '334.445.556', '2024-07-01', 5000,
       (SELECT job_id FROM jobs WHERE job_title = 'Consultant'),
       (SELECT department_id FROM departments WHERE department_name = 'Consultants'),
       105),
         ('Andres', 'Gonzalez', 'agonzalez@gmail.com', '334.445.556', '2024-07-01', 5000,
       (SELECT job_id FROM jobs WHERE job_title = 'Consultant'),
       (SELECT department_id FROM departments WHERE department_name = 'Consultants'),
       106),
         ('Laura', 'Fernandez', 'lfernandez@gmail.com', '334.445.556', '2024-07-01', 5000,
       (SELECT job_id FROM jobs WHERE job_title = 'Consultant'),
       (SELECT department_id FROM departments WHERE department_name = 'Consultants'),
       107);