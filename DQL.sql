USE `Veterinaria Nala` ;
SELECT d.nombre AS "Nombre Dueño",COUNT( mas.Dueños_idDUeños) AS "Cantidad De Mascotas"
FROM Duenios d
JOIN mascotas mas ON d.idDueños=mas.Dueños_idDUeños
GROUP BY d.idDueños, d.nombre;

SELECT CONCAT(D.nombre,' - ', E.especie) AS 'Nombre y Especie' 
FROM Mascotas D 
JOIN Mascotas E ON D.idMascotas = E.idMascotas;

CREATE TABLE gatos AS 
SELECT nombre
FROM Mascotas WHERE especie ='gato';

CREATE TABLE perros AS 
SELECT nombre
FROM Mascotas WHERE especie ='perro';

CREATE TABLE roedores AS 
SELECT nombre
FROM Mascotas WHERE especie IN ('conejo','erizo','hamster');

CREATE TABLE tortugas AS 
SELECT nombre
FROM Mascotas WHERE especie ='tortuga';

SELECT nombre,edad,IF (edad > 8,'Adulto','Joven') AS `Categoria` FROM `Mascotas`;

SELECT telefono FROM Duenios WHERE LENGTH(telefono) != 10; 

SELECT fecha,Servicio_idServicio AS 'Servicio',SUBSTRING(fecha,11) AS 'Hora' FROM Visitas;
SELECT UPPER(nombre) AS 'Nombre Tratamiento' FROM tratamientos;
SELECT nombre, ROUND((precio),2) AS 'Precio servicio' FROM Servicio;
CREATE TABLE Historial_INFO AS
SELECT nombre,vacunas,Dueños_idDUeños
FROM Mascotas ;
SELECT *FROM Tratamientos;
SELECT m.nombre AS 'Todas Las Mascotas De Emely'
FROM Mascotas m
JOIN  Duenios d ON m.Dueños_idDUeños =d.idDUeños
WHERE d.nombre='Emely Rojas';
SELECT fecha,ROUND(AVG(fecha),0)AS `Promedio Visitas`
FROM Visitas 
GROUP BY fecha;