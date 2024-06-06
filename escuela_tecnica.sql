--insertar año y curso
INSERT INTO Division(el_año,curso)
VALUES ("5","D"), ("5","B")

--Insertar Nombre y Apellido del profesor
INSERT INTO Profesor(apellido,nombre)
VALUES ("Urso","Maximiliano"),("Aruni","Nahuel"),("Mayorga","Thomas"),
("Villace","Federico"),("Rovaletti","Enrico"),("Albornoz","José"),
("Navarro","Andrés"),("Mestrovich","Estefano"),("Salomón","Alejandro");

--Insertar Nombre y el año de las materias
INSERT INTO Materias(nombre,el_año)
VALUES ("Programación_Web", 5),("Diseño_Multimedial", 5),("Diseño_de_Software", 5),
("Adm_y_gestion_de_base_de_datos", 5),("Disp_Electronicos", 5),("Redes_de_datos", 5);

--Insertar la asignacion
INSERT INTO Asignacion(materia_id,profesor_id,division_id)
VALUES 
((SELECT materia_id FROM Materias WHERE nombre like "Programación_Web"),
(SELECT profesor_id from Profesor WHERE apellido like "Villace"),
(SELECT division_id FROM Division WHERE el_año = 5 and curso ="D")),
((SELECT materia_id FROM Materias WHERE nombre like "Programación_Web"),
(SELECT profesor_id from Profesor WHERE apellido like "Mayorga"),
(SELECT division_id FROM Division WHERE el_año = 5 and curso ="D")),

((SELECT materia_id FROM Materias WHERE nombre like "Adm_y_gestion_de_base_de_datos"),
(SELECT profesor_id from Profesor WHERE apellido like "Navarro"),
(SELECT division_id FROM Division WHERE el_año = 5 and curso ="D")),
((SELECT materia_id FROM Materias WHERE nombre like "Adm_y_gestion_de_base_de_datos"),
(SELECT profesor_id from Profesor WHERE apellido like "Mayorga"),
(SELECT division_id FROM Division WHERE el_año = 5 and curso ="D")),

((SELECT materia_id FROM Materias WHERE nombre like "Diseño_de_Software"),
(SELECT profesor_id from Profesor WHERE apellido like "Navarro"),
(SELECT division_id FROM Division WHERE el_año = 5 and curso ="D")),
((SELECT materia_id FROM Materias WHERE nombre like "Diseño_de_Software"),
(SELECT profesor_id from Profesor WHERE apellido like "Mayorga"),
(SELECT division_id FROM Division WHERE el_año = 5 and curso ="D")),

((SELECT materia_id FROM Materias WHERE nombre like "Diseño_Multimedial"),
(SELECT profesor_id from Profesor WHERE apellido like "Rovaletti"),
(SELECT division_id FROM Division WHERE el_año = 5 and curso ="D")),
((SELECT materia_id FROM Materias WHERE nombre like "Diseño_Multimedial"),
(SELECT profesor_id from Profesor WHERE apellido like "Aruni"),
(SELECT division_id FROM Division WHERE el_año = 5 and curso ="D")),

((SELECT materia_id FROM Materias WHERE nombre like "Disp_Electronicos"),
(SELECT profesor_id from Profesor WHERE apellido like "Urso"),
(SELECT division_id FROM Division WHERE el_año = 5 and curso ="D")),
((SELECT materia_id FROM Materias WHERE nombre like "Disp_Electronicos"),
(SELECT profesor_id from Profesor WHERE apellido like "Mestrovich"),
(SELECT division_id FROM Division WHERE el_año = 5 and curso ="D")),

((SELECT materia_id FROM Materias WHERE nombre like "Redes_de_datos"),
(SELECT profesor_id from Profesor WHERE apellido like "Albornoz"),
(SELECT division_id FROM Division WHERE el_año = 5 and curso ="D")),
((SELECT materia_id FROM Materias WHERE nombre like "Redes_de_datos"),
(SELECT profesor_id from Profesor WHERE apellido like "Salomón"),
(SELECT division_id FROM Division WHERE el_año = 5 and curso ="D"));

--Insertar nuevos profesores
INSERT INTO Profesor(apellido,nombre)
VALUES ("Corvalan","Adrián"),("Cuneo","Guillermo")

--Cambiar los viejos profesores por los nuevos

