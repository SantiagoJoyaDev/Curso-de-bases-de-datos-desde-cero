------------ HAVING ------------

/*Filtra los resultados obtenidos después de agrupar con GROUP BY, normalmente se usa con funciones como COUNT(), SUM() o AVG().*/

-- Ejemplo -->  
SELECT count(age) FROM users HAVING count(age) > 6;