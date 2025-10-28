------------ CREATE TABLE ------------

/*Crea una nueva tabla dentro de una base de datos, definiendo sus columnas y tipos de datos.*/

-- Ejemplo -->  
CREATE TABLE persons (
	id int,
    full_name varchar(50),
    age int,
    email varchar(50),
    created date
);

------------ CONSTRAINSTS ------------
-- NOT NULL
CREATE TABLE persons2 (
	id int NOT NULL,
    full_name varchar(50) NOT NULL,
    age int,
    email varchar(50),
    created date
);

-- UNIQUE
CREATE TABLE persons3 (
	id int UNIQUE,
    full_name varchar(50) NOT NULL,
    age int,
    email varchar(50),
    created date
);

CREATE TABLE persons3 (
	id int,
    full_name varchar(50) NOT NULL,
    age int,
    email varchar(50),
    created datetime,
    UNIQUE(id)
);

-- PRIMARY KEY
CREATE TABLE persons4 (
	id int,
    full_name varchar(50) NOT NULL,
    age int,
    email varchar(50),
    created datetime,
    UNIQUE(id),
    PRIMARY KEY(id)
);

-- CHECK
CREATE TABLE persons5 (
	id int,
    full_name varchar(50) NOT NULL,
    age int,
    email varchar(50),
    created datetime,
    UNIQUE(id),
    PRIMARY KEY(id),
    CHECK(age>=18)
);

-- DEFAULT
CREATE TABLE persons7 (
	id int,
    full_name varchar(50) NOT NULL,
    age int,
    email varchar(50),
    created datetime DEFAULT CURRENT_TIMESTAMP(),
    UNIQUE(id),
    PRIMARY KEY(id),
    CHECK(age>=18)
);

-- AUTO INCREMENT
CREATE TABLE persons8 (
	id int NOT NULL AUTO_INCREMENT,
    full_name varchar(50) NOT NULL,
    age int,
    email varchar(50),
    created datetime DEFAULT CURRENT_TIMESTAMP(),
    UNIQUE(id),
    PRIMARY KEY(id),
    CHECK(age>=18)
);