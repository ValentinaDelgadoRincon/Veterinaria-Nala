USE `Veterinaria Nala` ;
SELECT CONCAT (D.nombre, ' - ', M.especie) AS 'Dueños y mascotas'
FROM Duenios D
JOIN Mascotas M ON D.idDueños = M.Dueños_idDUeños;
