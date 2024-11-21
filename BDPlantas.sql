-- Crear la base de datos
CREATE DATABASE PlantasCaribe;

-- Usar la base de datos
USE PlantasCaribe;

-- Crear la tabla Especies
CREATE TABLE Especies (
    IdPlanta INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Descripcion VARCHAR(500),
    Cuidados VARCHAR(500),
    Foto1 VARCHAR(255),
    Foto2 VARCHAR(255),
    Precio DECIMAL(10,2) NOT NULL,
    CantidadExistente INT NOT NULL
);

-- Crear la tabla Cliente
CREATE TABLE Cliente (
    IdCliente INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Estado VARCHAR(50) NOT NULL,
    DireccionEnvio VARCHAR(255)
);

-- Crear la tabla Factura
CREATE TABLE Factura (
    IdFactura INT AUTO_INCREMENT PRIMARY KEY,
    Fecha DATE NOT NULL,
    Hora TIME NOT NULL,
    Monto DECIMAL(10,2) NOT NULL
);

-- Procedimientos Almacenados para Especies
DELIMITER $$

CREATE PROCEDURE sp_CrearEspecie(
    IN p_Nombre VARCHAR(100),
    IN p_Descripcion VARCHAR(500),
    IN p_Cuidados VARCHAR(500),
    IN p_Foto1 VARCHAR(255),
    IN p_Foto2 VARCHAR(255),
    IN p_Precio DECIMAL(10,2),
    IN p_CantidadExistente INT
)
BEGIN
    INSERT INTO Especies (Nombre, Descripcion, Cuidados, Foto1, Foto2, Precio, CantidadExistente)
    VALUES (p_Nombre, p_Descripcion, p_Cuidados, p_Foto1, p_Foto2, p_Precio, p_CantidadExistente);
END$$

CREATE PROCEDURE sp_ConsultarEspeciePorNombre(
    IN p_Nombre VARCHAR(100)
)
BEGIN
    SELECT * FROM Especies WHERE Nombre LIKE CONCAT('%', p_Nombre, '%');
END$$

CREATE PROCEDURE sp_ConsultarEspeciePorId(
    IN p_IdPlanta INT
)
BEGIN
    SELECT * FROM Especies WHERE IdPlanta = p_IdPlanta;
END$$

CREATE PROCEDURE sp_EliminarEspeciePorId(
    IN p_IdPlanta INT
)
BEGIN
    DELETE FROM Especies WHERE IdPlanta = p_IdPlanta;
END$$

CREATE PROCEDURE sp_ModificarEspeciePorId(
    IN p_IdPlanta INT,
    IN p_Nombre VARCHAR(100),
    IN p_Descripcion VARCHAR(500),
    IN p_Cuidados VARCHAR(500),
    IN p_Foto1 VARCHAR(255),
    IN p_Foto2 VARCHAR(255),
    IN p_Precio DECIMAL(10,2),
    IN p_CantidadExistente INT
)
BEGIN
    UPDATE Especies
    SET 
        Nombre = p_Nombre,
        Descripcion = p_Descripcion,
        Cuidados = p_Cuidados,
        Foto1 = p_Foto1,
        Foto2 = p_Foto2,
        Precio = p_Precio,
        CantidadExistente = p_CantidadExistente
    WHERE IdPlanta = p_IdPlanta;
END$$

-- Procedimientos Almacenados para Cliente
CREATE PROCEDURE sp_CrearCliente(
    IN p_Nombre VARCHAR(100),
    IN p_Estado VARCHAR(50),
    IN p_DireccionEnvio VARCHAR(255)
)
BEGIN
    INSERT INTO Cliente (Nombre, Estado, DireccionEnvio)
    VALUES (p_Nombre, p_Estado, p_DireccionEnvio);
END$$

CREATE PROCEDURE sp_ConsultarClientePorNombre(
    IN p_Nombre VARCHAR(100)
)
BEGIN
    SELECT * FROM Cliente WHERE Nombre LIKE CONCAT('%', p_Nombre, '%');
END$$

CREATE PROCEDURE sp_ConsultarClientePorId(
    IN p_IdCliente INT
)
BEGIN
    SELECT * FROM Cliente WHERE IdCliente = p_IdCliente;
END$$

CREATE PROCEDURE sp_EliminarClientePorId(
    IN p_IdCliente INT
)
BEGIN
    DELETE FROM Cliente WHERE IdCliente = p_IdCliente;
END$$

CREATE PROCEDURE sp_ModificarClientePorId(
    IN p_IdCliente INT,
    IN p_Nombre VARCHAR(100),
    IN p_Estado VARCHAR(50),
    IN p_DireccionEnvio VARCHAR(255)
)
BEGIN
    UPDATE Cliente
    SET 
        Nombre = p_Nombre,
        Estado = p_Estado,
        DireccionEnvio = p_DireccionEnvio
    WHERE IdCliente = p_IdCliente;
END$$

-- Procedimientos Almacenados para Factura
CREATE PROCEDURE sp_CrearFactura(
    IN p_Monto DECIMAL(10,2)
)
BEGIN
    INSERT INTO Factura (Fecha, Hora, Monto)
    VALUES (CURDATE(), CURTIME(), p_Monto);
END$$

CREATE PROCEDURE sp_ConsultarFacturaPorId(
    IN p_IdFactura INT
)
BEGIN
    SELECT * FROM Factura WHERE IdFactura = p_IdFactura;
END$$

CREATE PROCEDURE sp_EliminarFacturaPorId(
    IN p_IdFactura INT
)
BEGIN
    DELETE FROM Factura WHERE IdFactura = p_IdFactura;
END$$

CREATE PROCEDURE sp_ModificarFacturaPorId(
    IN p_IdFactura INT,
    IN p_Monto DECIMAL(10,2)
)
BEGIN
    UPDATE Factura
    SET 
        Monto = p_Monto
    WHERE IdFactura = p_IdFactura;
END$$

DELIMITER ;
