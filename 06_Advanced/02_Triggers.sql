------------ TRIGGER ------------

/*Son procedimientos asociados a una tabla que se ejecutan automáticamente ante ciertos eventos 
(INSERT, UPDATE o DELETE) en dicha tabla. Un trigger puede ser ANTES (BEFORE) o DESPUÉS (AFTER) de la operación, 
y puede usarse para validar datos, mantener logs, sincronizar tablas, etc.*/

-- Ejemplo -->  
DELIMITER $$-- Siempre se abre el delimitador de un trigger con $$
CREATE TRIGGER tg_email AFTER UPDATE ON users FOR EACH ROW
BEGIN
	IF OLD.email <> NEW.email THEN 
		INSERT INTO email_history (user_id, email) VALUES (OLD.user_id, OLD.email);
	END IF;-- Esto siempre debe ir en un trigger
END $$-- Siempre se cierra un trigger con $$
DELIMITER ;-- Aqui se cierra el delimitador siempre con ;