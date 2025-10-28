------------ Alias ------------

/*AS cambia el nombre de una columna o tabla solo en el resultado de la consulta.*/

-- Ejemplo -->  
SELECT date AS "fecha" from users;


------------ CONCAT ------------

/*CONCAT() combina varios valores de texto en una sola cadena.*/

-- Ejemplo -->  
SELECT concat(name," ",surname) AS "Nombre completo: " from users;