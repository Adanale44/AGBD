INHABITANT
SELECT * FROM INHABITANT WHERE STATE = 'friendly'
SELECT * FROM INHABITANT WHERE STATE = 'friendly' AND JOB = 'weaponsmith'
SELECT * FROM INHABITANT WHERE STATE = 'friendly' AND JOB LIKE '%smith'
select personid from inhabitant where name = 'Stranger'
select gold from inhabitant where name = 'Stranger'
select * from item where owner is null 
update item set owner = 20 where owner is null 
select * from item where owner = 20