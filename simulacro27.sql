--1
SELECT e.first_name,m.manager_id,e.salary,d.department_name,l.state_province  FROM employees e
join departments d on e.department_id = d.department_id
JOIN locations l on d.location_id = l.location_id
join employees m on e.employee_id = m.manager_id

ORDER by e.salary ASC

--2 Reduce el salario
UPDATE jobs set max_salary = max_salary -((max_salary *25) /100)
UPDATE jobs set max_salary = max_salary -((max_salary *25) /100)

--3
DELETE from employees where(SELECT j.max_salary FROM jobs j
JOIN employees e on e.job_id = j.job_id
WHERE salary > max_salary)

--4
