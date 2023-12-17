--create database egresadosbd
--use egresadosbd
/*
bd version
*/

CREATE TABLE Estatus(
    EstatusId INT NOT NULL AUTO_INCREMENT,
    Nombre VARCHAR(50),
    PRIMARY KEY(EstatusId)
);


CREATE TABLE Roles(
    RolesId INT NOT NULL AUTO_INCREMENT,
    Nombre VARCHAR(50),
    PRIMARY KEY(RolesId)
);

INSERT INTO Roles(Nombre) 
    VALUES('Residente'), ('Egresado'),('Asesor');

CREATE TABLE Usuario(
    UsuarioId INT NOT NULL AUTO_INCREMENT,
    UsuarioNombre VARCHAR(50),
    Contrasenia VARCHAR(32),
    UltimoAcceso DATETIME,
    EditadoPor INTEGER,
    Active BOOLEAN,
    RolesId INT,
    PRIMARY KEY(UsuarioId)
);
INSERT INTO Usuario (UsuarioNombre, Contrasenia, EditadoPor) 
    VALUES('codemcm', MD5('12345'), 1),('missirene', MD5('12345'), 1);

CREATE TABLE Alumno(
    AlumnoId INT NOT NULL AUTO_INCREMENT,
    Nombre VARCHAR(150),
    NControl VARCHAR(11),
    FNacimiento DATETIME,
    AnioEgreso INT,
    Email VARCHAR(50),
    EditadoPor INT,
    FechaCreacion DATETIME DEFAULT NOW(),
    Active BOOLEAN,
    EstatusId INTEGER,
    UsuarioId INTEGER,
    PRIMARY KEY(AlumnoId)
);
INSERT INTO Alumno(Nombre, NControl, AnioEgreso, Email) VALUES('Martin Cruz M', '11360578','2023', 'codemcm@hotmail.com');

CREATE TABLE Empresa(
    EmpresaId INT NOT NULL AUTO_INCREMENT,
    RazonSocial VARCHAR(50),
    FechaRegistro DATE,
    Direccion VARCHAR(200),
    EditadoPor INT,
    Active BOOLEAN,
    PRIMARY KEY(EmpresaId)
);
INSERT INTO Empresa(RazonSocial, Direccion, EditadoPor, Active) VALUES('Empresa Dummy', 'conocida', 1, TRUE);


