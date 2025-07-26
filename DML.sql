USE `Veterinaria Nala`;

INSERT INTO Duenios (nombre,telefono,direccion) VALUES
("Emely Rojas","3221485255","Av.17 #17"),
("Vanesa Diaz","3419564100","Calle 20 #20"),
("Sara Martinez","3185410927","Cra.8 #8"),
("David Perez","3183098322","Av.15 #15"),
("Juan Gomez","3214567890","Calle 30 #30");



INSERT INTO Mascotas (nombre,especie,raza,edad,sexo,vacunas,Dueños_idDUeños,Visitas_idVisitas) VALUES
("Noha","perro","french poodle",5,"macho",FALSE,1,5),
("Tomas","gato","siames",12,"macho",TRUE,4,2),
("Odi","erizo","albino",4,"macho",FALSE,2,1),
("Linda","perro","golden",4,"hembra",TRUE,1,3),
("Casimiro","gato","ocicat",8,"macho",TRUE,3,4),
("Nucita","gato","bombay",6,"hembra",TRUE,2,7),
("Gus Gus","hamster","sirio",15,"macho",FALSE,4,6),
("Romina","perro","doberman",2,"hembra",FALSE,1,9),
("Shaina","tortuga","verde",9,"hembra",FALSE,3,10),
("Tuttis","conejo","holandes",6,"macho",TRUE,2,8);

INSERT INTO Servicio (nombre,descripcion,precio) VALUES
("Baño","Se realiza un baño completo con jabones y shampoos adecuados para cada mascota", 45000),
("Corte de uñas","Se estilizan las uñas de cada patita de la mascota, se cortan, liman y pintan segun lo desee el cliente",25000),
("Consulta medica","Se realiza una consulta medica especial y personalizada para cada mascota segun lo que indique el cliente", 50000),
("Desparasitacion", "Se da a la mascota los medicamentos correspondientes a su desparasitacion via oral", 65000),
("Vacunacion","Se realiza la vacunacion segun sea la indicada para la mascota, teniendo en cuenta su tamaño, peso y raza",15000);

INSERT INTO Visitas (Servicio_idServicio,fecha) VALUES
(1,'2025-07-30 15:00'),
(2,'2025-07-30 15:30'),
(5,'2025-08-02 10:00'),
(3,'2025-08-02 16:00'),
(4,'2025-08-05 8:00'),
(3,'2025-08-06 13:00'),
(2,'2025-08-10 17:30'),
(4,'2025-08-15 14:00'),
(1,'2025-08-15 15:30'),
(5,'2025-08-18 07:00');

INSERT INTO Tratamientos(nombre,observaciones,Visitas_idVisitas) VALUES
("Cirugia","Se realiza una cirugia si es necesario para la mascota, para mejorar su salud",1),
("Odontologia","Se realiza limpieza bucal a cada una de las mascotas para evitar caries",5),
("Eutanasia","Se realizara este tratamiento a las mascotas que lo requieran por solicitud de su dueño",2),
("Spa","Se realizaran masajes, y diferentes proedimientos para relajar a tu mascota",3),
("Oncologia","Se realizara este tratamiento a mascotas que requieran este servicio",4);