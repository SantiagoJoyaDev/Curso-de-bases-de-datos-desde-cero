------------ VIEW ------------

/*Una vista es una consulta almacenada en la base de datos que actúa como una tabla virtual. Una vista no almacena datos por sí misma 
(salvo vistas materializadas en ciertos SGBD), sino que muestra los datos resultantes de la consulta definida.*/

-- Ejemplo -->
CREATE VIEW v_adult_users AS SELECT name, age FROM users WHERE age >= 18; --Esta es la manera de realizar la vista

SELECT * FROM v_adult_users; --Esta es la manera de llamar esa vista que realizamos

--Como eliminar una vista
DROP VIEW v_adult_users;