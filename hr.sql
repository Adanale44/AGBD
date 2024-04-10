SELECT last_name,first_name,salary from employees
where  salary < 6000

SELECT t.last_name, t.first_name,d.department_name,l.city,l.state_province from employees t
join departments d on t.department_id = d.department_id
join locations l on d.location_id = l.location_id
