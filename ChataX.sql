CREATE DATABASE ChataX;
USE ChataX;

CREATE TABLE Usiario(
	ID INT NOT NULL AUTO_INCREMENT,
    Id_Usuario INT,
    Contrasenia VARCHAR(18),
    ESTATUS BIT NOT NULL 
);

CREATE TABLE Empleados(
ID_Empleados int primary key identity,
Nombre varchar (100),
Apellido_P varchar (100),
Apellido_M varchar (100),
RFC varchar(20),
Curp varchar(18),
Colonia varchar(100),
Domicilio varchar(100),
CodigoPostal varchar(20),
Correo varchar(200),
Telefono varchar(50),
EstadoCivil varchar(50),
ID_Usuarios int,
Foreign key (ID_Usuarios)
References Users(ID_Users),
Estatus bit
)

CREATE TABLE Sucursal
(
	ID INT NOT NULL AUTO_INCREMENT,
    NOMBRE_SUCURSAL VARCHAR (60),
    UBICACION VARCHAR (90),
    -- IDEncargado INT ,
    -- CONSTRAINT FK_Encargado FOREIGN KEY (IDEncargado)
    -- REFERENCES Personal (ID),
    PRIMARY KEY (ID)
);

CREATE TABLE Cliente
(
	ID INT  PRIMARY KEY ,
	Nombres VARCHAR(50),
	Apellidos VARCHAR(50),
    RFC CHAR(12),
	Numero CHAR(10),
    Domicilio VARCHAR(100),
    Codigo_Postal CHAR(5),
    ID_Sucursal int, 
    estatus BIT NOT NULL,
    FOREIGN KEY (ID_Sucursal) REFERENCES Sucursal(ID)
);

-- CREATE TABLE veiculos()