--1 no terminado
SELECT e.first_name, j.job_title from employees e
join jobs j on e.job_id = j.job_id
where j.job_id = 9

--2
SELECT e.salary, e.first_name,e.last_name, d.department_name, j.job_title from employees e
join departments d on d.department_id = e.department_id
join jobs j on j.job_id = e.job_id

--3 el subquery no lo puse(falta de tiempo)
UPDATE employees set phone_number = "303.404.505"
where phone_number is NULL

--4 no terminado
UPDATE employees set salary = salary +((salary *35) /100)
WHERE salary < 8000(SELECT job_title from jobs
 where job_title = "Accountant" and "Programmer")

 --6
DELETE from employees where(SELECT e.job_id FROM jobs j
JOIN employees e on e.job_id = j.job_id
JOIN departments d on e.department_id = d.department_id
JOIN locations l on d.location_id = l.location_id
where country_id LIKE "%CA")


--7

