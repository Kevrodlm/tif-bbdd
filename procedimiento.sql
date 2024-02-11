USE venta_seguros;
-- ______________________________________________________________PROCEDIMIENTOS_________________________________________________________________________
DELIMITER //
DROP PROCEDURE IF EXISTS AgregarCliente//
CREATE PROCEDURE AgregarCliente(
	IN p_Usuario VARCHAR(30),
    IN p_pasword VARCHAR(30),
    IN p_DNI INTEGER,
    IN p_Nombre VARCHAR(30),
	IN p_ApellidoP VARCHAR(20),
    IN p_ApellidoM VARCHAR(20),
    IN p_Fecha_nacimiento DATE,
    IN p_Genero CHAR(1),
    IN p_Nacionalidad VARCHAR(30),
    IN p_Email VARCHAR(200),
    IN p_Direccion VARCHAR(100),
    IN p_Telefono INTEGER
)
BEGIN
    DECLARE usuarioExiste VARCHAR(30);
    
    -- Verificar si el cliente ya existe
    SELECT COUNT(*) INTO usuarioExiste FROM usuario WHERE Usuario_ID = p_Usuario;
    
    IF usuarioExiste = 0 THEN
		
        INSERT INTO usuario (Usuario_ID, pasword) 
        VALUES (p_Usuario, p_pasword);
        
        INSERT INTO persona (DNI, Nombre, ApellidoP, ApellidoM, Fecha_nacimiento, Genero, Nacionalidad, Email, Seguro_user) 
        VALUES (p_DNI, p_Nombre, p_ApellidoP, p_ApellidoM, p_Fecha_nacimiento, p_Genero, p_Nacionalidad, p_Email, p_Usuario);

        INSERT INTO persona_telefono (DNI, Telefono) VALUES (p_DNI, p_Telefono);        
        INSERT INTO cliente (DNI_cliente, Direccion) VALUES (p_DNI, p_Direccion);
        
        SELECT 'Cliente agregado exitosamente' AS Resultado;
    ELSE
        SELECT 'Error: Cliente ya existe' AS Resultado;
    END IF;
END;
//

DROP PROCEDURE IF EXISTS AgregarSeguroPoliza//
CREATE PROCEDURE AgregarSeguroPoliza(
    IN p_Precio DECIMAL(6,2),
    IN p_Terminos_condiciones MEDIUMTEXT,
    IN p_Nro_personas_aseguradas INTEGER,
    IN p_Coberturas VARCHAR(300)
)
BEGIN
    DECLARE last_inserted_id INT;
    DECLARE i INT DEFAULT 1;
    DECLARE num_coberturas INT DEFAULT 0;
    DECLARE current_cobertura VARCHAR(30);

    -- Insertar datos en la tabla seguro_poliza
    INSERT INTO seguro_poliza (Precio, Terminos_condiciones, Nro_personas_aseguradas)
    VALUES (p_Precio, p_Terminos_condiciones, p_Nro_personas_aseguradas);

    -- Obtener el ID de la póliza recién insertada
    SET last_inserted_id = LAST_INSERT_ID();

    -- Insertar múltiples coberturas
    START TRANSACTION;
    SET num_coberturas = (SELECT LENGTH(p_Coberturas) - LENGTH(REPLACE(p_Coberturas, ',', '')) + 1);

    WHILE i <= num_coberturas DO
        SET current_cobertura = TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(p_Coberturas, ',', i), ',', -1));

        INSERT INTO cobertura (Categoria, Cobertura) VALUES (last_inserted_id, current_cobertura);
        
        SET i = i + 1;
    END WHILE;
    COMMIT;
END //

-- ______________________________________________________________FUNCIONES_________________________________________________________________________

DROP FUNCTION IF EXISTS Edad//
CREATE FUNCTION Edad(fecha_nacimiento DATE)
RETURNS INT DETERMINISTIC
BEGIN
    DECLARE edad INT;
    SET edad = YEAR(CURRENT_DATE()) - YEAR(fecha_nacimiento);
    IF MONTH(CURRENT_DATE()) < MONTH(fecha_nacimiento) OR (MONTH(CURRENT_DATE()) = MONTH(fecha_nacimiento) AND DAY(CURRENT_DATE()) < DAY(fecha_nacimiento)) THEN
        SET edad = edad - 1;
    END IF;
    RETURN edad;
END//
DELIMITER ;
