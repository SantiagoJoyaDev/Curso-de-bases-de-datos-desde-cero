------------ NULL ------------

/*NULL representa un valor desconocido o vacío en una columna de la base de datos. No es lo mismo que 0 o 
cadena vacía.*/

-- Ejemplo -->  
SELECT * from users WHERE age is NULL;
SELECT * from users WHERE age is not NULL;

------------ IF NULL ------------

/*Devuelve un valor alternativo cuando una columna es NULL. Es una forma rápida de reemplazar valores nulos por algo más legible o útil.*/

-- Ejemplo -->  
SELECT name,surname,IFNULL(age, 0) AS age FROM users;