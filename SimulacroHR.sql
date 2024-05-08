--1
SELECT DISTINCT d.department_name from employees e
join departments d on d.department_id = e.department_id
order by d.department_name asc
---2
SELECT DISTINCT salary from employees 
ORDER by salary desc
----3
