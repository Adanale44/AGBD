select * from crime_scene_report
where type = "murder" and city = "SQL City"

select * from person
where name like "Annabel%" and address_street_name like "Franklin Ave"
Annabel Miller = 16371

--Encontrar al primer testigo
select * from person
where address_street_name like "Northwestern Dr"

--encontrar el numero de calle del primer testigo
select * from person
where address_street_name like "Northwestern Dr" 
order by address_number desc
              
Morty Schapiro = 14887

--Interogatorio 
select * from interview
where person_id = "16371" or person_id = "14887"

--Los que entraron al gym
select * from get_fit_now_check_in
where membership_id like "48Z%"

--LOs dos culpables
select * from get_fit_now_member
 where membership_status = "gold" and id like "48Z"

--join con person y drivers_license
select * from drivers_license d
join person p on d.id = p.license_id
where plate_number like "%H42W%"

--persona encontrada
select p.name, g.person_id from get_fit_now_member g
join person p on g.person_id = p.id
join drivers_license d on d.id = p.license_id
where membership_status = "gold" and g.id like "48Z%" and plate_number like "%H42W%"

--interrogatorio del asesino 
select * from interview
where person_id = "67318" 
--I was hired by a woman with a lot of money. 
-- I don't know her name but I know she's around 5'5" (65") or 5'7" (67"). 
-- She has red hair and she drives a Tesla Model S. 
-- I know that she attended the SQL Symphony Concert 3 times in December 2017. 

--DESCUBIR A la autora del crimen
-- Miranda Priestly
select f.person_id, p.name, COUNT(*) AS veces from drivers_license d
join person p on p.license_id = d.id
join facebook_event_checkin f on p.id = f.person_id
where 
hair_color = "red" and height between 65 and 67
and car_model like "%Model S%" and car_make like "%Tesla%" and 
f.event_name = "SQL Symphony Concert" and f.date like "201712%"
GROUP BY p.id
HAVING veces = 3             