DELETE FROM locations
where location_id = 1800

DELETE FROM departments
department_id = 2 

2--
SELECT e.first_name, e.last_name, d.department_name from employees e
JOIN departments d on e.department_id = d.department_id
JOIN locations l on d.location_id = d.location_id
WHERE country_id = "UK"


3--
DELETE FROM jobs WHERE job_id not in(SELECT job_id from employees)
