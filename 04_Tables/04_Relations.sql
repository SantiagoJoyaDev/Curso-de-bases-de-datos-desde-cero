------------ RELATIONS ------------

/*Son las conexiones o vínculos lógicos que se establecen entre dos o más tablas dentro de una base de datos relacional.
Estas relaciones permiten asociar los datos de distintas tablas para evitar duplicaciones y mantener la información 
organizada y coherente.*/

-- Relation 1:1 -->  
/*A cada fila de la tabla A le corresponde como mucho una fila en la tabla B, y viceversa.*/
CREATE TABLE dni (
	dni_id int AUTO_INCREMENT PRIMARY KEY,
    dni_number int NOT NULL,
    user_id int,
    UNIQUE(dni_id),
    FOREIGN KEY(user_id) REFERENCES users(user_id)
);

-- Relation 1:N -->  
/*A cada fila de la tabla A (lado “uno”, por ejemplo Clientes) le pueden corresponder múltiples filas en la tabla B 
(lado “muchos”, por ejemplo Pedidos), pero cada fila de B pertenece solo a un A.
Se implementa poniendo una clave foránea*/
CREATE TABLE companies (
	company_id int AUTO_INCREMENT PRIMARY KEY,
    name varchar(100) NOT NULL
);

ALTER TABLE users --(Tabla users ya existente)
ADD CONSTRAINT fk_companies
FOREIGN KEY(company_id) REFERENCES companies(company_id);


-- Relation N:N -->  
/*Una fila de A puede relacionarse con muchas de B y viceversa.*/
CREATE TABLE languages (
	language_id int AUTO_INCREMENT PRIMARY KEY,
    name varchar(100) NOT NULL
);

CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `surname` varchar(45) NOT NULL,
  `age` int DEFAULT NULL,
  `date` date DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `company_id` int DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `fk_companies` (`company_id`),
  CONSTRAINT `fk_companies` FOREIGN KEY (`company_id`) REFERENCES `companies` (`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

CREATE TABLE users_languages (
	users_language_id int AUTO_INCREMENT PRIMARY KEY,
    user_id int,
    language_id int,
    FOREIGN KEY(user_id) REFERENCES users(user_id),
    FOREIGN KEY(language_id) REFERENCES languages(language_id),
    UNIQUE(user_id,language_id)
);