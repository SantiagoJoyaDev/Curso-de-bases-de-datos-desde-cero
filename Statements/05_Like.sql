------------ LIKE ------------

/*Se usa junto con WHERE para buscar patrones en texto dentro de una columna.
Es útil cuando no conoces exactamente el valor completo que estás buscando.*/

-- Ejemplo --> 
SELECT * FROM users WHERE email Like "%gmail.com"; 
/*Importante saber que si quiero
buscar la similitud de algo en especifico hay que utilizar el % ya que es una busqueda dinamica*/