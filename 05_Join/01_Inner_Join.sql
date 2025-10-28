------------ INNER JOIN ------------

/*Devuelve sólo las filas que coinciden en ambas tablas según la condición de unión. Las filas sin correspondencia 
en la otra tabla se excluyen. Equivale a la intersección de tablas según la clave de unión.*/

-- Ejemplo -->  
SELECT * FROM users INNER JOIN dni on users.user_id = dni.user_id;
--Tambien se puede de esta manera
SELECT * FROM users JOIN dni on users.user_id = dni.user_id;

SELECT * FROM users INNER JOIN dni on users.user_id = dni.user_id ORDER BY age desc;

SELECT * FROM users INNER JOIN COMPANIES ON users.company_id = companies.company_id;

SELECT companies.name, users.name FROM users INNER JOIN COMPANIES 
ON users.company_id = companies.company_id;

SELECT * FROM users_languages INNER JOIN users ON users_languages.user_id = users.user_id
INNER JOIN languages ON users_languages.language_id = languages.language_id;

SELECT users.name, languages.name FROM users_languages INNER JOIN users ON users_languages.user_id = users.user_id
INNER JOIN languages ON users_languages.language_id = languages.language_id;