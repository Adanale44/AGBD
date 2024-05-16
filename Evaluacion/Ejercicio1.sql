--1
SELECT DISTINCT type from crime_scene_report
ORDER by type ASC

--2
SELECT p.name, d.car_make, d.age, d.car_model, d.plate_number from person p 
JOIN drivers_license d on p.license_id = d.id