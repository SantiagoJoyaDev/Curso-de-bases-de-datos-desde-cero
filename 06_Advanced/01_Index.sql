------------ INDEX ------------

/*Estructuras que mejoran la velocidad de las consultas al permitir acceso rápido a los datos de una tabla 
basándose en las columnas indexadas (funcionan de forma similar a un índice de un libro).*/

-- Ejemplo -->  
CREATE INDEX idx_name ON users(name); /*(Siempre importante colocar el idx_name ya que asi sirve como identificador
de que es un index)*/

SELECT * FROM users WHERE name = "Ferney"; /*Ahora si se realiza esta consulta gracias al index la query es mas
rapida*/

-- Para borrar el index
DROP INDEX idx_name ON users;