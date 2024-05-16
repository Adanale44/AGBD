--2
SELECT p.name, d.car_make, d.age, d.car_model, d.plate_number from person p 
JOIN drivers_license d on p.license_id = d.id
WHERE d.age < 40

--3