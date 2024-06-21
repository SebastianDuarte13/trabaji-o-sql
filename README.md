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
### respuesta
    
#### ejemplo
    
##### explicacion
