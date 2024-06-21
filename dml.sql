-- Insertar valores en la tabla paises--
INSERT INTO paises (pais_id, nombre) VALUES 
(1, 'Argentina'),
(2, 'Brasil'),
(3, 'Chile'),
(4, 'Colombia'),
(5, 'Perú');

-- Insertar valores en la tabla tipo_servicios--
INSERT INTO tipo_servicios (servicio_id, nombre) VALUES 
(1, 'Estándar'),
(2, 'Express'),
(3, 'Prioritario');

-- Insertar valores en la tabla conductores--
INSERT INTO conductores (conductor_id, nombre) VALUES 
(1, 'Carlos Pérez'),
(2, 'Luis García'),
(3, 'Ana Rodríguez');

-- Insertar valores en la tabla clientes--
INSERT INTO clientes (cliente_id, nombre, email, direccion) VALUES 
(1, 'María López', 'maria@example.com', 'Calle Falsa 123'),
(2, 'Juan Díaz', 'juan@example.com', 'Avenida Siempreviva 742'),
(3, 'Pedro Fernández', 'pedro@example.com', 'Calle Luna 24');

-- Insertar valores en la tabla auxiliares--
INSERT INTO auxiliares (auxiliar_id, nombre) VALUES 
(1, 'Lucía Martínez'),
(2, 'José Herrera');

-- Insertar valores en la tabla modelo_vehiculos--
INSERT INTO modelo_vehiculos (modelo_id, nombre, capacidad_carga) VALUES 
(1, 'Modelo A', 1500.00),
(2, 'Modelo B', 2000.00);

-- Insertar valores en la tabla estado_envio--
INSERT INTO estado_envio (nombre) VALUES 
('En tránsito'),
('Entregado'),
('Pendiente');

-- Insertar valores en la tabla paquetes--
INSERT INTO paquetes (paquete_id, peso, dimensiones, contenido, valor_declarado, servicio_id) VALUES 
(1, 10.50, '30x20x15', 'Libros', 100.00, 1),
(2, 2.75, '10x10x10', 'Electrónicos', 300.00, 2);

-- Insertar valores en la tabla ciudades--
INSERT INTO ciudades (ciudad_id, nombre, pais_id) VALUES 
(1, 'Buenos Aires', 1),
(2, 'Río de Janeiro', 2),
(3, 'Santiago', 3),
(4, 'Bogotá', 4),
(5, 'Lima', 5);

-- Insertar valores en la tabla sucursales--
INSERT INTO sucursales (sucursal_id, nombre, direccion, ciudad_id) VALUES 
(1, 'Sucursal Centro', 'Calle Principal 1', 1),
(2, 'Sucursal Norte', 'Avenida Norte 101', 2);

-- Insertar valores en la tabla vehiculos
INSERT INTO vehiculos (vehiculo_id, placa, marca, sucursal_id, modelo_id) VALUES 
(1, 'AAA111', 'Marca A', 1, 1),
(2, 'BBB222', 'Marca B', 2, 2);

-- Insertar valores en la tabla telefonos_conductores--
INSERT INTO telefonos_conductores (telefono_id, numero, conductor_id) VALUES 
(1, 123456789, 1),
(2, 987654321, 2);

-- Insertar valores en la tabla rutas--
INSERT INTO rutas (ruta_id, descripcion, sucursal_id) VALUES 
(1, 'Ruta 1', 1),
(2, 'Ruta 2', 2);

-- Insertar valores en la tabla ruta_auxiliares--
INSERT INTO ruta_auxiliares (ruta_id, auxiliar_id, conductor_id) VALUES 
(1, 1, 1),
(2, 2, 2);

-- Insertar valores en la tabla conductores_rutas--
INSERT INTO conductores_rutas (ruta_id, conductor_id, vehiculo_id, sucursal_id) VALUES 
(1, 1, 1, 1),
(2, 2, 2, 2);

-- Insertar valores en la tabla telefonos_clientes--
INSERT INTO telefonos_clientes (telefono_id, numero, cliente_id) VALUES 
(1, 555123456, 1),
(2, 555654321, 2);

-- Insertar valores en la tabla seguimiento--
INSERT INTO seguimiento (ubicacion, fecha_hora, estado_id, paquete_id) VALUES 
('Buenos Aires', '2024-06-20 10:00:00', 1, 1),
('Santiago', '2024-06-21 14:30:00', 2, 2);

-- Insertar valores en la tabla envios--
INSERT INTO envios (envio_id, fecha_envio, destino, paquete_id, ruta_id, sucursal_id, cliente_id) VALUES 
(1, '2024-06-19 08:00:00', 'Lima', 1, 1, 1, 1),
(2, '2024-06-20 09:00:00', 'Bogotá', 2, 2, 2, 2);

-- Insertar valores en la tabla telefonos_auxiliares--
INSERT INTO telefonos_auxiliares (telefono_id, numero, auxiliar_id) VALUES 
(1, 444123456, 1),
(2, 444654321, 2);
