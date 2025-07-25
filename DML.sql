INSERT INTO Duenios (nombre,telefono,direccion) VALUES
("Emely Rojas","3221485255","Av.17 #17"),
("Vanesa Diaz","3419564100","Calle 20 #20"),
("Sara Martinez","3185410927","Cra.8 #8"),
("David Perez","3183098322","Av.15 #15");

INSERT INTO Mascotas (nombre,especie,raza,edad,sexo,vacunas) VALUES
("Noha","perro","french poodle",5,"macho",FALSE),
("Tomas","gato","siames",12,"macho",TRUE),
("Odi","erizo","albino",4,"macho",FALSE),
("Linda","perro","golden",4,"hembra",TRUE),
("Casimiro","gato","ocicat",8,"macho",TRUE),
("Nucita","gato","bombay",6,"hembra",TRUE),
("Gus Gus","hamster","sirio",15,"macho",FALSE),
("Romina","perro","doberman",2,"hembra",FALSE),
("Shaina","tortuga","verde",9,"hembra",FALSE),
("Tuttis","conejo","holandes",6,"macho",TRUE);

INSERT INTO Servicio (nombre,descripcion,precio) VALUES
("Baño","Se realiza un baño completo con jabones y shampoos adecuados para cada mascota", 45000),
("Corte de uñas","Se estilizan las uñas de cada patita de la mascota, se cortan, liman y pintan segun lo desee el cliente",25000),
("Consulta medica","Se realiza una consulta medica especial y personalizada para cada mascota segun lo que indique el cliente", 50000),
("Desparasitacion", "Se da a la mascota los medicamentos correspondientes a su desparasitacion via oral", 65000),
("Vacunacion","Se realiza la vacunacion segun sea la indicada para la mascota, teniendo en cuenta su tamaño, peso y raza",15000);

INSERT INTO Visitas (fecha) VALUES
('30-07-2025 15:00'),
('30-07-2025 15:30'),
('02-08-2025 10:00'),
('02-08-2025 16:00'),
('05-08-2025 8:00'),
('06-08-2025 13:00'),
('10-08-2025 17:30'),
('15-08-2025 14:00'),
('15-08-2025 15:30'),
('18-08-2025 07:00');

INSERT INTO Tratamientos(nombre,observaciones) VALUES
("Cirugia","Se realiza una cirugia si es necesario para la mascota, para mejorar su salud"),
("Odontologia","Se realiza limpieza bucal a cada una de las mascotas para evitar caries"),
("Eutanasia","Se realizara este tratamiento a las mascotas que lo requieran por solicitud de su dueño"),
("Spa","Se realizaran masajes, y diferentes proedimientos para relajar a tu mascota"),
("Oncologia","Se realizara este tratamiento a mascotas que requieran este servicio");