--1)Agregar dos regiones Africa/Middle Eats
INSERT INTO regions(region_name)
VALUES ("Africa"),("Middle East");

--2)Modificar para pasar los paises a las nuevas regiones
UPDATE countries set region_id = (SELECT region_id FROM regions WHERE region_name like "Africa")
WHERE country_name in ("Zambia","Zimbabwe","Egypt","Nigeria")


UPDATE countries set region_id = (SELECT region_id FROM regions WHERE region_name like "Middle East")
WHERE country_name in ("Kuwait","Israel")
--3)Borrar la region
DELETE from regions WHERE region_name = "Middle East and Africa"
--4)agregar dos paises en las nuevas regiones
INSERT INTO countries (country_id,country_name,region_id)
VALUES ("BN","Benin",(SELECT region_id FROM regions WHERE region_name like "%africa%")),("BU","Burundi",(SELECT region_id FROM regions WHERE region_name like "%africa%"));

INSERT INTO countries (country_id,country_name,region_id)
VALUES ("IR","Irak",(SELECT region_id FROM regions WHERE region_name like "%Middle East%")),("TU","Turquía",(SELECT region_id FROM regions WHERE region_name like "%Middle East%"));

