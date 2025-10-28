------------ ALTER TABLE ------------

/*Modifica la estructura de una tabla existente (agregar, cambiar o eliminar columnas, 
o añadir restricciones).*/

-- Ejemplo -->  
ALTER TABLE persons8 
ADD surname varchar(50);

-- RENAME
ALTER TABLE persons8 
RENAME COLUMN enumeracion TO description;

-- RENAMEALTER TABLE
ALTER TABLE persons8 
MODIFY column descripcion varchar(250);

-- DROP TABLE
ALTER TABLE persons8 
DROP column descripcion;