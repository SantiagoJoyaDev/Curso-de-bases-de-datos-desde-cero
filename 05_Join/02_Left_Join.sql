------------ LEFT JOIN ------------

/*Devuelve todas las filas de la tabla izquierda, y las filas coincidentes de la tabla derecha. Las filas de la 
izquierda que no tengan correspondencia en la derecha aparecerán con valores NULL en las columnas de la derecha.*/

-- Ejemplo -->  
SELECT name, dni_number FROM users LEFT JOIN dni on users.user_id = dni.user_id;

SELECT name, dni_number FROM dni LEFT JOIN users on users.user_id = dni.user_id;