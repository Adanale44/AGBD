-1
SELECT DISTINCT d.department_name from employees e
join departments d on d.department_id = e.department_id
order by d.department_name asc
--2
SELECT DISTINCT salary from employees 
ORDER by salary desc
---3
SELECT DISTINCT job_title, max_salary, min_salary from jobs
WHERE job_title like "%Manager"
order by max_salary DESC, min_salary DESC
----4
SELECT DISTINCT r.region_name as region , c.country_name as pais from regions r
join countries c on c.region_id = r.region_id
ORDER by region_name ASC
-----5
SELECT e.first_name, e.last_name, e.salary, d.department_name  from employees e
join departments d on d.department_id = e.department_id
where e.salary between 9000 and 17000
ORDER by salary DESC
------6
SELECT count(*) as cant_region, r.region_name from regions r
join countries c on c.region_id = r.region_id
GROUP by r.region_id
HAVING cant_region > 5
ORDER by cant_region DESC 

-------7
