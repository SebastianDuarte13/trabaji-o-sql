CREATE DATABASE logistica;

USE logistica;

--tablas primarias--

CREATE TABLE paises (
    pais_id INT PRIMARY KEY,
    nombre VARCHAR(100)
);

CREATE TABLE conductores (
    conductor_id INT PRIMARY KEY,
    nombre VARCHAR(100)
);

CREATE TABLE clientes (
    cliente_id INT PRIMARY KEY,
    nombre VARCHAR(100),
    email VARCHAR(100),
    direccion VARCHAR(50)
);

CREATE TABLE auxiliares (
    auxiliar_id INT PRIMARY KEY,
    nombre VARCHAR(100),
    telefono INT
);

CREATE TABLE paquetes (
    paquete_id INT PRIMARY KEY,
    numero_seguimiento INT,
    peso DECIMAL(10, 2),
    dimensiones VARCHAR(50), 
    contenido VARCHAR(50),
    valor_declarado DECIMAL(10, 2),
    tipo_servicio VARCHAR(20),
    estado VARCHAR(15)
);

--tablas secundarias--


CREATE TABLE ciudades (
    ciudad_id INT PRIMARY KEY,
    nombre VARCHAR(100),
    pais_id INT,
    FOREIGN KEY (pais_id) REFERENCES paises(pais_id)
);

CREATE TABLE sucursales (
    sucursal_id INT PRIMARY KEY,
    nombre VARCHAR(100),
    direccion VARCHAR(50),
    ciudad_id INT,
    FOREIGN KEY (ciudad_id) REFERENCES ciudades(ciudad_id)
);

CREATE TABLE vehiculos (
    vehiculo_id INT PRIMARY KEY,
    placa VARCHAR(6),
    marca VARCHAR(20),
    modelo VARCHAR(20),
    capacidad_carga DECIMAL(10, 2),
    sucursal_id INT,
    FOREIGN KEY (sucursal_id) REFERENCES sucursales(sucursal_id)
);

CREATE TABLE telefonos_conductores (
    telefono_id INT PRIMARY KEY,
    numero INT,
    conductor_id INT,
    FOREIGN KEY (conductor_id) REFERENCES conductores(conductor_id)
);

CREATE TABLE rutas (
    ruta_id INT PRIMARY KEY,
    descripcion VARCHAR(200),
    sucursal_id INT,
    FOREIGN KEY (sucursal_id) REFERENCES sucursales(sucursal_id)
);

CREATE TABLE ruta_auxiliares (
    ruta_id INT,
    auxiliar_id INT,
    FOREIGN KEY (ruta_id) REFERENCES rutas(ruta_id),
    FOREIGN KEY (auxiliar_id) REFERENCES auxiliares(auxiliar_id)
);

CREATE TABLE conductores_rutas (
    ruta_id INT,
    conductor_id INT,
    vehiculo_id INT,
    sucursal_id INT,
    FOREIGN KEY (ruta_id) REFERENCES rutas(ruta_id),
    FOREIGN KEY (conductor_id) REFERENCES conductores(conductor_id),
    FOREIGN KEY (vehiculo_id) REFERENCES vehiculos(vehiculo_id),
    FOREIGN KEY (sucursal_id) REFERENCES sucursales(sucursal_id)
);

CREATE TABLE telefonos_clientes (
    telefono_id INT PRIMARY KEY,
    numero INT,
    cliente_id INT,
    FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id)
);

CREATE TABLE seguimiento (
    seguimiento_id INT PRIMARY KEY,
    ubicacion VARCHAR(40),
    fecha_hora DATETIME,
    estado VARCHAR(20),
    paquete_id INT,
    FOREIGN KEY (paquete_id) REFERENCES paquetes(paquete_id)
);

CREATE TABLE envios (
    envio_id INT PRIMARY KEY,
    fecha_envio DATETIME,
    destino VARCHAR(30),
    paquete_id INT,
    ruta_id INT,
    sucursal_id INT,
    cliente_id INT,
    FOREIGN KEY (paquete_id) REFERENCES paquetes(paquete_id),
    FOREIGN KEY (ruta_id) REFERENCES rutas(ruta_id),
    FOREIGN KEY (sucursal_id) REFERENCES sucursales(sucursal_id),
    FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id)
);