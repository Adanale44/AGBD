--1
SELECT last_name,first_name,salary from employees
where  salary < 6000

--2
SELECT t.last_name, t.first_name,d.department_name,l.city,l.state_province from employees t
join departments d on t.department_id = d.department_id
join locations l on d.location_id = l.location_id

--3
SELECT e.first_name as empleados, m.first_name as managers from employees e 
join employees m on m.employee_id = e.employee_id
ORDER by managers ASC

--4
SELECT e.first_name as nombre, e.last_name as apellido, d.first_name as hijo from employees e 
join dependents d on e.employee_id = d.employee_id
ORDER by hijo ASC
