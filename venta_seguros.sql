DROP DATABASE IF EXISTS venta_seguros;
CREATE SCHEMA `venta_seguros`;
USE venta_seguros;

CREATE TABLE usuario (
	Usuario_ID VARCHAR(30) PRIMARY KEY,
    pasword VARCHAR(30) UNIQUE
);

CREATE TABLE persona (
	DNI INTEGER AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(30),
    ApellidoP VARCHAR(30),
    ApellidoM VARCHAR(30),
    Fecha_nacimiento DATE,
    Genero CHAR(1),
    Nacionalidad VARCHAR(30),
	Seguro_user  VARCHAR(30) UNIQUE
);

CREATE TABLE persona_email (
	Email VARCHAR(200),
    DNI INTEGER,
    PRIMARY KEY (Email, DNI)
);

CREATE TABLE persona_telefono (
	Telefono INTEGER,
    DNI INTEGER,
    PRIMARY KEY (Telefono, DNI)
);

CREATE TABLE empleado (
	DNI INTEGER PRIMARY KEY,
	Años_experiencia INTEGER,
    Salario INTEGER,
    Empresa_ID INTEGER
);

CREATE TABLE turno (
	Turno_ID INTEGER AUTO_INCREMENT,
    DNI INTEGER,
    Fecha DATE,
    Entrada TIME,
    Salida TIME,
    PRIMARY KEY (Turno_ID, DNI)
);

CREATE TABLE cliente (
	DNI INTEGER PRIMARY KEY,
    Direccion VARCHAR(100)
);

CREATE TABLE reclamos(
	Reclamo_ID INTEGER AUTO_INCREMENT PRIMARY KEY,
    Reclamo TEXT,
    Fecha DATE,
    Hora TIME,
    Empresa_ID INTEGER
);

CREATE TABLE reclamo_atendido (
	DNI INTEGER,
    Reclamo_ID INTEGER,
    PRIMARY KEY(DNI, Reclamo_ID)
);

CREATE TABLE cliente_reclamo (
	DNI INTEGER,
    Reclamo_ID INTEGER,
    PRIMARY KEY(DNI, Reclamo_ID)
);

CREATE TABLE seguro_poliza (
	Categoria INTEGER AUTO_INCREMENT PRIMARY KEY,
    Precio DECIMAL(6,2),
    Terminos_condiciones MEDIUMTEXT,
    Nro_personas_aseguradas INTEGER,
    Empresa_ID INTEGER
);

CREATE TABLE cliente_poliza (
	DNI INTEGER,
    Categoria INTEGER,
    Inicio DATE,
    Termino DATE,
    PRIMARY KEY(DNI, Categoria)
);

CREATE TABLE empresa (
Empresa_ID INTEGER AUTO_INCREMENT PRIMARY KEY,
Nombre VARCHAR(100),
LOGO MEDIUMBLOB
);

CREATE TABLE registro_incidentes (
	Incidente_ID INTEGER AUTO_INCREMENT PRIMARY KEY,
	Registro TEXT,
    Fecha DATE,
    Hora TIME,
    Empresa_ID INTEGER
);
ALTER TABLE persona ADD FOREIGN KEY (Seguro_user) REFERENCES usuario (pasword);
ALTER TABLE	persona_email ADD FOREIGN KEY (DNI) REFERENCES persona (DNI);
ALTER TABLE persona_telefono ADD FOREIGN KEY (DNI) REFERENCES persona (DNI);
ALTER TABLE cliente ADD FOREIGN KEY (DNI) REFERENCES persona (DNI);
ALTER TABLE empleado ADD FOREIGN KEY (DNI) REFERENCES persona (DNI);
ALTER TABLE turno ADD FOREIGN KEY (DNI) REFERENCES empleado (DNI);
ALTER TABLE reclamo_atendido ADD FOREIGN KEY (DNI) REFERENCES empleado (DNI);
ALTER TABLE reclamo_atendido ADD FOREIGN KEY (Reclamo_ID) REFERENCES reclamos (Reclamo_ID);
ALTER TABLE cliente_reclamo ADD FOREIGN KEY (DNI) REFERENCES cliente (DNI);
ALTER TABLE cliente_reclamo ADD FOREIGN KEY (Reclamo_ID) REFERENCES reclamos (Reclamo_ID);
ALTER TABLE cliente_poliza ADD FOREIGN KEY (DNI) REFERENCES cliente (DNI);
ALTER TABLE cliente_poliza ADD FOREIGN KEY (Categoria) REFERENCES seguro_poliza (Categoria);
ALTER TABLE empleado ADD FOREIGN KEY (Empresa_ID) REFERENCES empresa (Empresa_ID);
ALTER TABLE seguro_poliza ADD FOREIGN KEY (Empresa_ID) REFERENCES empresa (Empresa_ID);
ALTER TABLE reclamos ADD FOREIGN KEY (Empresa_ID) REFERENCES empresa (Empresa_ID);
ALTER TABLE registro_incidentes ADD FOREIGN KEY (Empresa_ID) REFERENCES empresa (Empresa_ID);

