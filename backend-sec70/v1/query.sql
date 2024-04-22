CREATE DATABASE ciisa_backend_v1;
CREATE USER 'ciisa_backend_v1'@'localhost' IDENTIFIED BY 'clave-ciisa';
GRANT ALL PROVILEGES ON ciisa_backend_v1 . * TO 'ciisa_backend_v1'@'localhost';
FLUSH PRIVILEGES;

USE ciisa_backend_v1;

CREATE TABLE mantenedor(
    id INT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL UNIQUE,
    activo BOOLEAN NOT NULL DEFAULT FALSE
)

-- GET / ALL
SELECT id, nombre, activo FROM mantenedor;
-- GET / BY ID
SELECT id, nombre, activo FROM mantenedor WHERE id = 3;
-- POST
INSERT INTO mantenedor (id, nombre) VALUES (1, 'EJEMPLO 1'), (2, 'EJEMPLO 2'), (3, 'EJEMPLO 3');
-- PATCH / ENABLE
UPDATE mantenedor SET activo = true WHERE id = 3;
-- PATCH / DISABLE
UPDATE mantenedor SET activo = false WHERE id = 3; 
-- PUT
UPDATE mantenedor SET nombre = 'Example 3' WHERE id = 3;
-- DELETER
DELETE FROM mantenedor WHERE id = 3;