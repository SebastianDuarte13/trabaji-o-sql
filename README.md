## Caso 1
    Un administrador desea agregar un nuevo país a la base de datos.
### respuesta
    INSERT INTO paises (pais_id, nombre) VALUES (identificador del pais, 'nombre del pais');
#### ejemplo
    INSERT INTO paises (pais_id, nombre) VALUES (6, 'Estados Unidos');
##### explicacion
    --el 6 hace referencia al numero con el que vamos a identificar al pais--
    -- el caracter "Estados Unidos" es el nombre del pais--


## caso 2
    Un administrador desea agregar una nueva ciudad asociada a un país existente.
### respuesta
    INSERT INTO ciudades (ciudad_id, nombre, pais_id) VALUES (identificador de la ciudad, 'nombre de la ciudad', identificador del pais existente);
#### ejemeplo
    INSERT INTO ciudades (ciudad_id, nombre, pais_id) VALUES (6, 'texas', 6);
##### explicacion
    --el primer 6 hace referencia al identificador de la ciudad que nosotros acabamos de inventar
    --los caracteres "texas" es el nombre de la ciudad --
    -- el ultimo 6 hace referencia al identificador del pais que se registro en el caso anterior--


## caso 3
    Un administrador desea agregar una nueva sucursal asociada a una ciudad existente.
### respuesta
    INSERT INTO sucursales (sucursal_id, nombre, direccion, ciudad_id) VALUES (identificador de la sucursal, 'nombre de la sucursal', 'direccion de la sucursal', identificador de la ciudad existente);
#### ejemplo
    INSERT INTO sucursales (sucursal_id, nombre, direccion, ciudad_id) VALUES (3, 'Sucursal nacional', 'Avenida 12 #14-15', 6);
##### explicacion
    -- el 3 es el identificador de a sucursal--
    -- el caracter "Sucursal nacional" es el nombre de dicha sucursal --
    -- el caracter "Avenida 12 #14-15" es la direccion de la sucursal--
    -- el ultimo 6 hace referencia al identificador del pais que se registro en el primer caso--


## caso 4
    Un administrador desea registrar un nuevo cliente en la base de datos.
### respuesta
    INSERT INTO clientes (cliente_id, nombre, email, direccion) VALUES (identificador del cliente, 'nombre del cliente', 'email del cliente', 'direccion del cliente');
#### ejemplo
    INSERT INTO clientes (cliente_id, nombre, email, direccion) VALUES 
    (4, 'samuel ospina', 'SO04@example.com', 'Avenida 5 #32-12');
##### explicacion
    --el 4 es el identificador del cliente como la cedula--
    --el caracter "samuel ospina" es la nombre del cliente--
    --el caracter "SO04@example.com" es el correo del cliente--
    -- el caracter "Avenida 5 #32-12" es la direcciond de nuestro cliente--

## caso 5
    Un administrador desea agregar un número de teléfono para un cliente existente.
### respuesta
    INSERT INTO telefonos_clientes (telefono_id, numero, cliente_id) VALUES 
    (identificador del telefono, numero telefonico, identificador del cliene existente);

#### ejemplo
    INSERT INTO telefonos_clientes (telefono_id, numero, cliente_id) VALUES (3, 555123457, 2);
##### explicacion
    --el 3 es el numero con el que se va a identificar este numero con el cliente--
    -- los numeros del centro es el numero telefonico agregado del cliente--
    -- el 2 es el identificador del cliente que se registro anteriormente--


## caso 6
### respuesta
    INSERT INTO paquetes (paquete_id, peso, dimensiones, contenido, valor_declarado, servicio_id) VALUES (identificador, peso, 'dimensiones', 'coontenido', valor declarado,  el tipo de servio existente (nacional o internacional));
#### ejemplo
    INSERT INTO paquetes (paquete_id, peso, dimensiones, contenido, valor_declarado, servicio_id) VALUES (3, 5.50, '30x20x15', 'Electrónicos', 150.00, 1);
##### explicacion
    Supongamos que deseas agregar un nuevo paquete con los siguientes datos:

    Peso: 5.5 (los valores son en kg)
    Dimensiones: "30x20x15 cm"
    Contenido: "Electrónicos"
    Valor Declarado: 150.00
    Servicio ID: 1

## caso 7
    INSERT INTO envios (envio_id, fecha_envio, destino, paquete_id, ruta_id, sucursal_id, cliente_id) VALUES 
    (identificador del envio, 'fecha del envio', 'destino', identificador del paquete existente, identificador ruta existente, identificador de la sucursal existente, identificador del cliente existente);
#### ejemplo
    INSERT INTO envios (envio_id, fecha_envio, destino, paquete_id, ruta_id, sucursal_id, cliente_id) VALUES 
    (3, '2024-06-19 08:00:00', 'Lima', 1, 1, 1, 1);


## caso 8
    INSERT INTO vehiculos (vehiculo_id, placa, marca, sucursal_id, modelo_id) VALUES 
    (identificador del vehiculo, 'placa del vehiculo', 'la marca del vehiculo', identificsdor de la sucursal existente, identificador del modelo del vehiculo registrado anteriormente);
#### ejemplo
    INSERT INTO vehiculos (vehiculo_id, placa, marca, sucursal_id, modelo_id) VALUES 
    (4, 'PTL63A', 'YAMAHA', 1, 1);


## caso 9
    INSERT INTO conductores (conductor_id, nombre) VALUES
    (identificador del conductor (CC), 'Nombre del conductor');
#### ejemplo
    INSERT INTO conductores (conductor_id, nombre) VALUES 
    (5, 'Juan Alberto');

## caso 10
    INSERT INTO telefonos_conductores (telefono_id, numero, conductor_id) VALUES 
    (identificador del nuevo nuemro, nuevo numero telefonico, identificador del conductor al que se le va a asignar el numero);
#### ejemplo
    INSERT INTO telefonos_conductores (telefono_id, numero, conductor_id) VALUES 
    (5, 123456789, 1);

## caso 11
    INSERT INTO conductores_rutas (ruta_id, conductor_id, vehiculo_id, sucursal_id) VALUES 
    (identificador de la ruta, identificador del conductor, identificador del vehiculo, identificador de la sucursal);
#### ejemplo
    INSERT INTO conductores_rutas (ruta_id, conductor_id, vehiculo_id, sucursal_id) VALUES (1, 2, 2, 1);

## caso 12
    INSERT INTO auxiliares (auxiliar_id, nombre) VALUES 
    (identificador del auxiliar, ' nombre del auxiliar');
#### ejemplo
    INSERT INTO auxiliares (auxiliar_id, nombre) VALUES 
    (3, 'Juan Jerez');

## caso 13
    INSERT INTO ruta_auxiliares (ruta_id, auxiliar_id, conductor_id) VALUES 
    (identificador de la ruta existente, identificador del auxiliar existente, identificador del conductor existente);
#### ejemplo
    INSERT INTO ruta_auxiliares (ruta_id, auxiliar_id, conductor_id) VALUES 
    (1, 2, 1);

## caso 14
    INSERT INTO seguimiento (ubicacion, fecha_hora, estado_id, paquete_id) VALUES 
    (' ubicacion del paquete', 'fecha y hora de la actualizacion del seguimiento', identificador del estado que se le puede asignar, identificador del paquete el cual esta haciendo seguimiento);
#### ejemplo
    INSERT INTO seguimiento (ubicacion, fecha_hora, estado_id, paquete_id) VALUES 
    ('Colombia', '2024-06-20 12:00:00', 2, 1);


## caso 15
    SELECT e.envio_id, e.fecha_envio, e.destino, e.paquete_id, e.ruta_id, e.sucursal_id, c.nombre AS nombre_cliente, c.email, c.direccion
    FROM envios e
    JOIN clientes c ON e.cliente_id = c.cliente_id
    WHERE e.cliente_id = identificador del cliente;
#### ejemplo
    -- Generar un reporte de envíos por cliente específico
    SELECT e.envio_id, e.fecha_envio, e.destino, e.paquete_id, e.ruta_id, e.sucursal_id, c.nombre AS nombre_cliente, c.email, c.direccion
    FROM envios e
    JOIN clientes c ON e.cliente_id = c.cliente_id
    WHERE e.cliente_id = 1;


## caso 16
    UPDATE seguimiento
    SET estado_id = <nuevo_estado_id>, fecha_hora = NOW()
    WHERE seguimiento_id = <id_del_seguimiento>;
#### ejemplo
    UPDATE seguimiento
    SET estado_id = 2, fecha_hora = NOW()
    WHERE seguimiento_id = 1;

## caso 17
    SELECT s.paquete_id, s.ubicacion, s.fecha_hora, e.nombre AS estado
    FROM seguimiento s
    JOIN estado_envio e ON s.estado_id = e.estado_id
    WHERE s.paquete_id = IDENTIFICADOR DEL PAQUETE EXISTENTE;
#### ejemplo
    SELECT s.paquete_id, s.ubicacion, s.fecha_hora, e.nombre AS estado
    FROM seguimiento s
    JOIN estado_envio e ON s.estado_id = e.estado_id
    WHERE s.paquete_id = 1; 

# CASOS MULTITABLA

## caso1
   
    SELECT e.envio_id, e.fecha_envio, e.destino,
       c.cliente_id, c.nombre AS nombre_cliente, c.email, c.direccion AS direccion_cliente,
       p.paquete_id, p.numero_seguimiento, p.peso, p.dimensiones, p.contenido, p.valor_declarado,
       r.descripcion AS descripcion_ruta,
       co.conductor_id, co.nombre AS nombre_conductor,
       v.vehiculo_id, v.placa, v.marca,
       s.sucursal_id, s.nombre AS nombre_sucursal, s.direccion AS direccion_sucursal
    FROM envios AS e
    JOIN clientes AS c ON e.cliente_id = c.cliente_id
    JOIN paquetes AS p ON e.paquete_id = p.paquete_id
    JOIN rutas AS r ON e.ruta_id = r.ruta_id
    JOIN conductores_rutas AS cr ON e.ruta_id = cr.ruta_id AND cr.sucursal_id = e.sucursal_id
    JOIN conductores AS co ON cr.conductor_id = co.conductor_id
    JOIN vehiculos AS v ON cr.vehiculo_id = v.vehiculo_id
    JOIN sucursales AS s ON e.sucursal_id = s.sucursal_id;


## caso2

    SELECT e.envio_id, e.fecha_envio, e.destino,
       p.paquete_id, p.numero_seguimiento, p.peso, p.dimensiones, p.contenido, p.valor_declarado,
       s.ubicacion AS ubicacion_seguimiento, s.fecha_hora AS fecha_hora_seguimiento,
       es.nombre AS estado_seguimiento
    FROM envios AS e
    JOIN clientes AS c ON e.cliente_id = c.cliente_id
    JOIN paquetes AS p ON e.paquete_id = p.paquete_id
    LEFT JOIN seguimiento AS s ON e.paquete_id = s.paquete_id
    LEFT JOIN estado_envio AS es ON s.estado_id = es.estado_id
    WHERE c.cliente_id = 1; -- Reemplaza con el ID del cliente específico que deseas consultar


## caso3
   
    SELECT co.conductor_id, co.nombre AS nombre_conductor,
       r.ruta_id, r.descripcion AS descripcion_ruta,
       v.vehiculo_id, v.placa, v.marca,
       s.sucursal_id, s.nombre AS nombre_sucursal, s.direccion AS direccion_sucursal
    FROM conductores_rutas AS cr
    JOIN conductores AS co ON cr.conductor_id = co.conductor_id
    JOIN rutas AS r ON cr.ruta_id = r.ruta_id
    JOIN vehiculos AS v ON cr.vehiculo_id = v.vehiculo_id
    JOIN sucursales AS s ON cr.sucursal_id = s.sucursal_id;

## caso4
 
    SELECT r.ruta_id, r.descripcion AS descripcion_ruta,
       a.auxiliar_id, a.nombre AS nombre_auxiliar
    FROM ruta_auxiliares AS ra
    JOIN rutas AS r ON ra.ruta_id = r.ruta_id
    JOIN auxiliares AS a ON ra.auxiliar_id = a.auxiliar_id;
## caso5
    
    SELECT s.nombre AS nombre_sucursal, e.nombre AS estado,
        COUNT(p.paquete_id) AS cantidad_paquetes
    FROM paquetes p
    JOIN envios env ON p.paquete_id = env.paquete_id
    JOIN sucursales s ON env.sucursal_id = s.sucursal_id
    JOIN seguimiento seg ON p.paquete_id = seg.paquete_id
    JOIN estado_envio e ON seg.estado_id = e.estado_id
    GROUP BY s.nombre, e.nombre;

## caso6
    SELECT p.paquete_id, p.numero_seguimiento, p.peso, p.dimensiones, p.contenido, p.valor_declarado,
       s.ubicacion AS ubicacion_seguimiento, s.fecha_hora AS fecha_hora_seguimiento,
       es.nombre AS estado_seguimiento
    FROM paquetes p
    LEFT JOIN seguimiento s ON p.paquete_id = s.paquete_id
    LEFT JOIN estado_envio es ON s.estado_id = es.estado_id
    WHERE p.paquete_id = 1; -- Reemplaza con el ID del paquete específico que deseas consultar


# Casos de uso Between, In y Not In

## caso1
    Un administrador desea obtener todos los paquetes que fueron enviados dentro de un rango de fechas específico.
    SELECT envio_id, fecha_envio, destino, paquete_id, ruta_id, sucursal_id, cliente_id 
    FROM envios 
    WHERE fecha_envio BETWEEN 'fecha inicial' AND 'fecha final';
#### ejemplo
    SELECT envio_id, fecha_envio, destino, paquete_id, ruta_id, sucursal_id, cliente_id 
    FROM envios 
    WHERE fecha_envio BETWEEN '2024-06-19' AND '2024-06-20';


## caso2
    SELECT p.paquete_id, p.numero_seguimiento, p.peso, p.dimensiones, p.contenido, p.valor_declarado, p.servicio_id
    FROM paquetes AS p
    JOIN seguimiento AS s ON p.paquete_id = s.paquete_id
    JOIN estado_envio AS e ON s.estado_id = e.estado_id
    WHERE e.nombre IN ('estado que desea buscar');

#### ejemplo
    SELECT p.paquete_id, p.numero_seguimiento, p.peso, p.dimensiones, p.contenido, p.valor_declarado, p.servicio_id
    FROM paquetes AS p
    JOIN seguimiento s ON p.paquete_id = s.paquete_id
    JOIN estado_envio e ON s.estado_id = e.estado_id
    WHERE e.nombre IN ('entregado');


## caso3
    SELECT p.paquete_id, p.numero_seguimiento, p.peso, p.dimensiones, p.contenido, p.valor_declarado, p.servicio_id
    FROM paquetes p 
    JOIN seguimiento s ON p.paquete_id = s.paquete_id JOIN estado_envio e ON s.estado_id = e.estado_id 
    WHERE e.nombre NOT IN ( 'ESTADO QUE DESEA HACER LA EXCEPCION');
#### ejemplo
    SELECT p.paquete_id, p.numero_seguimiento, p.peso, p.dimensiones, p.contenido, p.valor_declarado, p.servicio_id
    FROM paquetes p 
    JOIN seguimiento s ON p.paquete_id = s.paquete_id JOIN estado_envio e ON s.estado_id = e.estado_id 
    WHERE e.nombre NOT IN ( 'entregado');

## caso4
     SELECT DISTINCT c.cliente_id, c.nombre, c.email, c.direccion
    FROM clientes AS c 
    JOIN envios AS e ON c.cliente_id = e.cliente_id 
    WHERE e.fecha_envio BETWEEN 'fecha inicial' AND 'fecha final';
#### ejemplo
    SELECT DISTINCT c.cliente_id, c.nombre, c.email, c.direccion
    FROM clientes AS c 
    JOIN envios AS e ON c.cliente_id = e.cliente_id 
    WHERE e.fecha_envio BETWEEN '2024-06-19' AND '2024-06-20';

## caso5
    SELECT c.conductor_id, c.nombre
    FROM conductores AS c
    WHERE c.conductor_id NOT IN (
    SELECT cr.conductor_id
    FROM conductores_rutas cr
    WHERE cr.ruta_id IN (rutas)
    );

#### ejemplo
    SELECT c.conductor_id, c.nombre
    FROM conductores c
    WHERE c.conductor_id NOT IN (
    SELECT cr.conductor_id
    FROM conductores_rutas cr
    WHERE cr.ruta_id IN (1, 2)
    );

## caso6
    SELECT paquete_id, numero_seguimiento, peso, dimensiones, contenido, valor_declarado, servicio_id
    FROM paquetes
    WHERE valor_declarado BETWEEN 0 AND 0; -- Define el rango de valor declarado según tus necesidades

#### ejemplo
    SELECT paquete_id, numero_seguimiento, peso, dimensiones, contenido, valor_declarado, servicio_id
    FROM paquetes
    WHERE valor_declarado BETWEEN 100 AND 150;


## caso7
    SELECT a.auxiliar_id, a.nombre
    FROM auxiliares AS a
    JOIN ruta_auxiliares ra ON a.auxiliar_id = ra.auxiliar_id
    WHERE ra.ruta_id IN (nn); -- Define los IDs de ruta específicos a los que quieres consultar los auxiliares

#### ejemplo
    SELECT a.auxiliar_id, a.nombre
    FROM auxiliares AS a
    JOIN ruta_auxiliares ra ON a.auxiliar_id = ra.auxiliar_id
    WHERE ra.ruta_id IN (1, 2);
    

## caso8
    SELECT e.envio_id, e.fecha_envio, e.destino, e.paquete_id,
       s.sucursal_id, s.nombre AS nombre_sucursal, s.direccion AS direccion_sucursal,
       c.ciudad_id, c.nombre AS nombre_ciudad,
       p.numero_seguimiento
    FROM envios AS e
    JOIN sucursales AS s ON e.sucursal_id = s.sucursal_id
    JOIN ciudades AS c ON s.ciudad_id = c.ciudad_id
    LEFT JOIN paquetes AS p ON e.paquete_id = p.paquete_id
    WHERE c.nombre NOT IN ('Ciudad A', 'Ciudad B');
    -- Define los nombres de las ciudades que quieres excluir

#### ejemplo
    SELECT e.envio_id, e.fecha_envio, e.destino, e.paquete_id,
       s.sucursal_id, s.nombre AS nombre_sucursal, s.direccion AS direccion_sucursal,
       c.ciudad_id, c.nombre AS nombre_ciudad,
       p.numero_seguimiento
    FROM envios AS e
    JOIN sucursales AS s ON e.sucursal_id = s.sucursal_id
    JOIN ciudades AS c ON s.ciudad_id = c.ciudad_id
    LEFT JOIN paquetes AS p ON e.paquete_id = p.paquete_id
    WHERE c.nombre NOT IN (1);

## caso9
    SELECT seguimiento_id, ubicacion, fecha_hora, estado_id, paquete_id
    FROM seguimiento
    WHERE fecha_hora BETWEEN 'FF' AND 'FF'; -- Define el rango de fechas según tus necesidades

#### ejemplo
    SELECT seguimiento_id, ubicacion, fecha_hora, estado_id, paquete_id
    FROM seguimiento
    WHERE fecha_hora BETWEEN '2024-06-21' AND '2024-06-22'; 


## caso10
    SELECT DISTINCT c.cliente_id, c.nombre, c.email, c.direccion
    FROM clientes AS c
    JOIN envios AS e ON c.cliente_id = e.cliente_id
    JOIN paquetes AS p ON e.paquete_id = p.paquete_id
    WHERE p.servicio_id IN (NN, nn); -- Define los IDs de servicio específicos de los tipos de paquetes

#### ejemplo

    SELECT DISTINCT c.cliente_id, c.nombre, c.email, c.direccion
    FROM clientes AS c
    JOIN envios AS e ON c.cliente_id = e.cliente_id
    JOIN paquetes AS p ON e.paquete_id = p.paquete_id
    WHERE p.servicio_id IN (1, 2); 