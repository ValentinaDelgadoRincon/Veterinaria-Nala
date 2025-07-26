USE `Veterinaria Nala` ;
SELECT d.nombre AS "Nombre Dueño",COUNT( mas.Dueños_idDUeños) AS "Cantidad De Mascotas"
FROM Duenios d
JOIN mascotas mas ON d.idDueños=mas.Dueños_idDUeños
GROUP BY d.idDueños, d.nombre;

SELECT CONCAT(D.nombre,' - ', E.especie) AS 'Dueños y mascotas' 
FROM Duenios D 
JOIN Mascotas E ON D.idDueños = E.Dueños_idDUeños;

CREATE TABLE gatos AS 
SELECT nombre
FROM Mascotas WHERE especie ='gato';

SELECT edad,IF (edad > 8,'Adulto','Joven') AS `Rango edad` FROM `Mascotas`;

