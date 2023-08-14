USE mysql;

-- Creacion de 2 usuarios nuevos
CREATE USER 'user1@localhost';

CREATE USER 'user2@localhost';

-- Otorgar permisos de solo lectura de la DB al user1
GRANT SELECT ON Gimnasios.* TO 'user1@localhost';

-- Otorgar permisos de lectura, insercion y modificacion de datos de la DB al user2
GRANT SELECT, INSERT, UPDATE ON Gimnasios.* TO 'user2@localhost';

-- Quitar permisos de DELETE a ambos usuarios
REVOKE DELETE ON *.* FROM 'user1@localhost';

REVOKE DELETE ON *.* FROM 'user2@localhost';
