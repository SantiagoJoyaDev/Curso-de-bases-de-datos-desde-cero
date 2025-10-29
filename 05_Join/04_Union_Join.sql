------------ UNIO JOIN ------------
------------ (FULL JOIN) ------------

/*(No soportado directamente en MySQL) Devuelve todas las filas cuando hay coincidencia en una de las 
tablas u en la otra, incluyendo las no emparejadas de ambas (las no coincidentes muestran NULLs para la tabla opuesta).*/

-- Ejemplo -->  
SELECT * FROM users  LEFT JOIN dni ON users.user_id = dni.user_id
UNION 
SELECT * FROM users  RIGHT JOIN dni ON users.user_id = dni.user_id;