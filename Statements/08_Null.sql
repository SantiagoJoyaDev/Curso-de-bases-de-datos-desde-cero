------------ NULL ------------

/*NULL representa un valor desconocido o vacío en una columna de la base de datos. No es lo mismo que 0 o 
cadena vacía.*/

-- Ejemplo -->  
SELECT * from users WHERE age is NULL;
SELECT * from users WHERE age is not NULL;