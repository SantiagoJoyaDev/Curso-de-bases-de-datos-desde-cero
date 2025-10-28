------------ NOT ------------

/*Se usa para negar una condición, es decir, selecciona los registros que no cumplen con lo indicado.*/


------------ AND ------------

/*Sirve para combinar varias condiciones; solo devuelve los registros que cumplen todas las condiciones al mismo tiempo.*/


------------ OR ------------

/*Se usa para combinar condiciones alternativas; devuelve los registros que cumplen al menos una de ellas.*/

-- Ejemplo --> 
SELECT * from users WHERE (surname = "joya" or surname = "Anaya") and age = 12 or age = 30 and email not like "%outlook%";
