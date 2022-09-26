/** Con el siguiente Script, se crearan dos usuarios diferentes. 
Un usuario de tipo lector, y otro de insercion y modificacion, 
sin que ninguno tenga el permiso de borrar registros **/

use mysql ;
show tables ;
select * from user;

-- Usuario Invitado, Permiso de solo lectura

drop user if exists 'invitado'@'localhost'; 
-- se elimina en el caso de que exista, el usuario 
create user if not exists 'invitado'@'localhost' identified by 'invitado2022'; 
-- se crea el usuario con la precaucion de la sentencia if not exists para que no salga error 
-- y un password
grant select on eventos_artisticos.* to 'invitado'@'localhost';
-- con la sentencia Grant y Select, le damos permisos de solo lectura a todas las tablas de la DB

-- Usuario Empleado_Caja, Permiso de Lectura, Insercion y Modificacion de datos.

drop user if exists 'Empleado_Caja'@'localhost';
-- se elimina en el caso de que exista, el usuario 
create user if not exists 'Empleado_Caja'@'localhost' identified by 'Empleado_Caja2022';
-- se crea el usuario con la precaucion de la sentencia if not exists para que no salga error 
-- y un password
grant select, insert, update on eventos_artisticos.* to 'Empleado_Caja'@'localhost';
-- en este caso, ademas de darle permisos de lectrua con la sentencia Select
-- se agregan Insert, para ingresar nuevos registros, y Update para modificar registros existentes

-- Usuario Supervisor, Permisos de Lectura, Insercion, Modificacion y Borrado de datos.

drop user if exists 'Supervisor'@'localhost';
create user if not exists 'Supervisor'@'localhost' identified by 'Supervisor2023';
grant select, insert, update, delete, drop on eventos_artisticos.* to 'Supervisor'@'localhost';

