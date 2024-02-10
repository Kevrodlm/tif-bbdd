
INSERT INTO usuario (Usuario_ID, pasword) VALUES
('alice_123', 'password1'),
('bob_456', 'securepw2'),
('charlie_789', 'strongpw3'),
('diana_246', 'password4'),
('eric_135', 'pwrd5'),
('frank_579', 'password6'),
('grace_468', 'psswrd7'),
('harry_123', 'securepw8'),
('irene_789', 'strngpw9'),
('jack_357', 'passord10'),
('kate_246', 'psword11'),
('lucas_159', 'strogpw12'),
('megan_789', 'passwo13'),
('nathan_456', 'pword14'),
('olivia_123', 'securepw15'),
('peter_579', 'pssw0rd16'),
('quinn_468', 'strngpw17'),
('rachel_246', 'passwd18'),
('sam_135', 'ssword19'),
('tina_789', 'stongpw20');

SELECT * FROM usuario;

INSERT INTO persona (Nombre, ApellidoP, ApellidoM, Fecha_nacimiento, Genero, Nacionalidad, Seguro_user)
VALUES 
('Alice', 'Smith', 'Johnson', '1990-05-15', 'F', 'Estadounidense', 'password1'),
('Bob', 'Doe', 'Williams', '1985-08-20', 'M', 'Canadiense', 'securepw2'),
('Charlie', 'Brown', 'Davis', '1988-12-10', 'M', 'Británica', 'strongpw3'),
('Diana', 'Garcia', 'Martinez', '1993-04-25', 'F', 'Mexicana', 'password4'),
('Eric', 'Jones', 'Wilson', '1987-06-30', 'M', 'Francesa', 'pwrd5'),
('Frank', 'Miller', 'Taylor', '1995-10-05', 'M', 'Alemana', 'password6'),
('Grace', 'Wilson', 'White', '1992-02-28', 'F', 'Italiana', 'psswrd7'),
('Harry', 'Martinez', 'Clark', '1984-09-12', 'M', 'Española', 'securepw8'),
('Irene', 'Johnson', 'Harris', '1989-07-18', 'F', 'Rusa', 'strngpw9'),
('Jack', 'Brown', 'Anderson', '1991-11-03', 'M', 'China', 'passord10'),
('Kate', 'Smith', 'Moore', '1994-03-08', 'F', 'Japonesa', 'psword11'),
('Lucas', 'Garcia', 'Scott', '1986-01-20', 'M', 'Sudafricana', 'strogpw12'),
('Megan', 'Johnson', 'Adams', '1996-07-05', 'F', 'Coreana', 'passwo13'),
('Nathan', 'Brown', 'Robinson', '1983-11-15', 'M', 'Portuguesa', 'pword14'),
('Olivia', 'Martinez', 'Miller', '1988-09-30', 'F', 'Australiana', 'securepw15'),
('Peter', 'Jones', 'Young', '1990-12-25', 'M', 'India', 'pssw0rd16'),
('Quinn', 'Garcia', 'Evans', '1993-06-14', 'F', 'Turca', 'strngpw17'),
('Rachel', 'Smith', 'Cook', '1987-04-10', 'F', 'Neozelandesa', 'passwd18'),
('Sam', 'Johnson', 'Lee', '1992-08-22', 'M', 'Argentina', 'ssword19'),
('Tina', 'Brown', 'King', '1985-02-17', 'F', 'Chilena', 'stongpw20');

SELECT * FROM persona;

INSERT INTO persona_email (Email, DNI)
VALUES 
('alice@example.com', 1),
('bob@example.com', 2),
('charlie@example.com', 3),
('diana@example.com', 4),
('eric@example.com', 5),
('frank@example.com', 6),
('grace@example.com', 7),
('harry@example.com', 8),
('irene@example.com', 9),
('jack@example.com', 10),
('kate@example.com', 11),
('lucas@example.com', 12),
('megan@example.com', 13),
('nathan@example.com', 14),
('olivia@example.com', 15),
('peter@example.com', 16),
('quinn@example.com', 17),
('rachel@example.com', 18),
('sam@example.com', 19),
('tina@example.com', 20);

INSERT INTO persona_telefono (Telefono, DNI)
VALUES 
(123456789, 1),
(234567890, 2),
(345678901, 3),
(456789012, 4),
(567890123, 5),
(678901234, 6),
(789012345, 7),
(890123456, 8),
(901234567, 9),
(123456780, 10),
(234567891, 11),
(345678912, 12),
(456789023, 13),
(567890134, 14),
(678901245, 15),
(789012356, 16),
(890123467, 17),
(901234578, 18),
(123456789, 19),
(234567890, 20);

SELECT p.Nombre, p.ApellidoP, p.ApellidoM, p.Fecha_nacimiento, p.Genero, p.Nacionalidad, pe.Email, pt.Telefono
FROM persona p
LEFT JOIN persona_email pe ON p.DNI = pe.DNI
LEFT JOIN persona_telefono pt ON p.DNI = pt.DNI;

INSERT INTO empresa (Nombre)
VALUES 
('Entel'),
('Robistar'),
('Maracuya S.A.'),
('Carritos Rapidos'),
('SomosMozos'),
('NOSE');

SELECT Empresa_ID, Nombre
FROM empresa;

INSERT INTO registro_incidentes (Registro, Fecha, Hora, Empresa_ID)
VALUES 
('Incidente en la oficina principal', '2023-02-10', '08:45:00', 1),
('Accidente en el almacén', '2023-03-15', '10:15:00', 2),
('Problema con el sistema informático', '2023-03-20', '12:30:00', 2),
('Incendio en el edificio', '2023-05-25', '14:20:00', 3),
('Robo en las instalaciones', '2023-07-05', '16:45:00', 4),
('Fuga de gas en el área de producción', '2023-07-10', '09:00:00', 6),
('Inundación en la planta de fabricación', '2023-08-15', '11:25:00', 1),
('Avería en la maquinaria', '2023-08-20', '13:40:00', 2),
('Problema de seguridad cibernética', '2023-10-25', '15:55:00', 2),
('Accidente laboral en la línea de ensamblaje', '2023-10-05', '08:30:00', 4),
('Vandalismo en las instalaciones', '2023-12-10', '10:10:00', 6),
('Daños por tormenta en el almacén', '2023-12-15', '12:20:00', 6),
('Explosión en el laboratorio de investigación', '2023-10-20', '14:35:00', 1),
('Interrupción del suministro eléctrico', '2023-11-25', '16:50:00', 2),
('Problema de calidad del producto', '2023-05-05', '08:15:00', 3),
('Asalto a mano armada en la entrada principal', '2023-06-10', '10:30:00', 4),
('Incumplimiento de normativas de seguridad', '2023-06-15', '12:40:00', 5),
('Escape químico en el laboratorio', '2023-03-20', '14:55:00', 6),
('Amenaza de bomba en las instalaciones', '2023-06-25', '17:05:00', 1),
('Derrame de productos químicos tóxicos', '2023-07-30', '09:20:00', 2);

INSERT INTO reclamos (Reclamo, Fecha, Hora, Empresa_ID)
VALUES 
('Reclamo sobre el servicio de atención al cliente', '2023-02-10', '08:45:00', 1),
('Reclamo sobre la calidad de un producto recibido', '2023-03-15', '10:15:00', 2),
('Reclamo sobre el retraso en la entrega de un pedido', '2023-04-20', '12:30:00', 3),
('Reclamo sobre el mal funcionamiento de un equipo', '2023-05-25', '14:20:00', 4),
('Reclamo sobre un cargo indebido en la factura', '2023-06-05', '16:45:00', 5),
('Reclamo sobre la falta de stock de un producto', '2023-07-10', '09:00:00', 6),
('Reclamo sobre la limpieza deficiente de las instalaciones', '2023-08-15', '11:25:00', 1),
('Reclamo sobre el trato poco amable de un empleado', '2023-09-20', '13:40:00', 2),
('Reclamo sobre la demora en la respuesta a una consulta', '2023-10-25', '15:55:00', 2),
('Reclamo sobre la falta de respuesta a un reclamo anterior', '2023-11-05', '08:30:00', 1),
('Reclamo sobre la calidad de un servicio prestado', '2023-12-10', '10:10:00', 4),
('Reclamo sobre la falta de comunicación con el cliente', '2023-02-15', '12:20:00', 2),
('Reclamo sobre la dificultad para realizar una devolución', '2023-03-20', '14:35:00', 1),
('Reclamo sobre la entrega incorrecta de un pedido', '2023-04-25', '16:50:00', 2),
('Reclamo sobre la discrepancia entre el pedido y la factura', '2023-05-05', '08:15:00', 2),
('Reclamo sobre la cancelación de un servicio sin aviso', '2023-06-10', '10:30:00', 4),
('Reclamo sobre el incumplimiento de una promoción', '2023-07-15', '12:40:00', 4),
('Reclamo sobre la dificultad para contactar con el soporte técnico', '2023-08-20', '14:55:00', 3),
('Reclamo sobre la falta de seguimiento de un reclamo anterior', '2023-09-25', '17:05:00', 1),
('Reclamo sobre la falta de información en la página web', '2023-10-30', '09:20:00', 2);

SELECT r.Reclamo_ID, r.Reclamo, r.Fecha, r.Hora, e.Nombre AS Empresa
FROM reclamos AS r
INNER JOIN empresa AS e ON r.Empresa_ID = e.Empresa_ID;



INSERT INTO empleado (DNI, Años_experiencia, Salario, Empresa_ID)
VALUES 
(1, 5, 50000, 1),
(2, 8, 60000, 2),
(3, 3, 45000, 1),
(4, 6, 55000, 5),
(5, 2, 40000, 4),
(6, 4, 48000, 3),
(7, 7, 58000, 6),
(8, 5, 52000, 1),
(9, 9, 65000, 6),
(10, 3, 47000, 4);

SELECT e.DNI, p.Nombre, p.ApellidoP, p.ApellidoM, p.Fecha_nacimiento, p.Genero, p.Nacionalidad, e.Años_experiencia, e.Salario, e.Empresa_ID
FROM empleado e
INNER JOIN persona p ON e.DNI = p.DNI;

INSERT INTO turno (DNI, Fecha, Entrada, Salida)
VALUES 
(1, '2024-03-10', '08:00:00', '12:00:00'),
(3, '2024-03-10', '13:00:00', '18:30:00'),
(8, '2024-03-11', '09:00:00', '18:00:00'),
(5, '2024-03-10', '09:30:00', '18:30:00'),
(10, '2024-03-11', '10:00:00', '14:00:00'),
(7, '2024-03-11', '15:30:00', '20:30:00'),
(9, '2024-03-11', '15:00:00', '20:00:00'),
(2, '2024-03-11', '11:30:00', '15:30:00'),
(4, '2024-03-11', '12:00:00', '16:00:00'),
(6, '2024-03-11', '12:30:00', '16:30:00'),
(1, '2024-03-10', '13:00:00', '17:00:00'),
(3, '2024-03-11', '13:30:00', '17:30:00'),
(8, '2024-03-11', '14:00:00', '18:00:00'),
(5, '2024-03-10', '14:30:00', '18:30:00'),
(10, '2024-03-11', '15:00:00', '19:00:00'),
(7, '2024-03-12', '15:30:00', '19:30:00'),
(9, '2024-03-12', '16:00:00', '20:00:00'),
(2, '2024-03-11', '16:30:00', '20:30:00'),
(4, '2024-03-12', '17:00:00', '21:00:00'),
(6, '2024-03-12', '17:30:00', '21:30:00');

INSERT INTO reclamo_atendido (DNI, Reclamo_ID)
VALUES 
(1, 1),
(3, 10),
(8, 19),
(1, 7),
(3, 13),
(2, 2),
(2, 20),
(2, 8),
(2, 9),
(2, 12),
(2, 15),
(2, 14),
(6, 18),
(6, 3),
(5, 16),
(5, 4),
(10, 11),
(10, 17),
(4, 5),
(7, 6);

INSERT INTO cliente (DNI, Direccion)
VALUES 
(11, 'Calle Principal 123'),
(12, 'Avenida Central 456'),
(13, 'Carrera Secundaria 789'),
(14, 'Plaza Mayor 101'),
(15, 'Paseo del Sol 202'),
(16, 'Camino Real 303'),
(17, 'Bulevar del Norte 404'),
(18, 'Pasaje del Este 505'),
(19, 'Ronda del Oeste 606'),
(20, 'Callejón del Sur 707');

INSERT INTO cliente_reclamo (DNI, Reclamo_ID)
VALUES 
(11, 1),
(11, 7),
(11, 10),
(12, 13),
(12, 19),
(13, 2),
(13, 20),
(13, 8),
(13, 9),
(14, 12),
(14, 14),
(14, 15),
(15, 3),
(16, 18),
(17, 16),
(17, 4),
(17, 11),
(18, 17),
(19, 5),
(20, 6);



SELECT c.DNI, p.Nombre, p.ApellidoP, p.ApellidoM, p.Fecha_nacimiento, p.Genero, p.Nacionalidad, c.Direccion
FROM cliente c
INNER JOIN persona p ON c.DNI = p.DNI;



INSERT INTO seguro_poliza (Precio, Terminos_condiciones, Nro_personas_aseguradas, Empresa_ID)
VALUES 
(150.00, 'Términos y condiciones Entel', 50, 1),
(200.00, 'Términos y condiciones Robistar', 60, 2),
(180.00, 'Términos y condiciones Maracuya S.A.', 55, 3),
(170.00, 'Términos y condiciones Carritos Rapidos', 58, 4),
(190.00, 'Términos y condiciones SomosMozos', 62, 5),
(160.00, 'Términos y condiciones Nose', 45, 6);

SELECT Categoria, Precio, Terminos_condiciones, Nro_personas_aseguradas, Empresa_ID
FROM seguro_poliza;

INSERT INTO cliente_poliza (DNI, Categoria, Inicio, Termino)
VALUES 
(11, 1, '2023-01-01', '2023-12-31'),
(12, 1, '2023-01-01', '2023-12-31'),
(13, 2, '2023-01-01', '2023-12-31'),
(14, 2, '2023-01-01', '2023-12-31'),
(15, 3, '2023-01-01', '2023-12-31'),
(16, 3, '2023-01-01', '2023-12-31'),
(17, 4, '2023-01-01', '2023-12-31'),
(18, 4, '2023-01-01', '2023-12-31'),
(19, 5, '2023-01-01', '2023-12-31'),
(20, 6, '2023-01-01', '2023-12-31');

SELECT sp.Categoria, p.Nombre, p.ApellidoP, p.ApellidoM, p.Fecha_nacimiento, p.Genero, p.Nacionalidad
FROM seguro_poliza sp
JOIN cliente_poliza cp ON sp.Categoria = cp.Categoria
JOIN cliente c ON cp.DNI = c.DNI
JOIN persona p ON c.DNI = p.DNI;

SELECT p.DNI, p.Nombre, p.ApellidoP, p.ApellidoM, p.Fecha_nacimiento, p.Genero, p.Nacionalidad, c.Direccion, r.Reclamo_ID, r.Reclamo, r.Fecha, r.Hora
FROM cliente c
JOIN cliente_reclamo cr ON c.DNI = cr.DNI
JOIN reclamos r ON cr.Reclamo_ID = r.Reclamo_ID
JOIN persona p ON c.DNI = p.DNI;

SELECT p.DNI, p.Nombre, p.ApellidoP, p.ApellidoM, r.Reclamo_ID, r.Reclamo, r.Fecha, r.Hora
FROM empleado e
JOIN persona p ON e.DNI = p.DNI
JOIN reclamo_atendido ra ON e.DNI = ra.DNI
JOIN reclamos r ON ra.Reclamo_ID = r.Reclamo_ID;