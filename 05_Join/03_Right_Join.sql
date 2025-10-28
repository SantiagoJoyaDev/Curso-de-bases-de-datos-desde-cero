------------ RIGHT JOIN ------------

/*Similar al LEFT JOIN, pero devuelve todas las filas de la tabla derecha y las correspondientes 
de la izquierda (las no coincidentes de la derecha tendrán NULL en columnas de la izquierda).*/

-- Ejemplo -->  
SELECT name, dni_number FROM users RIGHT JOIN dni on users.user_id = dni.user_id;

SELECT name, dni_number FROM dni RIGHT JOIN users on users.user_id = dni.user_id;