------------ CASE ------------

/*Permite crear condiciones dentro de una consulta, similar a un “if” en SQL.*/

-- Ejemplo -->  
SELECT *,
CASE
	WHEN age > 18 THEN " Es mayor de edad"
    WHEN age IS NULL THEN "No ingreaso edad"
	ELSE "Es menor de edad"
END AS Validacion_de_edad FROM users;


-- Ejemplo -->  
SELECT *,
CASE
    WHEN age > 18 then True
    ELSE False
END AS "Es mayor de edad" from users;