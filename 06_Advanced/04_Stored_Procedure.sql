------------ STORED PROCEDURE ------------

/*Son rutinas SQL guardadas en el servidor de base de datos, que pueden incluir secuencias de varios comandos SQL, lógica condicional, 
bucles, variables, etc.*/

-- Ejemplo -->
DELIMITER $$

CREATE PROCEDURE p_all_users() --Importante con el ()
BEGIN
    SELECT * FROM users;
END $$ --Importante con el $$

DELIMITER ;

--Para ejecutar el procemiento almacenado
CALL p_all_users;

-- Ahora este es un Stored Procedure pero con parametos
DELIMITER $$
CREATE PROCEDURE p_age_users(IN age_param int)
BEGIN
    SELECT * FROM users WHERE age = age_param;
END $$

DELIMITER ;

--Para ejecutar el procemiento almacenado
CALL p_age_users(23);

--Para eliminar un Stored Procedure
DROP PROCEDURE p_all_users;