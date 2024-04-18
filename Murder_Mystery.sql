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
select * from get_fit_now_meber
 where membership_status = "gold" and id like "48Z"




              